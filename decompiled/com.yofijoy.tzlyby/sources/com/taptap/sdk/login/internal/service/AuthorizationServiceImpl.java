package com.taptap.sdk.login.internal.service;

import com.qq.gdt.action.ActionUtils;
import com.taptap.sdk.common.services.AuthorizationService;
import com.taptap.sdk.login.TapTapAccount;
import com.taptap.sdk.login.internal.AccountManager;
import com.taptap.sdk.login.internal.util.CodeUtil;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: AuthorizationServiceImpl.kt */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0007\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u001a\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0004H\u0016¨\u0006\u0007"}, d2 = {"Lcom/taptap/sdk/login/internal/service/AuthorizationServiceImpl;", "Lcom/taptap/sdk/common/services/AuthorizationService;", "()V", "obtainAuthorization", "", "url", ActionUtils.METHOD, "tap-login_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes.dex */
public final class AuthorizationServiceImpl implements AuthorizationService {
    @Override // com.taptap.sdk.common.services.AuthorizationService
    public String obtainAuthorization(String url, String method) {
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(method, "method");
        TapTapAccount account = AccountManager.INSTANCE.getAccount();
        if (account != null) {
            if (url.length() > 0) {
                if (method.length() > 0) {
                    return CodeUtil.INSTANCE.getAuthorization(url, method, account.getAccessToken().getKid(), account.getAccessToken().getMacKey());
                }
            }
        }
        return null;
    }
}
