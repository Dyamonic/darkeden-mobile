package com.tencent.turingfd.sdk.ams.ad;

import android.content.Context;
import android.net.Proxy;
import android.os.Build;

/* renamed from: com.tencent.turingfd.sdk.ams.ad.synchronized, reason: invalid class name */
/* loaded from: classes2.dex */
public class Csynchronized {

    /* renamed from: com.tencent.turingfd.sdk.ams.ad.synchronized$do, reason: invalid class name */
    /* loaded from: classes2.dex */
    public static class Cdo implements CanisMinor {
        public final String[] a;
        public volatile int b = 0;

        public Cdo(String[] strArr) {
            this.a = strArr;
        }

        /* JADX WARN: Code restructure failed: missing block: B:136:0x0066, code lost:
        
            if ((r3 != null && r3.contains("ACCESS_NETWORK_STATE")) != false) goto L35;
         */
        /* JADX WARN: Removed duplicated region for block: B:27:0x006e  */
        /* JADX WARN: Removed duplicated region for block: B:32:0x020a  */
        /* JADX WARN: Removed duplicated region for block: B:35:0x0212  */
        /* JADX WARN: Removed duplicated region for block: B:57:0x0104 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:85:0x0073 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public com.tencent.turingfd.sdk.ams.ad.CanisMinor.Cdo a(byte[] r12) {
            /*
                Method dump skipped, instructions count: 610
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.tencent.turingfd.sdk.ams.ad.Csynchronized.Cdo.a(byte[]):com.tencent.turingfd.sdk.ams.ad.CanisMinor$do");
        }
    }

    public static String a(Context context) {
        if (Build.VERSION.SDK_INT >= 14) {
            return System.getProperty("http.proxyHost");
        }
        return Proxy.getHost(context);
    }

    public static int b(Context context) {
        if (Build.VERSION.SDK_INT >= 14) {
            try {
                return Integer.parseInt(System.getProperty("http.proxyPort"));
            } catch (NumberFormatException unused) {
                return -1;
            }
        }
        return Proxy.getPort(context);
    }
}
