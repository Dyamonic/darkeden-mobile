package com.bytedance.dr.impl;

import android.content.Context;
import android.content.pm.PackageManager;
import android.database.Cursor;
import android.net.Uri;
import com.bytedance.applog.log.LoggerImpl;
import com.bytedance.bdtracker.k0;
import com.bytedance.bdtracker.m5;
import com.bytedance.dr.OaidApi;
import com.qq.gdt.action.ActionUtils;
import com.taptap.sdk.core.internal.event.constants.TapEventParamConstants;

/* loaded from: classes.dex */
public final class i implements OaidApi {
    public final m5<Boolean> a = new a(this);

    /* loaded from: classes.dex */
    public class a extends m5<Boolean> {
        public a(i iVar) {
        }

        @Override // com.bytedance.bdtracker.m5
        public Boolean a(Object[] objArr) {
            try {
                PackageManager packageManager = ((Context) objArr[0]).getPackageManager();
                if (packageManager != null) {
                    return Boolean.valueOf(packageManager.resolveContentProvider("com.meizu.flyme.openidsdk", 0) != null);
                }
            } catch (Throwable unused) {
            }
            return false;
        }
    }

    @Override // com.bytedance.dr.OaidApi
    public String getName() {
        return "Meizu";
    }

    @Override // com.bytedance.dr.OaidApi
    public OaidApi.a getOaid(Context context) {
        Cursor cursor;
        String string;
        try {
            cursor = context.getContentResolver().query(Uri.parse("content://com.meizu.flyme.openidsdk/"), null, null, new String[]{TapEventParamConstants.PARAM_SUB_OAID}, null);
            if (cursor == null) {
                return null;
            }
            try {
                OaidApi.a aVar = new OaidApi.a();
                if (!cursor.isClosed()) {
                    cursor.moveToFirst();
                    int columnIndex = cursor.getColumnIndex(ActionUtils.PAYMENT_AMOUNT);
                    if (columnIndex >= 0) {
                        string = cursor.getString(columnIndex);
                        aVar.a = string;
                        return aVar;
                    }
                }
                string = null;
                aVar.a = string;
                return aVar;
            } catch (Throwable th) {
                th = th;
                try {
                    LoggerImpl.global().error(1, "getOaid failed", th, new Object[0]);
                    return null;
                } finally {
                    k0.a(cursor);
                }
            }
        } catch (Throwable th2) {
            th = th2;
            cursor = null;
        }
    }

    @Override // com.bytedance.dr.OaidApi
    public boolean support(Context context) {
        if (context == null) {
            return false;
        }
        return this.a.b(context).booleanValue();
    }
}
