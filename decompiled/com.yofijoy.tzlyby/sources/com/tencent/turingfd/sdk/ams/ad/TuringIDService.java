package com.tencent.turingfd.sdk.ams.ad;

import android.content.Context;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes2.dex */
public class TuringIDService {

    /* renamed from: com.tencent.turingfd.sdk.ams.ad.TuringIDService$do, reason: invalid class name */
    /* loaded from: classes2.dex */
    public class Cdo implements Caelum {
        public final /* synthetic */ ITuringDIDCallback a;

        public Cdo(ITuringDIDCallback iTuringDIDCallback) {
            this.a = iTuringDIDCallback;
        }
    }

    public static ITuringDID getTuringDID(Context context) {
        Ginkgo a;
        int a2 = Marc.a();
        if (a2 != 0) {
            a = Ginkgo.a(a2);
        } else {
            a = Herbaceous.l.a(context, true, 1);
        }
        return new Lichee(a);
    }

    public static void getTuringDIDAsync(Context context, ITuringDIDCallback iTuringDIDCallback) {
        if (iTuringDIDCallback == null) {
            return;
        }
        Cdo cdo = new Cdo(iTuringDIDCallback);
        AtomicBoolean atomicBoolean = Marc.b;
        if (context.getApplicationContext() == null) {
            iTuringDIDCallback.onResult(new Lichee(Ginkgo.a(-10016)));
            return;
        }
        int a = Marc.a();
        if (a != 0) {
            iTuringDIDCallback.onResult(new Lichee(Ginkgo.a(a)));
        }
        new Mangosteen(cdo, context).start();
    }

    public static ITuringDID getTuringDIDCached(Context context) {
        Ginkgo a;
        int a2 = Marc.a();
        if (a2 != 0) {
            a = Ginkgo.a(a2);
        } else {
            Herbaceous herbaceous = Herbaceous.l;
            a = herbaceous.a(context);
            if (herbaceous.a == null) {
                a = Ginkgo.a(-10002);
            } else {
                int a3 = herbaceous.a(a);
                if (a3 != 1) {
                    if (a3 == 2) {
                        herbaceous.a();
                        a = Ginkgo.a(-10009);
                    } else if (a3 == 3) {
                        herbaceous.a();
                    }
                }
            }
        }
        return new Lichee(a);
    }
}
