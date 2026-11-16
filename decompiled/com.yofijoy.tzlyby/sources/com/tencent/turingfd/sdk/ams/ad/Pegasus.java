package com.tencent.turingfd.sdk.ams.ad;

import android.content.Context;
import com.tencent.turingfd.sdk.ams.ad.Perseus;

/* loaded from: classes2.dex */
public class Pegasus extends Thread {
    public final /* synthetic */ Perseus.Cdo a;
    public final /* synthetic */ Context b;

    public Pegasus(Perseus.Cdo cdo, Context context) {
        this.a = cdo;
        this.b = context;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        this.a.a.b(this.b);
    }
}
