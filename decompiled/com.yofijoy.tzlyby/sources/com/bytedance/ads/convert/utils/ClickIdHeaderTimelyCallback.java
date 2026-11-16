package com.bytedance.ads.convert.utils;

import android.text.TextUtils;
import android.util.Log;
import com.bytedance.applog.IHeaderCustomTimelyCallback;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class ClickIdHeaderTimelyCallback implements IHeaderCustomTimelyCallback {
    public static final String KEY_CLICK_ID = "click_id";
    public static final String KEY_CLICK_ID_NATURE = "click_id_nature";
    private static final String TAG = "ClickIdHeaderTimelyCall";
    private final String clickId;
    private IHeaderCustomTimelyCallback lastCallback;

    public ClickIdHeaderTimelyCallback(String str, IHeaderCustomTimelyCallback iHeaderCustomTimelyCallback) {
        this.clickId = str;
        this.lastCallback = iHeaderCustomTimelyCallback;
    }

    @Override // com.bytedance.applog.IHeaderCustomTimelyCallback
    public void updateHeader(JSONObject jSONObject) {
        try {
            IHeaderCustomTimelyCallback iHeaderCustomTimelyCallback = this.lastCallback;
            if (iHeaderCustomTimelyCallback != null) {
                iHeaderCustomTimelyCallback.updateHeader(jSONObject);
            }
            if (jSONObject == null || !TextUtils.isEmpty(jSONObject.optString("click_id"))) {
                return;
            }
            jSONObject.put("click_id", this.clickId);
            Log.d(TAG, "updateHeader: " + this.clickId);
        } catch (Throwable th) {
            Log.e(TAG, "updateHeader: ", th);
        }
    }
}
