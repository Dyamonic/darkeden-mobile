package com.taptap.sdk.update;

import android.app.Activity;
import com.taptap.sdk.initializer.api.check.TapSdkChecker;
import com.taptap.sdk.update.internal.TapUpdateInternal;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: TapTapUpdate.kt */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0007¨\u0006\t"}, d2 = {"Lcom/taptap/sdk/update/TapTapUpdate;", "", "()V", "updateGame", "", "activity", "Landroid/app/Activity;", "callback", "Lcom/taptap/sdk/update/TapTapUpdateCallback;", "tap-update_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes2.dex */
public final class TapTapUpdate {
    public static final TapTapUpdate INSTANCE = new TapTapUpdate();

    private TapTapUpdate() {
    }

    @JvmStatic
    public static final void updateGame(Activity activity, TapTapUpdateCallback callback) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        Intrinsics.checkNotNullParameter(callback, "callback");
        if (TapSdkChecker.INSTANCE.checkInitialize()) {
            TapUpdateInternal.INSTANCE.updateGame(activity, callback);
        }
    }
}
