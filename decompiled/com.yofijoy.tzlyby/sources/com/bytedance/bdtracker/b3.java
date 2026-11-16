package com.bytedance.bdtracker;

import com.bytedance.bdtracker.u2;
import com.taptap.sdk.moment.constant.Constant;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class b3 implements f3 {
    public long a;

    public b3(long j) {
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
        return "db_delay_interval";
    }

    @Override // com.bytedance.bdtracker.t2
    public int c() {
        return 23;
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
    public List<Integer> f() {
        return CollectionsKt.listOf((Object[]) new Integer[]{0, 1000, 10000, Integer.valueOf(Constant.CALLBACK_CODE_LOGIN_SUCCESS), 300000, 1200000, 3600000, 21600000});
    }

    @Override // com.bytedance.bdtracker.u2
    public Object g() {
        return Long.valueOf(h());
    }

    public long h() {
        return this.a;
    }
}
