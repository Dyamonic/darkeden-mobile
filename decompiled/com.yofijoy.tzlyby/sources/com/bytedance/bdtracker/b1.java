package com.bytedance.bdtracker;

import kotlin.jvm.internal.Intrinsics;

/* loaded from: classes.dex */
public final class b1 extends a1 {
    public final Runnable b;

    public b1(Runnable checkTask) {
        Intrinsics.checkParameterIsNotNull(checkTask, "checkTask");
        this.b = checkTask;
    }

    @Override // com.bytedance.bdtracker.a1
    public void a() {
        this.a.removeCallbacks(this.b);
        this.a.postDelayed(this.b, 100L);
    }
}
