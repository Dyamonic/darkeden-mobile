package com.bytedance.ads.convert.utils;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import android.util.Log;
import com.bytedance.ads.convert.BDConvertInfo;
import com.bytedance.ads.convert.IClickIdReceiver;
import com.bytedance.ads.convert.hume.readapk.HumeSDK;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class ClickIdSPUtil {
    private static final String TAG = "Convert:ClickIdSPUtil";

    public static BDConvertInfo fetchClickId(Context context) {
        SharedPreferences sharedPreferences = context.getSharedPreferences(BusinessConstant.SP_NAME_BD_CONVERT_HUME_SDK, 0);
        if (sharedPreferences.getBoolean(BusinessConstant.SP_KEY_HAS_READ, false)) {
            return readClickId(context);
        }
        try {
            String trim = HumeSDK.getExtra(context).trim();
            if (!TextUtils.isEmpty(trim)) {
                JSONObject jSONObject = new JSONObject(trim);
                BDConvertInfo bDConvertInfo = new BDConvertInfo(jSONObject.optString("click_id"), jSONObject.optString("click_id_nature"), jSONObject.optString("hume_channel_id"), IClickIdReceiver.ClickIdFrom.APK);
                saveByPriority(context, bDConvertInfo);
                return bDConvertInfo;
            }
        } catch (JSONException e) {
            e.printStackTrace();
        }
        sharedPreferences.edit().putBoolean(BusinessConstant.SP_KEY_HAS_READ, true).apply();
        return readClickId(context);
    }

    public static BDConvertInfo readClickId(Context context) {
        SharedPreferences sharedPreferences = context.getSharedPreferences(BusinessConstant.SP_NAME_CLICK_ID, 0);
        return new BDConvertInfo(sharedPreferences.getString("click_id", null), sharedPreferences.getString("click_id_nature", null), sharedPreferences.getString("hume_channel_id", null), BDConvertInfo.sourceToEnum(sharedPreferences.getString("click_id_source", null)));
    }

    public static void saveByPriority(Context context, BDConvertInfo bDConvertInfo) {
        boolean z = false;
        SharedPreferences sharedPreferences = context.getSharedPreferences(BusinessConstant.SP_NAME_CLICK_ID, 0);
        String string = sharedPreferences.getString("click_id_source", null);
        IClickIdReceiver.ClickIdFrom sourceToEnum = BDConvertInfo.sourceToEnum(string);
        if (sourceToEnum != null && sourceToEnum.ordinal() <= bDConvertInfo.from.ordinal()) {
            z = true;
        }
        Log.d(TAG, "saveByPriority: ignore:" + z + " old:" + string + " new:" + bDConvertInfo.from);
        if (z) {
            return;
        }
        sharedPreferences.edit().putString("click_id", bDConvertInfo.clickId).putString("click_id_source", bDConvertInfo.getSource()).putString("click_id_nature", bDConvertInfo.clickIdNature).putString("hume_channel_id", bDConvertInfo.humeChannelId).apply();
    }
}
