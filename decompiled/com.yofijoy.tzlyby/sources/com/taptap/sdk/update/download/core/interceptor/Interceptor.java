package com.taptap.sdk.update.download.core.interceptor;

import com.taptap.sdk.update.download.core.connection.DownloadConnection;
import com.taptap.sdk.update.download.core.download.DownloadChain;
import java.io.IOException;

/* loaded from: classes2.dex */
public interface Interceptor {

    /* loaded from: classes2.dex */
    public interface Connect {
        DownloadConnection.Connected interceptConnect(DownloadChain downloadChain) throws IOException;
    }

    /* loaded from: classes2.dex */
    public interface Fetch {
        long interceptFetch(DownloadChain downloadChain) throws IOException;
    }
}
