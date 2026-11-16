package com.tencent.turingfd.sdk.ams.ad;

import android.text.TextUtils;
import java.util.Locale;

/* loaded from: classes2.dex */
public class Virgo {

    /* renamed from: com.tencent.turingfd.sdk.ams.ad.Virgo$do, reason: invalid class name */
    /* loaded from: classes2.dex */
    public static class Cdo {
        public int a;
        public int b;
        public int c;
        public String d;
        public int e;

        public Cdo(int i, int i2, String str, int i3, String str2, int i4) {
            this.d = "";
            this.a = i;
            this.b = i2;
            this.d = str;
            this.c = i3;
            this.e = i4;
        }

        public String toString() {
            return "" + String.format("% 6d", Integer.valueOf(this.a)) + "    " + String.format("% 6d", Integer.valueOf(this.b)) + "    " + String.format("% 6d", Integer.valueOf(this.c)) + "    " + this.d;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x00a1 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:33:? A[ADDED_TO_REGION, RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.tencent.turingfd.sdk.ams.ad.Virgo.Cdo b(int r12) {
        /*
            r0 = 0
            r1 = -1
            java.lang.String r2 = a(r12)     // Catch: java.lang.Throwable -> L98
            r3 = 1
            r4 = 0
            if (r12 == r1) goto L24
            java.lang.String r5 = new java.lang.String     // Catch: java.lang.Throwable -> L99
            java.util.Locale r6 = java.util.Locale.SIMPLIFIED_CHINESE     // Catch: java.lang.Throwable -> L99
            java.lang.String r7 = "/proc/%d/status"
            java.lang.Object[] r8 = new java.lang.Object[r3]     // Catch: java.lang.Throwable -> L99
            java.lang.Integer r9 = java.lang.Integer.valueOf(r12)     // Catch: java.lang.Throwable -> L99
            r8[r4] = r9     // Catch: java.lang.Throwable -> L99
            java.lang.String r6 = java.lang.String.format(r6, r7, r8)     // Catch: java.lang.Throwable -> L99
            byte[] r6 = com.tencent.turingfd.sdk.ams.ad.Cstrictfp.a(r6)     // Catch: java.lang.Throwable -> L99
            r5.<init>(r6)     // Catch: java.lang.Throwable -> L99
            goto L37
        L24:
            java.lang.String r5 = new java.lang.String     // Catch: java.lang.Throwable -> L99
            java.util.Locale r6 = java.util.Locale.SIMPLIFIED_CHINESE     // Catch: java.lang.Throwable -> L99
            java.lang.String r7 = "/proc/self/status"
            java.lang.Object[] r8 = new java.lang.Object[r4]     // Catch: java.lang.Throwable -> L99
            java.lang.String r6 = java.lang.String.format(r6, r7, r8)     // Catch: java.lang.Throwable -> L99
            byte[] r6 = com.tencent.turingfd.sdk.ams.ad.Cstrictfp.a(r6)     // Catch: java.lang.Throwable -> L99
            r5.<init>(r6)     // Catch: java.lang.Throwable -> L99
        L37:
            java.util.HashMap r6 = new java.util.HashMap     // Catch: java.lang.Throwable -> L99
            r6.<init>()     // Catch: java.lang.Throwable -> L99
            java.lang.String r7 = "\n"
            java.lang.String[] r5 = r5.split(r7)     // Catch: java.lang.Throwable -> L99
            int r7 = r5.length     // Catch: java.lang.Throwable -> L99
            r8 = r4
        L44:
            if (r8 >= r7) goto L65
            r9 = r5[r8]     // Catch: java.lang.Throwable -> L99
            java.lang.String r10 = ":"
            java.lang.String[] r9 = r9.split(r10)     // Catch: java.lang.Throwable -> L99
            int r10 = r9.length     // Catch: java.lang.Throwable -> L99
            r11 = 2
            if (r10 >= r11) goto L53
            goto L62
        L53:
            r10 = r9[r4]     // Catch: java.lang.Throwable -> L99
            java.lang.String r10 = r10.trim()     // Catch: java.lang.Throwable -> L99
            r9 = r9[r3]     // Catch: java.lang.Throwable -> L99
            java.lang.String r9 = r9.trim()     // Catch: java.lang.Throwable -> L99
            r6.put(r10, r9)     // Catch: java.lang.Throwable -> L99
        L62:
            int r8 = r8 + 1
            goto L44
        L65:
            java.lang.String r3 = "PPid"
            java.lang.Object r3 = r6.get(r3)     // Catch: java.lang.Throwable -> L99
            java.lang.String r3 = (java.lang.String) r3     // Catch: java.lang.Throwable -> L99
            int r3 = java.lang.Integer.parseInt(r3)     // Catch: java.lang.Throwable -> L99
            java.lang.String r5 = "Uid"
            java.lang.Object r5 = r6.get(r5)     // Catch: java.lang.Throwable -> L96
            java.lang.String r5 = (java.lang.String) r5     // Catch: java.lang.Throwable -> L96
            java.lang.String r7 = "\\s+"
            java.lang.String[] r5 = r5.split(r7)     // Catch: java.lang.Throwable -> L96
            r4 = r5[r4]     // Catch: java.lang.Throwable -> L96
            int r4 = java.lang.Integer.parseInt(r4)     // Catch: java.lang.Throwable -> L96
            java.lang.String r5 = "TracerPid"
            java.lang.Object r5 = r6.get(r5)     // Catch: java.lang.Throwable -> L9b
            java.lang.String r5 = (java.lang.String) r5     // Catch: java.lang.Throwable -> L9b
            int r5 = java.lang.Integer.parseInt(r5)     // Catch: java.lang.Throwable -> L9b
            r8 = r2
            r7 = r3
            r9 = r4
            r11 = r5
            goto L9f
        L96:
            r4 = r1
            goto L9b
        L98:
            r2 = r0
        L99:
            r3 = r1
            r4 = r3
        L9b:
            r11 = r1
            r8 = r2
            r7 = r3
            r9 = r4
        L9f:
            if (r8 == 0) goto Lae
            if (r7 == r1) goto Lae
            if (r9 != r1) goto La6
            goto Lae
        La6:
            com.tencent.turingfd.sdk.ams.ad.Virgo$do r0 = new com.tencent.turingfd.sdk.ams.ad.Virgo$do
            r10 = 0
            r5 = r0
            r6 = r12
            r5.<init>(r6, r7, r8, r9, r10, r11)
        Lae:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.turingfd.sdk.ams.ad.Virgo.b(int):com.tencent.turingfd.sdk.ams.ad.Virgo$do");
    }

    public static String a(int i) {
        byte[] a;
        try {
            byte[] a2 = Cstrictfp.a(String.format(Locale.SIMPLIFIED_CHINESE, "/proc/%d/cmdline", Integer.valueOf(i)), 100);
            String str = a2 != null ? new String(a2, 0, a(a2, 0, (char) 0)) : "";
            if (!TextUtils.isEmpty(str) || (a = Cstrictfp.a(String.format(Locale.SIMPLIFIED_CHINESE, "/proc/%d/status", Integer.valueOf(i)), 150)) == null) {
                return str;
            }
            int a3 = a(a, 7, '\n');
            return a3 == 0 ? "" : new String(a, 6, a3 - 6);
        } catch (Throwable th) {
            th.printStackTrace();
            return "";
        }
    }

    public static int a(byte[] bArr, int i, char c) {
        int i2;
        int i3 = i - 1;
        while (true) {
            i2 = i3 + 1;
            if (i3 >= bArr.length) {
                return 0;
            }
            if (i2 == bArr.length || bArr[i2] == c) {
                break;
            }
            i3 = i2;
        }
        return i2;
    }
}
