package com.tencent.turingfd.sdk.ams.ad;

/* loaded from: classes2.dex */
public class Grape extends Thread {
    public final /* synthetic */ Herbaceous a;

    public Grape(Herbaceous herbaceous) {
        this.a = herbaceous;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        try {
            Herbaceous.a(this.a);
        } catch (Throwable unused) {
        }
    }
}
