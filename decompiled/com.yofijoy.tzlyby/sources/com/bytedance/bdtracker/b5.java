package com.bytedance.bdtracker;

import android.app.ActionBar;
import android.app.Activity;
import android.content.pm.PackageManager;
import android.os.Build;
import android.text.TextUtils;
import android.view.View;
import com.bytedance.applog.IPageMeta;
import com.bytedance.applog.annotation.PageMeta;
import com.bytedance.applog.log.LoggerImpl;
import com.taptap.sdk.core.internal.event.iap.lib2plus.BillingClientConstants;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class b5 {
    public static final List<String> a;
    public static final List<String> b;
    public static final List<Class<?>> c;
    public static final List<Class<?>> d;
    public static final List<String> e;

    static {
        List<String> singletonList = Collections.singletonList("android.app.Activity");
        a = singletonList;
        b = Arrays.asList("android.app.Fragment", "androidx.fragment.app.Fragment", "android.support.v4.app.Fragment");
        c = new ArrayList();
        d = new ArrayList();
        e = Collections.singletonList("PageUtils");
        Iterator<String> it = singletonList.iterator();
        while (it.hasNext()) {
            Class<?> b2 = k0.b(it.next());
            if (b2 != null) {
                c.add(b2);
            }
        }
        Iterator<String> it2 = b.iterator();
        while (it2.hasNext()) {
            Class<?> b3 = k0.b(it2.next());
            if (b3 != null) {
                d.add(b3);
            }
        }
    }

    public static View a(Object obj) {
        try {
            Method method = obj.getClass().getMethod("getView", new Class[0]);
            if (method == null) {
                return null;
            }
            Object invoke = method.invoke(obj, new Object[0]);
            if (invoke instanceof View) {
                return (View) invoke;
            }
            return null;
        } catch (Throwable unused) {
            return null;
        }
    }

    public static String b(Object obj) {
        PageMeta pageMeta;
        if (obj == null) {
            return "";
        }
        if (obj instanceof IPageMeta) {
            try {
                return ((IPageMeta) obj).path();
            } catch (Throwable th) {
                LoggerImpl.global().error(e, "Cannot get path from IPageMeta", th, new Object[0]);
            }
        }
        return (b.a(b.c) || !obj.getClass().isAnnotationPresent(PageMeta.class) || (pageMeta = (PageMeta) obj.getClass().getAnnotation(PageMeta.class)) == null || TextUtils.isEmpty(pageMeta.path())) ? obj.getClass().getCanonicalName() : pageMeta.path();
    }

    public static String c(Object obj) {
        Object invoke;
        CharSequence charSequence;
        String charSequence2;
        PageMeta pageMeta;
        if (obj == null) {
            return "";
        }
        if (obj instanceof IPageMeta) {
            try {
                return ((IPageMeta) obj).title();
            } catch (Throwable th) {
                LoggerImpl.global().error(e, "Cannot get title from IPageMeta", th, new Object[0]);
            }
        }
        if (!b.a(b.c) && obj.getClass().isAnnotationPresent(PageMeta.class) && (pageMeta = (PageMeta) obj.getClass().getAnnotation(PageMeta.class)) != null && !TextUtils.isEmpty(pageMeta.title())) {
            return pageMeta.title();
        }
        if (obj instanceof Activity) {
            Activity activity = (Activity) obj;
            if (!TextUtils.isEmpty(activity.getTitle())) {
                return activity.getTitle().toString();
            }
            if (Build.VERSION.SDK_INT >= 11) {
                ActionBar actionBar = activity.getActionBar();
                if (actionBar != null) {
                    if (!TextUtils.isEmpty(actionBar.getTitle())) {
                        charSequence2 = actionBar.getTitle().toString();
                    }
                    charSequence2 = null;
                } else {
                    try {
                        Class<?> a2 = k0.a("android.support.v7.app.AppCompatActivity", "androidx.appcompat.app.AppCompatActivity");
                        if (a2 != null && a2.isInstance(activity) && (invoke = activity.getClass().getMethod("getSupportActionBar", new Class[0]).invoke(activity, new Object[0])) != null && (charSequence = (CharSequence) invoke.getClass().getMethod(BillingClientConstants.METHOD_GET_PRODUCT_TITLE, new Class[0]).invoke(invoke, new Object[0])) != null) {
                            charSequence2 = charSequence.toString();
                        }
                    } catch (Exception unused) {
                    }
                    charSequence2 = null;
                }
                if (!TextUtils.isEmpty(charSequence2)) {
                    return charSequence2;
                }
            }
            try {
                PackageManager packageManager = ((Activity) obj).getPackageManager();
                if (packageManager != null) {
                    CharSequence loadLabel = packageManager.getActivityInfo(((Activity) obj).getComponentName(), 0).loadLabel(packageManager);
                    if (!TextUtils.isEmpty(loadLabel)) {
                        return loadLabel.toString();
                    }
                }
            } catch (Exception e2) {
                LoggerImpl.global().error(e, "Cannot get title from activity label", e2, new Object[0]);
            }
        }
        return obj.getClass().getName();
    }

    public static JSONObject d(Object obj) {
        if (!(obj instanceof IPageMeta)) {
            return null;
        }
        try {
            return ((IPageMeta) obj).pageProperties();
        } catch (Throwable th) {
            LoggerImpl.global().error(e, "Cannot get track properties from activity", th, new Object[0]);
            return null;
        }
    }
}
