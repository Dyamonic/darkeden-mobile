package com.bytedance.bdtracker;

import android.text.TextUtils;
import androidx.core.os.EnvironmentCompat;
import com.bytedance.bdtracker.u2;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class d3 implements v2 {
    public final Throwable a;

    public d3(Throwable throwable) {
        Intrinsics.checkParameterIsNotNull(throwable, "throwable");
        this.a = throwable;
    }

    @Override // com.bytedance.bdtracker.t2
    public List<String> a() {
        if (TextUtils.isEmpty(this.a.getMessage())) {
            return k0.a();
        }
        return CollectionsKt.listOf((Object[]) new String[]{"metrics_category", "metrics_name", "err_underlying_code"});
    }

    @Override // com.bytedance.bdtracker.u2
    public void a(JSONObject params) {
        Intrinsics.checkParameterIsNotNull(params, "params");
        StringWriter stringWriter = new StringWriter();
        this.a.printStackTrace(new PrintWriter(stringWriter));
        String message = this.a.getMessage();
        if (message == null) {
            message = EnvironmentCompat.MEDIA_UNKNOWN;
        }
        params.put("err_underlying_code", message);
        params.put("err_message", stringWriter.toString());
    }

    @Override // com.bytedance.bdtracker.u2
    public String b() {
        return "sdk_exception";
    }

    @Override // com.bytedance.bdtracker.t2
    public int c() {
        return 7;
    }

    @Override // com.bytedance.bdtracker.u2
    public JSONObject d() {
        return u2.a.a(this);
    }

    @Override // com.bytedance.bdtracker.u2
    public String e() {
        return "data_statistics";
    }

    @Override // com.bytedance.bdtracker.t2
    public List<Number> f() {
        return k0.d();
    }

    @Override // com.bytedance.bdtracker.u2
    public Object g() {
        return 1;
    }
}
