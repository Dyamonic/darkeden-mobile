package com.bytedance.dr.impl;

import android.content.Context;
import com.bytedance.applog.log.IAppLogLogger;
import com.bytedance.applog.log.LoggerImpl;
import com.bytedance.dr.OaidApi;
import java.lang.reflect.Method;

/* loaded from: classes.dex */
public final class n implements OaidApi {
    public static Object a;
    public static Class<?> b;
    public static Method c;

    static {
        try {
            Class<?> cls = Class.forName("com.android.id.impl.IdProviderImpl");
            b = cls;
            a = cls.newInstance();
            c = b.getMethod("getOAID", Context.class);
        } catch (Throwable th) {
            LoggerImpl.global().error(1, "Oaid#Api#static reflect exception! ", th, new Object[0]);
        }
    }

    public static boolean a() {
        IAppLogLogger global = LoggerImpl.global();
        StringBuilder a2 = com.bytedance.bdtracker.a.a("Oaid#XiaomiOppoImpl isSupport -> ");
        a2.append((b == null || a == null || c == null) ? false : true);
        global.debug(a2.toString(), new Object[0]);
        return (b == null || a == null || c == null) ? false : true;
    }

    @Override // com.bytedance.dr.OaidApi
    public String getName() {
        return "Xiaomi";
    }

    @Override // com.bytedance.dr.OaidApi
    public OaidApi.a getOaid(Context context) {
        String str;
        Object invoke;
        try {
            OaidApi.a aVar = new OaidApi.a();
            Method method = c;
            Object obj = a;
            if (obj != null && method != null) {
                try {
                    invoke = method.invoke(obj, context);
                } catch (Throwable unused) {
                }
                if (invoke != null) {
                    str = (String) invoke;
                    aVar.a = str;
                    return aVar;
                }
            }
            str = null;
            aVar.a = str;
            return aVar;
        } catch (Throwable th) {
            LoggerImpl.global().error(1, "Oaid#invokeMethod get oaid failed", th, new Object[0]);
            return null;
        }
    }

    @Override // com.bytedance.dr.OaidApi
    public boolean support(Context context) {
        return a();
    }
}
