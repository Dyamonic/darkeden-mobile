package cz.msebera.android.httpclient.util;

import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.SocketAddress;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;

/* loaded from: classes3.dex */
public final class NetUtils {
    public static void formatAddress(StringBuilder sb, SocketAddress socketAddress) {
        Args.notNull(sb, "Buffer");
        Args.notNull(socketAddress, "Socket address");
        if (socketAddress instanceof InetSocketAddress) {
            InetSocketAddress inetSocketAddress = (InetSocketAddress) socketAddress;
            InetAddress address = inetSocketAddress.getAddress();
            String str = address;
            if (address != null) {
                str = address.getHostAddress();
            }
            sb.append((Object) str).append(AbstractJsonLexerKt.COLON).append(inetSocketAddress.getPort());
            return;
        }
        sb.append(socketAddress);
    }
}
