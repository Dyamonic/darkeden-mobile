package com.bytedance.dr.impl;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.os.SystemProperties;
import com.bytedance.applog.log.LoggerImpl;
import com.bytedance.bdtracker.k0;
import com.bytedance.bdtracker.m5;
import com.bytedance.dr.OaidApi;
import com.qq.gdt.action.ActionUtils;

/* loaded from: classes.dex */
public final class k implements OaidApi {
    public static final m5<Boolean> a = new a();

    /* loaded from: classes.dex */
    public static class a extends m5<Boolean> {
        @Override // com.bytedance.bdtracker.m5
        public Boolean a(Object[] objArr) {
            return Boolean.valueOf("1".equals(k.a("persist.sys.identifierid.supported", "0")));
        }
    }

    public static /* synthetic */ String a(String str, String str2) {
        try {
            return SystemProperties.get(str, str2);
        } catch (Throwable unused) {
            return str2;
        }
    }

    @Override // com.bytedance.dr.OaidApi
    public String getName() {
        return "Vivo";
    }

    @Override // com.bytedance.dr.OaidApi
    public OaidApi.a getOaid(Context context) {
        Cursor cursor;
        OaidApi.a aVar = new OaidApi.a();
        Uri parse = Uri.parse("content://com.vivo.vms.IdProvider/IdentifierId/OAID");
        String str = null;
        str = null;
        str = null;
        str = null;
        Cursor cursor2 = null;
        if (parse != null) {
            try {
                cursor = context.getContentResolver().query(parse, null, null, null, null);
                if (cursor != null) {
                    try {
                        try {
                            if (cursor.moveToNext()) {
                                str = cursor.getString(cursor.getColumnIndex(ActionUtils.PAYMENT_AMOUNT));
                            }
                        } catch (Exception e) {
                            e = e;
                            LoggerImpl.global().error(1, "Query oaid failed", e, new Object[0]);
                            k0.a(cursor);
                            aVar.a = str;
                            return aVar;
                        }
                    } catch (Throwable th) {
                        th = th;
                        cursor2 = cursor;
                        k0.a(cursor2);
                        throw th;
                    }
                }
            } catch (Exception e2) {
                e = e2;
                cursor = null;
            } catch (Throwable th2) {
                th = th2;
                k0.a(cursor2);
                throw th;
            }
            k0.a(cursor);
        }
        aVar.a = str;
        return aVar;
    }

    @Override // com.bytedance.dr.OaidApi
    public boolean support(Context context) {
        return a.b(new Object[0]).booleanValue();
    }
}
