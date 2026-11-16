package com.tencent.turingfd.sdk.ams.ad;

import android.content.Context;
import com.tencent.turingfd.sdk.ams.ad.TuringIDService;

/* loaded from: classes2.dex */
public class Mangosteen extends Thread {
    public final /* synthetic */ Caelum a;
    public final /* synthetic */ Context b;

    public Mangosteen(Caelum caelum, Context context) {
        this.a = caelum;
        this.b = context;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        Caelum caelum = this.a;
        if (caelum != null) {
            ((TuringIDService.Cdo) caelum).a.onResult(new Lichee(Herbaceous.l.a(this.b, false, 1)));
        }
    }
}
