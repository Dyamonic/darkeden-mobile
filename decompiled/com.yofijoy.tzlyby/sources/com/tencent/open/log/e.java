package com.tencent.open.log;

import android.util.Log;

/* compiled from: ProGuard */
/* loaded from: classes2.dex */
public final class e extends h {
    public static final e a = new e();

    @Override // com.tencent.open.log.h
    protected void a(int i, Thread thread, long j, String str, String str2, Throwable th) {
        if (i == 1) {
            Log.v(str, str2, th);
            return;
        }
        if (i == 2) {
            Log.d(str, str2, th);
            return;
        }
        if (i == 4) {
            Log.i(str, str2, th);
            return;
        }
        if (i == 8) {
            Log.w(str, str2, th);
        } else if (i == 16) {
            Log.e(str, str2, th);
        } else {
            if (i != 32) {
                return;
            }
            Log.e(str, str2, th);
        }
    }
}
