package com.bytedance.bdtracker;

import com.bytedance.applog.profile.UserProfileCallback;

/* loaded from: classes.dex */
public class p3 implements Runnable {
    public final /* synthetic */ int a;
    public final /* synthetic */ r3 b;

    public p3(r3 r3Var, int i) {
        this.b = r3Var;
        this.a = i;
    }

    @Override // java.lang.Runnable
    public void run() {
        UserProfileCallback userProfileCallback = this.b.d;
        if (userProfileCallback != null) {
            userProfileCallback.onFail(this.a);
        }
    }
}
