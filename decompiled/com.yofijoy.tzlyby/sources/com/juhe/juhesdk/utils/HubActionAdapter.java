package com.juhe.juhesdk.utils;

import com.netease.yofun.external.HubAction;
import com.netease.yofun.external.data.PayInfo;
import com.netease.yofun.external.data.UserInfo;

/* loaded from: classes.dex */
public abstract class HubActionAdapter implements HubAction {
    public void onInit(int code, String msg) {
    }

    public void onIsShowingSdkUi(boolean isShowing) {
    }

    public void onLogin(int code, String msg, UserInfo info) {
    }

    public void onLogout(int code) {
    }

    public void onPay(int code, String msg, PayInfo info) {
    }

    public void onQuit(boolean realQuit) {
    }

    @Deprecated
    public void onSplash() {
    }
}
