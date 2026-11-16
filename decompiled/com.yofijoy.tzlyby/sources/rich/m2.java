package rich;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkRequest;
import rich.a1;

/* loaded from: classes2.dex */
public class m2 {
    public static m2 b;
    public ConnectivityManager a;

    /* loaded from: classes2.dex */
    public class a extends ConnectivityManager.NetworkCallback {
        public final /* synthetic */ b a;

        public a(b bVar) {
            this.a = bVar;
        }

        @Override // android.net.ConnectivityManager.NetworkCallback
        public void onAvailable(Network network) {
            a1.a aVar;
            try {
                if (m2.this.a.getNetworkCapabilities(network).hasTransport(0)) {
                    aVar = (a1.a) this.a;
                } else {
                    c2.a("WifiNetworkUtils", "切换失败，未开启数据网络");
                    aVar = (a1.a) this.a;
                    network = null;
                }
                aVar.a(network, this);
            } catch (Exception e) {
                e.printStackTrace();
                ((a1.a) this.a).a(null, this);
            }
        }
    }

    /* loaded from: classes2.dex */
    public interface b {
    }

    public m2(Context context) {
        try {
            this.a = (ConnectivityManager) context.getSystemService("connectivity");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static m2 a(Context context) {
        if (b == null) {
            synchronized (m2.class) {
                if (b == null) {
                    b = new m2(context);
                }
            }
        }
        return b;
    }

    public synchronized void a(b bVar) {
        if (this.a == null) {
            c2.a("WifiNetworkUtils", "mConnectivityManager 为空");
            ((a1.a) bVar).a(null, null);
            return;
        }
        NetworkRequest build = new NetworkRequest.Builder().addCapability(12).addTransportType(0).build();
        a aVar = new a(bVar);
        try {
            this.a.requestNetwork(build, aVar);
        } catch (Exception e) {
            e.printStackTrace();
            ((a1.a) bVar).a(null, aVar);
        }
    }
}
