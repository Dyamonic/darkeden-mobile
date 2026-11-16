package com.bytedance.bdtracker;

import android.net.Uri;
import com.bytedance.applog.InitConfig;
import com.bytedance.applog.network.INetworkClient;
import com.taptap.sdk.moment.constant.Constant;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class q {
    public d a;

    public q(d appLogInstance) {
        Intrinsics.checkParameterIsNotNull(appLogInstance, "appLogInstance");
        this.a = appLogInstance;
    }

    public final m<k> a(String uri, l queryParam) {
        Intrinsics.checkParameterIsNotNull(uri, "uri");
        Intrinsics.checkParameterIsNotNull(queryParam, "queryParam");
        try {
            INetworkClient netClient = this.a.getNetClient();
            s3 s3Var = this.a.k;
            Intrinsics.checkExpressionValueIsNotNull(s3Var, "appLogInstance.api");
            byte[] execute = netClient.execute((byte) 0, s3Var.c.a(a(uri, queryParam.a())), null, a(), (byte) 0, true, Constant.CALLBACK_CODE_LOGIN_SUCCESS);
            Intrinsics.checkExpressionValueIsNotNull(execute, "appLogInstance.netClient…TIMEOUT\n                )");
            return m.c.a(new String(execute, Charsets.UTF_8), k.class);
        } catch (Throwable unused) {
            return null;
        }
    }

    public final String a(String str, JSONObject jSONObject) {
        Uri.Builder buildUpon = Uri.parse(str).buildUpon();
        Iterator<String> keys = jSONObject.keys();
        while (keys.hasNext()) {
            String next = keys.next();
            String optString = jSONObject.optString(next);
            if (!(optString == null || optString.length() == 0)) {
                buildUpon.appendQueryParameter(next, jSONObject.optString(next));
            }
        }
        return buildUpon.build().toString();
    }

    public final HashMap<String, String> a() {
        HashMap hashMap = new HashMap(2);
        InitConfig initConfig = this.a.getInitConfig();
        if (initConfig != null) {
            Map<String, String> httpHeaders = initConfig.getHttpHeaderCallback() != null ? initConfig.getHttpHeaderCallback().get() : initConfig.getHttpHeaders();
            if (httpHeaders != null && (!httpHeaders.isEmpty())) {
                hashMap.putAll(httpHeaders);
            }
        }
        return w4.a((HashMap<String, String>) hashMap, this.a);
    }

    public final m<n> a(String uri, o request, l queryParam) {
        Intrinsics.checkParameterIsNotNull(uri, "uri");
        Intrinsics.checkParameterIsNotNull(request, "request");
        Intrinsics.checkParameterIsNotNull(queryParam, "queryParam");
        try {
            INetworkClient netClient = this.a.getNetClient();
            s3 s3Var = this.a.k;
            Intrinsics.checkExpressionValueIsNotNull(s3Var, "appLogInstance.api");
            byte[] execute = netClient.execute((byte) 1, s3Var.c.a(a(uri, queryParam.a())), request.a(), a(), (byte) 0, true, Constant.CALLBACK_CODE_LOGIN_SUCCESS);
            Intrinsics.checkExpressionValueIsNotNull(execute, "appLogInstance.netClient…OUT\n                    )");
            return m.c.a(new String(execute, Charsets.UTF_8), n.class);
        } catch (Throwable th) {
            return m.c.a(th);
        }
    }
}
