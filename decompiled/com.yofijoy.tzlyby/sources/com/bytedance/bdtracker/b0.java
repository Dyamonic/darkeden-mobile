package com.bytedance.bdtracker;

import com.bytedance.applog.log.IAppLogLogger;

/* loaded from: classes.dex */
public abstract class b0 {
    public int a;
    public volatile boolean b;
    public long c;
    public volatile boolean d;
    public final d0 e;
    public final d f;

    public b0(d0 d0Var) {
        this.e = d0Var;
        this.f = d0Var.d;
    }

    public final long a() {
        long b = b();
        if (b > System.currentTimeMillis()) {
            return b;
        }
        this.e.d.D.debug("The worker:{} start to work...", d());
        try {
            boolean c = c();
            this.c = System.currentTimeMillis();
            if (c) {
                this.a = 0;
            } else {
                this.a++;
            }
            IAppLogLogger iAppLogLogger = this.e.d.D;
            Object[] objArr = new Object[2];
            objArr[0] = d();
            objArr[1] = c ? "success" : "failed";
            iAppLogLogger.debug("The worker:{} worked:{}.", objArr);
        } catch (Throwable th) {
            try {
                this.e.d.D.error("Work do failed.", th, new Object[0]);
                this.c = System.currentTimeMillis();
                this.a++;
                this.e.d.D.debug("The worker:{} worked:{}.", d(), "failed");
            } catch (Throwable th2) {
                this.c = System.currentTimeMillis();
                this.a++;
                this.e.d.D.debug("The worker:{} worked:{}.", d(), "failed");
                throw th2;
            }
        }
        return b();
    }

    public final long b() {
        long j;
        long j2;
        if (!f() || z4.b(this.e.b(), this.e.n.a()).a()) {
            j = 0;
            if (this.b) {
                this.c = 0L;
                this.b = false;
            } else {
                int i = this.a;
                if (i > 0) {
                    long[] e = e();
                    j = e[(i - 1) % e.length];
                } else {
                    j = g();
                }
            }
            j2 = this.c;
        } else {
            this.e.d.D.debug("Check work time is not net available.", new Object[0]);
            j2 = System.currentTimeMillis();
            j = 5000;
        }
        return j2 + j;
    }

    public abstract boolean c();

    public abstract String d();

    public abstract long[] e();

    public abstract boolean f();

    public abstract long g();

    public b0(d0 d0Var, long j) {
        this.e = d0Var;
        this.f = d0Var.d;
        this.c = j;
    }
}
