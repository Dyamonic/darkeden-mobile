package com.qq.gdt.action.e;

import android.content.Context;
import android.os.Build;
import android.provider.Settings;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import com.qq.gdt.action.j.o;
import com.qq.gdt.action.j.q;
import com.qq.gdt.action.multioprocess.b.b;
import com.taptap.sdk.core.internal.event.constants.TapEventParamConstants;

/* loaded from: classes.dex */
public final class b {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.qq.gdt.action.e.b$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] a;
        static final /* synthetic */ int[] b;

        static {
            int[] iArr = new int[a.values().length];
            b = iArr;
            try {
                iArr[a.ANDROIDID_TYPE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                b[a.IMEI_TYPE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                b[a.IMEI0_TYPE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                b[a.IMEI1_TYPE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                b[a.DEVICEID_TYPE.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                b[a.DEVICEID0_TYPE.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                b[a.DEVICEID1_TYPE.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                b[a.MEID_TYPE.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                b[a.MEID0_TYPE.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                b[a.MEID1_TYPE.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                b[a.BUILD_MODEL_TYPE.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                b[a.BSSID_TYPE.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                b[a.IMSI_TYPE.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            int[] iArr2 = new int[EnumC0035b.values().length];
            a = iArr2;
            try {
                iArr2[EnumC0035b.IMEI.ordinal()] = 1;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                a[EnumC0035b.MEID.ordinal()] = 2;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                a[EnumC0035b.ANDROID_ID.ordinal()] = 3;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                a[EnumC0035b.DEVICEID.ordinal()] = 4;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                a[EnumC0035b.BSSID.ordinal()] = 5;
            } catch (NoSuchFieldError unused18) {
            }
            try {
                a[EnumC0035b.IMSI.ordinal()] = 6;
            } catch (NoSuchFieldError unused19) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public enum a {
        ANDROIDID_TYPE,
        IMEI_TYPE,
        IMEI0_TYPE,
        IMEI1_TYPE,
        DEVICEID_TYPE,
        DEVICEID0_TYPE,
        DEVICEID1_TYPE,
        MEID_TYPE,
        MEID0_TYPE,
        MEID1_TYPE,
        BUILD_MODEL_TYPE,
        BSSID_TYPE,
        IMSI_TYPE
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.qq.gdt.action.e.b$b, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public enum EnumC0035b {
        MEID,
        IMEI,
        ANDROID_ID,
        DEVICEID,
        BSSID,
        IMSI
    }

    public static synchronized com.qq.gdt.action.multioprocess.b.b a(com.qq.gdt.action.multioprocess.b.a aVar, a aVar2) {
        com.qq.gdt.action.multioprocess.b.b bVar;
        synchronized (b.class) {
            bVar = null;
            switch (AnonymousClass1.b[aVar2.ordinal()]) {
                case 1:
                    bVar = aVar.a();
                    if (bVar == null) {
                        bVar = new b.a();
                        aVar.a((b.a) bVar);
                        break;
                    }
                    break;
                case 2:
                    bVar = aVar.b();
                    if (bVar == null) {
                        bVar = new b.i();
                        aVar.a((b.i) bVar);
                        break;
                    }
                    break;
                case 3:
                    bVar = aVar.c();
                    if (bVar == null) {
                        bVar = new b.g();
                        aVar.a((b.g) bVar);
                        break;
                    }
                    break;
                case 4:
                    bVar = aVar.d();
                    if (bVar == null) {
                        bVar = new b.h();
                        aVar.a((b.h) bVar);
                        break;
                    }
                    break;
                case 5:
                    bVar = aVar.e();
                    if (bVar == null) {
                        bVar = new b.f();
                        aVar.a((b.f) bVar);
                        break;
                    }
                    break;
                case 6:
                    bVar = aVar.f();
                    if (bVar == null) {
                        bVar = new b.d();
                        aVar.a((b.d) bVar);
                        break;
                    }
                    break;
                case 7:
                    bVar = aVar.g();
                    if (bVar == null) {
                        bVar = new b.e();
                        aVar.a((b.e) bVar);
                        break;
                    }
                    break;
                case 8:
                    bVar = aVar.h();
                    if (bVar == null) {
                        bVar = new b.m();
                        aVar.a((b.m) bVar);
                        break;
                    }
                    break;
                case 9:
                    bVar = aVar.i();
                    if (bVar == null) {
                        bVar = new b.k();
                        aVar.a((b.k) bVar);
                        break;
                    }
                    break;
                case 10:
                    bVar = aVar.j();
                    if (bVar == null) {
                        bVar = new b.l();
                        aVar.a((b.l) bVar);
                        break;
                    }
                    break;
                case 11:
                    bVar = aVar.k();
                    if (bVar == null) {
                        bVar = new b.c();
                        aVar.a((b.c) bVar);
                        break;
                    }
                    break;
                case 12:
                    bVar = aVar.l();
                    if (bVar == null) {
                        bVar = new b.C0036b();
                        aVar.a((b.C0036b) bVar);
                        break;
                    }
                    break;
                case 13:
                    bVar = aVar.m();
                    if (bVar == null) {
                        bVar = new b.j();
                        aVar.a((b.j) bVar);
                        break;
                    }
                    break;
            }
        }
        return bVar;
    }

    public static synchronized String a() {
        synchronized (b.class) {
            com.qq.gdt.action.multioprocess.b.a b = b();
            com.qq.gdt.action.multioprocess.b.b a2 = a(b, a.BUILD_MODEL_TYPE);
            String a3 = a2.a();
            if (TextUtils.isEmpty(a3) && !a(a2.b(), a2.c())) {
                a2.d();
                try {
                    a3 = Build.MODEL;
                } catch (Throwable th) {
                    o.a("getBuildModule Throwable " + th, new Object[0]);
                }
                a(a3, a2, b);
                return a3;
            }
            return a3;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v0 */
    /* JADX WARN: Type inference failed for: r4v4 */
    /* JADX WARN: Type inference failed for: r4v5, types: [boolean] */
    /* JADX WARN: Type inference failed for: r4v6 */
    /* JADX WARN: Type inference failed for: r4v7 */
    /* JADX WARN: Type inference failed for: r4v8 */
    /* JADX WARN: Type inference failed for: r4v9 */
    public static synchronized String a(Context context) {
        synchronized (b.class) {
            if (!a(context, EnumC0035b.ANDROID_ID)) {
                return "";
            }
            com.qq.gdt.action.multioprocess.b.a b = b();
            com.qq.gdt.action.multioprocess.b.b a2 = a(b, a.ANDROIDID_TYPE);
            String a3 = a2.a();
            int i = 0;
            i = 0;
            i = 0;
            try {
            } catch (Throwable th) {
                o.a("getAndroidId Throwable = " + th, new Object[i]);
            }
            if (TextUtils.isEmpty(a3) && !a(a2.b(), a2.c())) {
                a2.d();
                try {
                    String string = Settings.System.getString(context.getApplicationContext().getContentResolver(), TapEventParamConstants.PARAM_SUB_ANDROID_ID);
                    i = TextUtils.isEmpty(string);
                    i = i;
                    if (i == 0) {
                        a3 = string;
                        i = i;
                    }
                } catch (Throwable th2) {
                    o.a("getAndroidId throwable " + th2, new Object[0]);
                }
                a(a3, a2, b);
                return a3;
            }
            return a3;
        }
    }

    public static synchronized String a(Context context, int i, boolean z) {
        Context applicationContext;
        TelephonyManager telephonyManager;
        synchronized (b.class) {
            if (!c()) {
                return "";
            }
            if (!a(context, EnumC0035b.DEVICEID)) {
                return "";
            }
            com.qq.gdt.action.multioprocess.b.a b = b();
            a aVar = a.DEVICEID0_TYPE;
            if (i == 1) {
                aVar = a.DEVICEID1_TYPE;
            }
            com.qq.gdt.action.multioprocess.b.b a2 = a(b, aVar);
            String a3 = a2.a();
            if (TextUtils.isEmpty(a3) && !a(a2.b(), a2.c())) {
                if (z && !q.a(context, "android.permission.READ_PHONE_STATE")) {
                    return a3;
                }
                a2.d();
                if (Build.VERSION.SDK_INT < 26 && Build.VERSION.SDK_INT >= 23 && context != null && (applicationContext = context.getApplicationContext()) != null) {
                    try {
                        Object systemService = applicationContext.getSystemService("phone");
                        if ((systemService instanceof TelephonyManager) && (telephonyManager = (TelephonyManager) TelephonyManager.class.cast(systemService)) != null) {
                            String deviceId = telephonyManager.getDeviceId(i);
                            if (!TextUtils.isEmpty(deviceId)) {
                                a3 = deviceId;
                            }
                        }
                    } catch (Throwable th) {
                        o.a("getDeviceId throwable" + th, new Object[0]);
                    }
                }
                a(a3, a2, b);
                return a3;
            }
            return a3;
        }
    }

    public static synchronized String a(Context context, boolean z) {
        Context applicationContext;
        TelephonyManager telephonyManager;
        synchronized (b.class) {
            if (!c()) {
                return com.qq.gdt.action.e.a().B().getDevImei();
            }
            if (!a(context, EnumC0035b.DEVICEID)) {
                return "";
            }
            com.qq.gdt.action.multioprocess.b.a b = b();
            com.qq.gdt.action.multioprocess.b.b a2 = a(b, a.DEVICEID_TYPE);
            String a3 = a2.a();
            if (TextUtils.isEmpty(a3) && !a(a2.b(), a2.c())) {
                if (z && !q.a(context, "android.permission.READ_PHONE_STATE")) {
                    return a3;
                }
                a2.d();
                if (Build.VERSION.SDK_INT < 26 && context != null && (applicationContext = context.getApplicationContext()) != null) {
                    try {
                        Object systemService = applicationContext.getSystemService("phone");
                        if ((systemService instanceof TelephonyManager) && (telephonyManager = (TelephonyManager) TelephonyManager.class.cast(systemService)) != null) {
                            String deviceId = telephonyManager.getDeviceId();
                            if (!TextUtils.isEmpty(deviceId)) {
                                a3 = deviceId;
                            }
                        }
                    } catch (Throwable th) {
                        o.a("getDeviceId throwable" + th, new Object[0]);
                    }
                }
                a(a3, a2, b);
                return a3;
            }
            return a3;
        }
    }

    public static void a(String str, com.qq.gdt.action.multioprocess.b.b bVar, com.qq.gdt.action.multioprocess.b.a aVar) {
        bVar.a(str);
        com.qq.gdt.action.multioprocess.d.a().a(aVar);
    }

    public static boolean a(int i, int i2) {
        return i >= i2;
    }

    public static boolean a(Context context, EnumC0035b enumC0035b) {
        int i;
        try {
            switch (AnonymousClass1.a[enumC0035b.ordinal()]) {
                case 1:
                    i = com.qq.gdt.action.b.a(context).i();
                    break;
                case 2:
                    i = com.qq.gdt.action.b.a(context).j();
                    break;
                case 3:
                    i = com.qq.gdt.action.b.a(context).k();
                    break;
                case 4:
                    i = com.qq.gdt.action.b.a(context).l();
                    break;
                case 5:
                    i = com.qq.gdt.action.b.a(context).g();
                    break;
                case 6:
                    i = com.qq.gdt.action.b.a(context).h();
                    break;
                default:
                    return false;
            }
            return i == 0;
        } catch (Throwable th) {
            o.a("!checkSwitchOpen error" + th, new Object[0]);
            return false;
        }
    }

    public static synchronized com.qq.gdt.action.multioprocess.b.a b() {
        com.qq.gdt.action.multioprocess.b.a e;
        synchronized (b.class) {
            e = com.qq.gdt.action.multioprocess.d.a().e();
            if (e == null) {
                e = new com.qq.gdt.action.multioprocess.b.a();
            }
        }
        return e;
    }

    public static synchronized String b(Context context, int i, boolean z) {
        Context applicationContext;
        TelephonyManager telephonyManager;
        synchronized (b.class) {
            if (!c()) {
                return "";
            }
            if (!a(context, EnumC0035b.IMEI)) {
                return "";
            }
            com.qq.gdt.action.multioprocess.b.a b = b();
            a aVar = a.IMEI0_TYPE;
            if (i == 1) {
                aVar = a.IMEI1_TYPE;
            }
            com.qq.gdt.action.multioprocess.b.b a2 = a(b, aVar);
            String a3 = a2.a();
            if (TextUtils.isEmpty(a3) && !a(a2.b(), a2.c())) {
                if (z && !q.a(context, "android.permission.READ_PHONE_STATE")) {
                    return a3;
                }
                a2.d();
                if (Build.VERSION.SDK_INT < 29 && Build.VERSION.SDK_INT >= 26 && context != null && (applicationContext = context.getApplicationContext()) != null) {
                    try {
                        Object systemService = applicationContext.getSystemService("phone");
                        if ((systemService instanceof TelephonyManager) && (telephonyManager = (TelephonyManager) TelephonyManager.class.cast(systemService)) != null) {
                            String imei = telephonyManager.getImei(i);
                            if (!TextUtils.isEmpty(imei)) {
                                a3 = imei;
                            }
                        }
                    } catch (Throwable th) {
                        o.a("getImei throwable" + th, new Object[0]);
                    }
                }
                a(a3, a2, b);
                return a3;
            }
            return a3;
        }
    }

    public static synchronized String b(Context context, boolean z) {
        Context applicationContext;
        TelephonyManager telephonyManager;
        synchronized (b.class) {
            if (!c()) {
                return com.qq.gdt.action.e.a().B().getDevImei();
            }
            if (!a(context, EnumC0035b.IMEI)) {
                return "";
            }
            com.qq.gdt.action.multioprocess.b.a b = b();
            com.qq.gdt.action.multioprocess.b.b a2 = a(b, a.IMEI_TYPE);
            String a3 = a2.a();
            if (TextUtils.isEmpty(a3) && !a(a2.b(), a2.c())) {
                if (z && !q.a(context, "android.permission.READ_PHONE_STATE")) {
                    return a3;
                }
                a2.d();
                if (Build.VERSION.SDK_INT < 29 && Build.VERSION.SDK_INT >= 26 && context != null && (applicationContext = context.getApplicationContext()) != null) {
                    try {
                        Object systemService = applicationContext.getSystemService("phone");
                        if ((systemService instanceof TelephonyManager) && (telephonyManager = (TelephonyManager) TelephonyManager.class.cast(systemService)) != null) {
                            String imei = telephonyManager.getImei();
                            if (!TextUtils.isEmpty(imei)) {
                                a3 = imei;
                            }
                        }
                    } catch (Throwable th) {
                        o.a("getImei throwable " + th, new Object[0]);
                    }
                }
                a(a3, a2, b);
                return a3;
            }
            return a3;
        }
    }

    public static synchronized String c(Context context, int i, boolean z) {
        Context applicationContext;
        TelephonyManager telephonyManager;
        synchronized (b.class) {
            if (!a(context, EnumC0035b.MEID)) {
                return "";
            }
            com.qq.gdt.action.multioprocess.b.a b = b();
            a aVar = a.MEID0_TYPE;
            if (i == 1) {
                aVar = a.MEID1_TYPE;
            }
            com.qq.gdt.action.multioprocess.b.b a2 = a(b, aVar);
            String a3 = a2.a();
            if (TextUtils.isEmpty(a3) && !a(a2.b(), a2.c())) {
                if (z && !q.a(context, "android.permission.READ_PHONE_STATE")) {
                    return a3;
                }
                a2.d();
                if (Build.VERSION.SDK_INT < 29 && Build.VERSION.SDK_INT >= 26 && context != null && (applicationContext = context.getApplicationContext()) != null) {
                    try {
                        Object systemService = applicationContext.getSystemService("phone");
                        if ((systemService instanceof TelephonyManager) && (telephonyManager = (TelephonyManager) TelephonyManager.class.cast(systemService)) != null) {
                            String meid = telephonyManager.getMeid(i);
                            if (!TextUtils.isEmpty(meid)) {
                                a3 = meid;
                            }
                        }
                    } catch (Throwable th) {
                        o.a("getMeid throwable " + th, new Object[0]);
                    }
                }
                a(a3, a2, b);
                return a3;
            }
            return a3;
        }
    }

    public static synchronized String c(Context context, boolean z) {
        Context applicationContext;
        TelephonyManager telephonyManager;
        synchronized (b.class) {
            if (!a(context, EnumC0035b.MEID)) {
                return "";
            }
            com.qq.gdt.action.multioprocess.b.a b = b();
            com.qq.gdt.action.multioprocess.b.b a2 = a(b, a.MEID_TYPE);
            String a3 = a2.a();
            if (TextUtils.isEmpty(a3) && !a(a2.b(), a2.c())) {
                if (z && !q.a(context, "android.permission.READ_PHONE_STATE")) {
                    return a3;
                }
                a2.d();
                if (Build.VERSION.SDK_INT < 29 && Build.VERSION.SDK_INT >= 26 && context != null && (applicationContext = context.getApplicationContext()) != null) {
                    try {
                        Object systemService = applicationContext.getSystemService("phone");
                        if ((systemService instanceof TelephonyManager) && (telephonyManager = (TelephonyManager) TelephonyManager.class.cast(systemService)) != null) {
                            String meid = telephonyManager.getMeid();
                            if (!TextUtils.isEmpty(meid)) {
                                a3 = meid;
                            }
                        }
                    } catch (Throwable th) {
                        o.a("getMeid throwable " + th, new Object[0]);
                    }
                }
                a(a3, a2, b);
                return a3;
            }
            return a3;
        }
    }

    private static boolean c() {
        return com.qq.gdt.action.e.a().B().isCanUsePhoneState();
    }
}
