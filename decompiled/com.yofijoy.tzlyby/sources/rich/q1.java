package rich;

import android.os.Build;
import java.net.InetAddress;
import java.net.Socket;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;

/* loaded from: classes2.dex */
public class q1 extends c1 {
    public static final String[] c = {"TLSv1.2"};
    public final l0 b;

    public q1(SSLSocketFactory sSLSocketFactory, l0 l0Var) {
        this.a = sSLSocketFactory;
        this.b = l0Var;
    }

    public final Socket a(Socket socket) {
        if ((socket instanceof SSLSocket) && Build.VERSION.SDK_INT < 20) {
            c2.b("Tls12SocketFactory", "5.0以下启动tls 1.2");
            SSLSocket sSLSocket = (SSLSocket) socket;
            for (String str : sSLSocket.getEnabledProtocols()) {
                c2.a("enableProtocol", str);
            }
            sSLSocket.setEnabledProtocols(c);
            sSLSocket.setEnabledCipherSuites(new String[]{"TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA", "TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA"});
        }
        this.b.a("socketip", socket.getLocalAddress().getHostAddress());
        return socket;
    }

    @Override // javax.net.SocketFactory
    public Socket createSocket() {
        return a(this.a.createSocket());
    }

    @Override // javax.net.SocketFactory
    public Socket createSocket(String str, int i) {
        return a(this.a.createSocket(str, i));
    }

    @Override // javax.net.SocketFactory
    public Socket createSocket(String str, int i, InetAddress inetAddress, int i2) {
        return a(this.a.createSocket(str, i, inetAddress, i2));
    }

    @Override // javax.net.SocketFactory
    public Socket createSocket(InetAddress inetAddress, int i) {
        return a(this.a.createSocket(inetAddress, i));
    }

    @Override // javax.net.SocketFactory
    public Socket createSocket(InetAddress inetAddress, int i, InetAddress inetAddress2, int i2) {
        return a(this.a.createSocket(inetAddress, i, inetAddress2, i2));
    }

    @Override // javax.net.ssl.SSLSocketFactory
    public Socket createSocket(Socket socket, String str, int i, boolean z) {
        return a(this.a.createSocket(socket, str, i, z));
    }

    @Override // javax.net.ssl.SSLSocketFactory
    public String[] getDefaultCipherSuites() {
        return this.a.getDefaultCipherSuites();
    }

    @Override // javax.net.ssl.SSLSocketFactory
    public String[] getSupportedCipherSuites() {
        return this.a.getSupportedCipherSuites();
    }

    public String toString() {
        return "Tls12SocketFactory";
    }
}
