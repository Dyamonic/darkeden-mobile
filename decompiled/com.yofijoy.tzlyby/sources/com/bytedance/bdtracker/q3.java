package com.bytedance.bdtracker;

import com.bytedance.applog.profile.UserProfileCallback;

/* loaded from: classes.dex */
public class q3 implements Runnable {
    public final /* synthetic */ r3 a;

    public q3(r3 r3Var) {
        this.a = r3Var;
    }

    @Override // java.lang.Runnable
    public void run() {
        UserProfileCallback userProfileCallback = this.a.d;
        if (userProfileCallback != null) {
            userProfileCallback.onSuccess();
        }
    }
}
