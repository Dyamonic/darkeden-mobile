package com.bytedance.dr.impl;

import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import com.bytedance.bdtracker.a5;
import com.bytedance.bdtracker.m5;
import com.bytedance.bdtracker.u5;
import com.bytedance.dr.OaidApi;

/* loaded from: classes.dex */
public abstract class b<SERVICE> implements OaidApi {
    public final String a;
    public final m5<Boolean> b = new a();

    /* loaded from: classes.dex */
    public class a extends m5<Boolean> {
        public a() {
        }

        @Override // com.bytedance.bdtracker.m5
        public Boolean a(Object[] objArr) {
            return Boolean.valueOf(a5.a((Context) objArr[0], b.this.a));
        }
    }

    public b(String str) {
        this.a = str;
    }

    public abstract Intent a(Context context);

    public abstract u5.b<SERVICE, String> a();

    @Override // com.bytedance.dr.OaidApi
    public OaidApi.a getOaid(Context context) {
        String str = (String) new u5(context, a(context), a()).a();
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        OaidApi.a aVar = new OaidApi.a();
        aVar.a = str;
        return aVar;
    }

    @Override // com.bytedance.dr.OaidApi
    public boolean support(Context context) {
        if (context == null) {
            return false;
        }
        return this.b.b(context).booleanValue();
    }
}
