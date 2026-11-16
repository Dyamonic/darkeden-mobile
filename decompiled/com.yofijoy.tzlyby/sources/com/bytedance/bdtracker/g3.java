package com.bytedance.bdtracker;

/* loaded from: classes.dex */
public class g3 {
    public static final long[][] h = {new long[]{60000, 0, 10}, new long[]{120000, 5, 1}, new long[]{240000, 5, 1}, new long[]{480000, 4, 1}, new long[]{960000, 2, 1}};
    public String a;
    public v1 b;
    public int c;
    public int d;
    public int e;
    public long f;
    public long g;

    public g3(String str, v1 v1Var) {
        this.b = v1Var;
        this.a = str;
        this.c = 0;
        if (System.currentTimeMillis() - v1Var.f.getLong(this.a + "downgrade_time", 0L) < 10800000) {
            this.c = this.b.f.getInt(this.a + "downgrade_index", 0);
            return;
        }
        this.b.f.remove(this.a + "downgrade_time").remove(this.a + "downgrade_index");
    }

    public final boolean a() {
        return this.b.c.isCongestionControlEnable();
    }

    public void b() {
        if (a()) {
            if (this.c < h.length - 1) {
                long currentTimeMillis = System.currentTimeMillis();
                this.c++;
                this.d = 1;
                this.e = 0;
                this.f = currentTimeMillis;
                this.g = currentTimeMillis;
                this.b.f.putLong(this.a + "downgrade_time", currentTimeMillis).putInt(this.a + "downgrade_index", this.c);
                return;
            }
            this.e = 0;
        }
    }

    public void c() {
        if (a()) {
            long currentTimeMillis = System.currentTimeMillis();
            int i = this.e;
            long j = i;
            long[][] jArr = h;
            int i2 = this.c;
            if (j < jArr[i2][1] && currentTimeMillis - this.g <= 1800000) {
                this.e = i + 1;
                return;
            }
            if (i2 > 0) {
                long currentTimeMillis2 = System.currentTimeMillis();
                this.c--;
                this.d = 1;
                this.e = 1;
                this.f = currentTimeMillis2;
                this.g = currentTimeMillis2;
                this.b.f.putLong(this.a + "downgrade_time", currentTimeMillis2).putInt(this.a + "downgrade_index", this.c);
            }
        }
    }
}
