package cz.msebera.android.httpclient.conn;

import cz.msebera.android.httpclient.HttpHost;
import java.io.IOException;
import java.net.ConnectException;
import java.net.InetAddress;
import java.util.Arrays;

/* loaded from: classes3.dex */
public class HttpHostConnectException extends ConnectException {
    private static final long serialVersionUID = -3194482710275220224L;
    private final HttpHost host;

    @Deprecated
    public HttpHostConnectException(HttpHost httpHost, ConnectException connectException) {
        this(connectException, httpHost, (InetAddress[]) null);
    }

    public HttpHostConnectException(IOException iOException, HttpHost httpHost, InetAddress... inetAddressArr) {
        super("Connect to " + (httpHost != null ? httpHost.toHostString() : "remote host") + ((inetAddressArr == null || inetAddressArr.length <= 0) ? "" : " " + Arrays.asList(inetAddressArr)) + ((iOException == null || iOException.getMessage() == null) ? " refused" : " failed: " + iOException.getMessage()));
        this.host = httpHost;
        initCause(iOException);
    }

    public HttpHost getHost() {
        return this.host;
    }
}
