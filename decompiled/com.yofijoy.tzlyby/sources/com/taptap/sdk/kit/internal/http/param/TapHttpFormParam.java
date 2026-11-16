package com.taptap.sdk.kit.internal.http.param;

import android.net.Uri;
import com.taptap.sdk.kit.internal.TapLogger;
import com.taptap.sdk.kit.internal.http.TapHttp;
import com.taptap.sdk.kit.internal.http.hanlder.ITapHttpSign;
import com.taptap.sdk.kit.internal.json.TapJson;
import com.taptap.sdk.okhttp3.MediaType;
import com.taptap.sdk.okhttp3.Request;
import com.taptap.sdk.okhttp3.RequestBody;
import cz.msebera.android.httpclient.HttpHost;
import cz.msebera.android.httpclient.client.utils.URLEncodedUtils;
import java.util.ArrayList;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KTypeProjection;
import kotlin.text.Charsets;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerializersKt;
import kotlinx.serialization.json.Json;

/* compiled from: TapHttpFormParam.kt */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010$\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0012\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B)\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0012\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u0007¢\u0006\u0002\u0010\bJ\r\u0010\t\u001a\u00020\nH\u0010¢\u0006\u0002\b\u000bJ\r\u0010\f\u001a\u00020\rH\u0010¢\u0006\u0002\b\u000eJ\r\u0010\u000f\u001a\u00020\u0005H\u0010¢\u0006\u0002\b\u0010R\u001a\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u0007X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0011"}, d2 = {"Lcom/taptap/sdk/kit/internal/http/param/TapHttpFormParam;", "Lcom/taptap/sdk/kit/internal/http/param/AbsTapHttpParam;", HttpHost.DEFAULT_SCHEME_NAME, "Lcom/taptap/sdk/kit/internal/http/TapHttp;", "url", "", "form", "", "(Lcom/taptap/sdk/kit/internal/http/TapHttp;Ljava/lang/String;Ljava/util/Map;)V", "buildRequest", "Lcom/taptap/sdk/okhttp3/Request;", "buildRequest$tap_kit_release", "getContentByteArray", "", "getContentByteArray$tap_kit_release", "getTechnicalLogParam", "getTechnicalLogParam$tap_kit_release", "tap-kit_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes.dex */
public final class TapHttpFormParam extends AbsTapHttpParam<TapHttpFormParam> {
    private final Map<String, String> form;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TapHttpFormParam(TapHttp http, String url, Map<String, String> form) {
        super(http, url, "POST");
        Intrinsics.checkNotNullParameter(http, "http");
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(form, "form");
        this.form = form;
    }

    @Override // com.taptap.sdk.kit.internal.http.param.AbsTapHttpParam
    public byte[] getContentByteArray$tap_kit_release() {
        Map<String, String> map = this.form;
        ArrayList arrayList = new ArrayList(map.size());
        for (Map.Entry<String, String> entry : map.entrySet()) {
            arrayList.add(entry.getKey() + '=' + Uri.encode(entry.getValue()));
        }
        byte[] bytes = CollectionsKt.joinToString$default(arrayList, "&", null, null, 0, null, null, 62, null).getBytes(Charsets.UTF_8);
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
        MediaType parse = MediaType.parse(URLEncodedUtils.CONTENT_TYPE);
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
        StringBuilder sb = new StringBuilder();
        sb.append("form=");
        TapJson tapJson = TapJson.INSTANCE;
        Map<String, String> map = this.form;
        String str = null;
        try {
            Json json = tapJson.getJson();
            KSerializer<Object> serializer = SerializersKt.serializer(json.getSerializersModule(), Reflection.typeOf(Map.class, KTypeProjection.INSTANCE.invariant(Reflection.typeOf(String.class)), KTypeProjection.INSTANCE.invariant(Reflection.typeOf(String.class))));
            Intrinsics.checkNotNull(serializer, "null cannot be cast to non-null type kotlinx.serialization.KSerializer<T of kotlinx.serialization.internal.Platform_commonKt.cast>");
            str = json.encodeToString(serializer, map);
        } catch (Exception e) {
            TapLogger.loge$default(TapJson.TAG, null, e, 2, null);
        }
        sb.append(str);
        return sb.toString();
    }
}
