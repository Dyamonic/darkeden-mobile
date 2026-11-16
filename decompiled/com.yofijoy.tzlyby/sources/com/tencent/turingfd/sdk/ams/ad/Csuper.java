package com.tencent.turingfd.sdk.ams.ad;

import android.os.Handler;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.Window;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.HashMap;

/* renamed from: com.tencent.turingfd.sdk.ams.ad.super, reason: invalid class name */
/* loaded from: classes2.dex */
public class Csuper implements ViewTreeObserver.OnPreDrawListener {
    public final /* synthetic */ Window a;
    public final /* synthetic */ Cnew b;
    public final /* synthetic */ String c;

    public Csuper(Window window, Cnew cnew, String str) {
        this.a = window;
        this.b = cnew;
        this.c = str;
    }

    @Override // android.view.ViewTreeObserver.OnPreDrawListener
    public boolean onPreDraw() {
        Object obj;
        Object obj2;
        Object a;
        try {
            View decorView = this.a.getDecorView();
            decorView.getViewTreeObserver().removeOnPreDrawListener(this);
            obj = null;
            try {
                Method declaredMethod = View.class.getDeclaredMethod("getViewRootImpl", new Class[0]);
                declaredMethod.setAccessible(true);
                obj2 = declaredMethod.invoke(decorView, new Object[0]);
            } catch (Throwable unused) {
                obj2 = null;
            }
        } catch (Throwable unused2) {
        }
        if (obj2 == null) {
            return true;
        }
        Class<?> cls = obj2.getClass();
        HashMap<String, Class<?>> hashMap = Apple.a;
        try {
            Method a2 = Apple.a(cls, "getAccessibilityInteractionController", (Class<?>[]) null);
            if (a2 != null) {
                obj = a2.invoke(obj2, null);
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
        if (obj == null || (a = Apple.a(obj.getClass(), "mHandler", obj)) == null) {
            return true;
        }
        Field declaredField = Handler.class.getDeclaredField("mCallback");
        declaredField.setAccessible(true);
        Handler.Callback callback = (Handler.Callback) declaredField.get(a);
        if (callback instanceof Cfor) {
            return true;
        }
        declaredField.set(a, new Cfor(callback, this.b, this.c));
        return true;
    }
}
