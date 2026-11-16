package com.taptap.sdk.kit.internal.http.param;

import com.loopj.android.http.RequestParams;
import com.taptap.sdk.kit.internal.http.TapHttp;
import com.taptap.sdk.kit.internal.http.hanlder.ITapHttpSign;
import com.taptap.sdk.okhttp3.MediaType;
import com.taptap.sdk.okhttp3.Request;
import com.taptap.sdk.okhttp3.RequestBody;
import cz.msebera.android.httpclient.HttpHost;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;
import org.json.JSONObject;

/* compiled from: TapHttpJsonParam.kt */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0012\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u000e\u0010\t\u001a\u00020\u00002\u0006\u0010\u0007\u001a\u00020\nJ\r\u0010\u000b\u001a\u00020\fH\u0010¢\u0006\u0002\b\rJ\r\u0010\u000e\u001a\u00020\u000fH\u0010¢\u0006\u0002\b\u0010J\r\u0010\u0011\u001a\u00020\u0005H\u0010¢\u0006\u0002\b\u0012R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0013"}, d2 = {"Lcom/taptap/sdk/kit/internal/http/param/TapHttpJsonParam;", "Lcom/taptap/sdk/kit/internal/http/param/AbsTapHttpParam;", HttpHost.DEFAULT_SCHEME_NAME, "Lcom/taptap/sdk/kit/internal/http/TapHttp;", "url", "", "(Lcom/taptap/sdk/kit/internal/http/TapHttp;Ljava/lang/String;)V", "body", "", "addBody", "Lorg/json/JSONObject;", "buildRequest", "Lcom/taptap/sdk/okhttp3/Request;", "buildRequest$tap_kit_release", "getContentByteArray", "", "getContentByteArray$tap_kit_release", "getTechnicalLogParam", "getTechnicalLogParam$tap_kit_release", "tap-kit_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes.dex */
public final class TapHttpJsonParam extends AbsTapHttpParam<TapHttpJsonParam> {
    private Object body;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TapHttpJsonParam(TapHttp http, String url) {
        super(http, url, "POST");
        Intrinsics.checkNotNullParameter(http, "http");
        Intrinsics.checkNotNullParameter(url, "url");
        this.body = new JSONObject();
    }

    public final TapHttpJsonParam addBody(JSONObject body) {
        Intrinsics.checkNotNullParameter(body, "body");
        TapHttpJsonParam tapHttpJsonParam = this;
        tapHttpJsonParam.body = body;
        return tapHttpJsonParam;
    }

    @Override // com.taptap.sdk.kit.internal.http.param.AbsTapHttpParam
    public byte[] getContentByteArray$tap_kit_release() {
        byte[] bytes = this.body.toString().getBytes(Charsets.UTF_8);
        Intrinsics.checkNotNullExpressionValue(bytes, "this as java.lang.String).getBytes(charset)");
        return bytes;
    }

    @Override // com.taptap.sdk.kit.internal.http.param.AbsTapHttpParam
    public Request buildRequest$tap_kit_release() {
        Map mutableMap = MapsKt.toMutableMap(getHeaderParams());
        mutableMap.putAll(getTapHttp().getSignHandler().getHeaders(getTapHttp().getModuleName(), getTapHttp().getModuleVersion(), getMethod()));
        String buildUrlString = buildUrlString();
        byte[] contentByteArray$tap_kit_release = getContentByteArray$tap_kit_release();
        byte[] handle = getTapHttp().getCompressHandler().handle(contentByteArray$tap_kit_release);
        getTapHttp().getSignHandler().handle(new ITapHttpSign.HandleData(buildUrlString, getMethod(), getTapHttp().getEnableAuthorization(), contentByteArray$tap_kit_release, handle, mutableMap));
        MediaType parse = MediaType.parse(RequestParams.APPLICATION_JSON);
        Request.Builder url = new Request.Builder().url(buildUrlString);
        for (Map.Entry entry : mutableMap.entrySet()) {
            url.addHeader((String) entry.getKey(), (String) entry.getValue());
        }
        Request build = url.post(RequestBody.create(parse, handle)).build();
        Intrinsics.checkNotNullExpressionValue(build, "Builder()\n            .u…nt))\n            .build()");
        return build;
    }

    @Override // com.taptap.sdk.kit.internal.http.param.AbsTapHttpParam
    public String getTechnicalLogParam$tap_kit_release() {
        return "json=" + this.body;
    }
}
