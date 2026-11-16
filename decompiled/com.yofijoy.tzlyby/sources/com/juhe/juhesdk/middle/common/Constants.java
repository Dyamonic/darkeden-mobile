package com.juhe.juhesdk.middle.common;

import java.util.Arrays;
import java.util.List;

/* loaded from: classes.dex */
public class Constants {
    public static final String FUNCTION_CODE = "FUNCTION_CODE";
    public static final int FUNC_CODE_LOGIN = 1;
    public static final String JUHE_APPID = "JUHE_APPID";
    public static final String JUHE_APPKEY = "JUHE_APPKEY";
    public static final String JUHE_CHANNEL = "JUHE_CHANNEL";
    public static final String JUHE_INITIALIZED = "JUHE_INITIALIZED";
    public static final String JUHE_IS_DEBUG = "IS_DEBUG";
    public static final String JUHE_SDK_VERSION = "1.0.3";
    public static final String JUHE_SHOW_REPORT_TOAST = "JUHE_SHOW_REPORT_TOAST";
    public static final String MAIN_ACTIVITY = "Juhe.MainActivity.Path";
    public static final String SDK_STAGE = "SDK_STAGE";
    public static final String SIGN_NAME = "sign";
    public static final String SPLASH_TYPE = "SPLASH_TYPE";
    public static final String TAG = "JuheSdk";
    public static final String VERSION = "v1";
    public static final List<String> DEBUG_CDN_SERVER_URLS = Arrays.asList("https://democdnconfig-juhe.yofijoy.com/sdkconfig/test/juhe/default.txt", "https://democdnconfig-juhe.yofijoy02.com/sdkconfig/test/juhe/1.txt");
    public static final List<String> CDN_SERVER_URLS = Arrays.asList("https://cdnconfig-juhe.yofijoy.com/sdkconfig/prod/juhe", "https://cdnconfig-juhe.yofijoy02.com/sdkconfig/prod/juhe");
    public static String DEBUG_SERVER_URL = "https://sdktest.gateway.yofijoy.com/";
    public static String SERVER_URL = "https://juhe.gateway.yofijoy.com/";

    /* loaded from: classes.dex */
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
}
