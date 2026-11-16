package com.tencent.turingfd.sdk.ams.ad;

import android.content.Context;
import com.tencent.turingfd.sdk.ams.ad.Bagasse;
import com.tencent.turingfd.sdk.ams.ad.Csynchronized;

/* renamed from: com.tencent.turingfd.sdk.ams.ad.instanceof, reason: invalid class name */
/* loaded from: classes2.dex */
public class Cinstanceof implements Runnable {
    public final /* synthetic */ int a;
    public final /* synthetic */ Csynchronized.Cdo b;

    public Cinstanceof(Csynchronized.Cdo cdo, int i) {
        this.b = cdo;
        this.a = i;
    }

    @Override // java.lang.Runnable
    public void run() {
        Context context;
        synchronized (Ccase.class) {
            context = Ccase.a;
        }
        if (!Sagittarius.c(context)) {
            return;
        }
        int i = 0;
        while (true) {
            String[] strArr = this.b.a;
            if (i >= strArr.length) {
                return;
            }
            try {
                Bagasse.Cdo cdo = new Bagasse.Cdo(strArr[i]);
                int i2 = this.a;
                if (i2 > 0) {
                    cdo.d = i2;
                }
                if (i2 > 0) {
                    cdo.e = i2;
                }
                Bagasse bagasse = new Bagasse(cdo);
                Andromeda.a(bagasse, bagasse.b, bagasse.d);
                this.b.b = i;
                return;
            } catch (Throwable unused) {
                i++;
            }
        }
    }
}
