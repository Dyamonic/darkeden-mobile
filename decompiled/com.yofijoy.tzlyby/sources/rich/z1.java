package rich;

import java.util.HashMap;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class z1 implements p1 {
    public final /* synthetic */ a2 a;

    public z1(a2 a2Var) {
        this.a = a2Var;
    }

    @Override // rich.p1
    public void a(String str, String str2, JSONObject jSONObject) {
        long j;
        h0 b = this.a.a.b();
        HashMap hashMap = new HashMap();
        if (!str.equals("103000")) {
            if (b.l != 0 && b.k != 0) {
                int a = b0.a("logFailTimes", 0) + 1;
                if (a >= b.k) {
                    hashMap.put("logFailTimes", 0);
                    j = System.currentTimeMillis();
                } else {
                    hashMap.put("logFailTimes", Integer.valueOf(a));
                }
            }
            b0.a(hashMap);
        }
        hashMap.put("logFailTimes", 0);
        j = 0;
        hashMap.put("logCloseTime", Long.valueOf(j));
        b0.a(hashMap);
    }
}
