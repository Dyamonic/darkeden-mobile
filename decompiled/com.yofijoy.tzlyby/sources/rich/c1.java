package rich;

import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLSocketFactory;

/* loaded from: classes2.dex */
public abstract class c1 extends SSLSocketFactory {
    public SSLSocketFactory a = HttpsURLConnection.getDefaultSSLSocketFactory();
}
