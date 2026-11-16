package com.bytedance.dr.impl;

import android.content.ContentProviderClient;
import android.content.Context;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import com.bytedance.applog.log.LoggerImpl;
import com.bytedance.dr.OaidApi;
import com.taptap.sdk.update.download.core.breakpoint.BreakpointSQLiteKey;

/* loaded from: classes.dex */
public final class j implements OaidApi {
    @Override // com.bytedance.dr.OaidApi
    public String getName() {
        return "Nubia";
    }

    @Override // com.bytedance.dr.OaidApi
    public OaidApi.a getOaid(Context context) {
        Bundle call;
        Uri parse = Uri.parse("content://cn.nubia.identity/identity");
        try {
            if (Build.VERSION.SDK_INT > 17) {
                ContentProviderClient acquireContentProviderClient = context.getContentResolver().acquireContentProviderClient(parse);
                if (acquireContentProviderClient == null) {
                    return null;
                }
                call = acquireContentProviderClient.call("getOAID", null, null);
                if (Build.VERSION.SDK_INT >= 24) {
                    acquireContentProviderClient.close();
                } else {
                    acquireContentProviderClient.release();
                }
            } else {
                call = context.getContentResolver().call(parse, "getOAID", (String) null, (Bundle) null);
            }
            if (call == null) {
                return null;
            }
            if (call.getInt("code", -1) == 0) {
                OaidApi.a aVar = new OaidApi.a();
                aVar.a = call.getString(BreakpointSQLiteKey.ID);
                return aVar;
            }
            String string = call.getString("message");
            if (!TextUtils.isEmpty(string)) {
                LoggerImpl.global().error(1, string, new Object[0]);
            }
            return null;
        } catch (Exception e) {
            LoggerImpl.global().error(1, "getOaid failed", e, new Object[0]);
            return null;
        }
    }

    @Override // com.bytedance.dr.OaidApi
    public boolean support(Context context) {
        return Build.VERSION.SDK_INT > 28;
    }
}
