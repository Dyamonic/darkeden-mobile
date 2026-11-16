package com.bytedance.bdtracker;

import android.content.Context;

/* loaded from: classes.dex */
public final class d5 implements Runnable {
    public final /* synthetic */ Context a;

    public d5(Context context) {
        this.a = context;
    }

    @Override // java.lang.Runnable
    public void run() {
        c5.b.b(this.a).putBoolean("_install_started_v2", true);
    }
}
