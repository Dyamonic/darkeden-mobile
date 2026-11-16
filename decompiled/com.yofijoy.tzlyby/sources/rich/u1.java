package rich;

import android.net.Network;
import android.net.SSLCertificateSocketFactory;
import android.os.Build;
import java.net.InetAddress;
import java.net.Socket;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSession;
import javax.net.ssl.SSLSocket;

/* loaded from: classes2.dex */
public class u1 extends c1 {
    public static final String[] g = {"TLSv1.2"};
    public final String b = u1.class.getSimpleName();
    public HostnameVerifier c = HttpsURLConnection.getDefaultHostnameVerifier();
    public final HttpsURLConnection d;
    public final Network e;
    public final l0 f;

    public u1(HttpsURLConnection httpsURLConnection, Network network, l0 l0Var) {
        this.d = httpsURLConnection;
        this.e = network;
        this.f = l0Var;
    }

    @Override // javax.net.SocketFactory
    public Socket createSocket(String str, int i) {
        return null;
    }

    @Override // javax.net.SocketFactory
    public Socket createSocket(String str, int i, InetAddress inetAddress, int i2) {
        return null;
    }

    @Override // javax.net.SocketFactory
    public Socket createSocket(InetAddress inetAddress, int i) {
        return null;
    }

    @Override // javax.net.SocketFactory
    public Socket createSocket(InetAddress inetAddress, int i, InetAddress inetAddress2, int i2) {
        return null;
    }

    @Override // javax.net.ssl.SSLSocketFactory
    public Socket createSocket(Socket socket, String str, int i, boolean z) {
        String requestProperty = this.d.getRequestProperty("Host");
        if (requestProperty != null) {
            str = requestProperty;
        }
        c2.b(this.b, "customized createSocket. host: " + str);
        String str2 = this.b;
        StringBuilder a = a.a("plainSocket localAddress: ");
        a.append(socket.getLocalAddress().getHostAddress());
        c2.b(str2, a.toString());
        if (z) {
            c2.b(this.b, "plainSocket close");
            socket.close();
        }
        SSLCertificateSocketFactory sSLCertificateSocketFactory = (SSLCertificateSocketFactory) SSLCertificateSocketFactory.getDefault(0);
        SSLSocket sSLSocket = (SSLSocket) sSLCertificateSocketFactory.createSocket();
        Network network = this.e;
        if (network != null && Build.VERSION.SDK_INT >= 21) {
            network.bindSocket(sSLSocket);
        }
        sSLSocket.connect(socket.getRemoteSocketAddress());
        this.f.a("socketip", sSLSocket.getLocalAddress().getHostAddress());
        sSLSocket.setEnabledProtocols(sSLSocket.getSupportedProtocols());
        if (Build.VERSION.SDK_INT < 20) {
            c2.b(this.b, "5.0以下启动tls 1.2");
            sSLSocket.setEnabledProtocols(g);
            sSLSocket.setEnabledCipherSuites(new String[]{"TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA", "TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA"});
        }
        if (Build.VERSION.SDK_INT >= 17) {
            c2.b(this.b, "Setting SNI hostname");
            sSLCertificateSocketFactory.setHostname(sSLSocket, str);
        } else {
            c2.b(this.b, "No documented SNI support on Android <4.2, trying with reflection");
            try {
                sSLSocket.getClass().getMethod("setHostname", String.class).invoke(sSLSocket, str);
            } catch (Exception e) {
                e.printStackTrace();
                c2.a(this.b, "SNI not useable");
            }
        }
        SSLSession session = sSLSocket.getSession();
        if (!this.c.verify(str, session)) {
            throw new SSLPeerUnverifiedException("Cannot verify hostname: " + str);
        }
        String str3 = this.b;
        StringBuilder a2 = a.a("Established ");
        a2.append(session.getProtocol());
        a2.append(" connection with ");
        a2.append(session.getPeerHost());
        a2.append(" using ");
        a2.append(session.getCipherSuite());
        c2.b(str3, a2.toString());
        return sSLSocket;
    }

    @Override // javax.net.ssl.SSLSocketFactory
    public String[] getDefaultCipherSuites() {
        return new String[0];
    }

    @Override // javax.net.ssl.SSLSocketFactory
    public String[] getSupportedCipherSuites() {
        return new String[0];
    }
}
