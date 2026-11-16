package com.bytedance.dr.impl;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.os.Build;
import android.provider.Settings;
import android.text.TextUtils;
import android.util.Pair;
import com.bytedance.applog.log.LoggerImpl;
import com.bytedance.bdtracker.a5;
import com.bytedance.bdtracker.m5;
import com.bytedance.bdtracker.u5;
import com.bytedance.dr.OaidApi;

/* loaded from: classes.dex */
public final class e implements OaidApi {
    public static final m5<Boolean> b = new a();
    public String a;

    /* loaded from: classes.dex */
    public static class a extends m5<Boolean> {
        @Override // com.bytedance.bdtracker.m5
        public Boolean a(Object[] objArr) {
            Context context = (Context) objArr[0];
            return Boolean.valueOf((a5.a(context, "com.huawei.hwid") || a5.a(context, "com.huawei.hwid.tv")) ? true : a5.a(context, "com.huawei.hms"));
        }
    }

    /* loaded from: classes.dex */
    public static class b extends OaidApi.a {
        public long c = 0;
    }

    public static boolean a(Context context) {
        if (context == null) {
            return false;
        }
        return b.b(context).booleanValue();
    }

    @Override // com.bytedance.dr.OaidApi
    public String getName() {
        return "Huawei";
    }

    @Override // com.bytedance.dr.OaidApi
    public OaidApi.a getOaid(Context context) {
        String string;
        String string2;
        b bVar = new b();
        int i = 0;
        if (Build.VERSION.SDK_INT >= 24) {
            try {
                string = Settings.Global.getString(context.getContentResolver(), "pps_oaid");
                string2 = Settings.Global.getString(context.getContentResolver(), "pps_track_limit");
            } catch (Throwable th) {
                LoggerImpl.global().error(1, "getOaid failed", th, new Object[0]);
            }
            if (!TextUtils.isEmpty(string)) {
                bVar.a = string;
                bVar.b = Boolean.parseBoolean(string2);
                bVar.c = 202003021704L;
                return bVar;
            }
        }
        Pair pair = TextUtils.isEmpty(this.a) ? null : (Pair) new u5(context, new Intent("com.uodis.opendevice.OPENIDS_SERVICE").setPackage(this.a), new f(this)).a();
        if (pair != null) {
            bVar.a = (String) pair.first;
            bVar.b = ((Boolean) pair.second).booleanValue();
            try {
                PackageInfo a2 = a5.a(context, this.a, 0);
                if (a2 != null) {
                    i = a2.versionCode;
                }
            } catch (Throwable th2) {
                LoggerImpl.global().error(1, "getHwIdVersionCode failed", th2, new Object[0]);
            }
            bVar.c = i;
        }
        return bVar;
    }

    @Override // com.bytedance.dr.OaidApi
    public boolean support(Context context) {
        if (context == null) {
            return false;
        }
        String str = "com.huawei.hwid";
        if (!a5.a(context, "com.huawei.hwid")) {
            str = "com.huawei.hwid.tv";
            if (!a5.a(context, "com.huawei.hwid.tv")) {
                this.a = "com.huawei.hms";
                return a5.a(context, "com.huawei.hms");
            }
        }
        this.a = str;
        return true;
    }
}
