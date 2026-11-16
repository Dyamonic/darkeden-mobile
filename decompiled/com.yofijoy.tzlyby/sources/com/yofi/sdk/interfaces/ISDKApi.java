package com.yofi.sdk.interfaces;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.yofi.sdk.IFlashCallback;
import com.yofi.sdk.OnLoginCallback;
import com.yofi.sdk.imp.middle.data.GameData;
import com.yofi.sdk.imp.middle.data.PayInfo;

/* loaded from: classes2.dex */
public interface ISDKApi {
    void bindPhone(Activity var1, IFlashCallback var3);

    void destory(Context var1);

    void eventRecord(String eventName, Bundle bundle);

    void execute(Activity var1, Intent var2, IFlashCallback var3);

    void gameStage(int stage);

    int getAge();

    int getAppChannel();

    String getAppId();

    String getAppKey();

    String getAppPrivateKey();

    String getDeviceId();

    String getImei();

    String getModel();

    String getOS();

    String getOaid();

    String getPhoneNum();

    String getSDKName();

    void getServerState(Activity activity, IFlashCallback cb);

    String getVersion();

    String getWechatAppId();

    void initialize(Activity var1, boolean isLandScape, IFlashCallback cb);

    Boolean isTourist();

    void login(Activity var1, OnLoginCallback var3);

    void logout();

    void onApplicationCreate(Application application);

    void onPause(Activity activity);

    void onResume(Activity activity);

    void pay(Context var1, PayInfo var2, IFlashCallback var3);

    void setScreenIsLandScape(boolean isLandScape);

    void showContact(String roleId, String roleName, String serverId, String serverName);

    void showUserCenter();

    void submitGameData(GameData data, int type);
}
