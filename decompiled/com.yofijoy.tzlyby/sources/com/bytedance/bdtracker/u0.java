package com.bytedance.bdtracker;

import android.app.Activity;
import com.bytedance.applog.exposure.ViewExposureManager;
import java.util.Iterator;
import java.util.Map;
import java.util.WeakHashMap;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* loaded from: classes.dex */
public final class u0 extends Lambda implements Function2<Activity, Boolean, Unit> {
    public final /* synthetic */ ViewExposureManager a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public u0(ViewExposureManager viewExposureManager) {
        super(2);
        this.a = viewExposureManager;
    }

    @Override // kotlin.jvm.functions.Function2
    public Unit invoke(Activity activity, Boolean bool) {
        WeakHashMap weakHashMap;
        Activity activity2 = activity;
        boolean booleanValue = bool.booleanValue();
        if (activity2 != null) {
            weakHashMap = this.a.a;
            WeakHashMap weakHashMap2 = (WeakHashMap) weakHashMap.get(activity2);
            if (weakHashMap2 != null) {
                Intrinsics.checkExpressionValueIsNotNull(weakHashMap2, "activitiesMap[activity] …erActivityStoppedCallback");
                Iterator it = weakHashMap2.entrySet().iterator();
                while (it.hasNext()) {
                    r0 r0Var = (r0) ((Map.Entry) it.next()).getValue();
                    v0 v0Var = r0Var.c;
                    v0 v0Var2 = v0.NOT_EXPOSURE;
                    if (v0Var != v0Var2) {
                        v0Var2 = booleanValue ? v0.RESUME_FORM_BACK : v0.RESUME_FORM_PAGE;
                    }
                    r0Var.c = v0Var2;
                    r0Var.b = false;
                    r0Var.d = 0L;
                }
            }
        }
        return Unit.INSTANCE;
    }
}
