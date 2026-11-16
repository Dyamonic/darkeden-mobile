package rich;

/* loaded from: classes2.dex */
public class u2 {
    public static u2 c;
    public a a;
    public int b = 1;

    /* loaded from: classes2.dex */
    public interface a {
    }

    public static u2 a() {
        if (c == null) {
            synchronized (u2.class) {
                if (c == null) {
                    c = new u2();
                }
            }
        }
        return c;
    }
}
