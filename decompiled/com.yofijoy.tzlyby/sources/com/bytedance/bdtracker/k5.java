package com.bytedance.bdtracker;

import android.content.Context;
import android.hardware.display.DisplayManager;
import android.os.Build;
import android.text.TextUtils;
import android.util.LruCache;
import android.util.SparseArray;
import android.view.Display;
import android.view.View;
import android.webkit.WebView;
import com.bytedance.applog.R;
import com.bytedance.applog.log.LoggerImpl;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

/* loaded from: classes.dex */
public class k5 {
    public static SparseArray<String> a;
    public static Set<Integer> b;
    public static LruCache<Class, String> c = new LruCache<>(100);

    public static int a(View view) {
        Display display;
        if (view == null || Build.VERSION.SDK_INT < 17 || (display = view.getDisplay()) == null) {
            return 0;
        }
        return display.getDisplayId();
    }

    public static String a(View view, boolean z) {
        Object tag = view.getTag(84159242);
        if (tag != null && (tag instanceof String)) {
            return (String) tag;
        }
        if (z) {
            return null;
        }
        if (a == null) {
            a = new SparseArray<>();
        }
        if (b == null) {
            b = new HashSet();
        }
        int id = view.getId();
        if (id > 2130706432 && !b.contains(Integer.valueOf(id))) {
            String str = a.get(id);
            if (str != null) {
                return str;
            }
            try {
                String resourceEntryName = view.getResources().getResourceEntryName(id);
                a.put(id, resourceEntryName);
                return resourceEntryName;
            } catch (Exception unused) {
                b.add(Integer.valueOf(id));
            }
        }
        return null;
    }

    public static String a(Class cls) {
        String str = c.get(cls);
        if (TextUtils.isEmpty(str)) {
            str = cls.getSimpleName();
            if (TextUtils.isEmpty(str)) {
                str = "Anonymous";
            }
            c.put(cls, str);
            if (!r4.h && !r4.e && !r4.a && str.contains("RecyclerView")) {
                try {
                    if (r4.a((Class<?>) cls) != null && r4.c != null) {
                        r4.b = cls;
                        r4.a = true;
                    }
                } catch (Exception e) {
                    LoggerImpl.global().error("checkCustomRecyclerView failed", e, new Object[0]);
                }
            }
        }
        return str;
    }

    public static String a(String str) {
        return str == null ? "" : (TextUtils.isEmpty(str) || str.length() <= 20) ? str : str.substring(0, 20);
    }

    public static boolean a(Context context, int i) {
        try {
            if (Build.VERSION.SDK_INT >= 17) {
                return ((DisplayManager) context.getSystemService("display")).getDisplays()[0].getDisplayId() == i;
            }
            return true;
        } catch (Exception unused) {
            return true;
        }
    }

    public static boolean b(View view) {
        return view == null || view.getTag(R.id.applog_tag_ignore) != null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:63:0x00ca, code lost:
    
        if (r0.getText() != null) goto L64;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x010d, code lost:
    
        r0 = r0.getText();
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x010b, code lost:
    
        if (r0.getText() != null) goto L64;
     */
    /* JADX WARN: Code restructure failed: missing block: B:91:0x0133, code lost:
    
        if (r0 != null) goto L84;
     */
    /* JADX WARN: Code restructure failed: missing block: B:95:0x0143, code lost:
    
        if (r0 != null) goto L84;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.util.ArrayList<java.lang.String> a(android.view.View r7, java.lang.String r8) {
        /*
            Method dump skipped, instructions count: 373
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.bdtracker.k5.a(android.view.View, java.lang.String):java.util.ArrayList");
    }

    public static boolean a(WebView webView) {
        Object obj;
        try {
            Field declaredField = WebView.class.getDeclaredField("mProvider");
            declaredField.setAccessible(true);
            obj = declaredField.get(webView);
        } catch (Exception e) {
            LoggerImpl.global().error(Collections.singletonList("ViewUtils"), "Check isDestroyed failed", e, new Object[0]);
        }
        if ("android.webkit.WebViewClassic".equals(obj)) {
            Field declaredField2 = obj.getClass().getDeclaredField("mWebViewCore");
            declaredField2.setAccessible(true);
            return declaredField2.get(obj) == null;
        }
        Field declaredField3 = obj.getClass().getDeclaredField("mAwContents");
        declaredField3.setAccessible(true);
        Object obj2 = declaredField3.get(obj);
        Method declaredMethod = obj2.getClass().getDeclaredMethod("isDestroyed", Integer.TYPE);
        declaredMethod.setAccessible(true);
        Object invoke = declaredMethod.invoke(obj2, 0);
        if (invoke instanceof Boolean) {
            return ((Boolean) invoke).booleanValue();
        }
        return false;
    }
}
