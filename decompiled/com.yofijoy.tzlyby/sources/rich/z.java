package rich;

import java.security.KeyManagementException;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.security.cert.X509Certificate;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSession;
import javax.net.ssl.TrustManager;
import javax.net.ssl.X509TrustManager;

/* loaded from: classes2.dex */
public class z implements X509TrustManager {
    public static TrustManager[] a;
    public static final X509Certificate[] b = new X509Certificate[0];

    /* loaded from: classes2.dex */
    public static class a implements HostnameVerifier {
        @Override // javax.net.ssl.HostnameVerifier
        public boolean verify(String str, SSLSession sSLSession) {
            return true;
        }
    }

    public static void a() {
        SSLContext sSLContext;
        NoSuchAlgorithmException e;
        KeyManagementException e2;
        HttpsURLConnection.setDefaultHostnameVerifier(new a());
        if (a == null) {
            a = new TrustManager[]{new z()};
        }
        try {
            sSLContext = SSLContext.getInstance("TLS");
        } catch (KeyManagementException e3) {
            sSLContext = null;
            e2 = e3;
        } catch (NoSuchAlgorithmException e4) {
            sSLContext = null;
            e = e4;
        }
        try {
            sSLContext.init(null, a, new SecureRandom());
        } catch (KeyManagementException e5) {
            e2 = e5;
            e2.printStackTrace();
            HttpsURLConnection.setDefaultSSLSocketFactory(sSLContext.getSocketFactory());
        } catch (NoSuchAlgorithmException e6) {
            e = e6;
            e.printStackTrace();
            HttpsURLConnection.setDefaultSSLSocketFactory(sSLContext.getSocketFactory());
        }
        HttpsURLConnection.setDefaultSSLSocketFactory(sSLContext.getSocketFactory());
    }

    @Override // javax.net.ssl.X509TrustManager
    public void checkClientTrusted(X509Certificate[] x509CertificateArr, String str) {
    }

    @Override // javax.net.ssl.X509TrustManager
    public void checkServerTrusted(X509Certificate[] x509CertificateArr, String str) {
    }

    @Override // javax.net.ssl.X509TrustManager
    public X509Certificate[] getAcceptedIssuers() {
        return b;
    }
}
