package com.yofi.sdk.imp.middle.eventreword;

import android.app.Activity;
import android.os.Bundle;
import android.util.Log;
import com.bytedance.applog.AppLog;
import com.bytedance.applog.game.GameReportHelper;
import com.qq.gdt.action.ActionUtils;
import com.yofi.sdk.imp.middle.common.Constants;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class EventReword {
    private static EventReword eventReword;

    public void setEventRecordInit(Activity mainActivity) {
    }

    public static EventReword getInstance() {
        if (eventReword == null) {
            eventReword = new EventReword();
        }
        return eventReword;
    }

    public void eventRecord(final String eventName, Bundle bundle) {
        if (eventName == null || eventName.length() == 0) {
            Log.d("yofisdkEventRecord", "事件名为空");
            return;
        }
        if (bundle == null) {
            bundle = new Bundle();
        }
        Log.d("yofisdkEventRecord", "eventName:" + eventName + ", bundle:" + bundle.toString());
        if (eventName.equals(Constants.YoFiEventName.Complete_Registration)) {
            GameReportHelper.onEventRegister(ActionUtils.METHOD, true);
            ActionUtils.onRegister(ActionUtils.METHOD, true);
            return;
        }
        if (eventName.equals(Constants.YoFiEventName.Purchase)) {
            Log.d("yofisdkEventRecord", "yofisdk eventrecord eventName:" + eventName + ", result1:" + bundle.toString());
            int i = bundle.getInt("reportType");
            int i2 = bundle.getInt("amount");
            if (i == 1) {
                GameReportHelper.onEventPurchase(null, null, null, 1, null, null, true, i2);
                return;
            } else {
                if (i == 2) {
                    ActionUtils.onPurchase(null, null, null, 1, null, "CNY", i2 * 100, true);
                    return;
                }
                return;
            }
        }
        if (eventName.equals(Constants.YoFiEventName.RoleUpgrade)) {
            int i3 = bundle.getInt("roleLevel");
            String string = bundle.getString("roleId");
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put(ActionUtils.LEVEL, i3);
                jSONObject.put("item_type", 1);
                jSONObject.put("item_id", string);
            } catch (JSONException e) {
                e.printStackTrace();
                StringBuilder sb = new StringBuilder();
                sb.append("errorEventName=");
                sb.append(eventName.equals("RoleUpgradeerror:" + e.toString()));
                Log.d("yofisdkEventRecord", sb.toString());
            }
            AppLog.onEventV3(GameReportHelper.UPDATE_LEVEL, jSONObject);
            return;
        }
        if (eventName.equals(Constants.YoFiEventName.Login)) {
            AppLog.onEventV3(GameReportHelper.LOG_IN, new JSONObject());
            return;
        }
        if (eventName.equals(Constants.YoFiEventName.CreateRole)) {
            String string2 = bundle.getString("roleId");
            JSONObject jSONObject2 = new JSONObject();
            try {
                jSONObject2.put("gamerole_id", string2);
                jSONObject2.put("gamerole_sum", 1);
            } catch (JSONException e2) {
                e2.printStackTrace();
                Log.d("yofisdkEventRecord", "errorEventName=" + eventName + "error:" + e2.toString());
            }
            AppLog.onEventV3(GameReportHelper.CREATE_GAMEROLE, jSONObject2);
            return;
        }
        JSONObject jSONObject3 = new JSONObject();
        try {
            for (String str : bundle.keySet()) {
                jSONObject3.put(str, bundle.getString(str));
            }
            AppLog.onEventV3(eventName, jSONObject3);
        } catch (JSONException e3) {
            e3.printStackTrace();
            Log.d("yofisdkEventRecord", "errorEventName=" + eventName + "error:" + e3.toString());
        }
    }
}
