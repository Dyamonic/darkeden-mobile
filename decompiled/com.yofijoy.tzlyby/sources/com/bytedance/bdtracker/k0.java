package com.bytedance.bdtracker;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Process;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewParent;
import android.widget.ImageView;
import androidx.core.internal.view.SupportMenu;
import androidx.core.os.EnvironmentCompat;
import androidx.core.view.InputDeviceCompat;
import com.bytedance.applog.IEventObserver;
import com.bytedance.applog.IPresetEventObserver;
import com.bytedance.applog.log.IAppLogLogger;
import com.bytedance.applog.log.LoggerImpl;
import com.taptap.sdk.core.internal.event.constants.TapEventParamConstants;
import java.io.BufferedReader;
import java.io.Closeable;
import java.io.FileInputStream;
import java.io.InputStreamReader;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import kotlin.TypeCastException;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class k0 {
    public static String a;

    public static Activity a(Context context) {
        if (!(context instanceof ContextWrapper)) {
            return null;
        }
        do {
            ContextWrapper contextWrapper = (ContextWrapper) context;
            if (contextWrapper instanceof Activity) {
                return (Activity) contextWrapper;
            }
            context = contextWrapper.getBaseContext();
        } while (context instanceof ContextWrapper);
        return null;
    }

    public static l0 a(IEventObserver iEventObserver, IPresetEventObserver iPresetEventObserver) {
        return new l0(iEventObserver, iPresetEventObserver, null);
    }

    public static Class<?> a(String... strArr) {
        if (strArr != null && strArr.length != 0) {
            for (String str : strArr) {
                Class<?> b = b(str);
                if (b != null) {
                    return b;
                }
            }
        }
        return null;
    }

    public static String a(Object obj) {
        return obj != null ? obj.toString() : "";
    }

    public static String a(boolean z) {
        return z ? "yes" : "no";
    }

    public static List a() {
        return CollectionsKt.listOf((Object[]) new String[]{"metrics_category", "metrics_name"});
    }

    public static JSONObject a(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        JSONObject jSONObject2 = new JSONObject();
        a(jSONObject2, jSONObject);
        try {
            String a2 = o5.a(jSONObject2.optJSONObject(TapEventParamConstants.PARAM_SUB_OAID));
            if (TextUtils.isEmpty(a2)) {
                return jSONObject2;
            }
            jSONObject2.put(TapEventParamConstants.PARAM_SUB_OAID, a2);
            return jSONObject2;
        } catch (Throwable th) {
            LoggerImpl.global().error("transferHeaderOaid error", th, new Object[0]);
            return jSONObject2;
        }
    }

    public static JSONObject a(JSONObject jSONObject, JSONObject jSONObject2) {
        if (jSONObject2 != null) {
            try {
                Iterator<String> keys = jSONObject2.keys();
                while (keys.hasNext()) {
                    String next = keys.next();
                    jSONObject.put(next, jSONObject2.opt(next));
                }
            } catch (Throwable th) {
                LoggerImpl.global().error("copy json error", th, new Object[0]);
            }
        }
        return jSONObject;
    }

    public static void a(Cursor cursor) {
        if (cursor != null) {
            try {
                cursor.close();
            } catch (Throwable th) {
                LoggerImpl.global().error("closeSafely error", th, new Object[0]);
            }
        }
    }

    public static void a(SQLiteDatabase sQLiteDatabase) {
        if (sQLiteDatabase != null) {
            try {
                sQLiteDatabase.endTransaction();
            } catch (Throwable th) {
                LoggerImpl.global().error("endDbTransactionSafely error", th, new Object[0]);
            }
        }
    }

    public static void a(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (Throwable th) {
                LoggerImpl.global().error("closeSafely error", th, new Object[0]);
            }
        }
    }

    public static boolean a(Object obj, Object obj2) {
        return (obj != null || obj2 == null) && (obj == null || obj2 != null);
    }

    public static boolean a(Object obj, Object obj2, String str) {
        if (!a(obj, obj2)) {
            return false;
        }
        if (obj instanceof JSONObject) {
            return a((JSONObject) obj, (JSONObject) obj2, str);
        }
        if (obj instanceof JSONArray) {
            JSONArray jSONArray = (JSONArray) obj;
            JSONArray jSONArray2 = (JSONArray) obj2;
            if (!a(jSONArray, jSONArray2)) {
                return false;
            }
            HashMap hashMap = new HashMap();
            for (int i = 0; i < jSONArray.length(); i++) {
                Object obj3 = jSONArray.get(i);
                hashMap.put(obj3, (!hashMap.containsKey(obj3) || hashMap.get(obj3) == null) ? 1 : Integer.valueOf(((Integer) hashMap.get(obj3)).intValue() + 1));
            }
            HashMap hashMap2 = new HashMap();
            for (int i2 = 0; i2 < jSONArray2.length(); i2++) {
                Object obj4 = jSONArray2.get(i2);
                hashMap2.put(obj4, (!hashMap2.containsKey(obj4) || hashMap2.get(obj4) == null) ? 1 : Integer.valueOf(((Integer) hashMap2.get(obj4)).intValue() + 1));
            }
            if (hashMap.size() != hashMap2.size()) {
                return false;
            }
            for (Map.Entry entry : hashMap.entrySet()) {
                if (!((Integer) entry.getValue()).equals((Integer) hashMap2.get(entry.getKey()))) {
                    return false;
                }
            }
            return true;
        }
        if (obj.getClass() != obj2.getClass()) {
            return false;
        }
        String obj5 = obj.toString();
        String obj6 = obj2.toString();
        return a((Object) obj5, (Object) obj6) && obj5.equals(obj6);
    }

    public static boolean a(Object obj, String str) {
        return a(obj == null, str);
    }

    public static boolean a(Object obj, String... strArr) {
        if (strArr != null && strArr.length != 0) {
            for (String str : strArr) {
                Class<?> b = b(str);
                if (b != null && b.isInstance(obj)) {
                    return true;
                }
            }
        }
        return false;
    }

    public static boolean a(String str) {
        boolean z = false;
        if (TextUtils.isEmpty(str) || EnvironmentCompat.MEDIA_UNKNOWN.equalsIgnoreCase(str) || "Null".equalsIgnoreCase(str)) {
            return false;
        }
        int i = 0;
        while (true) {
            if (i >= str.length()) {
                z = true;
                break;
            }
            if (str.charAt(i) != '0') {
                break;
            }
            i++;
        }
        return !z;
    }

    public static boolean a(String str, String str2) {
        return (TextUtils.isEmpty(str) && TextUtils.isEmpty(str2)) || (str != null && str.equals(str2));
    }

    public static boolean a(JSONObject jSONObject, JSONObject jSONObject2, String str) {
        if (!a((Object) jSONObject, (Object) jSONObject2)) {
            return false;
        }
        if (jSONObject != null && jSONObject.length() != jSONObject2.length()) {
            return false;
        }
        Iterator<String> keys = jSONObject.keys();
        boolean z = true;
        while (keys.hasNext()) {
            String next = keys.next();
            z = a(jSONObject.get(next), jSONObject2.get(next), next);
            if (!z) {
                break;
            }
        }
        return z;
    }

    public static boolean a(JSONObject jSONObject, Class<?>[] clsArr, Class<?>[] clsArr2) {
        if (jSONObject == null) {
            return false;
        }
        Iterator<String> keys = jSONObject.keys();
        while (keys.hasNext()) {
            Object obj = jSONObject.get(keys.next());
            if (obj == null) {
                return false;
            }
            if (obj instanceof JSONArray) {
                JSONArray jSONArray = (JSONArray) obj;
                for (int i = 0; i < jSONArray.length(); i++) {
                    Object obj2 = jSONArray.get(i);
                    if (clsArr2 != null && !a(clsArr2, obj2.getClass())) {
                        return false;
                    }
                }
            } else if (clsArr != null && !a(clsArr, obj.getClass())) {
                return false;
            }
        }
        return true;
    }

    public static <T> boolean a(T[] tArr, T t) {
        for (T t2 : tArr) {
            if (t2 == t) {
                return true;
            }
        }
        return false;
    }

    public static Class<?> b(String str) {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException unused) {
            return null;
        }
    }

    public static String b() {
        BufferedReader bufferedReader;
        String str = a;
        if (!TextUtils.isEmpty(str)) {
            return str;
        }
        String str2 = null;
        try {
            bufferedReader = new BufferedReader(new InputStreamReader(new FileInputStream("/proc/" + Process.myPid() + "/cmdline"), "iso-8859-1"));
            try {
                StringBuilder sb = new StringBuilder();
                while (true) {
                    int read = bufferedReader.read();
                    if (read <= 0) {
                        break;
                    }
                    sb.append((char) read);
                }
                str2 = sb.toString();
            } catch (Throwable unused) {
            }
        } catch (Throwable unused2) {
            bufferedReader = null;
        }
        a((Closeable) bufferedReader);
        a = str2;
        IAppLogLogger global = LoggerImpl.global();
        StringBuilder a2 = a.a("getProcessName: ");
        a2.append(a);
        global.debug(a2.toString(), new Object[0]);
        return a;
    }

    public static String b(View view) {
        if (view == null) {
            return null;
        }
        return c(view) + "$$" + view.hashCode();
    }

    public static synchronized String c() {
        String str;
        synchronized (k0.class) {
            str = UUID.randomUUID().toString().replace("-", "").toLowerCase() + System.currentTimeMillis();
        }
        return str;
    }

    /* JADX WARN: Removed duplicated region for block: B:52:0x009f A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:53:0x00a2  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String c(android.view.View r8) {
        /*
            Method dump skipped, instructions count: 237
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.bdtracker.k0.c(android.view.View):java.lang.String");
    }

    public static JSONObject c(JSONObject jSONObject, JSONObject jSONObject2) {
        if (jSONObject == null) {
            return jSONObject2;
        }
        Iterator<String> keys = jSONObject.keys();
        while (keys.hasNext()) {
            try {
                String next = keys.next();
                jSONObject2.put(next, jSONObject.opt(next));
            } catch (JSONException e) {
                LoggerImpl.global().error(Collections.singletonList("JsonUtils"), "Merge json interrupted.", e, new Object[0]);
            }
        }
        return jSONObject2;
    }

    public static boolean c(String str) {
        return !d(str);
    }

    public static List d() {
        return CollectionsKt.emptyList();
    }

    public static boolean d(View view) {
        if (view == null) {
            return false;
        }
        if (l5.a(view)) {
            return true;
        }
        if (view.getWidth() <= 0 || view.getHeight() <= 0 || view.getAlpha() <= 0.0f || !view.getLocalVisibleRect(new Rect())) {
            return false;
        }
        return !(view.getVisibility() == 0 || view.getAnimation() == null || !view.getAnimation().getFillAfter()) || view.getVisibility() == 0;
    }

    public static boolean d(String str) {
        return str != null && str.length() > 0;
    }

    public static boolean e(View view) {
        boolean d = d(view);
        if (!d) {
            return d;
        }
        for (ViewParent parent = view.getParent(); parent != null; parent = parent.getParent()) {
            if (!(parent instanceof View)) {
                return d;
            }
            if (!d((View) parent)) {
                break;
            }
        }
        return false;
    }

    public static boolean e(String str) {
        int length = str != null ? str.length() : 0;
        if (length < 13 || length > 128) {
            return false;
        }
        for (int i = 0; i < length; i++) {
            char charAt = str.charAt(i);
            if ((charAt < '0' || charAt > '9') && ((charAt < 'a' || charAt > 'f') && ((charAt < 'A' || charAt > 'F') && charAt != '-'))) {
                return false;
            }
        }
        return true;
    }

    public static boolean b(JSONObject jSONObject, JSONObject jSONObject2) {
        return (jSONObject == null || jSONObject2 == null) ? jSONObject == jSONObject2 || (jSONObject != null && jSONObject.equals(jSONObject2)) : jSONObject.toString().equals(jSONObject2.toString());
    }

    public static final void a(View disableViewExposureDebugMode) {
        Intrinsics.checkParameterIsNotNull(disableViewExposureDebugMode, "$this$disableViewExposureDebugMode");
        if (Build.VERSION.SDK_INT >= 16) {
            if (disableViewExposureDebugMode instanceof ImageView) {
                ImageView imageView = (ImageView) disableViewExposureDebugMode;
                if (imageView.getDrawable() instanceof p0) {
                    Drawable drawable = imageView.getDrawable();
                    if (drawable == null) {
                        throw new TypeCastException("null cannot be cast to non-null type com.bytedance.applog.exposure.DebugDrawable");
                    }
                    imageView.setImageDrawable(((p0) drawable).a);
                }
            }
            if (disableViewExposureDebugMode.getBackground() instanceof p0) {
                Drawable background = disableViewExposureDebugMode.getBackground();
                if (background == null) {
                    throw new TypeCastException("null cannot be cast to non-null type com.bytedance.applog.exposure.DebugDrawable");
                }
                disableViewExposureDebugMode.setBackground(((p0) background).a);
            }
        }
    }

    public static final void b(View setViewExposureVisible, boolean z) {
        Intrinsics.checkParameterIsNotNull(setViewExposureVisible, "$this$setViewExposureVisible");
        if (Build.VERSION.SDK_INT >= 16) {
            int i = z ? SupportMenu.CATEGORY_MASK : InputDeviceCompat.SOURCE_ANY;
            if (setViewExposureVisible instanceof ImageView) {
                ImageView imageView = (ImageView) setViewExposureVisible;
                if (imageView.getDrawable() instanceof p0) {
                    Drawable drawable = imageView.getDrawable();
                    if (drawable != null) {
                        ((p0) drawable).b.setColor(i);
                    } else {
                        throw new TypeCastException("null cannot be cast to non-null type com.bytedance.applog.exposure.DebugDrawable");
                    }
                }
            }
            if (setViewExposureVisible.getBackground() instanceof p0) {
                Drawable background = setViewExposureVisible.getBackground();
                if (background != null) {
                    ((p0) background).b.setColor(i);
                } else {
                    throw new TypeCastException("null cannot be cast to non-null type com.bytedance.applog.exposure.DebugDrawable");
                }
            }
            setViewExposureVisible.invalidate();
        }
    }

    public static boolean a(boolean z, String str) {
        if (!z) {
            return false;
        }
        LoggerImpl.global().ast("[Assert failed] {}", null, str);
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:203:0x01f9, code lost:
    
        if (r0 >= 0) goto L120;
     */
    /* JADX WARN: Code restructure failed: missing block: B:251:0x007f, code lost:
    
        if (r7 < 2999) goto L40;
     */
    /* JADX WARN: Code restructure failed: missing block: B:252:0x0094, code lost:
    
        r7 = "/CustomWindow";
     */
    /* JADX WARN: Code restructure failed: missing block: B:257:0x008f, code lost:
    
        if (r7 == com.bytedance.bdtracker.l5.d) goto L39;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x0591, code lost:
    
        if (android.text.TextUtils.isEmpty(r0) == false) goto L239;
     */
    /* JADX WARN: Removed duplicated region for block: B:163:0x0381  */
    /* JADX WARN: Removed duplicated region for block: B:172:0x03ed  */
    /* JADX WARN: Removed duplicated region for block: B:242:0x04c1  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00a4  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00cc  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00ed  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x04d6  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x058b  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x059d A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:99:0x0544  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.bytedance.bdtracker.z3 a(android.view.View r35, boolean r36) {
        /*
            Method dump skipped, instructions count: 1489
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.bdtracker.k0.a(android.view.View, boolean):com.bytedance.bdtracker.z3");
    }

    public static void a(f3 f3Var, JSONObject params) {
        Intrinsics.checkParameterIsNotNull(params, "params");
        Intrinsics.checkParameterIsNotNull(params, "params");
    }
}
