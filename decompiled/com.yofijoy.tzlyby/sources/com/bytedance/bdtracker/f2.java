package com.bytedance.bdtracker;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.text.TextUtils;
import com.taptap.sdk.core.internal.event.constants.TapEventParamConstants;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class f2 extends q1 {
    public final Context e;
    public final d f;
    public final v1 g;

    public f2(d dVar, Context context, v1 v1Var) {
        super(false, false);
        this.f = dVar;
        this.e = context;
        this.g = v1Var;
    }

    @Override // com.bytedance.bdtracker.q1
    public String a() {
        return "Package";
    }

    @Override // com.bytedance.bdtracker.q1
    public boolean a(JSONObject jSONObject) {
        Object b;
        ApplicationInfo applicationInfo;
        String packageName = this.e.getPackageName();
        if (TextUtils.isEmpty(this.g.c.getZiJieCloudPkg())) {
            jSONObject.put("package", packageName);
        } else {
            this.f.D.debug("has zijie pkg", new Object[0]);
            jSONObject.put("package", this.g.c.getZiJieCloudPkg());
            jSONObject.put("real_package_name", packageName);
        }
        try {
            int a = a5.a(this.e);
            if (!TextUtils.isEmpty(this.g.c.getVersion())) {
                b = this.g.c.getVersion();
            } else {
                b = a5.b(this.e);
            }
            jSONObject.put(TapEventParamConstants.PARAM_SUB_APP_VERSION, b);
            jSONObject.put("app_version_minor", !TextUtils.isEmpty(this.g.c.getVersionMinor()) ? this.g.c.getVersionMinor() : "");
            if (this.g.c.getVersionCode() != 0) {
                jSONObject.put("version_code", this.g.c.getVersionCode());
            } else {
                jSONObject.put("version_code", a);
            }
            if (this.g.c.getUpdateVersionCode() != 0) {
                jSONObject.put("update_version_code", this.g.c.getUpdateVersionCode());
            } else {
                jSONObject.put("update_version_code", a);
            }
            if (this.g.c.getManifestVersionCode() != 0) {
                jSONObject.put("manifest_version_code", this.g.c.getManifestVersionCode());
            } else {
                jSONObject.put("manifest_version_code", a);
            }
            if (!TextUtils.isEmpty(this.g.c.getAppName())) {
                jSONObject.put("app_name", this.g.c.getAppName());
            }
            if (!TextUtils.isEmpty(this.g.c.getTweakedChannel())) {
                jSONObject.put("tweaked_channel", this.g.c.getTweakedChannel());
            }
            PackageInfo a2 = a5.a(this.e, packageName, 0);
            if (a2 == null || (applicationInfo = a2.applicationInfo) == null) {
                return true;
            }
            int i = applicationInfo.labelRes;
            if (i <= 0) {
                return true;
            }
            try {
                jSONObject.put("display_name", this.e.getString(i));
                return true;
            } catch (Throwable unused) {
                return true;
            }
        } catch (Throwable th) {
            this.f.D.error("Load package info failed.", th, new Object[0]);
            return false;
        }
    }
}
