package com.bun.miitmdid.provider.nubia;

import android.content.ContentProviderClient;
import android.content.Context;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import com.bun.miitmdid.h0;
import com.taptap.sdk.update.download.core.breakpoint.BreakpointSQLiteKey;

/* loaded from: classes.dex */
public class NubiaIdentityImpl {
    private static final String TAG = "NubiaIdentityImpl";
    private static Uri uri = Uri.parse("content://cn.nubia.identity/identity");

    private static Object generalMethod(Context context, String str, String str2, String str3, Class<?> cls) {
        Bundle call;
        try {
            int i = Build.VERSION.SDK_INT;
            if (i >= 17) {
                ContentProviderClient acquireContentProviderClient = context.getContentResolver().acquireContentProviderClient(uri);
                if (acquireContentProviderClient == null) {
                    h0.d(TAG, "generalMethod: contentResolver is null");
                    return null;
                }
                call = acquireContentProviderClient.call(str, str2, null);
                if (i >= 24) {
                    acquireContentProviderClient.close();
                } else {
                    acquireContentProviderClient.release();
                }
            } else {
                call = context.getContentResolver().call(uri, str, str2, (Bundle) null);
            }
            if (call == null) {
                h0.d(TAG, "generalMethod: bundle is null");
                return null;
            }
            if (call.getInt("code", -1) == 0) {
                h0.c(TAG, "generalMethod: success");
                if (cls == Boolean.class) {
                    return Boolean.valueOf(call.getBoolean(str3, false));
                }
                if (cls == String.class) {
                    return call.getString(str3, "");
                }
                return null;
            }
            h0.d(TAG, "generalMethod: failed:" + call.getString("message"));
            return null;
        } catch (Exception e) {
            h0.d(TAG, "generalMethod: Exception: " + e.getMessage());
            return null;
        }
    }

    public static String getAAID(Context context, String str) {
        Object generalMethod = generalMethod(context, "getAAID", str, BreakpointSQLiteKey.ID, String.class);
        return generalMethod == null ? "" : (String) generalMethod;
    }

    public static String getOAID(Context context) {
        Object generalMethod = generalMethod(context, "getOAID", null, BreakpointSQLiteKey.ID, String.class);
        return generalMethod == null ? "" : (String) generalMethod;
    }

    public static String getVAID(Context context, String str) {
        Object generalMethod = generalMethod(context, "getVAID", str, BreakpointSQLiteKey.ID, String.class);
        return generalMethod == null ? "" : (String) generalMethod;
    }

    public static boolean isSupported(Context context) {
        Object generalMethod = generalMethod(context, "isSupport", null, "issupport", Boolean.class);
        if (generalMethod == null) {
            return false;
        }
        return ((Boolean) generalMethod).booleanValue();
    }
}
