package com.juhe.juhesdk.middle.common;

import android.text.TextUtils;
import cz.msebera.android.httpclient.protocol.HTTP;
import java.io.BufferedWriter;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.net.HttpURLConnection;
import java.net.ProtocolException;
import java.net.URL;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.UUID;

/* loaded from: classes.dex */
class RealRequest {
    private static final String BOUNDARY = UUID.randomUUID().toString();
    private static final String LINE_END = "\r\n";
    private static final String TWO_HYPHENS = "--";

    /* JADX INFO: Access modifiers changed from: package-private */
    public RealResponse getData(String requestURL, Map<String, String> headerMap) {
        HttpURLConnection httpURLConnection = null;
        try {
            httpURLConnection = getHttpURLConnection(requestURL, "GET");
            httpURLConnection.setDoInput(true);
            if (headerMap != null) {
                setHeader(httpURLConnection, headerMap);
            }
            httpURLConnection.connect();
            return getRealResponse(httpURLConnection);
        } catch (Exception e) {
            return getExceptonResponse(httpURLConnection, e);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public RealResponse postData(String requestURL, String body, String bodyType, Map<String, String> headerMap) {
        HttpURLConnection httpURLConnection = null;
        try {
            httpURLConnection = getHttpURLConnection(requestURL, "POST");
            httpURLConnection.setDoOutput(true);
            httpURLConnection.setDoInput(true);
            httpURLConnection.setUseCaches(false);
            if (!TextUtils.isEmpty(bodyType)) {
                httpURLConnection.setRequestProperty("Content-Type", bodyType);
            }
            if (headerMap != null) {
                setHeader(httpURLConnection, headerMap);
            }
            httpURLConnection.connect();
            if (!TextUtils.isEmpty(body)) {
                BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(httpURLConnection.getOutputStream(), "UTF-8"));
                bufferedWriter.write(body);
                bufferedWriter.close();
            }
            return getRealResponse(httpURLConnection);
        } catch (Exception e) {
            return getExceptonResponse(httpURLConnection, e);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public RealResponse uploadFile(String requestURL, File file, List<File> fileList, Map<String, File> fileMap, String fileKey, String fileType, Map<String, String> paramsMap, Map<String, String> headerMap, CallBackUtil callBack) {
        HttpURLConnection httpURLConnection;
        HttpURLConnection httpURLConnection2 = null;
        try {
            httpURLConnection = getHttpURLConnection(requestURL, "POST");
        } catch (Exception e) {
            e = e;
        }
        try {
            setConnection(httpURLConnection);
            if (headerMap != null) {
                setHeader(httpURLConnection, headerMap);
            }
            httpURLConnection.connect();
            DataOutputStream dataOutputStream = new DataOutputStream(httpURLConnection.getOutputStream());
            if (paramsMap != null) {
                dataOutputStream.write(getParamsString(paramsMap).getBytes());
                dataOutputStream.flush();
            }
            if (file != null) {
                writeFile(file, fileKey, fileType, dataOutputStream, callBack);
            } else if (fileList != null) {
                Iterator<File> it = fileList.iterator();
                while (it.hasNext()) {
                    writeFile(it.next(), fileKey, fileType, dataOutputStream, null);
                }
            } else if (fileMap != null) {
                for (String str : fileMap.keySet()) {
                    writeFile(fileMap.get(str), str, fileType, dataOutputStream, null);
                }
            }
            dataOutputStream.write(("\r\n--" + BOUNDARY + TWO_HYPHENS + LINE_END).getBytes());
            dataOutputStream.flush();
            return getRealResponse(httpURLConnection);
        } catch (Exception e2) {
            e = e2;
            httpURLConnection2 = httpURLConnection;
            return getExceptonResponse(httpURLConnection2, e);
        }
    }

    private HttpURLConnection getHttpURLConnection(String requestURL, String requestMethod) throws IOException {
        HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(requestURL).openConnection();
        httpURLConnection.setConnectTimeout(10000);
        httpURLConnection.setReadTimeout(15000);
        httpURLConnection.setRequestMethod(requestMethod);
        return httpURLConnection;
    }

    private void setHeader(HttpURLConnection conn, Map<String, String> headerMap) {
        if (headerMap != null) {
            for (String str : headerMap.keySet()) {
                conn.setRequestProperty(str, headerMap.get(str));
            }
        }
    }

    private void setConnection(HttpURLConnection conn) throws ProtocolException {
        conn.setDoOutput(true);
        conn.setDoInput(true);
        conn.setUseCaches(false);
        conn.setRequestProperty("Connection", HTTP.CONN_KEEP_ALIVE);
        conn.setRequestProperty("Charset", "UTF-8");
        conn.setRequestProperty("Content-Type", "multipart/form-data; BOUNDARY=" + BOUNDARY);
    }

    private String getParamsString(Map<String, String> paramsMap) {
        StringBuffer stringBuffer = new StringBuffer();
        for (String str : paramsMap.keySet()) {
            stringBuffer.append(TWO_HYPHENS);
            stringBuffer.append(BOUNDARY);
            stringBuffer.append(LINE_END);
            stringBuffer.append("Content-Disposition: form-data; name=\"" + str + "\"");
            stringBuffer.append(LINE_END);
            stringBuffer.append("Content-Type: text/plain");
            stringBuffer.append(LINE_END);
            stringBuffer.append("Content-Lenght: " + paramsMap.get(str).length());
            stringBuffer.append(LINE_END);
            stringBuffer.append(LINE_END);
            stringBuffer.append(paramsMap.get(str));
            stringBuffer.append(LINE_END);
        }
        return stringBuffer.toString();
    }

    private void writeFile(File file, String fileKey, String fileType, DataOutputStream outputStream, final CallBackUtil callBack) throws IOException {
        outputStream.write(getFileParamsString(file, fileKey, fileType).getBytes());
        outputStream.flush();
        FileInputStream fileInputStream = new FileInputStream(file);
        final long length = file.length();
        byte[] bArr = new byte[2048];
        long j = 0;
        while (true) {
            int read = fileInputStream.read(bArr);
            if (read != -1) {
                outputStream.write(bArr, 0, read);
                final long j2 = j + read;
                if (callBack != null) {
                    CallBackUtil.mMainHandler.post(new Runnable() { // from class: com.juhe.juhesdk.middle.common.RealRequest.1
                        @Override // java.lang.Runnable
                        public void run() {
                            CallBackUtil callBackUtil = callBack;
                            float f = ((float) j2) * 100.0f;
                            long j3 = length;
                            callBackUtil.onProgress(f / ((float) j3), j3);
                        }
                    });
                }
                j = j2;
            } else {
                outputStream.flush();
                fileInputStream.close();
                return;
            }
        }
    }

    private String getFileParamsString(File file, String fileKey, String fileType) {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(LINE_END);
        stringBuffer.append(TWO_HYPHENS);
        stringBuffer.append(BOUNDARY);
        stringBuffer.append(LINE_END);
        stringBuffer.append("Content-Disposition: form-data; name=\"" + fileKey + "\"; filename=\"" + file.getName() + "\"");
        stringBuffer.append(LINE_END);
        StringBuilder sb = new StringBuilder();
        sb.append("Content-Type: ");
        sb.append(fileType);
        stringBuffer.append(sb.toString());
        stringBuffer.append(LINE_END);
        stringBuffer.append("Content-Lenght: " + file.length());
        stringBuffer.append(LINE_END);
        stringBuffer.append(LINE_END);
        return stringBuffer.toString();
    }

    private RealResponse getRealResponse(HttpURLConnection conn) throws IOException {
        RealResponse realResponse = new RealResponse();
        realResponse.code = conn.getResponseCode();
        realResponse.contentLength = conn.getContentLength();
        realResponse.inputStream = conn.getInputStream();
        realResponse.errorStream = conn.getErrorStream();
        return realResponse;
    }

    private RealResponse getExceptonResponse(HttpURLConnection conn, Exception e) {
        if (conn != null) {
            conn.disconnect();
        }
        e.printStackTrace();
        RealResponse realResponse = new RealResponse();
        realResponse.exception = e;
        return realResponse;
    }
}
