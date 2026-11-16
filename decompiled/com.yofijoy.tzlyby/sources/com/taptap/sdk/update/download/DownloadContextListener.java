package com.taptap.sdk.update.download;

import com.taptap.sdk.update.download.core.cause.EndCause;

/* loaded from: classes2.dex */
public interface DownloadContextListener {
    void queueEnd(DownloadContext downloadContext);

    void taskEnd(DownloadContext downloadContext, DownloadTask downloadTask, EndCause endCause, Exception exc, int i);
}
