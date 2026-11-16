package com.tencent.turingfd.sdk.ams.ad;

import android.content.Context;
import android.content.pm.Signature;

/* renamed from: com.tencent.turingfd.sdk.ams.ad.implements, reason: invalid class name */
/* loaded from: classes2.dex */
public class Cimplements {
    public static Signature[] a(Context context, String str) {
        try {
            return context.getPackageManager().getPackageInfo(str, 64).signatures;
        } catch (Throwable unused) {
            return null;
        }
    }
}
