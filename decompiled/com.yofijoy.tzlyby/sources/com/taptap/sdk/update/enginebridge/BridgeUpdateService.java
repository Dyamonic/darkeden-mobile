package com.taptap.sdk.update.enginebridge;

import android.app.Activity;
import com.taptap.sdk.kit.internal.enginebridge.EngineBridgeCallback;
import com.taptap.sdk.kit.internal.enginebridge.IEngineBridgeService;
import com.taptap.sdk.kit.internal.enginebridge.annotation.EngineBridgeMethod;
import com.taptap.sdk.kit.internal.enginebridge.annotation.EngineBridgeService;
import kotlin.Metadata;

/* compiled from: BridgeUpdateService.kt */
@EngineBridgeService("BridgeUpdateService")
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bg\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H'¨\u0006\b"}, d2 = {"Lcom/taptap/sdk/update/enginebridge/BridgeUpdateService;", "Lcom/taptap/sdk/kit/internal/enginebridge/IEngineBridgeService;", "updateGame", "", "activity", "Landroid/app/Activity;", "callback", "Lcom/taptap/sdk/kit/internal/enginebridge/EngineBridgeCallback;", "tap-update_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes2.dex */
public interface BridgeUpdateService extends IEngineBridgeService {
    @EngineBridgeMethod("updateGame")
    void updateGame(Activity activity, EngineBridgeCallback callback);
}
