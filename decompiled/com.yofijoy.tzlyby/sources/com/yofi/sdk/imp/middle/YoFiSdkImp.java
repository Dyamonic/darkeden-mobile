package com.yofi.sdk.imp.middle;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.provider.Settings;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import androidx.core.internal.view.SupportMenu;
import androidx.core.view.ViewCompat;
import com.bytedance.ads.convert.BDConvert;
import com.bytedance.applog.AppLog;
import com.bytedance.applog.ILogger;
import com.bytedance.applog.InitConfig;
import com.cmic.gen.sdk.view.AuthLoginCallBack;
import com.qq.gdt.action.ActionType;
import com.qq.gdt.action.GDTAction;
import com.rich.oauth.callback.AuthLoginClickListener;
import com.rich.oauth.callback.AuthPageInListener;
import com.rich.oauth.callback.CheckboxCheckedChangeListener;
import com.rich.oauth.callback.CheckboxUnCheckedClickListener;
import com.rich.oauth.callback.InitCallback;
import com.rich.oauth.callback.PreLoginCallback;
import com.rich.oauth.callback.PressBackListener;
import com.rich.oauth.callback.TokenCallback;
import com.rich.oauth.callback.UnCheckDialogAuthLoginListener;
import com.rich.oauth.core.RichAuth;
import com.rich.oauth.core.UIConfigBuild;
import com.rich.oauth.util.AuthConstants;
import com.rich.oauth.util.RichLogUtil;
import com.taptap.sdk.core.internal.event.constants.TapEventParamConstants;
import com.taptap.sdk.core.internal.event.iap.lib2plus.BillingClientConstants;
import com.taptap.sdk.login.internal.handlers.web.WebLoginFragment;
import com.taptap.sdk.moment.legacy.utils.NetSaveImageHelper;
import com.taptap.sdk.update.download.core.breakpoint.BreakpointSQLiteKey;
import com.tencent.mm.opensdk.openapi.IWXAPI;
import com.tencent.mm.opensdk.openapi.WXAPIFactory;
import com.tencent.tauth.Tencent;
import com.yofi.sdk.IFlashCallback;
import com.yofi.sdk.OnLoginCallback;
import com.yofi.sdk.activity.ContainerActivity;
import com.yofi.sdk.activity.VerticalContainerActivity;
import com.yofi.sdk.activity.WebPayView;
import com.yofi.sdk.activity.YouFeiWebViewActivity;
import com.yofi.sdk.imp.middle.common.Constants;
import com.yofi.sdk.imp.middle.common.SQLFunction;
import com.yofi.sdk.imp.middle.common.WebAPI;
import com.yofi.sdk.imp.middle.data.GameData;
import com.yofi.sdk.imp.middle.data.PayInfo;
import com.yofi.sdk.imp.middle.dialog.FloatDialog;
import com.yofi.sdk.imp.middle.dialog.LoadingDialog;
import com.yofi.sdk.imp.middle.eventreword.EventReword;
import com.yofi.sdk.imp.middle.manager.LittleApiImp;
import com.yofi.sdk.imp.middle.manager.UserManager;
import com.yofi.sdk.imp.middle.taptap.TapTapSingleton;
import com.yofi.sdk.interfaces.ISDKApi;
import com.yofi.sdk.interfaces.OnAppStatusListener;
import com.yofi.sdk.notchlib.NotchScreenManager;
import com.yofi.sdk.utils.CommonUtils;
import com.yofi.sdk.utils.GetWebUrlFromCDNTool;
import com.yofi.sdk.utils.ResUtils;
import com.yofi.sdk.utils.ToastUtils;
import com.yofi.sdk.utils.YofiOaidDemoHelper;
import com.yofi.sdk.web.WebAPICallback;
import com.yofi.sdk.web.WebResult;
import com.yofi.sdk.widget.HideWebView;
import cz.msebera.android.httpclient.HttpStatus;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class YoFiSdkImp implements ISDKApi {
    static final String LOG_TAG = "YoFiSdkImp";
    private static YoFiSdkImp imp;
    private List<Activity> activityList;
    private OnAppStatusListener appStatusListener;
    private boolean hasLoginSuccess;
    private boolean isLandScape;
    private boolean isLoginOut;
    private int isOpenBackH5;
    public Tencent mTencent;
    private String qqAppId;
    private int readFlag;
    private String socketUrl;
    private String uuid;
    private String wechatAppId;
    public IWXAPI wxApi;
    private Handler handler = new Handler();
    private SharedPreferences settings = null;
    private boolean initialized = false;
    private FloatDialog floatWindow = null;
    private HideWebView mHideWebView = null;
    private boolean loadHideWebViewSuccess = false;
    private OnLoginCallback loginCallback = null;
    private IFlashCallback payCallback = null;
    private IFlashCallback bindCallBack = null;
    private IFlashCallback syOneKeyLoginCallback = null;
    private IFlashCallback syOneKeyLoginNativeCallJs = null;
    private boolean isCheckUpdate = false;
    private boolean isDebug = false;
    private boolean isShowFloatButton = true;
    private boolean isShowGuest = true;
    private boolean isShowTapTap = false;
    private boolean isShowQQ = true;
    private boolean isShowThirdLogin = false;
    private boolean isShowSyOneKeyLogin = false;
    private boolean isSyPreLoginSuccess = false;
    private boolean isNowOneKeyLogin = false;
    private boolean isLoginWithoutAccount = false;
    private Activity mainActivity = null;
    private String nickname = "";
    private String accessToken = "";
    private String userId = "";
    private String androidId = "";
    private String oaid = "";
    private String mac = "";
    private Activity checkUpdateloginActivity = null;
    private OnLoginCallback checkUpdateloginCb = null;
    private int intervalSecond = 30;
    private boolean hasUserdOneKeyLogin = false;
    private int activityReferences = 0;
    private boolean isActivityChangingConfigurations = false;
    private int wsHeartbeatIntervalSecond = 1;
    private int chatIntervalSecond = HttpStatus.SC_MULTIPLE_CHOICES;

    @Override // com.yofi.sdk.interfaces.ISDKApi
    public String getSDKName() {
        return Constants.YOFI_SDK_NAME;
    }

    @Override // com.yofi.sdk.interfaces.ISDKApi
    public String getVersion() {
        return Constants.CLIENT_VERSION;
    }

    static /* synthetic */ int access$1808(YoFiSdkImp yoFiSdkImp) {
        int i = yoFiSdkImp.activityReferences;
        yoFiSdkImp.activityReferences = i + 1;
        return i;
    }

    static /* synthetic */ int access$1810(YoFiSdkImp yoFiSdkImp) {
        int i = yoFiSdkImp.activityReferences;
        yoFiSdkImp.activityReferences = i - 1;
        return i;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public String getUserId() {
        return this.userId;
    }

    public YoFiSdkImp() {
        imp = this;
    }

    public boolean getLandSpace() {
        return this.isLandScape;
    }

    public void addActivity(Activity activity) {
        this.activityList.add(activity);
    }

    public void removeActivity(Activity activity) {
        this.activityList.remove(activity);
    }

    public void clearAllActivity() {
        Iterator<Activity> it = this.activityList.iterator();
        while (it.hasNext()) {
            it.next().finish();
        }
    }

    public Activity getTopActivity() {
        if (this.activityList.size() == 0) {
            return this.mainActivity;
        }
        return this.activityList.get(this.activityList.size() - 1);
    }

    public String getAndroidId() {
        return this.androidId;
    }

    @Override // com.yofi.sdk.interfaces.ISDKApi
    public String getOaid() {
        return this.oaid;
    }

    public void setOaid(String oaid) {
        this.oaid = oaid;
    }

    public String getMac() {
        return this.mac;
    }

    @Override // com.yofi.sdk.interfaces.ISDKApi
    public String getAppId() {
        return this.settings.getString(Constants.YOFI_APPID, "");
    }

    @Override // com.yofi.sdk.interfaces.ISDKApi
    public String getAppKey() {
        return this.settings.getString(Constants.YOFI_APPKEY, "");
    }

    @Override // com.yofi.sdk.interfaces.ISDKApi
    public String getWechatAppId() {
        String str = this.wechatAppId;
        return str == null ? "" : str;
    }

    public String getQQAppId() {
        String str = this.qqAppId;
        return str == null ? "" : str;
    }

    @Override // com.yofi.sdk.interfaces.ISDKApi
    public String getPhoneNum() {
        String str = this.accessToken;
        return (str == null || str.length() <= 0) ? "" : UserManager.instance().getPhoneNumber();
    }

    @Override // com.yofi.sdk.interfaces.ISDKApi
    public int getAge() {
        String str = this.accessToken;
        if (str == null || str.length() <= 0) {
            return 0;
        }
        return UserManager.instance().getAge();
    }

    @Override // com.yofi.sdk.interfaces.ISDKApi
    public Boolean isTourist() {
        String str = this.accessToken;
        if (str != null && str.length() > 0) {
            return Boolean.valueOf(UserManager.instance().isTourist());
        }
        return false;
    }

    public Boolean getIsDebug() {
        return Boolean.valueOf(this.isDebug);
    }

    public boolean isShowGuest() {
        return this.isShowGuest;
    }

    public boolean isShowTapTap() {
        return this.isShowTapTap;
    }

    public boolean isShowQQ() {
        return this.isShowQQ;
    }

    public boolean isShowThirdLogin() {
        return this.isShowThirdLogin;
    }

    public boolean isShowSyOneKeyLogin() {
        return this.isShowSyOneKeyLogin;
    }

    public boolean isSyPreLoginSuccess() {
        return this.isSyPreLoginSuccess;
    }

    public Boolean getIsShowFloatButton() {
        return Boolean.valueOf(this.isShowFloatButton);
    }

    @Override // com.yofi.sdk.interfaces.ISDKApi
    public String getAppPrivateKey() {
        return this.settings.getString(Constants.YOFI_PRIVATEKEY, "");
    }

    @Override // com.yofi.sdk.interfaces.ISDKApi
    public int getAppChannel() {
        return this.settings.getInt(Constants.YOFI_SDK_CHANNEL, 0);
    }

    @Override // com.yofi.sdk.interfaces.ISDKApi
    public String getImei() {
        return this.settings.getString(Constants.YOFI_IMEI, "");
    }

    public String getPackageName() {
        return this.settings.getString(Constants.YOFI_PACKAGENAME, "");
    }

    public boolean getLoginWithoutAccount() {
        return this.isLoginWithoutAccount;
    }

    @Override // com.yofi.sdk.interfaces.ISDKApi
    public String getModel() {
        return Build.MODEL;
    }

    @Override // com.yofi.sdk.interfaces.ISDKApi
    public String getDeviceId() {
        return instance().getImei();
    }

    @Override // com.yofi.sdk.interfaces.ISDKApi
    public String getOS() {
        return Build.VERSION.RELEASE;
    }

    public Activity getMainActivity() {
        return this.mainActivity;
    }

    public String getNickname() {
        return this.nickname;
    }

    public void setNickname(String nickname) {
        this.nickname = nickname;
    }

    public String getAccessToken() {
        return this.accessToken;
    }

    public void setAccessToken(String accessToken) {
        this.accessToken = accessToken;
    }

    public String getCacheWebUrl() {
        if (this.settings == null) {
            this.settings = this.mainActivity.getSharedPreferences(Constants.TAG, 0);
        }
        return this.settings.getString("cacheWebUrl", "");
    }

    public void setCacheWebUrl(String webUrl) {
        if (this.settings == null) {
            this.settings = this.mainActivity.getSharedPreferences(Constants.TAG, 0);
        }
        SharedPreferences.Editor edit = this.settings.edit();
        edit.putString("cacheWebUrl", webUrl);
        edit.commit();
    }

    public String getCacheServerUrl() {
        if (this.settings == null) {
            this.settings = this.mainActivity.getSharedPreferences(Constants.TAG, 0);
        }
        return this.settings.getString("cacheServerUrl", "");
    }

    public void setCacheServerUrl(String serverUrl) {
        if (this.settings == null) {
            this.settings = this.mainActivity.getSharedPreferences(Constants.TAG, 0);
        }
        SharedPreferences.Editor edit = this.settings.edit();
        edit.putString("cacheServerUrl", serverUrl);
        edit.commit();
    }

    public String getCacheTaskServerUrl() {
        if (this.settings == null) {
            this.settings = this.mainActivity.getSharedPreferences(Constants.TAG, 0);
        }
        return this.settings.getString("cacheTaskServerUrl", "");
    }

    public void setCacheTaskServerUrl(String serverUrl) {
        if (this.settings == null) {
            this.settings = this.mainActivity.getSharedPreferences(Constants.TAG, 0);
        }
        SharedPreferences.Editor edit = this.settings.edit();
        edit.putString("cacheTaskServerUrl", serverUrl);
        edit.commit();
    }

    public void setIsCheckUpdate(boolean isCheckUpdate) {
        OnLoginCallback onLoginCallback;
        this.isCheckUpdate = isCheckUpdate;
        Log.d("setIsCheckUpdate", "setIsCheckUpdate: " + isCheckUpdate);
        Activity activity = this.checkUpdateloginActivity;
        if (activity == null || (onLoginCallback = this.checkUpdateloginCb) == null) {
            return;
        }
        login(activity, onLoginCallback);
        this.checkUpdateloginActivity = null;
        this.checkUpdateloginCb = null;
    }

    public OnLoginCallback getLoginCallback() {
        return this.loginCallback;
    }

    public void setLoginOut(boolean isLoginOut) {
        this.isLoginOut = isLoginOut;
    }

    public boolean isLoginOut() {
        return this.isLoginOut;
    }

    public void setHasLoginSuccess(boolean hasLoginSuccess) {
        this.hasLoginSuccess = hasLoginSuccess;
    }

    public void setSyPreLoginSuccess(boolean syPreLoginSuccess) {
        this.isSyPreLoginSuccess = syPreLoginSuccess;
    }

    public IFlashCallback getSyOneKeyLoginCallback() {
        return this.syOneKeyLoginCallback;
    }

    public void setSyOneKeyLoginCallback(IFlashCallback syOneKeyLoginCallback) {
        this.syOneKeyLoginCallback = syOneKeyLoginCallback;
    }

    public IFlashCallback getSyOneKeyLoginNativeCallJs() {
        return this.syOneKeyLoginNativeCallJs;
    }

    public void setSyOneKeyLoginNativeCallJs(IFlashCallback syOneKeyLoginNativeCallJs) {
        this.syOneKeyLoginNativeCallJs = syOneKeyLoginNativeCallJs;
    }

    public IFlashCallback getBindCallBack() {
        return this.bindCallBack;
    }

    public IFlashCallback getPayCallback() {
        return this.payCallback;
    }

    public void setLoginCallback(OnLoginCallback loginCallback) {
        this.loginCallback = loginCallback;
    }

    public boolean isInitialized() {
        return this.initialized;
    }

    public String getError(String error) {
        return this.settings.getString(error, "");
    }

    public void setUuid(String uuid) {
        this.uuid = uuid;
    }

    public String getUuid() {
        return this.uuid;
    }

    public boolean isLoadHideWebViewSuccess() {
        return this.loadHideWebViewSuccess;
    }

    public void setLoadHideWebViewSuccess(boolean loadHideWebViewSuccess) {
        this.loadHideWebViewSuccess = loadHideWebViewSuccess;
    }

    @Override // com.yofi.sdk.interfaces.ISDKApi
    public void getServerState(Activity activity, final IFlashCallback cb) {
        CommonUtils.instance().init(activity);
        String packageName = activity.getPackageName();
        String appVersionName = CommonUtils.instance().getAppVersionName(activity);
        int integer = activity.getResources().getInteger(activity.getResources().getIdentifier(Constants.YOFI_SDK_CHANNEL, "integer", activity.getPackageName()));
        activity.getResources().getString(activity.getResources().getIdentifier(Constants.YOFI_APPID, "string", activity.getPackageName())).trim();
        activity.getResources().getString(activity.getResources().getIdentifier(Constants.YOFI_APPKEY, "string", activity.getPackageName()));
        WebAPI.getServerState(packageName, integer, appVersionName, new WebAPICallback() { // from class: com.yofi.sdk.imp.middle.YoFiSdkImp.1
            @Override // com.yofi.sdk.web.WebAPICallback
            public void onSuccess(JSONObject res) {
                JSONObject jSONObject = new JSONObject();
                try {
                    JSONObject jSONObject2 = res.getJSONObject("data");
                    jSONObject.put("code", 0);
                    jSONObject.put(WebLoginFragment.QUERY_KEY_ID, jSONObject2.getInt(WebLoginFragment.QUERY_KEY_ID));
                } catch (JSONException e) {
                    e.printStackTrace();
                }
                cb.onSuccess(jSONObject.toString());
            }

            @Override // com.yofi.sdk.web.WebAPICallback
            public void onFailure(int code, String msg) {
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put("code", 0);
                    jSONObject.put(WebLoginFragment.QUERY_KEY_ID, 0);
                } catch (JSONException e) {
                    e.printStackTrace();
                }
                cb.onSuccess(jSONObject.toString());
            }
        });
    }

    public int getIsOpenBackH5() {
        return this.isOpenBackH5;
    }

    public int getChatIntervalSecond() {
        return this.chatIntervalSecond;
    }

    public int getWsHeartbeatIntervalSecond() {
        return this.wsHeartbeatIntervalSecond;
    }

    public String getSocketUrl() {
        return this.socketUrl;
    }

    public void getInitParams(final IFlashCallback cb) {
        WebAPI.getInitParams(new WebAPICallback() { // from class: com.yofi.sdk.imp.middle.YoFiSdkImp.2
            @Override // com.yofi.sdk.web.WebAPICallback
            public void onSuccess(JSONObject res) {
                try {
                    JSONObject jSONObject = res.getJSONObject("data");
                    if (jSONObject.has("wsUrl")) {
                        YoFiSdkImp.this.socketUrl = jSONObject.getString("wsUrl");
                    }
                    if (jSONObject.has("wsHeartbeatIntervalSecond")) {
                        YoFiSdkImp.this.wsHeartbeatIntervalSecond = jSONObject.getInt("wsHeartbeatIntervalSecond");
                    }
                    if (jSONObject.has("chatIntervalSecond")) {
                        YoFiSdkImp.this.chatIntervalSecond = jSONObject.getInt("chatIntervalSecond");
                    }
                    if (jSONObject.has("isOpenBackH5")) {
                        YoFiSdkImp.this.isOpenBackH5 = jSONObject.getInt("isOpenBackH5");
                    }
                    cb.onSuccess("");
                } catch (JSONException e) {
                    e.printStackTrace();
                }
            }

            @Override // com.yofi.sdk.web.WebAPICallback
            public void onFailure(int code, String msg) {
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put("code", 0);
                } catch (JSONException e) {
                    e.printStackTrace();
                }
                cb.onSuccess(jSONObject.toString());
            }
        });
    }

    @Override // com.yofi.sdk.interfaces.ISDKApi
    public void initialize(Activity activity, boolean isLandScape, final IFlashCallback cb) {
        String uniqueID;
        this.isLandScape = isLandScape;
        this.mainActivity = activity;
        if (this.initialized) {
            maybeShowFloat();
            return;
        }
        String packageName = activity.getPackageName();
        Log.d(BillingClientConstants.PACKAGE_NAME, packageName);
        try {
            ApplicationInfo applicationInfo = activity.getPackageManager().getApplicationInfo(packageName, 128);
            if (applicationInfo != null && applicationInfo.metaData != null) {
                this.isDebug = applicationInfo.metaData.getBoolean(Constants.YOFI_IS_DEBUG);
            }
        } catch (Exception unused) {
        }
        if (this.activityList == null) {
            this.activityList = new LinkedList();
        }
        this.androidId = Settings.System.getString(activity.getContentResolver(), TapEventParamConstants.PARAM_SUB_ANDROID_ID);
        this.mac = CommonUtils.instance().getMac(activity);
        try {
            this.isShowFloatButton = activity.getResources().getBoolean(activity.getResources().getIdentifier(Constants.YOFI_SHOW_FLOAT_BUTTON, "bool", activity.getPackageName()));
        } catch (Exception unused2) {
        }
        try {
            this.isShowGuest = activity.getResources().getBoolean(activity.getResources().getIdentifier(Constants.GUEST_SHOW, "bool", activity.getPackageName()));
        } catch (Exception unused3) {
        }
        try {
            this.isLoginWithoutAccount = activity.getResources().getBoolean(activity.getResources().getIdentifier(Constants.YOFI_LOGIN_WITHOUT_ACCOUNT, "bool", activity.getPackageName()));
        } catch (Exception unused4) {
        }
        try {
            this.isShowTapTap = activity.getResources().getBoolean(activity.getResources().getIdentifier(Constants.TAPTAP_SHOW, "bool", activity.getPackageName()));
        } catch (Exception unused5) {
        }
        try {
            this.isShowThirdLogin = activity.getResources().getBoolean(activity.getResources().getIdentifier(Constants.THIRD_LOGIN_SHOW, "bool", activity.getPackageName()));
        } catch (Exception unused6) {
        }
        try {
            this.isShowSyOneKeyLogin = activity.getResources().getBoolean(activity.getResources().getIdentifier(Constants.SY_ONEKEY_LOGIN_SHOW, "bool", activity.getPackageName()));
        } catch (Exception unused7) {
        }
        try {
            this.isShowQQ = activity.getResources().getBoolean(activity.getResources().getIdentifier(Constants.IS_SHOW_QQ, "bool", activity.getPackageName()));
        } catch (Exception unused8) {
        }
        Log.d(LOG_TAG, "isLoginWithoutAccount: " + this.isLoginWithoutAccount + ",isShowGuest:" + this.isShowGuest);
        Log.d(LOG_TAG, "isShowQQ: " + this.isShowQQ + ",isShowThirdLogin:" + this.isShowThirdLogin + ",isShowSyOneKeyLogin:" + this.isShowSyOneKeyLogin);
        try {
            this.wechatAppId = activity.getResources().getString(activity.getResources().getIdentifier(Constants.WECHAT_APPID, "string", activity.getPackageName()));
            this.qqAppId = activity.getResources().getString(activity.getResources().getIdentifier(Constants.QQ_APPID, "string", activity.getPackageName()));
            Log.d(LOG_TAG, "wechatAppId: " + this.wechatAppId + ",qqAppId" + this.qqAppId);
        } catch (Exception unused9) {
        }
        UserManager.instance().init(activity);
        SQLFunction.initTable(activity);
        CommonUtils.instance().init(activity);
        Log.v(LOG_TAG, "init start");
        if (!CommonUtils.instance().isNetWorkActive()) {
            Log.d(LOG_TAG, "network is bad 网络已断开，请连接网络");
        }
        Log.v(LOG_TAG, "network is good");
        if (this.settings == null) {
            this.settings = activity.getSharedPreferences(Constants.TAG, 0);
        }
        this.isLoginOut = this.settings.getBoolean("logout", false);
        this.hasLoginSuccess = this.settings.getBoolean("hasLoginSuccess", false);
        this.hasUserdOneKeyLogin = this.settings.getBoolean("hasUserdOneKeyLogin", false);
        SharedPreferences.Editor edit = this.settings.edit();
        String string = this.settings.getString(Constants.YOFI_IMEI, "");
        if ((string == null || string.length() <= 0) && (uniqueID = CommonUtils.instance().getUniqueID(activity)) != null) {
            edit.putString(Constants.YOFI_IMEI, uniqueID);
        }
        edit.putString(Constants.YOFI_APPID, activity.getResources().getString(activity.getResources().getIdentifier(Constants.YOFI_APPID, "string", activity.getPackageName())).trim());
        edit.putString(Constants.YOFI_APPKEY, activity.getResources().getString(activity.getResources().getIdentifier(Constants.YOFI_APPKEY, "string", activity.getPackageName())));
        edit.putInt(Constants.YOFI_SDK_CHANNEL, activity.getResources().getInteger(activity.getResources().getIdentifier(Constants.YOFI_SDK_CHANNEL, "integer", activity.getPackageName())));
        edit.putString(Constants.YOFI_PACKAGENAME, packageName);
        edit.commit();
        String cacheWebUrl = getCacheWebUrl();
        if (cacheWebUrl.length() > 0) {
            Log.d("cacheUrl", "获取的缓存web地址 =  " + cacheWebUrl);
            if (getIsDebug().booleanValue()) {
                Constants.DEBUG_WEB_DOMAIN_SERVER_URL = cacheWebUrl;
            } else {
                Constants.WEB_DOMAIN_SERVER_URL = cacheWebUrl;
            }
        }
        String cacheServerUrl = getCacheServerUrl();
        if (cacheServerUrl.length() > 0) {
            Log.d("cacheServerUrl", "获取的缓存server地址 =  " + cacheServerUrl);
            if (getIsDebug().booleanValue()) {
                Constants.DEBUG_SERVER_URL = cacheServerUrl;
            } else {
                Constants.SERVER_URL = cacheServerUrl;
            }
        }
        String cacheTaskServerUrl = getCacheTaskServerUrl();
        if (cacheTaskServerUrl.length() > 0) {
            Log.d("cacheTaskServerUrl", "获取的缓存TaskServer地址 =  " + cacheTaskServerUrl);
            if (getIsDebug().booleanValue()) {
                Constants.DEBUG_TASK_SERVER_URL = cacheTaskServerUrl;
            } else {
                Constants.TASK_SERVER_URL = cacheTaskServerUrl;
            }
        }
        new GetWebUrlFromCDNTool().beginFetch();
        String string2 = this.settings.getString(Constants.YOFI_OAID, "");
        if (string2.length() > 0) {
            instance().setOaid(string2);
        }
        try {
            String str = instance().getAppChannel() + "";
            String string3 = activity.getResources().getString(activity.getResources().getIdentifier("toutiao_id", "string", activity.getPackageName()));
            Log.d(LOG_TAG, "toutiaoAppId =" + string3);
            InitConfig initConfig = new InitConfig(string3, str);
            initConfig.setUriConfig(0);
            initConfig.setImeiEnable(false);
            initConfig.setAutoTrackEnabled(false);
            AppLog.setEncryptAndCompress(true);
            initConfig.setEnablePlay(true);
            initConfig.setLogEnable(false);
            initConfig.setLogger(new ILogger() { // from class: com.yofi.sdk.imp.middle.YoFiSdkImp.3
                @Override // com.bytedance.applog.ILogger
                public void log(String s, Throwable throwable) {
                    Log.d("AppLog------->: ", "" + s);
                }
            });
            BDConvert.getInstance().init(activity, AppLog.getInstance());
            AppLog.init(activity, initConfig);
        } catch (Exception e) {
            Log.d(LOG_TAG, "toutiao init faile" + e.toString());
        }
        try {
            String string4 = activity.getResources().getString(activity.getResources().getIdentifier("tencent_gdt_user_action_setid", "string", activity.getPackageName()));
            String string5 = activity.getResources().getString(activity.getResources().getIdentifier("tencent_gdt_app_secret_key", "string", activity.getPackageName()));
            Log.d(LOG_TAG, "tencent_gdt_user_action_setid= " + string4 + " tencent_gdt_app_secret_key= " + string5);
            GDTAction.init(this.mainActivity, string4, string5);
            GDTAction.start();
        } catch (Exception e2) {
            Log.d(LOG_TAG, "tencent_gdt init failed" + e2.toString());
        }
        initTxOneKeyLogin();
        LittleApiImp.deviceModel();
        TapTapSingleton.getInstance().init(activity);
        new YofiOaidDemoHelper(new YofiOaidDemoHelper.AppIdsUpdater() { // from class: com.yofi.sdk.imp.middle.YoFiSdkImp.4
            @Override // com.yofi.sdk.utils.YofiOaidDemoHelper.AppIdsUpdater
            public void onIdsValid(String v_oaid) {
                Log.d(TapEventParamConstants.PARAM_SUB_OAID, "获取到oaid = " + v_oaid);
                YoFiSdkImp.instance().setOaid(v_oaid);
                if (v_oaid == null || v_oaid.length() <= 0) {
                    return;
                }
                SharedPreferences.Editor edit2 = YoFiSdkImp.this.settings.edit();
                edit2.putString(Constants.YOFI_OAID, v_oaid);
                edit2.commit();
            }
        }, "msaoaidsec").getDeviceIds(activity, true, false, false);
        initThirdLogin(activity);
        initializeAnway(activity, true);
        cb.onSuccess("");
    }

    private void initTxOneKeyLogin() {
        if (this.isShowSyOneKeyLogin) {
            RichAuth.getInstance().init(this.mainActivity, this.mainActivity.getResources().getString(this.mainActivity.getResources().getIdentifier("tx_sy_onekey_appid", "string", this.mainActivity.getPackageName())), new InitCallback() { // from class: com.yofi.sdk.imp.middle.YoFiSdkImp.5
                @Override // com.rich.oauth.callback.InitCallback
                public void onInitSuccess() {
                    RichLogUtil.e("腾讯闪验登录初始化成功");
                    YoFiSdkImp.this.txOneKeyPreLogin(8000, new IFlashCallback() { // from class: com.yofi.sdk.imp.middle.YoFiSdkImp.5.1
                        @Override // com.yofi.sdk.IFlashCallback
                        public void onFailed(int var1, String msg) {
                        }

                        @Override // com.yofi.sdk.IFlashCallback
                        public void onSuccess(String var1) {
                        }
                    });
                }

                @Override // com.rich.oauth.callback.InitCallback
                public void onInitFailure(String errorMsg) {
                    RichLogUtil.e("腾讯闪验登录初始化失败 " + errorMsg);
                }
            });
        }
    }

    public void initThirdLogin(Activity activity) {
        if (this.isShowThirdLogin) {
            String wechatAppId = getWechatAppId();
            IWXAPI createWXAPI = WXAPIFactory.createWXAPI(activity, wechatAppId);
            this.wxApi = createWXAPI;
            Boolean valueOf = Boolean.valueOf(createWXAPI.registerApp(wechatAppId));
            Log.d("wxAppId:", wechatAppId);
            Log.d("wxReg 微信注册:", valueOf.booleanValue() ? "true" : "false");
            String qQAppId = instance().getQQAppId();
            this.mTencent = Tencent.createInstance(qQAppId, activity.getApplicationContext());
            Log.d("qqAppId:", qQAppId);
        }
    }

    private void initializeAnway(Activity activity, boolean first) {
        Log.v(LOG_TAG, "resource init 1");
        this.initialized = true;
        Log.v(LOG_TAG, "resource init success");
        checkUpdate(activity);
    }

    public String getWebUrl(int type) {
        String str;
        String str2;
        if (instance().getIsDebug().booleanValue()) {
            str = Constants.DEBUG_WEB_DOMAIN_SERVER_URL;
        } else {
            str = Constants.WEB_DOMAIN_SERVER_URL;
        }
        if (type == 0) {
            str2 = str + "#/";
        } else if (type == 1) {
            str2 = str + "#/bind";
        } else if (type == 2) {
            str2 = str + "#/user";
        } else if (type == 3) {
            str2 = str + "#/auth";
        } else if (type == 4) {
            str2 = str + "#/backjob";
        } else {
            str2 = null;
        }
        Log.d("getWebUrl", "sdk地址=" + str2);
        return str2;
    }

    public static YoFiSdkImp instance() {
        return imp;
    }

    public void maybeShowFloat() {
        FloatDialog floatDialog = this.floatWindow;
        if (floatDialog == null || floatDialog.isShowing()) {
            return;
        }
        this.floatWindow.show();
    }

    @Override // com.yofi.sdk.interfaces.ISDKApi
    public void destory(Context context) {
        FloatDialog floatDialog = this.floatWindow;
        if (floatDialog != null) {
            floatDialog.dismiss();
        }
        TapTapSingleton.getInstance().onDestory();
        destroyHideWebView();
    }

    @Override // com.yofi.sdk.interfaces.ISDKApi
    public void setScreenIsLandScape(boolean isLandScape) {
        this.isLandScape = isLandScape;
    }

    @Override // com.yofi.sdk.interfaces.ISDKApi
    public void login(Activity activity, OnLoginCallback cb) {
        if (this.isCheckUpdate) {
            this.checkUpdateloginActivity = activity;
            this.checkUpdateloginCb = cb;
            return;
        }
        if (!this.initialized) {
            cb.onLoginFailed(64532);
            return;
        }
        this.loginCallback = cb;
        Intent intent = new Intent(activity, (Class<?>) YouFeiWebViewActivity.class);
        intent.putExtra("isLoginOut", this.isLoginOut);
        intent.putExtra("urlType", 0);
        activity.startActivity(intent);
        RichLogUtil.e("调用login登录时: 预登录状态=" + this.isSyPreLoginSuccess + ",是否使用过一键登录hasUserdOneKeyLogin=" + this.hasUserdOneKeyLogin);
        if (this.isSyPreLoginSuccess && !this.hasUserdOneKeyLogin) {
            txOneKeyGetToken(new IFlashCallback() { // from class: com.yofi.sdk.imp.middle.YoFiSdkImp.6
                @Override // com.yofi.sdk.IFlashCallback
                public void onFailed(int var1, String msg) {
                }

                @Override // com.yofi.sdk.IFlashCallback
                public void onSuccess(String var1) {
                    if (YoFiSdkImp.this.syOneKeyLoginNativeCallJs != null) {
                        YoFiSdkImp.this.syOneKeyLoginNativeCallJs.onSuccess(var1);
                    }
                }
            });
        }
        if (this.hasUserdOneKeyLogin) {
            return;
        }
        this.hasUserdOneKeyLogin = true;
        this.mainActivity.getSharedPreferences(Constants.TAG, 0).edit().putBoolean("hasUserdOneKeyLogin", true).commit();
    }

    @Override // com.yofi.sdk.interfaces.ISDKApi
    public void logout() {
        logout(this.accessToken, new IFlashCallback() { // from class: com.yofi.sdk.imp.middle.YoFiSdkImp.7
            @Override // com.yofi.sdk.IFlashCallback
            public void onSuccess(String var1) {
                SharedPreferences sharedPreferences = YoFiSdkImp.this.mainActivity.getSharedPreferences(Constants.TAG, 0);
                sharedPreferences.edit().putBoolean("logout", true).commit();
                sharedPreferences.edit().putBoolean("hasLoginSuccess", false).commit();
                YoFiSdkImp.instance().destroyHideWebView();
                YoFiSdkImp.instance().hideFloat();
                YoFiSdkImp.instance().setLoginOut(true);
                YoFiSdkImp.instance().setHasLoginSuccess(false);
                YoFiSdkImp.instance().getLoginCallback().onLogoutSuccess(var1);
                UserManager.instance().clearSession();
            }

            @Override // com.yofi.sdk.IFlashCallback
            public void onFailed(int var1, String msg) {
                if (var1 == WebResult.TOKEN_ERROR_111.code) {
                    try {
                        new JSONObject().put("type", "2");
                    } catch (JSONException unused) {
                    }
                    YoFiSdkImp.instance().getLoginCallback().onLogoutSuccess("");
                }
            }
        });
    }

    public void logout(String accessToken, IFlashCallback cb) {
        LittleApiImp.logout(accessToken, cb);
    }

    @Override // com.yofi.sdk.interfaces.ISDKApi
    public void pay(final Context context, final PayInfo payInfo, IFlashCallback cb) {
        this.payCallback = cb;
        String appVersionName = CommonUtils.instance().getAppVersionName(context);
        final LoadingDialog loadingDialog = new LoadingDialog(context, context.getResources().getString(context.getResources().getIdentifier("paying", "string", context.getPackageName())));
        loadingDialog.show();
        LittleApiImp.createOrder(this.accessToken, payInfo, appVersionName, new WebAPICallback() { // from class: com.yofi.sdk.imp.middle.YoFiSdkImp.8
            @Override // com.yofi.sdk.web.WebAPICallback
            public void onSuccess(JSONObject res) {
                Log.v("bicgod", res.toString());
                loadingDialog.dismiss();
                try {
                    int i = res.getInt("code");
                    JSONObject jSONObject = res.getJSONObject("data");
                    String string = res.getString("msg");
                    if (i == 0) {
                        String string2 = jSONObject.getString("orderId");
                        int i2 = jSONObject.getInt("alipayH5");
                        int i3 = jSONObject.getInt("isSandbox");
                        if (i2 == 1) {
                            Intent intent = new Intent();
                            Bundle bundle = new Bundle();
                            intent.setClass(context, WebPayView.class);
                            bundle.putString(Constants.APP_ORDER_ID, string2);
                            bundle.putString(Constants.APP_ORDER_AMOUNT, payInfo.getAmount());
                            bundle.putBoolean(Constants.BOTH_H5, true);
                            intent.putExtras(bundle);
                            context.startActivity(intent);
                            return;
                        }
                        Intent intent2 = new Intent();
                        Bundle bundle2 = new Bundle();
                        bundle2.putInt("FUNCTION_CODE", 3);
                        bundle2.putInt(Constants.SANDBOX, i3);
                        bundle2.putParcelable(Constants.PAY_INFO, payInfo);
                        bundle2.putString(Constants.APP_ORDER_ID, string2);
                        intent2.putExtras(bundle2);
                        intent2.setClass(context, ContainerActivity.class);
                        context.startActivity(intent2);
                        return;
                    }
                    if (i == WebResult.TOKEN_ERROR_111.code) {
                        YoFiSdkImp.instance().hideFloat();
                        ToastUtils.show(YoFiSdkImp.this.mainActivity, "登录过期，请重新登录");
                        JSONObject jSONObject2 = new JSONObject();
                        try {
                            jSONObject2.put("type", "2");
                        } catch (JSONException unused) {
                        }
                        YoFiSdkImp.instance().getLoginCallback().onLogoutSuccess(jSONObject2.toString());
                        return;
                    }
                    ToastUtils.show((Activity) context, string);
                } catch (Exception e) {
                    Log.v("bicgod", e.toString());
                    e.printStackTrace();
                }
            }

            @Override // com.yofi.sdk.web.WebAPICallback
            public void onFailure(int code, String msg) {
                loadingDialog.dismiss();
                ToastUtils.show((Activity) context, msg);
            }
        });
    }

    @Override // com.yofi.sdk.interfaces.ISDKApi
    public void submitGameData(GameData data, int type) {
        if (type == Constants.SUBMIT_TYPE.CREATE.getValue()) {
            LittleApiImp.createRole(this.accessToken, data);
            Bundle bundle = new Bundle();
            bundle.putString("roleId", data.getRoleId());
            EventReword.getInstance().eventRecord(Constants.YoFiEventName.CreateRole, bundle);
            return;
        }
        if (type == Constants.SUBMIT_TYPE.LOGIN.getValue()) {
            LittleApiImp.roleLogin(this.accessToken, data);
            return;
        }
        if (type == Constants.SUBMIT_TYPE.LEVELUP.getValue()) {
            LittleApiImp.roleLevel(this.accessToken, data);
            Bundle bundle2 = new Bundle();
            bundle2.putInt("roleLevel", data.getRoleLevel());
            bundle2.putString("roleId", data.getRoleId());
            EventReword.getInstance().eventRecord(Constants.YoFiEventName.RoleUpgrade, bundle2);
        }
    }

    @Override // com.yofi.sdk.interfaces.ISDKApi
    public void gameStage(int stage) {
        if (this.mainActivity != null && stage > UserManager.instance().getGameStage()) {
            LittleApiImp.gameStage(stage, CommonUtils.instance().getAppVersionCode(this.mainActivity), CommonUtils.instance().getAppVersionName(this.mainActivity));
            UserManager.instance().setGameStage(stage);
        }
    }

    public void sdkStage(int stage) {
        if (this.mainActivity != null && stage > UserManager.instance().getSdkStage()) {
            LittleApiImp.sdkStage(stage, CommonUtils.instance().getAppVersionCode(this.mainActivity), CommonUtils.instance().getAppVersionName(this.mainActivity));
            UserManager.instance().setSdkStage(stage);
        }
    }

    public void heartbeat() {
        if (this.hasLoginSuccess) {
            WebAPI.heartbeat(this.accessToken, new WebAPICallback() { // from class: com.yofi.sdk.imp.middle.YoFiSdkImp.9
                @Override // com.yofi.sdk.web.WebAPICallback
                public void onSuccess(JSONObject res) {
                    new JSONObject();
                    try {
                        res.getInt("code");
                        res.getString("msg");
                        YoFiSdkImp.this.intervalSecond = res.getJSONObject("data").getInt("intervalSecond");
                    } catch (JSONException e) {
                        e.printStackTrace();
                    }
                    new Handler().postDelayed(new Runnable() { // from class: com.yofi.sdk.imp.middle.YoFiSdkImp.9.1
                        @Override // java.lang.Runnable
                        public void run() {
                            YoFiSdkImp.instance().heartbeat();
                        }
                    }, YoFiSdkImp.this.intervalSecond * 1000);
                }

                @Override // com.yofi.sdk.web.WebAPICallback
                public void onFailure(int code, String msg) {
                    if (code == 111) {
                        YoFiSdkImp.this.showLogoutAlert("会话已过期，请重新登录。");
                    } else if (code == 909) {
                        YoFiSdkImp.this.showLogoutAlert(msg);
                    } else {
                        new Handler().postDelayed(new Runnable() { // from class: com.yofi.sdk.imp.middle.YoFiSdkImp.9.2
                            @Override // java.lang.Runnable
                            public void run() {
                                YoFiSdkImp.instance().heartbeat();
                            }
                        }, YoFiSdkImp.this.intervalSecond * 1000);
                    }
                }
            });
        }
    }

    public void querySessionApi(final String userId) {
        if (this.hasLoginSuccess) {
            WebAPI.querySession(this.accessToken, userId, new WebAPICallback() { // from class: com.yofi.sdk.imp.middle.YoFiSdkImp.10
                @Override // com.yofi.sdk.web.WebAPICallback
                public void onSuccess(JSONObject res) {
                    new JSONObject();
                    try {
                        int i = res.getInt("code");
                        res.getString("msg");
                        YoFiSdkImp.this.readFlag = res.getJSONObject("data").getInt("readFlag");
                        if (i == 111) {
                            YoFiSdkImp.this.showLogoutAlert("会话已过期，请重新登录。");
                            return;
                        }
                        if (YoFiSdkImp.this.readFlag == 0) {
                            Log.e("readFlag = ", "0");
                            YoFiSdkImp.instance().getLoginCallback().onHaveNewMessages();
                        }
                        new Handler().postDelayed(new Runnable() { // from class: com.yofi.sdk.imp.middle.YoFiSdkImp.10.1
                            @Override // java.lang.Runnable
                            public void run() {
                                Log.e("readFlag = ", "1");
                                YoFiSdkImp.instance().querySession(userId);
                            }
                        }, YoFiSdkImp.instance().getChatIntervalSecond() * 1000);
                    } catch (JSONException e) {
                        e.printStackTrace();
                    }
                }

                @Override // com.yofi.sdk.web.WebAPICallback
                public void onFailure(int code, String msg) {
                    if (code == 111) {
                        YoFiSdkImp.this.showLogoutAlert("会话已过期，请重新登录。");
                    } else {
                        new Handler().postDelayed(new Runnable() { // from class: com.yofi.sdk.imp.middle.YoFiSdkImp.10.2
                            @Override // java.lang.Runnable
                            public void run() {
                                YoFiSdkImp.instance().querySession(userId);
                            }
                        }, YoFiSdkImp.instance().getChatIntervalSecond() * 1000);
                    }
                }
            });
        }
    }

    public void querySession(final String userId) {
        new Handler().postDelayed(new Runnable() { // from class: com.yofi.sdk.imp.middle.YoFiSdkImp.11
            @Override // java.lang.Runnable
            public void run() {
                Log.e("readFlag = ", "1");
                YoFiSdkImp.instance().querySessionApi(userId);
            }
        }, instance().getChatIntervalSecond() * 1000);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showLogoutAlert(String msg) {
        instance().clearAllActivity();
        instance().logout();
        ToastUtils.show(this.mainActivity, msg, NetSaveImageHelper.CONNECTION_TIMEOUT);
    }

    @Override // com.yofi.sdk.interfaces.ISDKApi
    public void eventRecord(String eventName, Bundle bundle) {
        EventReword.getInstance().eventRecord(eventName, bundle);
    }

    @Override // com.yofi.sdk.interfaces.ISDKApi
    public void bindPhone(Activity activity, IFlashCallback cb) {
        String phoneNumber = UserManager.instance().getPhoneNumber();
        if (phoneNumber == null || phoneNumber.length() == 0) {
            this.bindCallBack = cb;
            Activity mainActivity = instance().getMainActivity();
            if (mainActivity != null) {
                Intent intent = new Intent(mainActivity, (Class<?>) YouFeiWebViewActivity.class);
                intent.putExtra("isLoginOut", this.isLoginOut);
                intent.putExtra("urlType", 1);
                mainActivity.startActivity(intent);
                return;
            }
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject();
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("phoneNumber", phoneNumber);
            jSONObject.put("code", "0");
            jSONObject.put("data", jSONObject2);
            cb.onSuccess(jSONObject.toString());
        } catch (Exception unused) {
        }
    }

    @Override // com.yofi.sdk.interfaces.ISDKApi
    public void execute(final Activity activity, final Intent intent, final IFlashCallback cb) {
        activity.runOnUiThread(new Runnable() { // from class: com.yofi.sdk.imp.middle.YoFiSdkImp.12
            @Override // java.lang.Runnable
            public void run() {
                Bundle extras = intent.getExtras();
                int i = extras.getInt("FUNCTION_CODE");
                if (i != 4) {
                    if (i == 5) {
                        if (YoFiSdkImp.this.floatWindow != null) {
                            if (YoFiSdkImp.this.floatWindow.isShowing()) {
                                YoFiSdkImp.this.floatWindow.dismiss();
                            }
                            YoFiSdkImp.this.floatWindow = null;
                        }
                        cb.onSuccess("");
                        return;
                    }
                    return;
                }
                if (YoFiSdkImp.this.floatWindow == null) {
                    YoFiSdkImp.this.floatWindow = new FloatDialog(activity, 1, 0.55f);
                }
                YoFiSdkImp.this.floatWindow.setAccessToken(extras.getString(Constants.ACCESS_TOKEN));
                if (extras.getInt(Constants.GRAVITY) != 0 && !YoFiSdkImp.this.floatWindow.isShowing()) {
                    YoFiSdkImp.this.floatWindow.show();
                }
                cb.onSuccess("");
            }
        });
    }

    public void hideFloat() {
        FloatDialog floatDialog = this.floatWindow;
        if (floatDialog == null || !floatDialog.isShowing()) {
            return;
        }
        this.floatWindow.dismiss();
        this.floatWindow = null;
    }

    @Override // com.yofi.sdk.interfaces.ISDKApi
    public void onResume(Activity activity) {
        AppLog.onResume(activity);
        GDTAction.logAction(ActionType.START_APP);
        NotchScreenManager.getInstance().setDisplayInNotch(activity);
    }

    @Override // com.yofi.sdk.interfaces.ISDKApi
    public void onPause(Activity activity) {
        AppLog.onPause(activity);
    }

    private void checkUpdate(final Context context) {
        WebAPI.checkUpdate(getAppChannel(), CommonUtils.instance().getAppVersionName(this.mainActivity), new WebAPICallback() { // from class: com.yofi.sdk.imp.middle.YoFiSdkImp.13
            @Override // com.yofi.sdk.web.WebAPICallback
            public void onSuccess(JSONObject res) {
                try {
                    JSONObject jSONObject = res.getJSONObject("data");
                    int i = jSONObject.getInt("need");
                    if (i == Constants.UPDATE_TYPE.NONE.getValue()) {
                        YoFiSdkImp.this.isCheckUpdate = false;
                        return;
                    }
                    String string = jSONObject.getString("url");
                    YoFiSdkImp.this.isCheckUpdate = true;
                    String string2 = jSONObject.has("content") ? jSONObject.getString("content") : "";
                    if ((jSONObject.has("updateType") ? jSONObject.getInt("updateType") : 0) == 1) {
                        Intent intent = new Intent();
                        Bundle bundle = new Bundle();
                        bundle.putInt("FUNCTION_CODE", 18);
                        bundle.putInt(Constants.UPDATE_NEED_TYPE, i);
                        bundle.putString(Constants.UPDATE_CONTENT, string2);
                        intent.putExtras(bundle);
                        intent.setClass(context, ContainerActivity.class);
                        context.startActivity(intent);
                        return;
                    }
                    Intent intent2 = new Intent();
                    Bundle bundle2 = new Bundle();
                    bundle2.putInt("FUNCTION_CODE", 17);
                    bundle2.putInt(Constants.UPDATE_NEED_TYPE, i);
                    bundle2.putString(Constants.DOWNLOAD_URL, string);
                    bundle2.putString(Constants.UPDATE_CONTENT, string2);
                    intent2.putExtras(bundle2);
                    intent2.setClass(context, ContainerActivity.class);
                    context.startActivity(intent2);
                } catch (JSONException e) {
                    e.printStackTrace();
                }
            }

            @Override // com.yofi.sdk.web.WebAPICallback
            public void onFailure(int code, String msg) {
                YoFiSdkImp.this.isCheckUpdate = false;
            }
        });
    }

    @Override // com.yofi.sdk.interfaces.ISDKApi
    public void showUserCenter() {
        Activity mainActivity = instance().getMainActivity();
        if (mainActivity != null) {
            Intent intent = new Intent(mainActivity, (Class<?>) YouFeiWebViewActivity.class);
            intent.putExtra("isLoginOut", this.isLoginOut);
            intent.putExtra("urlType", 2);
            mainActivity.startActivity(intent);
        }
    }

    @Override // com.yofi.sdk.interfaces.ISDKApi
    public void showContact(final String roleId, final String roleName, final String serverId, final String serverName) {
        Intent intent = new Intent();
        Bundle bundle = new Bundle();
        bundle.putInt("FUNCTION_CODE", 20);
        if (roleName != null) {
            bundle.putString("roleName", roleName);
        }
        if (serverId != null) {
            bundle.putString("serverId", serverId);
        }
        if (roleId != null) {
            bundle.putString("roleId", roleId);
        }
        if (serverName != null) {
            bundle.putString("serverName", serverName);
        }
        intent.putExtras(bundle);
        intent.setClass(this.mainActivity, VerticalContainerActivity.class);
        this.mainActivity.startActivity(intent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void txOneKeyPreLogin(Integer overTime, final IFlashCallback preloginCallBack) {
        RichLogUtil.e("开始调用预登录");
        RichAuth.getInstance().setDebugMode(false);
        RichAuth.getInstance().setOverTime(overTime);
        RichAuth.getInstance().preLogin(this.mainActivity, new PreLoginCallback() { // from class: com.yofi.sdk.imp.middle.YoFiSdkImp.14
            @Override // com.rich.oauth.callback.PreLoginCallback
            public void onPreLoginSuccess() {
                YoFiSdkImp.this.isSyPreLoginSuccess = true;
                RichLogUtil.e("预登录成功");
                preloginCallBack.onSuccess("");
            }

            @Override // com.rich.oauth.callback.PreLoginCallback
            public void onPreLoginFailure(String errorMsg) {
                RichLogUtil.e("预登录失败:" + errorMsg);
                preloginCallBack.onFailed(-1, errorMsg);
            }
        });
    }

    public void txOneKeyGetToken(final IFlashCallback syOneKeyLoginCallback) {
        if (!this.isShowSyOneKeyLogin) {
            syOneKeyLoginCallback.onFailed(-1, "包未配置不支持一键登录");
            return;
        }
        boolean isMobileDataEnabled = CommonUtils.isMobileDataEnabled(this.mainActivity);
        if (!isMobileDataEnabled) {
            RichLogUtil.e("移动网络开关mobileDataEnabled: " + isMobileDataEnabled);
            syOneKeyLoginCallback.onFailed(-1, "移动数据开关未开启");
            return;
        }
        this.syOneKeyLoginCallback = syOneKeyLoginCallback;
        if (!this.isSyPreLoginSuccess) {
            txOneKeyPreLogin(3000, new IFlashCallback() { // from class: com.yofi.sdk.imp.middle.YoFiSdkImp.15
                @Override // com.yofi.sdk.IFlashCallback
                public void onSuccess(String var1) {
                    YoFiSdkImp.this.doTxOneKeyGetToken(new IFlashCallback() { // from class: com.yofi.sdk.imp.middle.YoFiSdkImp.15.1
                        @Override // com.yofi.sdk.IFlashCallback
                        public void onFailed(int var12, String error) {
                        }

                        @Override // com.yofi.sdk.IFlashCallback
                        public void onSuccess(String token) {
                        }
                    });
                }

                @Override // com.yofi.sdk.IFlashCallback
                public void onFailed(int var1, String msg) {
                    syOneKeyLoginCallback.onFailed(-1, msg);
                }
            });
        } else {
            doTxOneKeyGetToken(new IFlashCallback() { // from class: com.yofi.sdk.imp.middle.YoFiSdkImp.16
                @Override // com.yofi.sdk.IFlashCallback
                public void onFailed(int var1, String error) {
                }

                @Override // com.yofi.sdk.IFlashCallback
                public void onSuccess(String token) {
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void doTxOneKeyGetToken(final IFlashCallback callback) {
        RichLogUtil.e("开始调用拉起授权页");
        if (this.isNowOneKeyLogin) {
            RichLogUtil.e("重复点击拉起授权页");
        } else {
            this.isNowOneKeyLogin = true;
            this.mainActivity.runOnUiThread(new Runnable() { // from class: com.yofi.sdk.imp.middle.YoFiSdkImp.17
                @Override // java.lang.Runnable
                public void run() {
                    RichLogUtil.e("正在拉起授权页");
                    RichAuth.getInstance().login(YoFiSdkImp.this.mainActivity, YoFiSdkImp.this.getNotCustomElementBuilder(), new TokenCallback() { // from class: com.yofi.sdk.imp.middle.YoFiSdkImp.17.1
                        @Override // com.rich.oauth.callback.TokenCallback
                        public void onTokenSuccessResult(String token, String carrier) {
                            RichLogUtil.e("token取号获取成功:" + token);
                            YoFiSdkImp.this.isNowOneKeyLogin = false;
                            YoFiSdkImp.this.syOneKeyLoginCallback.onSuccess(token);
                            callback.onSuccess(token);
                        }

                        @Override // com.rich.oauth.callback.TokenCallback
                        public void onTokenFailureResult(String error) {
                            RichLogUtil.e("token取号获取失败：" + error);
                            YoFiSdkImp.this.isNowOneKeyLogin = false;
                            YoFiSdkImp.this.syOneKeyLoginCallback.onFailed(-1, error);
                            callback.onFailed(-1, error);
                        }
                    });
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public UIConfigBuild getNotCustomElementBuilder() {
        UIConfigBuild.Builder builder = new UIConfigBuild.Builder();
        Activity activity = this.mainActivity;
        builder.setAuthContentView(getContentView(activity, ResUtils.getId(activity, "yj_oauth_root_view", "layout")));
        builder.setStatusBar(11250603, false);
        builder.setFitsSystemWindows(false);
        builder.setNumberColor(ViewCompat.MEASURED_STATE_MASK);
        builder.setNumberSize(25, true);
        builder.setNumberOffsetX(0);
        builder.setNumberOffsetY(80);
        builder.setLoginBtnBg(ResUtils.getId(this.mainActivity, "yj_login_btn_bg", "drawable"));
        builder.setLoginBtnText("本机号码一键登录");
        builder.setLoginBtnTextSize(15);
        builder.setLoginBtnTextBold(false);
        builder.setLoginBtnWidth(HttpStatus.SC_MULTIPLE_CHOICES);
        builder.setLoginBtnHight(30);
        builder.setLoginBtnTextColor(-1);
        builder.setLogBtnOffsetY(140);
        builder.setLogBtnMarginLeft(30);
        builder.setLogBtnMarginRight(30);
        builder.setProtocolSelected(false);
        builder.setUnCheckWay(AuthConstants.AUTHUNCHECKWAY_TOAST);
        builder.setCheckTipText("请勾选同意服务条款");
        builder.setProtocol("游戏许可及服务协议", "https://sdk.gateway.yofijoy.com/sdk/api/v1/h5/licenseServiceAgreement.html");
        builder.setPrivacyContentText("阅读并同意$$运营商条款$$游戏许可及服务协议");
        builder.setPrivacyBookSymbol(true);
        builder.setPrivacyOffsetY(30);
        builder.setPrivacyOffsetY_B(55);
        builder.setPrivacyMarginLeft(20);
        builder.setPrivacyMarginRight(30);
        builder.setPrivacyTextSize(10);
        builder.setClauseBaseColor(SupportMenu.CATEGORY_MASK);
        builder.setClauseColor(-16711936);
        builder.setIsGravityCenter(false);
        builder.setCheckBoxLocation(0);
        builder.setCheckBoxImageWidth(12);
        builder.setCheckBoxImageheight(12);
        builder.setPrivacyNavBgColor(-16776961);
        builder.setPrivacyNavTextColor(ViewCompat.MEASURED_STATE_MASK);
        builder.setPrivacyNavTextSize(15);
        builder.setPrivacyNavReturnBackClauseLayoutResID(ResUtils.getId(this.mainActivity, "yj_login_title_layout", "layout"));
        builder.setClauseStatusColor(-1);
        builder.setAuthPageWindowMode(true).setAuthPageWindowWith(320).setAuthPageWindowHight(HttpStatus.SC_MULTIPLE_CHOICES).setAuthPageWindowOffsetX(0).setAuthPageWindowOffsetY(this.isLandScape ? -20 : -50).setAuthPageWindowThemeId(ResUtils.getId(this.mainActivity, "syOneKeyLoginDialog", "style")).setAuthPageWindowBottom(0).setBackButton(false);
        builder.setAutoClosAuthPage(true);
        builder.setAppLanguageType(0);
        builder.setBottomNavigationHidden(true);
        builder.setAuthLoginClickListener(new AuthLoginClickListener() { // from class: com.yofi.sdk.imp.middle.YoFiSdkImp.18
            @Override // com.rich.oauth.callback.AuthLoginClickListener
            public void onLoginClickStart(Context context, JSONObject jsonObj) {
                RichLogUtil.e(getClass().getName(), "点击一键登录开始获取token");
            }

            @Override // com.rich.oauth.callback.AuthLoginClickListener
            public void onLoginClickComplete(Context context, JSONObject jsonObj) {
                RichLogUtil.e(getClass().getName(), "点击一键登录获取token成功，页面关闭");
            }
        });
        builder.setAuthLoginPageInListener(new AuthPageInListener() { // from class: com.yofi.sdk.imp.middle.YoFiSdkImp.19
            @Override // com.rich.oauth.callback.AuthPageInListener
            public void onAuthPageInSuccess(JSONObject jsonObj) {
                YoFiSdkImp.this.isNowOneKeyLogin = false;
                RichLogUtil.e("initSDK", "拉取授权页成功page in");
            }

            @Override // com.rich.oauth.callback.AuthPageInListener
            public void onAuthPageInFailure(JSONObject jsonObj) {
                YoFiSdkImp.this.isNowOneKeyLogin = false;
                RichLogUtil.e("initSDK", "未进入授权页面");
            }
        });
        builder.setOnCheckboxCheckedChange(new CheckboxCheckedChangeListener() { // from class: com.yofi.sdk.imp.middle.YoFiSdkImp.20
            @Override // com.rich.oauth.callback.CheckboxCheckedChangeListener
            public void onCheckboxCheckedChange(boolean isChecked) {
                RichLogUtil.e(getClass().getName(), Boolean.valueOf(isChecked));
            }
        });
        builder.setCheckboxUnCheckedClickListener(new CheckboxUnCheckedClickListener() { // from class: com.yofi.sdk.imp.middle.YoFiSdkImp.21
            @Override // com.rich.oauth.callback.CheckboxUnCheckedClickListener
            public void onCheckboxChecked(Context context, JSONObject jsonObject) {
                Object[] objArr = new Object[2];
                objArr[0] = getClass().getName();
                objArr[1] = Boolean.valueOf(jsonObject == null);
                RichLogUtil.e(objArr);
            }
        });
        builder.setUncheckDialogAuthLoginListener(new UnCheckDialogAuthLoginListener() { // from class: com.yofi.sdk.imp.middle.YoFiSdkImp.22
            @Override // com.rich.oauth.callback.UnCheckDialogAuthLoginListener
            public void onUncheckedAuthLoginListener(Context context, AuthLoginCallBack callBack) {
            }
        });
        builder.setOnPressBackListener(new PressBackListener() { // from class: com.yofi.sdk.imp.middle.YoFiSdkImp.23
            @Override // com.rich.oauth.callback.PressBackListener
            public void onPressBackListener() {
                RichLogUtil.e(getClass().getName(), "返回监听");
            }
        });
        return builder.build();
    }

    private View getContentView(Context context, int resId) {
        RelativeLayout relativeLayout = new RelativeLayout(context);
        relativeLayout.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
        RelativeLayout relativeLayout2 = (RelativeLayout) LayoutInflater.from(context).inflate(resId, (ViewGroup) relativeLayout, false);
        ((ImageView) relativeLayout2.findViewById(ResUtils.getId(this.mainActivity, "cmcc_ouath_navi_return", BreakpointSQLiteKey.ID))).setOnClickListener(new View.OnClickListener() { // from class: com.yofi.sdk.imp.middle.YoFiSdkImp.24
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                RichLogUtil.e("退出页面");
                RichAuth.getInstance().closeOauthPage();
            }
        });
        relativeLayout2.findViewById(ResUtils.getId(this.mainActivity, "cmcc_ouath_other_way", BreakpointSQLiteKey.ID)).setOnClickListener(new View.OnClickListener() { // from class: com.yofi.sdk.imp.middle.YoFiSdkImp.25
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                RichLogUtil.e("点击其他登录方式退出页面");
                RichAuth.getInstance().closeOauthPage();
            }
        });
        return relativeLayout2;
    }

    public void getOrderSatusToUpdataToutiao(final String orderId, final String orderAmount) {
        Log.d(LOG_TAG, "调用getOrderSatusToUpdataToutiao");
        LittleApiImp.getOrderStatus(orderId, new WebAPICallback() { // from class: com.yofi.sdk.imp.middle.YoFiSdkImp.26
            @Override // com.yofi.sdk.web.WebAPICallback
            public void onSuccess(JSONObject res) {
                try {
                    Log.d(YoFiSdkImp.LOG_TAG, "调用getOrderSatusToUpdataToutiao onSuccess: " + res.toString());
                    if (res.getInt("data") > 0) {
                        int floatValue = (int) Float.valueOf(orderAmount).floatValue();
                        Log.d(YoFiSdkImp.LOG_TAG, "调用getOrderSatusToUpdataToutiao onSuccess 开始调用clientReportOrderToAd");
                        YoFiSdkImp.this.clientReportOrderToAd(orderId, floatValue);
                    }
                } catch (JSONException e) {
                    e.printStackTrace();
                }
            }

            @Override // com.yofi.sdk.web.WebAPICallback
            public void onFailure(int code, String var1) {
                Log.d(YoFiSdkImp.LOG_TAG, "调用getOrderSatusToUpdataToutiao onFailure: ");
            }
        });
    }

    public void clientReportOrderToAd(final String orderId, final int orderAmount) {
        Log.d(LOG_TAG, "调用clientReportOrderToAd");
        LittleApiImp.clientReportOrderToAd(this.accessToken, isLoadHideWebViewSuccess() ? "1" : "0", orderId, new WebAPICallback() { // from class: com.yofi.sdk.imp.middle.YoFiSdkImp.27
            @Override // com.yofi.sdk.web.WebAPICallback
            public void onSuccess(JSONObject res) {
                try {
                    Log.d(YoFiSdkImp.LOG_TAG, "调用clientReportOrderToAd onSuccess: " + res.toString());
                    int i = res.getInt("code");
                    JSONObject jSONObject = res.getJSONObject("data");
                    res.getString("msg");
                    if (i == 0) {
                        int i2 = jSONObject.getInt("isReportToutiao");
                        int i3 = jSONObject.getInt("isReportTencent");
                        if (i2 == 1) {
                            Bundle bundle = new Bundle();
                            bundle.putInt("amount", orderAmount);
                            bundle.putInt("reportType", 1);
                            EventReword.getInstance().eventRecord(Constants.YoFiEventName.Purchase, bundle);
                            LittleApiImp.clientLog("支付成功 上报头条  |orderId：" + orderId + " |amount: " + orderAmount, null);
                            Log.d(YoFiSdkImp.LOG_TAG, "调用clientReportOrderToAd onSuccess 上报头条 |orderId：" + orderId + " |amount: " + orderAmount);
                        }
                        if (i3 == 1) {
                            Bundle bundle2 = new Bundle();
                            bundle2.putInt("amount", orderAmount);
                            bundle2.putInt("reportType", 2);
                            EventReword.getInstance().eventRecord(Constants.YoFiEventName.Purchase, bundle2);
                            LittleApiImp.clientLog("支付成功 上报腾讯广点通  |orderId：" + orderId + " |amount: " + orderAmount, null);
                            Log.d(YoFiSdkImp.LOG_TAG, "调用clientReportOrderToAd onSuccess 上报腾讯广点通 |orderId：" + orderId + " |amount: " + orderAmount);
                        }
                        if (i2 == 0 && i3 == 0) {
                            Log.d(YoFiSdkImp.LOG_TAG, "调用clientReportOrderToAd onSuccess 通知H5上报");
                            YoFiSdkImp.this.noticeHideWebViewPaySuccess();
                        }
                    }
                } catch (JSONException e) {
                    Log.v("clientReportOrderToAd", e.toString());
                    e.printStackTrace();
                }
            }

            @Override // com.yofi.sdk.web.WebAPICallback
            public void onFailure(int code, String var1) {
                Log.d(YoFiSdkImp.LOG_TAG, "调用clientReportOrderToAd onFailure: ");
            }
        });
    }

    public void noticeHideWebViewPaySuccess() {
        HideWebView hideWebView = this.mHideWebView;
        if (hideWebView != null) {
            hideWebView.paySuccess();
        }
    }

    public void destroyHideWebView() {
        try {
            if (this.mHideWebView != null) {
                WindowManager windowManager = (WindowManager) this.mainActivity.getSystemService("window");
                this.mHideWebView.destroy();
                if (windowManager != null) {
                    windowManager.removeView(this.mHideWebView);
                }
                this.mHideWebView = null;
            }
            if (this.appStatusListener != null) {
                this.appStatusListener = null;
            }
        } catch (Exception e) {
            Log.d("destroyHideWebView", "destroyHideWebView: " + e.toString());
        }
    }

    public void showHideWebView() {
        try {
            if (this.mHideWebView != null) {
                destroyHideWebView();
            }
            HideWebView hideWebView = new HideWebView(this.mainActivity, getWebUrl(4));
            this.mHideWebView = hideWebView;
            hideWebView.show();
            setAppStatusListener(this.mHideWebView);
        } catch (Exception e) {
            Log.d("showHideWebView", "showHideWebView: " + e.toString());
        }
    }

    @Override // com.yofi.sdk.interfaces.ISDKApi
    public void onApplicationCreate(Application application) {
        System.loadLibrary("msaoaidsec");
        application.registerActivityLifecycleCallbacks(new Application.ActivityLifecycleCallbacks() { // from class: com.yofi.sdk.imp.middle.YoFiSdkImp.28
            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivityCreated(Activity activity, Bundle savedInstanceState) {
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivityDestroyed(Activity activity) {
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivityPaused(Activity activity) {
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivityResumed(Activity activity) {
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivitySaveInstanceState(Activity activity, Bundle outState) {
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivityStarted(Activity activity) {
                YoFiSdkImp.access$1808(YoFiSdkImp.this);
                if (YoFiSdkImp.this.activityReferences != 1 || YoFiSdkImp.this.isActivityChangingConfigurations) {
                    return;
                }
                YoFiSdkImp.this.onAppForeground();
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivityStopped(Activity activity) {
                YoFiSdkImp.this.isActivityChangingConfigurations = activity.isChangingConfigurations();
                YoFiSdkImp.access$1810(YoFiSdkImp.this);
                if (YoFiSdkImp.this.activityReferences > 0 || YoFiSdkImp.this.isActivityChangingConfigurations) {
                    return;
                }
                YoFiSdkImp.this.onAppBackground();
            }
        });
    }

    public void setAppStatusListener(OnAppStatusListener appStatusListener) {
        this.appStatusListener = appStatusListener;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onAppForeground() {
        OnAppStatusListener onAppStatusListener = this.appStatusListener;
        if (onAppStatusListener != null) {
            onAppStatusListener.onBecameForeground();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onAppBackground() {
        OnAppStatusListener onAppStatusListener = this.appStatusListener;
        if (onAppStatusListener != null) {
            onAppStatusListener.onBecameBackground();
        }
    }
}
