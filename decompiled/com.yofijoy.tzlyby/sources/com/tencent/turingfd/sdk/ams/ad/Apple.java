package com.tencent.turingfd.sdk.ams.ad;

import android.text.TextUtils;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.HashMap;
import org.slf4j.Marker;

/* loaded from: classes2.dex */
public class Apple {
    public static HashMap<String, Class<?>> a = new HashMap<>();
    public static HashMap<Class<?>, HashMap<String, Field>> b = new HashMap<>();
    public static HashMap<Class<?>, HashMap<String, Method>> c = new HashMap<>();

    public static Object a(String str, String str2) {
        Class<?> cls;
        try {
            try {
                cls = a.get(str);
                if (cls == null) {
                    cls = Class.forName(str);
                }
                a.put(str, cls);
            } catch (Throwable th) {
                th.printStackTrace();
                cls = null;
            }
            return a(cls, str2, (Object) null);
        } catch (Throwable th2) {
            th2.printStackTrace();
            return null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:6:0x0036 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0037 A[Catch: all -> 0x003c, TRY_LEAVE, TryCatch #0 {all -> 0x003c, blocks: (B:8:0x0037, B:23:0x0030, B:12:0x0004, B:14:0x000e, B:15:0x0018, B:17:0x0020, B:20:0x0027), top: B:2:0x0001, inners: #1 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.Object a(java.lang.Class<?> r3, java.lang.String r4, java.lang.Object r5) {
        /*
            r0 = 0
            if (r3 != 0) goto L4
            goto L33
        L4:
            java.util.HashMap<java.lang.Class<?>, java.util.HashMap<java.lang.String, java.lang.reflect.Field>> r1 = com.tencent.turingfd.sdk.ams.ad.Apple.b     // Catch: java.lang.Throwable -> L2f
            java.lang.Object r1 = r1.get(r3)     // Catch: java.lang.Throwable -> L2f
            java.util.HashMap r1 = (java.util.HashMap) r1     // Catch: java.lang.Throwable -> L2f
            if (r1 != 0) goto L18
            java.util.HashMap r1 = new java.util.HashMap     // Catch: java.lang.Throwable -> L2f
            r1.<init>()     // Catch: java.lang.Throwable -> L2f
            java.util.HashMap<java.lang.Class<?>, java.util.HashMap<java.lang.String, java.lang.reflect.Field>> r2 = com.tencent.turingfd.sdk.ams.ad.Apple.b     // Catch: java.lang.Throwable -> L2f
            r2.put(r3, r1)     // Catch: java.lang.Throwable -> L2f
        L18:
            java.lang.Object r2 = r1.get(r4)     // Catch: java.lang.Throwable -> L2f
            java.lang.reflect.Field r2 = (java.lang.reflect.Field) r2     // Catch: java.lang.Throwable -> L2f
            if (r2 != 0) goto L24
            java.lang.reflect.Field r2 = r3.getDeclaredField(r4)     // Catch: java.lang.Throwable -> L2f
        L24:
            if (r2 != 0) goto L27
            goto L33
        L27:
            r3 = 1
            r2.setAccessible(r3)     // Catch: java.lang.Throwable -> L2f
            r1.put(r4, r2)     // Catch: java.lang.Throwable -> L2f
            goto L34
        L2f:
            r3 = move-exception
            r3.printStackTrace()     // Catch: java.lang.Throwable -> L3c
        L33:
            r2 = r0
        L34:
            if (r2 != 0) goto L37
            return r0
        L37:
            java.lang.Object r3 = r2.get(r5)     // Catch: java.lang.Throwable -> L3c
            return r3
        L3c:
            r3 = move-exception
            r3.printStackTrace()
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.turingfd.sdk.ams.ad.Apple.a(java.lang.Class, java.lang.String, java.lang.Object):java.lang.Object");
    }

    public static Method a(Class<?> cls, String str, Class<?>... clsArr) {
        if (cls != null) {
            try {
                if (!TextUtils.isEmpty(str)) {
                    StringBuffer stringBuffer = new StringBuffer(str);
                    if (clsArr != null) {
                        for (Class<?> cls2 : clsArr) {
                            stringBuffer.append(Marker.ANY_NON_NULL_MARKER);
                            stringBuffer.append(cls2.getName());
                        }
                    }
                    String stringBuffer2 = stringBuffer.toString();
                    HashMap<String, Method> hashMap = c.get(cls);
                    if (hashMap == null) {
                        hashMap = new HashMap<>();
                        c.put(cls, hashMap);
                    }
                    Method method = hashMap.get(stringBuffer2);
                    if (method == null) {
                        method = cls.getDeclaredMethod(str, clsArr);
                    }
                    if (method == null) {
                        return null;
                    }
                    method.setAccessible(true);
                    hashMap.put(stringBuffer2, method);
                    return method;
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
        return null;
    }
}
