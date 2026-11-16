package com.bytedance.bdtracker;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import android.text.TextUtils;
import com.bytedance.applog.InitConfig;
import com.bytedance.applog.log.LoggerImpl;
import com.bytedance.applog.store.kv.IKVStore;
import com.taptap.sdk.core.internal.event.constants.TapEventParamConstants;
import java.util.Collections;

/* loaded from: classes.dex */
public class j4 extends y3 {
    public static j4 f;
    public final IKVStore c;
    public IKVStore d;
    public boolean e;

    /* loaded from: classes.dex */
    public interface a {
        String a();
    }

    public j4(Context context, String str, boolean z) {
        this.e = false;
        this.c = o4.a(context, str);
        this.e = z;
    }

    public j4(InitConfig initConfig, Context context, String str, String str2) {
        this.e = false;
        this.c = o4.a(initConfig, context, str);
        this.d = o4.a(initConfig, context, str2);
    }

    public static SharedPreferences a(Context context, String str, int i) {
        Context context2;
        Throwable th;
        if (Build.VERSION.SDK_INT >= 26) {
            try {
                context2 = context.createDeviceProtectedStorageContext();
                try {
                    if (!context2.moveSharedPreferencesFrom(context, str)) {
                        LoggerImpl.global().warn(Collections.singletonList("SharedPreferenceCacheHelper"), "Failed to migrate shared preferences.", new Object[0]);
                    }
                } catch (Throwable th2) {
                    th = th2;
                    LoggerImpl.global().error(Collections.singletonList("SharedPreferenceCacheHelper"), "Create protected storage context failed", th, new Object[0]);
                    context = context2;
                    return context.getSharedPreferences(str, i);
                }
            } catch (Throwable th3) {
                context2 = context;
                th = th3;
            }
            context = context2;
        }
        return context.getSharedPreferences(str, i);
    }

    public static synchronized j4 a(Context context) {
        j4 j4Var;
        synchronized (j4.class) {
            if (f == null) {
                f = new j4(context, "_global_cache", true);
            }
            j4Var = f;
        }
        return j4Var;
    }

    public synchronized String a(String str, a aVar) {
        if (d(str).contains(str)) {
            return e(str);
        }
        String a2 = aVar != null ? aVar.a() : null;
        h(str, a2);
        return a2;
    }

    @Override // com.bytedance.bdtracker.y3
    public void a(String str) {
        IKVStore d = d(str);
        if (d != null && d.contains(str)) {
            d.remove(str);
        }
        super.a(str);
    }

    @Override // com.bytedance.bdtracker.y3
    public void a(String str, String str2) {
        h(str, str2);
    }

    @Override // com.bytedance.bdtracker.y3
    public void a(String str, String[] strArr) {
        if (str == null || strArr == null) {
            return;
        }
        h(str, TextUtils.join("\n", strArr));
    }

    @Override // com.bytedance.bdtracker.y3
    public String b(String str) {
        return d(str).getString(str, null);
    }

    @Override // com.bytedance.bdtracker.y3
    public String[] c(String str) {
        String string = d(str).getString(str, null);
        if (TextUtils.isEmpty(string)) {
            return null;
        }
        return string.split("\n");
    }

    public IKVStore d(String str) {
        IKVStore iKVStore;
        return (!TapEventParamConstants.PARAM_DEVICE_ID.equals(str) || (iKVStore = this.d) == null) ? this.c : iKVStore;
    }

    public String e(String str) {
        return d(str).getString(str, null);
    }

    public void h(String str, String str2) {
        if (this.e || !TextUtils.isEmpty(str2)) {
            IKVStore d = d(str);
            if (this.e && str2 == null) {
                str2 = "";
            }
            d.putString(str, str2);
        }
    }
}
