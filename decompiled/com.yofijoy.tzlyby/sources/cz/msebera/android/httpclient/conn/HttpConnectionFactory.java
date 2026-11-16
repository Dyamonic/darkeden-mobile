package cz.msebera.android.httpclient.conn;

import cz.msebera.android.httpclient.HttpConnection;
import cz.msebera.android.httpclient.config.ConnectionConfig;

/* loaded from: classes3.dex */
public interface HttpConnectionFactory<T, C extends HttpConnection> {
    C create(T t, ConnectionConfig connectionConfig);
}
