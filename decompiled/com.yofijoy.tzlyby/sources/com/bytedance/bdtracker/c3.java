package com.bytedance.bdtracker;

import com.bytedance.bdtracker.u2;
import com.loopj.android.http.AsyncHttpClient;
import com.taptap.sdk.update.download.DownloadTask;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class c3 implements u2 {
    public int a;
    public Integer b;
    public String c;
    public String d;
    public long e;

    @Override // com.bytedance.bdtracker.t2
    public List<String> a() {
        if (this.b == null) {
            return k0.a();
        }
        return CollectionsKt.listOf((Object[]) new String[]{"metrics_category", "metrics_name", "err_underlying_code"});
    }

    @Override // com.bytedance.bdtracker.u2
    public void a(JSONObject params) {
        Intrinsics.checkParameterIsNotNull(params, "params");
        if (this.c != null) {
            params.put("err_code", 2003);
            params.put("err_message", this.c);
            params.put("err_underlying_code", this.b);
        }
        params.put("dim_success", this.a);
    }

    @Override // com.bytedance.bdtracker.u2
    public String b() {
        String str = this.d;
        if (str != null) {
            if (StringsKt.contains$default((CharSequence) str, (CharSequence) "?", false, 2, (Object) null)) {
                str = str.substring(0, StringsKt.indexOf$default((CharSequence) str, "?", 0, false, 6, (Object) null));
                Intrinsics.checkExpressionValueIsNotNull(str, "(this as java.lang.Strin…ing(startIndex, endIndex)");
            }
            if (str != null) {
                return str;
            }
        }
        return "";
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
        return "network_service";
    }

    @Override // com.bytedance.bdtracker.t2
    public List<Integer> f() {
        return CollectionsKt.listOf((Object[]) new Integer[]{0, 500, 1000, Integer.valueOf(AsyncHttpClient.DEFAULT_RETRY_SLEEP_TIME_MILLIS), Integer.valueOf(DownloadTask.Builder.DEFAULT_SYNC_BUFFER_INTERVAL_MILLIS), 2500, 5000});
    }

    @Override // com.bytedance.bdtracker.u2
    public Object g() {
        return Long.valueOf(this.e);
    }
}
