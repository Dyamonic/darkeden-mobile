package com.tencent.turingfd.sdk.ams.ad;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.text.TextUtils;
import com.qq.gdt.action.ActionUtils;

/* renamed from: com.tencent.turingfd.sdk.ams.ad.goto, reason: invalid class name */
/* loaded from: classes2.dex */
public class Cgoto {
    public static int a(Context context) {
        try {
            Intent registerReceiver = context.registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
            if (registerReceiver == null || !TextUtils.equals(registerReceiver.getAction(), "android.intent.action.BATTERY_CHANGED")) {
                return -1;
            }
            int intExtra = registerReceiver.getIntExtra(ActionUtils.LEVEL, 0);
            int intExtra2 = registerReceiver.getIntExtra("scale", 100);
            if (intExtra2 == 0) {
                return -1;
            }
            int i = (intExtra * 100) / intExtra2;
            int i2 = i >= 0 ? i : 0;
            if (i2 > 100) {
                return 100;
            }
            return i2;
        } catch (Throwable unused) {
            return -1;
        }
    }
}
