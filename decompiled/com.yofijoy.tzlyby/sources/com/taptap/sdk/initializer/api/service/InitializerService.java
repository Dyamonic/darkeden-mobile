package com.taptap.sdk.initializer.api.service;

import com.taptap.sdk.servicemanager.ServiceManager;
import kotlin.Metadata;

/* compiled from: InitializerService.kt */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\bf\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H&J\u0012\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u0005H&J\u000f\u0010\u0007\u001a\u0004\u0018\u00010\bH&¢\u0006\u0002\u0010\tJ\u0012\u0010\n\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u0005H&J\u0012\u0010\u000b\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u0005H&¨\u0006\f"}, d2 = {"Lcom/taptap/sdk/initializer/api/service/InitializerService;", "Lcom/taptap/sdk/servicemanager/ServiceManager$Service;", "checkInitialize", "", "getAchievementUrl", "", "type", "getAppId", "", "()Ljava/lang/Integer;", "getReviewUrl", "getShareUrl", "tap-initializer-api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes.dex */
public interface InitializerService extends ServiceManager.Service {
    boolean checkInitialize();

    String getAchievementUrl(String type);

    Integer getAppId();

    String getReviewUrl(String type);

    String getShareUrl(String type);
}
