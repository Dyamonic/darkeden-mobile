package com.yofi.sdk.utils;

import android.util.Log;
import com.yofi.sdk.IFlashCallback;
import com.yofi.sdk.imp.middle.YoFiSdkImp;
import com.yofi.sdk.imp.middle.common.Constants;
import com.yofi.sdk.imp.middle.common.WebAPI;
import com.yofi.sdk.web.WebAPICallback;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class GetWebUrlFromCDNTool {
    private String cdn_configUrl;

    public void beginFetch() {
        getCDNConfigMethod(new IFlashCallback() { // from class: com.yofi.sdk.utils.GetWebUrlFromCDNTool.1
            @Override // com.yofi.sdk.IFlashCallback
            public void onFailed(int var1, String error) {
            }

            @Override // com.yofi.sdk.IFlashCallback
            public void onSuccess(String var1) {
            }
        });
    }

    public void getCDNConfigMethod(final IFlashCallback cb) {
        List<String> list = Constants.CDN_SERVER_URLS;
        if (YoFiSdkImp.instance().getIsDebug().booleanValue()) {
            list = Constants.DEBUG_CDN_SERVER_URLS;
        }
        if (list.size() == 0 || list == null) {
            Log.d("getCDNConfigMethod", "serverUrls为空");
        } else if (list.size() > 0) {
            String str = list.get(0);
            this.cdn_configUrl = str;
            getCDNConfigHttp(str, new InitIFlashCallback(cb, list));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public class InitIFlashCallback implements IFlashCallback {
        private IFlashCallback cb;
        private List<String> finalServerUrls;

        public InitIFlashCallback(IFlashCallback cb, List<String> finalServerUrls) {
            this.cb = cb;
            this.finalServerUrls = finalServerUrls;
        }

        @Override // com.yofi.sdk.IFlashCallback
        public void onSuccess(String var1) {
            this.cb.onSuccess(var1);
        }

        @Override // com.yofi.sdk.IFlashCallback
        public void onFailed(int var1, String error) {
            int indexOf = this.finalServerUrls.indexOf(GetWebUrlFromCDNTool.this.cdn_configUrl);
            if (this.finalServerUrls.size() - 1 > indexOf) {
                GetWebUrlFromCDNTool.this.cdn_configUrl = this.finalServerUrls.get(indexOf + 1);
                GetWebUrlFromCDNTool getWebUrlFromCDNTool = GetWebUrlFromCDNTool.this;
                getWebUrlFromCDNTool.getCDNConfigHttp(getWebUrlFromCDNTool.cdn_configUrl, new InitIFlashCallback(this.cb, this.finalServerUrls));
                return;
            }
            this.cb.onFailed(var1, error);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void getCDNConfigHttp(String url, final IFlashCallback cb) {
        WebAPI.getCDNConfigParams(url, new WebAPICallback() { // from class: com.yofi.sdk.utils.GetWebUrlFromCDNTool.2
            @Override // com.yofi.sdk.web.WebAPICallback
            public void onSuccess(JSONObject data) {
                try {
                    if (data.has("serverUrl")) {
                        String string = data.getString("serverUrl");
                        YoFiSdkImp.instance().setCacheServerUrl(string);
                        if (YoFiSdkImp.instance().getIsDebug().booleanValue()) {
                            Constants.DEBUG_SERVER_URL = string;
                        } else {
                            Constants.SERVER_URL = string;
                        }
                    }
                    if (data.has("h5Url")) {
                        String string2 = data.getString("h5Url");
                        YoFiSdkImp.instance().setCacheWebUrl(string2);
                        if (YoFiSdkImp.instance().getIsDebug().booleanValue()) {
                            Constants.DEBUG_WEB_DOMAIN_SERVER_URL = string2;
                        } else {
                            Constants.WEB_DOMAIN_SERVER_URL = string2;
                        }
                    }
                    if (data.has("taskServerUrl")) {
                        String string3 = data.getString("taskServerUrl");
                        YoFiSdkImp.instance().setCacheTaskServerUrl(string3);
                        if (YoFiSdkImp.instance().getIsDebug().booleanValue()) {
                            Constants.DEBUG_TASK_SERVER_URL = string3;
                        } else {
                            Constants.TASK_SERVER_URL = string3;
                        }
                    }
                } catch (JSONException e) {
                    e.printStackTrace();
                }
                cb.onSuccess("");
            }

            @Override // com.yofi.sdk.web.WebAPICallback
            public void onFailure(int code, String msg) {
                cb.onFailed(code, msg);
            }
        });
    }
}
