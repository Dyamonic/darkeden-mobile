package com.bytedance.bdtracker;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.Signature;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class j2 extends q1 {
    public final Context e;
    public final d f;

    public j2(d dVar, Context context) {
        super(true, false);
        this.f = dVar;
        this.e = context;
    }

    @Override // com.bytedance.bdtracker.q1
    public String a() {
        return "SigHash";
    }

    @Override // com.bytedance.bdtracker.q1
    public boolean a(JSONObject jSONObject) {
        PackageInfo packageInfo;
        Signature[] signatureArr;
        Signature signature;
        String str = null;
        try {
            Context context = this.e;
            packageInfo = a5.a(context, context.getPackageName(), 64);
        } catch (Throwable th) {
            this.f.D.error("Get package info failed", th, new Object[0]);
            packageInfo = null;
        }
        if (packageInfo != null && (signatureArr = packageInfo.signatures) != null && signatureArr.length > 0 && (signature = signatureArr[0]) != null) {
            str = v4.a(signature.toByteArray());
        }
        if (str == null) {
            return true;
        }
        jSONObject.put("sig_hash", str);
        return true;
    }
}
