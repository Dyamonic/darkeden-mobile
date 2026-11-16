package com.tencent.turingfd.sdk.ams.ad;

/* loaded from: classes2.dex */
public abstract class Chestnut<T> {
    public volatile T a;

    public abstract T a();

    public final T b() {
        T t = this.a;
        if (t == null) {
            synchronized (this) {
                t = this.a;
                if (t == null) {
                    t = a();
                    this.a = t;
                }
            }
        }
        return t;
    }
}
