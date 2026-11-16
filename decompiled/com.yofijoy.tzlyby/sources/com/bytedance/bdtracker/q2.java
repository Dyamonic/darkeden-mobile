package com.bytedance.bdtracker;

import android.os.Handler;
import com.bytedance.applog.aggregation.Metrics;
import java.util.ArrayList;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* loaded from: classes.dex */
public final class q2 extends Lambda implements Function1<List<? extends Metrics>, Unit> {
    public final /* synthetic */ r2 a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public q2(r2 r2Var) {
        super(1);
        this.a = r2Var;
    }

    @Override // kotlin.jvm.functions.Function1
    public Unit invoke(List<? extends Metrics> list) {
        d0 d0Var;
        d0 d0Var2;
        List<? extends Metrics> list2 = list;
        Intrinsics.checkParameterIsNotNull(list2, "list");
        ArrayList arrayList = new ArrayList();
        for (Metrics metrics : list2) {
            l4 l4Var = new l4();
            d0Var = this.a.c;
            i0 i0Var = d0Var.n;
            d0Var2 = this.a.c;
            i0Var.a(d0Var2.d, l4Var);
            l4Var.o = metrics.toParams();
            arrayList.add(l4Var);
        }
        Handler handler = this.a.a;
        handler.sendMessage(handler.obtainMessage(1, arrayList));
        this.a.a.sendEmptyMessage(2);
        return Unit.INSTANCE;
    }
}
