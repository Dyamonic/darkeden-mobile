package com.taptap.sdk.update.download.core.interceptor.connect;

import com.taptap.sdk.update.download.DownloadTask;
import com.taptap.sdk.update.download.OkDownload;
import com.taptap.sdk.update.download.core.Util;
import com.taptap.sdk.update.download.core.breakpoint.BlockInfo;
import com.taptap.sdk.update.download.core.breakpoint.BreakpointInfo;
import com.taptap.sdk.update.download.core.connection.DownloadConnection;
import com.taptap.sdk.update.download.core.download.DownloadChain;
import com.taptap.sdk.update.download.core.exception.InterruptException;
import com.taptap.sdk.update.download.core.interceptor.Interceptor;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* loaded from: classes2.dex */
public class HeaderInterceptor implements Interceptor.Connect {
    private static final String TAG = "HeaderInterceptor";

    @Override // com.taptap.sdk.update.download.core.interceptor.Interceptor.Connect
    public DownloadConnection.Connected interceptConnect(DownloadChain downloadChain) throws IOException {
        long parseContentLengthFromContentRange;
        BreakpointInfo info = downloadChain.getInfo();
        DownloadConnection connectionOrCreate = downloadChain.getConnectionOrCreate();
        DownloadTask task = downloadChain.getTask();
        Map<String, List<String>> headerMapFields = task.getHeaderMapFields();
        if (headerMapFields != null) {
            Util.addUserRequestHeaderField(headerMapFields, connectionOrCreate);
        }
        if (headerMapFields == null || !headerMapFields.containsKey("User-Agent")) {
            Util.addDefaultUserAgent(connectionOrCreate);
        }
        int blockIndex = downloadChain.getBlockIndex();
        BlockInfo block = info.getBlock(blockIndex);
        if (block == null) {
            throw new IOException("No block-info found on " + blockIndex);
        }
        connectionOrCreate.addHeader("Range", ("bytes=" + block.getRangeLeft() + "-") + block.getRangeRight());
        Util.d(TAG, "AssembleHeaderRange (" + task.getId() + ") block(" + blockIndex + ") downloadFrom(" + block.getRangeLeft() + ") currentOffset(" + block.getCurrentOffset() + ")");
        String etag = info.getEtag();
        if (!Util.isEmpty(etag)) {
            connectionOrCreate.addHeader("If-Match", etag);
        }
        if (downloadChain.getCache().isInterrupt()) {
            throw InterruptException.SIGNAL;
        }
        OkDownload.with().callbackDispatcher().dispatch().connectStart(task, blockIndex, connectionOrCreate.getRequestProperties());
        DownloadConnection.Connected processConnect = downloadChain.processConnect();
        if (downloadChain.getCache().isInterrupt()) {
            throw InterruptException.SIGNAL;
        }
        Map<String, List<String>> responseHeaderFields = processConnect.getResponseHeaderFields();
        if (responseHeaderFields == null) {
            responseHeaderFields = new HashMap<>();
        }
        OkDownload.with().callbackDispatcher().dispatch().connectEnd(task, blockIndex, processConnect.getResponseCode(), responseHeaderFields);
        OkDownload.with().downloadStrategy().resumeAvailableResponseCheck(processConnect, blockIndex, info).inspect();
        String responseHeaderField = processConnect.getResponseHeaderField("Content-Length");
        if (responseHeaderField == null || responseHeaderField.length() == 0) {
            parseContentLengthFromContentRange = Util.parseContentLengthFromContentRange(processConnect.getResponseHeaderField("Content-Range"));
        } else {
            parseContentLengthFromContentRange = Util.parseContentLength(responseHeaderField);
        }
        downloadChain.setResponseContentLength(parseContentLengthFromContentRange);
        return processConnect;
    }
}
