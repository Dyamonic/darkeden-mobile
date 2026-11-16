package com.taptap.sdk.update.enginebridge;

import android.app.Activity;
import com.taptap.sdk.kit.internal.TapLogger;
import com.taptap.sdk.kit.internal.enginebridge.EngineBridgeCallback;
import com.taptap.sdk.kit.internal.enginebridge.EngineBridgeResult;
import com.taptap.sdk.kit.internal.json.TapJson;
import com.taptap.sdk.update.TapTapUpdate;
import com.taptap.sdk.update.TapTapUpdateCallback;
import com.taptap.sdk.update.internal.TapUpdateLoggerKt;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KTypeProjection;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerializersKt;
import kotlinx.serialization.json.Json;

/* compiled from: BridgeUpdateServiceImpl.kt */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0016¨\u0006\t"}, d2 = {"Lcom/taptap/sdk/update/enginebridge/BridgeUpdateServiceImpl;", "Lcom/taptap/sdk/update/enginebridge/BridgeUpdateService;", "()V", "updateGame", "", "activity", "Landroid/app/Activity;", "callback", "Lcom/taptap/sdk/kit/internal/enginebridge/EngineBridgeCallback;", "tap-update_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes2.dex */
public final class BridgeUpdateServiceImpl implements BridgeUpdateService {
    @Override // com.taptap.sdk.update.enginebridge.BridgeUpdateService
    public void updateGame(Activity activity, final EngineBridgeCallback callback) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        Intrinsics.checkNotNullParameter(callback, "callback");
        TapUpdateLoggerKt.logInfo("call updateGame from bridge");
        TapTapUpdate.updateGame(activity, new TapTapUpdateCallback() { // from class: com.taptap.sdk.update.enginebridge.BridgeUpdateServiceImpl$updateGame$1
            @Override // com.taptap.sdk.update.TapTapUpdateCallback
            public void onCancel() {
                EngineBridgeCallback engineBridgeCallback = EngineBridgeCallback.this;
                EngineBridgeResult engineBridgeResult = new EngineBridgeResult(1, "cancel", (Object) null, 4, (DefaultConstructorMarker) null);
                String str = null;
                try {
                    Json json = TapJson.INSTANCE.getJson();
                    KSerializer<Object> serializer = SerializersKt.serializer(json.getSerializersModule(), Reflection.typeOf(EngineBridgeResult.class, KTypeProjection.INSTANCE.invariant(Reflection.typeOf(String.class))));
                    Intrinsics.checkNotNull(serializer, "null cannot be cast to non-null type kotlinx.serialization.KSerializer<T of kotlinx.serialization.internal.Platform_commonKt.cast>");
                    str = json.encodeToString(serializer, engineBridgeResult);
                } catch (Exception e) {
                    TapLogger.loge$default(TapJson.TAG, null, e, 2, null);
                }
                if (str == null) {
                    str = "json convert error";
                }
                engineBridgeCallback.onResult(str);
            }
        });
    }
}
