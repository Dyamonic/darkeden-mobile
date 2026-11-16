package com.bytedance.bdtracker;

import com.bytedance.bdtracker.u2;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class e3 implements f3 {
    public final long a;

    public e3(long j) {
        this.a = j;
    }

    @Override // com.bytedance.bdtracker.t2
    public List<String> a() {
        return k0.a();
    }

    @Override // com.bytedance.bdtracker.u2
    public void a(JSONObject params) {
        Intrinsics.checkParameterIsNotNull(params, "params");
        k0.a((f3) this, params);
    }

    @Override // com.bytedance.bdtracker.u2
    public String b() {
        return "sdk_init";
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
