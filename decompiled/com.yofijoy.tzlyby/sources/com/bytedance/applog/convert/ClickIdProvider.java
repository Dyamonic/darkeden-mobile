package com.bytedance.applog.convert;

import android.content.Context;
import android.text.TextUtils;
import com.bytedance.ads.convert.BDConvertInfo;
import com.bytedance.ads.convert.IClickIdReceiver;
import com.bytedance.ads.convert.utils.ClickIdSPUtil;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class ClickIdProvider implements IIdProvider {
    private static final String TAG = "ClickIdProvider";

    @Override // com.bytedance.applog.convert.IIdProvider
    public void getIdAndSetIntoJson(JSONObject jSONObject, Context context) throws JSONException {
        BDConvertInfo fetchClickId = ClickIdSPUtil.fetchClickId(context);
        String str = fetchClickId.clickId;
        if (!TextUtils.isEmpty(str)) {
            jSONObject.put("click_id", str);
        }
        String str2 = fetchClickId.clickIdNature;
        if (!TextUtils.isEmpty(str2)) {
            jSONObject.put("click_id_nature", str2);
        }
        String str3 = fetchClickId.humeChannelId;
        if (!TextUtils.isEmpty(str3)) {
            jSONObject.put("hume_channel_id", str3);
        }
        IClickIdReceiver.ClickIdFrom clickIdFrom = fetchClickId.from;
        if (clickIdFrom != null) {
            jSONObject.put("click_id_source", clickIdFrom.name());
        }
    }
}
