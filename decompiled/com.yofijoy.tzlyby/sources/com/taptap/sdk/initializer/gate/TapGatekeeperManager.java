package com.taptap.sdk.initializer.gate;

import android.content.Context;
import android.content.SharedPreferences;
import com.qq.gdt.action.ActionUtils;
import com.taptap.sdk.kit.internal.TapLogger;
import com.taptap.sdk.kit.internal.TapTapKit;
import com.taptap.sdk.kit.internal.exception.TapSdkNotInitializedException;
import com.taptap.sdk.kit.internal.http.TapHttp;
import com.taptap.sdk.kit.internal.json.TapJson;
import com.taptap.sdk.kit.internal.utils.TapSignKit;
import com.tencent.connect.common.Constants;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerializersKt;
import kotlinx.serialization.json.Json;
import org.json.JSONObject;

/* compiled from: TapGatekeeperManager.kt */
@Metadata(d1 = {"\u0000\\\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\bÀ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0015\u0010!\u001a\u00020\"2\u0006\u0010#\u001a\u00020$H\u0000¢\u0006\u0002\b%J\u0006\u0010&\u001a\u00020\u0013J\u0006\u0010'\u001a\u00020\u0013J\u0006\u0010(\u001a\u00020\u0013J\u001c\u0010)\u001a\u00020\"2\u0006\u0010#\u001a\u00020$2\f\u0010*\u001a\b\u0012\u0004\u0012\u00020\"0+J\b\u0010,\u001a\u00020\"H\u0002J\b\u0010-\u001a\u00020\"H\u0002J\b\u0010.\u001a\u00020\"H\u0002J \u0010/\u001a\u00020\"*\u0002002\b\u00101\u001a\u0004\u0018\u00010\u00042\b\u00102\u001a\u0004\u0018\u00010\u0001H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u001c\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\u000e\u0010\u0010\u001a\u00020\u0011X\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\u0016\u001a\u00020\tX\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001aR\u001b\u0010\u001b\u001a\u00020\u001c8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001f\u0010 \u001a\u0004\b\u001d\u0010\u001e¨\u00063"}, d2 = {"Lcom/taptap/sdk/initializer/gate/TapGatekeeperManager;", "", "()V", "GATEKEEPER_SP_NAME", "", "KEY_GATEKEEPER", "TAG", "URL_GATEKEEPER", "defaultGatekeeper", "Lcom/taptap/sdk/initializer/gate/TapGatekeeper;", "gatekeeperError", "Lcom/taptap/sdk/initializer/gate/TapGatekeeperError;", "getGatekeeperError$tap_initializer_release", "()Lcom/taptap/sdk/initializer/gate/TapGatekeeperError;", "setGatekeeperError$tap_initializer_release", "(Lcom/taptap/sdk/initializer/gate/TapGatekeeperError;)V", "gatekeeperPref", "Landroid/content/SharedPreferences;", "isGatekeeperSuccess", "", "isInitialized", "Ljava/util/concurrent/atomic/AtomicBoolean;", "tapGatekeeper", "getTapGatekeeper$tap_initializer_release", "()Lcom/taptap/sdk/initializer/gate/TapGatekeeper;", "setTapGatekeeper$tap_initializer_release", "(Lcom/taptap/sdk/initializer/gate/TapGatekeeper;)V", "tapHttp", "Lcom/taptap/sdk/kit/internal/http/TapHttp;", "getTapHttp", "()Lcom/taptap/sdk/kit/internal/http/TapHttp;", "tapHttp$delegate", "Lkotlin/Lazy;", "initialize", "", "context", "Landroid/content/Context;", "initialize$tap_initializer_release", "isAutoEventEnable", "isHeartbeatEnable", "isSuccess", "queryGatekeeper", "runnable", "Lkotlin/Function0;", "readGatekeeperFromCache", "validateInitialized", "writeGatekeeperToCache", "putProperty", "Lorg/json/JSONObject;", "key", ActionUtils.PAYMENT_AMOUNT, "tap-initializer_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes.dex */
public final class TapGatekeeperManager {
    private static final String GATEKEEPER_SP_NAME = "com.taptap.sdk.GATEKEEPER_SETTING";
    private static final String KEY_GATEKEEPER = "key_gatekeeper";
    private static final String TAG = "TapGatekeeperManager";
    private static final String URL_GATEKEEPER = "sdk-core/v1/gatekeeper";
    private static TapGatekeeper defaultGatekeeper;
    private static TapGatekeeperError gatekeeperError;
    private static SharedPreferences gatekeeperPref;
    private static TapGatekeeper tapGatekeeper;

    /* renamed from: tapHttp$delegate, reason: from kotlin metadata */
    private static final Lazy tapHttp;
    public static final TapGatekeeperManager INSTANCE = new TapGatekeeperManager();
    private static final AtomicBoolean isInitialized = new AtomicBoolean(false);
    private static boolean isGatekeeperSuccess = true;

    private TapGatekeeperManager() {
    }

    static {
        TapGatekeeper tapGatekeeper2 = new TapGatekeeper(new TapGatekeeperSwitch(true, true), (TapGateKeeperUrl) null, (Integer) null, 6, (DefaultConstructorMarker) null);
        defaultGatekeeper = tapGatekeeper2;
        tapGatekeeper = tapGatekeeper2;
        tapHttp = LazyKt.lazy(new Function0<TapHttp>() { // from class: com.taptap.sdk.initializer.gate.TapGatekeeperManager$tapHttp$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final TapHttp invoke() {
                return TapHttp.INSTANCE.newBuilder("TapSDKCore", "4.5.4").build();
            }
        });
    }

    public final TapGatekeeperError getGatekeeperError$tap_initializer_release() {
        return gatekeeperError;
    }

    public final void setGatekeeperError$tap_initializer_release(TapGatekeeperError tapGatekeeperError) {
        gatekeeperError = tapGatekeeperError;
    }

    public final TapGatekeeper getTapGatekeeper$tap_initializer_release() {
        return tapGatekeeper;
    }

    public final void setTapGatekeeper$tap_initializer_release(TapGatekeeper tapGatekeeper2) {
        Intrinsics.checkNotNullParameter(tapGatekeeper2, "<set-?>");
        tapGatekeeper = tapGatekeeper2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final TapHttp getTapHttp() {
        return (TapHttp) tapHttp.getValue();
    }

    public final boolean isSuccess() {
        return isGatekeeperSuccess;
    }

    public final void initialize$tap_initializer_release(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        if (isInitialized.compareAndSet(false, true)) {
            TapLogger.logi(TapLogger.TAG, "TapGatekeeper initialize start");
            SharedPreferences sharedPreferences = context.getSharedPreferences(GATEKEEPER_SP_NAME, 0);
            Intrinsics.checkNotNullExpressionValue(sharedPreferences, "context.getSharedPrefere…ME, Context.MODE_PRIVATE)");
            gatekeeperPref = sharedPreferences;
            readGatekeeperFromCache();
            TapLogger.logi(TapLogger.TAG, "TapGatekeeper initialize end\nGatekeeperCache = " + tapGatekeeper);
        }
    }

    private final void validateInitialized() {
        if (!isInitialized.get()) {
            throw new TapSdkNotInitializedException("The TapGatekeeperManager has not been initialized successfully");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void writeGatekeeperToCache() {
        String str;
        validateInitialized();
        try {
            SharedPreferences sharedPreferences = gatekeeperPref;
            if (sharedPreferences == null) {
                Intrinsics.throwUninitializedPropertyAccessException("gatekeeperPref");
                sharedPreferences = null;
            }
            SharedPreferences.Editor edit = sharedPreferences.edit();
            TapJson tapJson = TapJson.INSTANCE;
            TapGatekeeper tapGatekeeper2 = tapGatekeeper;
            try {
                Json json = tapJson.getJson();
                KSerializer<Object> serializer = SerializersKt.serializer(json.getSerializersModule(), Reflection.typeOf(TapGatekeeper.class));
                Intrinsics.checkNotNull(serializer, "null cannot be cast to non-null type kotlinx.serialization.KSerializer<T of kotlinx.serialization.internal.Platform_commonKt.cast>");
                str = json.encodeToString(serializer, tapGatekeeper2);
            } catch (Exception e) {
                TapLogger.loge$default(TapJson.TAG, null, e, 2, null);
                str = null;
            }
            edit.putString(KEY_GATEKEEPER, str).apply();
        } catch (Exception e2) {
            TapLogger.loge$default(TAG, null, e2, 2, null);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0069 A[Catch: all -> 0x0071, TryCatch #0 {all -> 0x0071, blocks: (B:3:0x0007, B:5:0x000b, B:6:0x0011, B:9:0x001b, B:13:0x002b, B:18:0x0065, B:20:0x0069, B:21:0x006e, B:26:0x003c, B:29:0x005d, B:30:0x006c), top: B:2:0x0007, inners: #1 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void readGatekeeperFromCache() {
        /*
            r7 = this;
            java.lang.String r0 = ""
            r7.validateInitialized()
            r1 = 2
            r2 = 0
            android.content.SharedPreferences r3 = com.taptap.sdk.initializer.gate.TapGatekeeperManager.gatekeeperPref     // Catch: java.lang.Throwable -> L71
            if (r3 != 0) goto L11
            java.lang.String r3 = "gatekeeperPref"
            kotlin.jvm.internal.Intrinsics.throwUninitializedPropertyAccessException(r3)     // Catch: java.lang.Throwable -> L71
            r3 = r2
        L11:
            java.lang.String r4 = "key_gatekeeper"
            java.lang.String r3 = r3.getString(r4, r0)     // Catch: java.lang.Throwable -> L71
            if (r3 != 0) goto L1a
            goto L1b
        L1a:
            r0 = r3
        L1b:
            r3 = r0
            java.lang.CharSequence r3 = (java.lang.CharSequence) r3     // Catch: java.lang.Throwable -> L71
            int r3 = r3.length()     // Catch: java.lang.Throwable -> L71
            r4 = 1
            r5 = 0
            if (r3 <= 0) goto L28
            r3 = r4
            goto L29
        L28:
            r3 = r5
        L29:
            if (r3 == 0) goto L6c
            com.taptap.sdk.kit.internal.json.TapJson r3 = com.taptap.sdk.kit.internal.json.TapJson.INSTANCE     // Catch: java.lang.Throwable -> L71
            r6 = r0
            java.lang.CharSequence r6 = (java.lang.CharSequence) r6     // Catch: java.lang.Throwable -> L71
            int r6 = r6.length()     // Catch: java.lang.Throwable -> L71
            if (r6 != 0) goto L37
            goto L38
        L37:
            r4 = r5
        L38:
            if (r4 == 0) goto L3c
        L3a:
            r0 = r2
            goto L65
        L3c:
            kotlinx.serialization.json.Json r3 = r3.getJson()     // Catch: java.lang.Exception -> L5c java.lang.Throwable -> L71
            kotlinx.serialization.StringFormat r3 = (kotlinx.serialization.StringFormat) r3     // Catch: java.lang.Exception -> L5c java.lang.Throwable -> L71
            kotlinx.serialization.modules.SerializersModule r4 = r3.getSerializersModule()     // Catch: java.lang.Exception -> L5c java.lang.Throwable -> L71
            java.lang.Class<com.taptap.sdk.initializer.gate.TapGatekeeper> r5 = com.taptap.sdk.initializer.gate.TapGatekeeper.class
            kotlin.reflect.KType r5 = kotlin.jvm.internal.Reflection.typeOf(r5)     // Catch: java.lang.Exception -> L5c java.lang.Throwable -> L71
            kotlinx.serialization.KSerializer r4 = kotlinx.serialization.SerializersKt.serializer(r4, r5)     // Catch: java.lang.Exception -> L5c java.lang.Throwable -> L71
            java.lang.String r5 = "null cannot be cast to non-null type kotlinx.serialization.KSerializer<T of kotlinx.serialization.internal.Platform_commonKt.cast>"
            kotlin.jvm.internal.Intrinsics.checkNotNull(r4, r5)     // Catch: java.lang.Exception -> L5c java.lang.Throwable -> L71
            kotlinx.serialization.DeserializationStrategy r4 = (kotlinx.serialization.DeserializationStrategy) r4     // Catch: java.lang.Exception -> L5c java.lang.Throwable -> L71
            java.lang.Object r0 = r3.decodeFromString(r4, r0)     // Catch: java.lang.Exception -> L5c java.lang.Throwable -> L71
            goto L65
        L5c:
            r0 = move-exception
            java.lang.String r3 = "TapJson"
            java.lang.Throwable r0 = (java.lang.Throwable) r0     // Catch: java.lang.Throwable -> L71
            com.taptap.sdk.kit.internal.TapLogger.loge$default(r3, r2, r0, r1, r2)     // Catch: java.lang.Throwable -> L71
            goto L3a
        L65:
            com.taptap.sdk.initializer.gate.TapGatekeeper r0 = (com.taptap.sdk.initializer.gate.TapGatekeeper) r0     // Catch: java.lang.Throwable -> L71
            if (r0 != 0) goto L6e
            com.taptap.sdk.initializer.gate.TapGatekeeper r0 = com.taptap.sdk.initializer.gate.TapGatekeeperManager.defaultGatekeeper     // Catch: java.lang.Throwable -> L71
            goto L6e
        L6c:
            com.taptap.sdk.initializer.gate.TapGatekeeper r0 = com.taptap.sdk.initializer.gate.TapGatekeeperManager.defaultGatekeeper     // Catch: java.lang.Throwable -> L71
        L6e:
            com.taptap.sdk.initializer.gate.TapGatekeeperManager.tapGatekeeper = r0     // Catch: java.lang.Throwable -> L71
            goto L77
        L71:
            r0 = move-exception
            java.lang.String r3 = "TapGatekeeperManager"
            com.taptap.sdk.kit.internal.TapLogger.loge$default(r3, r2, r0, r1, r2)
        L77:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.taptap.sdk.initializer.gate.TapGatekeeperManager.readGatekeeperFromCache():void");
    }

    public final void queryGatekeeper(Context context, Function0<Unit> runnable) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(runnable, "runnable");
        JSONObject jSONObject = new JSONObject();
        TapGatekeeperManager tapGatekeeperManager = INSTANCE;
        tapGatekeeperManager.putProperty(jSONObject, Constants.PARAM_PLATFORM, "android");
        tapGatekeeperManager.putProperty(jSONObject, "package_name", context.getPackageName());
        tapGatekeeperManager.putProperty(jSONObject, "package_sign", TapSignKit.INSTANCE.getSign(context));
        BuildersKt__Builders_commonKt.launch$default(TapTapKit.INSTANCE.getTapApplicationScope(), null, null, new TapGatekeeperManager$queryGatekeeper$1(jSONObject, runnable, null), 3, null);
    }

    public final boolean isAutoEventEnable() {
        TapGatekeeperSwitch tapGatekeeperSwitch = tapGatekeeper.getSwitch();
        if (tapGatekeeperSwitch != null) {
            return Intrinsics.areEqual((Object) tapGatekeeperSwitch.getAutoEvent(), (Object) true);
        }
        return false;
    }

    public final boolean isHeartbeatEnable() {
        TapGatekeeperSwitch tapGatekeeperSwitch = tapGatekeeper.getSwitch();
        if (tapGatekeeperSwitch != null) {
            return Intrinsics.areEqual((Object) tapGatekeeperSwitch.getHeartbeat(), (Object) true);
        }
        return false;
    }

    private final void putProperty(JSONObject jSONObject, String str, Object obj) {
        String str2 = str;
        if (str2 == null || str2.length() == 0) {
            return;
        }
        jSONObject.put(str, obj);
    }
}
