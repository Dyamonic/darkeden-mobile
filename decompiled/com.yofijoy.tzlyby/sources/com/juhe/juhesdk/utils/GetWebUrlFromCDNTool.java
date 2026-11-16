package com.juhe.juhesdk.utils;

import android.util.Log;
import com.juhe.juhesdk.middle.common.Constants;
import com.juhe.juhesdk.middle.common.WebAPI;
import com.juhe.juhesdk.middle.manager.ConfigManager;
import com.juhe.juhesdk.sdk.IFlashCallback;
import com.juhe.juhesdk.web.WebAPICallback;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class GetWebUrlFromCDNTool {
    private String cdn_configUrl;

    public void beginFetch() {
        getCDNConfigMethod(new IFlashCallback() { // from class: com.juhe.juhesdk.utils.GetWebUrlFromCDNTool.1
            @Override // com.juhe.juhesdk.sdk.IFlashCallback
            public void onFailed(int var1, String msg) {
            }

            @Override // com.juhe.juhesdk.sdk.IFlashCallback
            public void onSuccess(String var1) {
            }
        });
    }

    public void getCDNConfigMethod(final IFlashCallback cb) {
        List<String> list = Constants.CDN_SERVER_URLS;
        if (ConfigManager.instance().getIsDebug().booleanValue()) {
            list = Constants.DEBUG_CDN_SERVER_URLS;
        }
        if (list.size() == 0 || list == null) {
            Log.d("getCDNConfigMethod", "juhe_serverUrls为空");
        } else if (list.size() > 0) {
            String str = list.get(0);
            this.cdn_configUrl = str;
            getCDNConfigHttp(str, new InitIFlashCallback(cb, list));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class InitIFlashCallback implements IFlashCallback {
        private IFlashCallback cb;
        private List<String> finalServerUrls;

        public InitIFlashCallback(IFlashCallback cb, List<String> finalServerUrls) {
            this.cb = cb;
            this.finalServerUrls = finalServerUrls;
        }

        @Override // com.juhe.juhesdk.sdk.IFlashCallback
        public void onSuccess(String var1) {
            this.cb.onSuccess(var1);
        }

        @Override // com.juhe.juhesdk.sdk.IFlashCallback
        public void onFailed(int var1, String msg) {
            int indexOf = this.finalServerUrls.indexOf(GetWebUrlFromCDNTool.this.cdn_configUrl);
            if (this.finalServerUrls.size() - 1 > indexOf) {
                GetWebUrlFromCDNTool.this.cdn_configUrl = this.finalServerUrls.get(indexOf + 1);
                GetWebUrlFromCDNTool getWebUrlFromCDNTool = GetWebUrlFromCDNTool.this;
                getWebUrlFromCDNTool.getCDNConfigHttp(getWebUrlFromCDNTool.cdn_configUrl, new InitIFlashCallback(this.cb, this.finalServerUrls));
                return;
            }
            this.cb.onFailed(var1, "");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void getCDNConfigHttp(String url, final IFlashCallback cb) {
        WebAPI.getCDNConfigParams(url, new WebAPICallback() { // from class: com.juhe.juhesdk.utils.GetWebUrlFromCDNTool.2
            @Override // com.juhe.juhesdk.web.WebAPICallback
            public void onSuccess(JSONObject data) {
                try {
                    if (data.has("serverUrl")) {
                        String string = data.getString("serverUrl");
                        ConfigManager.instance().setJuheCacheServerUrl(string);
                        if (ConfigManager.instance().getIsDebug().booleanValue()) {
                            Constants.DEBUG_SERVER_URL = string;
                        } else {
                            Constants.SERVER_URL = string;
                        }
                    }
                } catch (JSONException e) {
                    e.printStackTrace();
                }
                cb.onSuccess("");
            }

            @Override // com.juhe.juhesdk.web.WebAPICallback
            public void onFailure(int code, String msg) {
                cb.onFailed(code, msg);
            }
        });
    }
}
