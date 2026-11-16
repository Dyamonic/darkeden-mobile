package com.tencent.turingfd.sdk.ams.ad;

/* loaded from: classes2.dex */
public final class Date<T> {
    public T a;
    public long b;
    public long c;

    public synchronized void a(T t, long j) {
        if (t == null) {
            return;
        }
        this.a = t;
        this.b = System.currentTimeMillis();
        this.c = j;
    }

    public synchronized T a() {
        T t = this.a;
        if (t == null) {
            return null;
        }
        long j = this.c;
        if (j < 0) {
            return t;
        }
        if (j != 0 && Math.abs(System.currentTimeMillis() - this.b) <= this.c) {
            return this.a;
        }
        this.a = null;
        return null;
    }
}
