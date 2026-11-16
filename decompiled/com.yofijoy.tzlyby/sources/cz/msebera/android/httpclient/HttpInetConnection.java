package cz.msebera.android.httpclient;

import java.net.InetAddress;

/* loaded from: classes3.dex */
public interface HttpInetConnection extends HttpConnection {
    InetAddress getLocalAddress();

    int getLocalPort();

    InetAddress getRemoteAddress();

    int getRemotePort();
}
