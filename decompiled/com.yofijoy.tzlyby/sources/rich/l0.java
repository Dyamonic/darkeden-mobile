package rich;

import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes2.dex */
public class l0 {
    public ConcurrentHashMap a;

    public l0(int i) {
        this.a = new ConcurrentHashMap(i);
    }

    public x1 a() {
        x1 x1Var = (x1) this.a.get("logBean");
        return x1Var != null ? x1Var : new x1();
    }

    public void a(String str, int i) {
        if (str != null) {
            this.a.put(str, Integer.valueOf(i));
        }
    }

    public void a(String str, long j) {
        if (str != null) {
            this.a.put(str, Long.valueOf(j));
        }
    }

    public void a(String str, String str2) {
        if (str == null || str2 == null) {
            return;
        }
        this.a.put(str, str2);
    }

    public void a(String str, boolean z) {
        if (str != null) {
            this.a.put(str, Boolean.valueOf(z));
        }
    }

    public void a(String str, byte[] bArr) {
        if (str == null || bArr == null) {
            return;
        }
        this.a.put(str, bArr);
    }

    public void a(h0 h0Var) {
        if (h0Var != null) {
            this.a.put("current_config", h0Var);
        }
    }

    public byte[] a(String str) {
        if (str != null) {
            return (byte[]) this.a.get(str);
        }
        return null;
    }

    public int b(String str, int i) {
        return (str == null || !this.a.containsKey(str)) ? i : ((Integer) this.a.get(str)).intValue();
    }

    public long b(String str, long j) {
        return (str == null || !this.a.containsKey(str)) ? j : ((Long) this.a.get(str)).longValue();
    }

    public String b(String str, String str2) {
        return (str == null || !this.a.containsKey(str)) ? str2 : (String) this.a.get(str);
    }

    public h0 b() {
        h0 h0Var = (h0) this.a.get("current_config");
        if (h0Var != null) {
            return h0Var;
        }
        c2.a("UmcConfigBean为空", "请核查");
        return new h0(null);
    }

    public boolean b(String str, boolean z) {
        return (str == null || !this.a.containsKey(str)) ? z : ((Boolean) this.a.get(str)).booleanValue();
    }
}
