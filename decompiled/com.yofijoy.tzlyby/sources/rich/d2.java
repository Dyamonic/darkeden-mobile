package rich;

import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes2.dex */
public class d2 {
    public static ConcurrentHashMap a = new ConcurrentHashMap(16);
    public static ConcurrentHashMap b = new ConcurrentHashMap();

    public static void a(String str, l0 l0Var) {
        if (str == null || l0Var == null) {
            return;
        }
        b.put(str, l0Var);
    }

    public static boolean a(String str) {
        return !a.containsKey(str);
    }

    public static q0 b(String str) {
        return (q0) a.get(str);
    }

    public static l0 c(String str) {
        return str != null ? (l0) b.get(str) : new l0(0);
    }
}
