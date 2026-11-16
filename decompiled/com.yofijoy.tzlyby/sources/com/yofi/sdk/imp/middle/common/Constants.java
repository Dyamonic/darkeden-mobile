package com.yofi.sdk.imp.middle.common;

import java.util.Arrays;
import java.util.List;

/* loaded from: classes2.dex */
public class Constants {
    public static final String ACCESS_TOKEN = "ACCESS_TOKEN";
    public static final String ADDICITION = "ADDICITION";
    public static final String APP_ORDER_AMOUNT = "APP_ORDER_AMOUNT";
    public static final String APP_ORDER_ID = "APP_ORDER_ID";
    public static final String BOTH_H5 = "BOTH_H5";
    public static final String CLIENT_VERSION = "2.2.1";
    public static final String CONTENT = "CONTENT";
    public static final String CONTENT_CLOSED = "CONTENT_CLOSED";
    public static final int DEFAULTACCOUNT = 1;
    public static final String DOWNLOAD_URL = "DOWNLOAD_URL";
    public static final String FORCE_AUTHEN = "FORCE_AUTHEN";
    public static final String FUNCTION_CODE = "FUNCTION_CODE";
    public static final int FUNC_CODE_ADDICTION_ALERT = 15;
    public static final int FUNC_CODE_ADDICTION_POLICY = 14;
    public static final int FUNC_CODE_BIND_PHONE = 9;
    public static final int FUNC_CODE_CERTIFICATION = 12;
    public static final int FUNC_CODE_CERTIFICATION_FINISH = 1201;
    public static final int FUNC_CODE_CHANGE_PASSWORD = 6;
    public static final int FUNC_CODE_CHAT = 20;
    public static final int FUNC_CODE_CHECK_UPDATE = 17;
    public static final int FUNC_CODE_CONTACT = 16;
    public static final int FUNC_CODE_FIND_PASSWORD = 7;
    public static final int FUNC_CODE_FLOAT = 8;
    public static final int FUNC_CODE_LOGIN = 1;
    public static final int FUNC_CODE_MODIFY_PASSWORD = 13;
    public static final int FUNC_CODE_NEW_CONTACT = 19;
    public static final int FUNC_CODE_NOSETTINGS = 5;
    public static final int FUNC_CODE_PAY = 3;
    public static final int FUNC_CODE_POP = 21;
    public static final int FUNC_CODE_PROTOCOL = 11;
    public static final int FUNC_CODE_REGISTER = 2;
    public static final int FUNC_CODE_REGISTER_CLOSE = 200;
    public static final int FUNC_CODE_SERVICE = 22;
    public static final int FUNC_CODE_SETTINGS = 4;
    public static final int FUNC_CODE_SWITCH_ACCOUNT = 10;
    public static final int FUNC_CODE_TAPTAP_CHECK_UPDATE = 18;
    public static final String GRAVITY = "GRAVITY";
    public static final int GRAVITY_BOTTOM = 2;
    public static final int GRAVITY_CENTER = 15;
    public static final int GRAVITY_CENTER_HORIZONTA = 12;
    public static final int GRAVITY_CENTER_VERTICAL = 3;
    public static final int GRAVITY_LEFT = 4;
    public static final int GRAVITY_RIGHT = 8;
    public static final int GRAVITY_TOP = 1;
    public static final String GUEST_SHOW = "GUEST_SHOW";
    public static final String IS_SHOW_QQ = "IS_SHOW_QQ";
    public static final String LOGIN_TYPE = "LOGIN_TYPE";
    public static final String MAIN_ACTIVITY = "YoFiGame.MainActivity.Path";
    public static final String PAY_INFO = "PAY_INFO";
    public static final String PAY_TYPE = "PAY_TYPE";
    public static final String PROFILE = "PROFILE";
    public static final String QQ_APPID = "QQ_APPID";
    public static final String REQUEST_ID = "REQUEST_ID";
    public static final String SANDBOX = "SANDBOX";
    public static final String SHOW_BACK = "SHOW_BACK";
    public static final String SHOW_NEXT = "SHOW_NEXT";
    public static final String SIGN_NAME = "sign";
    public static final String SY_ONEKEY_LOGIN_SHOW = "SY_ONEKEY_LOGIN_SHOW";
    public static final String TAG = "YoFiSdk";
    public static final String TAPTAP_SHOW = "TAPTAP_SHOW";
    public static final String THIRD_LOGIN_SHOW = "THIRD_LOGIN_SHOW";
    public static final String UPDATE_CONTENT = "UPDATE_CONTENT";
    public static final String UPDATE_NEED_TYPE = "UPDATE_NEED_TYPE";
    public static final int USERACCOUNT = 2;
    public static final String VERSION = "v1";
    public static final String WECHAT_APPID = "WECHAT_APPID";
    public static final int WECHAT_CODE = 1;
    public static final String YOFI_APPID = "YOFI_APPID";
    public static final String YOFI_APPKEY = "YOFI_APPKEY";
    public static final String YOFI_IMEI = "YOFI_IMEI";
    public static final String YOFI_IS_DEBUG = "YOFI_IS_DEBUG";
    public static final String YOFI_LOGIN_WITHOUT_ACCOUNT = "YOFI_LOGIN_WITHOUT_ACCOUNT";
    public static final String YOFI_OAID = "YOFI_OAID";
    public static final String YOFI_PACKAGENAME = "YOFI_PACKAGENAME";
    public static final String YOFI_PRIVATEKEY = "YOFI_PRIVATEKEY";
    public static final String YOFI_SDK_CHANNEL = "YOFI_SDK_CHANNEL";
    public static final String YOFI_SDK_NAME = "YoFiSDK";
    public static final String YOFI_SHOW_FLOAT_BUTTON = "YOFI_SHOW_FLOAT_BUTTON";
    public static final String YOFI_SPLASH_TYPE = "YOFI_SPLASH_TYPE";
    public static final List<String> DEBUG_CDN_SERVER_URLS = Arrays.asList("https://democdnconfig-yofi.yofijoy.com/sdkconfig/test/yofi/default.txt", "https://democdnconfig-yofi.yofijoy02.com/sdkconfig/test/yofi/1.txt");
    public static final List<String> CDN_SERVER_URLS = Arrays.asList("https://cdnconfig-yofi.yofijoy.com/sdkconfig/prod/yofi", "https://cdnconfig-yofi.yofijoy02.com/sdkconfig/prod/yofi");
    public static String DEBUG_SERVER_URL = "https://sdktest.gateway.yofijoy.com/";
    public static String SERVER_URL = "https://sdkapi.gateway.yofijoy.com/";
    public static String DEBUG_TASK_SERVER_URL = "https://sdktest2.gateway.yofijoy.com/";
    public static String TASK_SERVER_URL = "https://sdktask.gateway.yofijoy.com/";
    public static String DEBUG_WEB_DOMAIN_SERVER_URL = "http://sdktest.gateway.yofijoy.com:8080/sdkdomestic/sdkvue/";
    public static String WEB_DOMAIN_SERVER_URL = "https://gnyfsdk.gateway.yofijoy.com/sdkdomestic/sdkvue/";

