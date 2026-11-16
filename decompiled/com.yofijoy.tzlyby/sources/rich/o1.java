package rich;

import android.net.Network;
import com.loopj.android.http.RequestParams;
import cz.msebera.android.httpclient.protocol.HTTP;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes2.dex */
public class o1 {
    public final String a;
    public final Map b;
    public String c;
    public final String d;
    public boolean e = false;
    public final String f;
    public Network g;
    public long h;
    public final String i;
    public int j;
    public final j1 k;

    public o1(String str, j1 j1Var, String str2, String str3) {
        this.a = str;
        this.k = j1Var;
        HashMap hashMap = new HashMap();
        this.b = hashMap;
        this.c = j1Var == null ? "" : j1Var.b().toString();
        this.d = str2;
        this.f = str3;
        String a = j1Var != null ? j1Var.a() : "";
        this.i = a;
        hashMap.put("sdkVersion", "quick_login_android_5.9.7.1");
        hashMap.put("Content-Type", RequestParams.APPLICATION_JSON);
        hashMap.put("CMCC-EncryptType", "STD");
        hashMap.put("traceId", str3);
        hashMap.put("appid", a);
        hashMap.put("connection", HTTP.CONN_KEEP_ALIVE);
    }

    public boolean a() {
        return !d2.a(this.f) || this.a.contains("logReport") || this.a.contains("uniConfig");
    }
}
