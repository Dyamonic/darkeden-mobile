package com.taptap.sdk.initializer.service;

import android.widget.Toast;
import com.taptap.sdk.initializer.api.service.InitializerService;
import com.taptap.sdk.initializer.gate.TapGateKeeperUrl;
import com.taptap.sdk.initializer.gate.TapGatekeeperError;
import com.taptap.sdk.initializer.gate.TapGatekeeperKt;
import com.taptap.sdk.initializer.gate.TapGatekeeperManager;
import com.taptap.sdk.initializer.gate.Url;
import com.taptap.sdk.kit.internal.TapLogger;
import com.taptap.sdk.kit.internal.TapTapKit;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: InitializerServiceImpl.kt */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u00020\u0004H\u0016J\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0007\u001a\u00020\u0006H\u0016J\u000f\u0010\b\u001a\u0004\u0018\u00010\tH\u0016¢\u0006\u0002\u0010\nJ\u0012\u0010\u000b\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0007\u001a\u00020\u0006H\u0016J\u0012\u0010\f\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0007\u001a\u00020\u0006H\u0016¨\u0006\r"}, d2 = {"Lcom/taptap/sdk/initializer/service/InitializerServiceImpl;", "Lcom/taptap/sdk/initializer/api/service/InitializerService;", "()V", "checkInitialize", "", "getAchievementUrl", "", "type", "getAppId", "", "()Ljava/lang/Integer;", "getReviewUrl", "getShareUrl", "tap-initializer_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes.dex */
public final class InitializerServiceImpl implements InitializerService {
    @Override // com.taptap.sdk.initializer.api.service.InitializerService
    public Integer getAppId() {
        return TapGatekeeperManager.INSTANCE.getTapGatekeeper$tap_initializer_release().getAppId();
    }

    @Override // com.taptap.sdk.initializer.api.service.InitializerService
    public String getAchievementUrl(String type) {
        Url achievementUrl;
        Url achievementUrl2;
        Url achievementUrl3;
        Intrinsics.checkNotNullParameter(type, "type");
        if (Intrinsics.areEqual(type, "webview")) {
            TapGateKeeperUrl urls = TapGatekeeperManager.INSTANCE.getTapGatekeeper$tap_initializer_release().getUrls();
            if (urls == null || (achievementUrl3 = urls.getAchievementUrl()) == null) {
                return null;
            }
            return achievementUrl3.getWebViewUrl();
        }
        if (Intrinsics.areEqual(type, "uri")) {
            TapGateKeeperUrl urls2 = TapGatekeeperManager.INSTANCE.getTapGatekeeper$tap_initializer_release().getUrls();
            if (urls2 == null || (achievementUrl2 = urls2.getAchievementUrl()) == null) {
                return null;
            }
            return achievementUrl2.getTapUri();
        }
        TapGateKeeperUrl urls3 = TapGatekeeperManager.INSTANCE.getTapGatekeeper$tap_initializer_release().getUrls();
        if (urls3 == null || (achievementUrl = urls3.getAchievementUrl()) == null) {
            return null;
        }
        return achievementUrl.getBrowserUrl();
    }

    @Override // com.taptap.sdk.initializer.api.service.InitializerService
    public String getShareUrl(String type) {
        Url shareUrl;
        Url shareUrl2;
        Url shareUrl3;
        Intrinsics.checkNotNullParameter(type, "type");
        if (Intrinsics.areEqual(type, "webview")) {
            TapGateKeeperUrl urls = TapGatekeeperManager.INSTANCE.getTapGatekeeper$tap_initializer_release().getUrls();
            if (urls == null || (shareUrl3 = urls.getShareUrl()) == null) {
                return null;
            }
            return shareUrl3.getWebViewUrl();
        }
        if (Intrinsics.areEqual(type, "uri")) {
            TapGateKeeperUrl urls2 = TapGatekeeperManager.INSTANCE.getTapGatekeeper$tap_initializer_release().getUrls();
            if (urls2 == null || (shareUrl2 = urls2.getShareUrl()) == null) {
                return null;
            }
            return shareUrl2.getTapUri();
        }
        TapGateKeeperUrl urls3 = TapGatekeeperManager.INSTANCE.getTapGatekeeper$tap_initializer_release().getUrls();
        if (urls3 == null || (shareUrl = urls3.getShareUrl()) == null) {
            return null;
        }
        return shareUrl.getBrowserUrl();
    }

    @Override // com.taptap.sdk.initializer.api.service.InitializerService
    public String getReviewUrl(String type) {
        Url reviewUrl;
        Url reviewUrl2;
        Url reviewUrl3;
        Intrinsics.checkNotNullParameter(type, "type");
        if (Intrinsics.areEqual(type, "webview")) {
            TapGateKeeperUrl urls = TapGatekeeperManager.INSTANCE.getTapGatekeeper$tap_initializer_release().getUrls();
            if (urls == null || (reviewUrl3 = urls.getReviewUrl()) == null) {
                return null;
            }
            return reviewUrl3.getWebViewUrl();
        }
        if (Intrinsics.areEqual(type, "uri")) {
            TapGateKeeperUrl urls2 = TapGatekeeperManager.INSTANCE.getTapGatekeeper$tap_initializer_release().getUrls();
            if (urls2 == null || (reviewUrl2 = urls2.getReviewUrl()) == null) {
                return null;
            }
            return reviewUrl2.getTapUri();
        }
        TapGateKeeperUrl urls3 = TapGatekeeperManager.INSTANCE.getTapGatekeeper$tap_initializer_release().getUrls();
        if (urls3 == null || (reviewUrl = urls3.getReviewUrl()) == null) {
            return null;
        }
        return reviewUrl.getBrowserUrl();
    }

    @Override // com.taptap.sdk.initializer.api.service.InitializerService
    public boolean checkInitialize() {
        if (!TapTapKit.INSTANCE.hasInitialized()) {
            Toast.makeText(TapTapKit.INSTANCE.getContext(), "当前应用还未初始化", 0).show();
            TapLogger.loge$default("TapInitializer", "当前应用还未初始化: 请在调用 SDK 业务接口前，先调用 [TapTapSDK.init()] 接口", null, 4, null);
            return false;
        }
        if (TapGatekeeperManager.INSTANCE.isSuccess()) {
            return true;
        }
        TapGatekeeperError gatekeeperError$tap_initializer_release = TapGatekeeperManager.INSTANCE.getGatekeeperError$tap_initializer_release();
        if (gatekeeperError$tap_initializer_release == null) {
            return false;
        }
        TapGatekeeperKt.showGatekeeperError(gatekeeperError$tap_initializer_release);
        return false;
    }
}
