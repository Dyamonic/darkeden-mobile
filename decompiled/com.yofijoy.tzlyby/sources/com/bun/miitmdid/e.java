package com.bun.miitmdid;

import android.content.Context;
import com.bun.miitmdid.interfaces.IIdentifierListener;
import com.bun.miitmdid.interfaces.IdSupplier;
import java.util.concurrent.atomic.AtomicLong;

/* loaded from: classes.dex */
public class e {
    public static boolean a;
    public static boolean b;
    public static AtomicLong c = new AtomicLong(5000);
    public static boolean d = true;
    public static boolean e = true;
    public static boolean f = true;

    /* loaded from: classes.dex */
    public static /* synthetic */ class a {
        public static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[c.values().length];
            a = iArr;
            try {
                iArr[c.ASUS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                a[c.FREEMEOS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                a[c.HUAWEI.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                a[c.HONOR.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                a[c.LENOVO.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                a[c.MOTO.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                a[c.MEIZU.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                a[c.CHUANGLIAN.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                a[c.CHINATELECOM.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                a[c.NUBIA.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                a[c.OPPO.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                a[c.ONEPLUS.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                a[c.REALME.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                a[c.SAMSUNG.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                a[c.VIVO.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                a[c.XIAOMI.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                a[c.BLACKSHARK.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                a[c.ZTE.ordinal()] = 18;
            } catch (NoSuchFieldError unused18) {
            }
            try {
                a[c.PRIZE.ordinal()] = 19;
            } catch (NoSuchFieldError unused19) {
            }
            try {
                a[c.COOLPAD.ordinal()] = 20;
            } catch (NoSuchFieldError unused20) {
            }
            try {
                a[c.EEBBK.ordinal()] = 21;
            } catch (NoSuchFieldError unused21) {
            }
            try {
                a[c.OS360.ordinal()] = 22;
            } catch (NoSuchFieldError unused22) {
            }
        }
    }

    public e(boolean z, long j) {
        AtomicLong atomicLong;
        h0.a(z);
        if (j <= 0) {
            atomicLong = c;
            j = 5000;
        } else {
            atomicLong = c;
        }
        atomicLong.set(j);
    }

    public e(boolean z, long j, boolean z2, boolean z3, boolean z4) {
        AtomicLong atomicLong;
        h0.a(z);
        if (j <= 0) {
            atomicLong = c;
            j = 5000;
        } else {
            atomicLong = c;
        }
        atomicLong.set(j);
        a(z2, z3, z4);
    }

    public static native int a();

    public static native boolean a(Context context, String str);

    public final native int a(int i, IdSupplier idSupplier);

    public native int a(Context context, IIdentifierListener iIdentifierListener);

    public native void a(boolean z, boolean z2, boolean z3);
}
