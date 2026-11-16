package com.bytedance.bdtracker;

import android.text.TextUtils;
import com.bytedance.bdtracker.u2;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class s2 implements f3 {
    public final long a = 1;
    public String b;
    public long c;

    public s2(String str, long j) {
        this.b = str;
        this.c = j;
    }

    @Override // com.bytedance.bdtracker.t2
    public List<String> a() {
        if (TextUtils.isEmpty(this.b)) {
            return k0.a();
        }
        return CollectionsKt.listOf((Object[]) new String[]{"metrics_category", "metrics_name", "api_name"});
    }

    @Override // com.bytedance.bdtracker.u2
    public void a(JSONObject params) {
        Intrinsics.checkParameterIsNotNull(params, "params");
        params.put("api_name", this.b);
        params.put("api_time", this.c);
    }

    @Override // com.bytedance.bdtracker.u2
    public String b() {
        return "api_usage";
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
        return "sdk_usage";
    }

    @Override // com.bytedance.bdtracker.t2
    public List<Number> f() {
        return k0.d();
    }

    @Override // com.bytedance.bdtracker.u2
    public Object g() {
        return Long.valueOf(h());
    }

    public long h() {
        return this.a;
    }
}