    /* loaded from: classes2.dex */
    public interface YoFiEventName {
        public static final String Complete_Registration = "Complete_Registration";
        public static final String CreateRole = "CreateRole";
        public static final String Login = "login";
        public static final String Purchase = "Purchase";
        public static final String RoleUpgrade = "RoleUpgrade";
    }

    /* loaded from: classes2.dex */
    public enum LOGIN_TYPE {
        TOURIST(0),
        PHONE(1),
        WECHAT(2),
        QQ(3),
        WEIBO(4),
        TAPTAP(7);

        private int value;

        LOGIN_TYPE(int value) {
            this.value = value;
        }

        public int getValue() {
            return this.value;
        }

        public void setValue(int value) {
            this.value = value;
        }
    }

    /* loaded from: classes2.dex */
    public enum PROFILE_TYPE {
        USER(0),
        PRIVATE(1),
        YOFI(2),
        fcmPolicy(3);

        private int value;

        PROFILE_TYPE(int value) {
            this.value = value;
        }

        public int getValue() {
            return this.value;
        }

        public void setValue(int value) {
            this.value = value;
        }
    }

    /* loaded from: classes2.dex */
    public enum PAY_TYPE {
        ALI(1),
        WECHAT(2),
        WEB(3),
        SANDBOX(99);

        private int value;

        PAY_TYPE(int value) {
            this.value = value;
        }

        public int getValue() {
            return this.value;
        }

        public void setValue(int value) {
            this.value = value;
        }
    }

    /* loaded from: classes2.dex */
    public enum SUBMIT_TYPE {
        CREATE(1),
        LOGIN(2),
        LEVELUP(3);

        private int value;

        SUBMIT_TYPE(int value) {
            this.value = value;
        }

        public int getValue() {
            return this.value;
        }

        public void setValue(int value) {
            this.value = value;
        }
    }

    /* loaded from: classes2.dex */
    public enum ADDICITION_TYPE {
        PRELOGIN(0),
        LOGIN(1),
        PAY(2),
        TOURIST(3),
        PRETOURIST(4),
        ONLINE_TIME_LOGOUT(5),
        TOKEN_INVALID(6),
        NONE(7);

        private int value;

        ADDICITION_TYPE(int value) {
            this.value = value;
        }

        public int getValue() {
            return this.value;
        }

        public void setValue(int value) {
            this.value = value;
        }
    }

    /* loaded from: classes2.dex */
    public enum SYSTEM_TYPE {
        ANDROID(1),
        IOS(2);

        private int value;

        SYSTEM_TYPE(int value) {
            this.value = value;
        }

        public int getValue() {
            return this.value;
        }

        public void setValue(int value) {
            this.value = value;
        }
    }

    /* loaded from: classes2.dex */
    public enum UPDATE_TYPE {
        NONE(0),
        NOTPOSSIBLE(1),
        POSSIBLE(2);

        private int value;

        UPDATE_TYPE(int value) {
            this.value = value;
        }

        public int getValue() {
            return this.value;
        }

        public void setValue(int value) {
            this.value = value;
        }
    }

    /* loaded from: classes2.dex */
    public enum MESSAGE_TYPE {
        SEND(0),
        RECEIVE(1),
        END(99);

        private int value;

        MESSAGE_TYPE(int value) {
            this.value = value;
        }

        public int getValue() {
            return this.value;
        }

        public void setValue(int value) {
            this.value = value;
        }
    }

    /* loaded from: classes2.dex */
    public enum MESSAGE_CONTENT_TYPE {
        TEXT(0),
        PIC(1),
        END(99);

        private int value;

        MESSAGE_CONTENT_TYPE(int value) {
            this.value = value;
        }

        public int getValue() {
            return this.value;
        }

        public void setValue(int value) {
            this.value = value;
        }
    }
}
