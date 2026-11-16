package com.bytedance.applog.game;

import com.bytedance.applog.AppLog;
import com.bytedance.applog.log.LoggerImpl;
import com.bytedance.bdtracker.k0;
import com.qq.gdt.action.ActionUtils;
import com.tencent.open.SocialConstants;
import java.util.Collections;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class GameReportHelper {
    public static final String ACCESS_ACCOUNT = "access_account";
    public static final String ACCESS_PAYMENT_CHANNEL = "access_payment_channel";
    public static final String ADD_CART = "add_cart";
    public static final String ADD_TO_FAVORITE = "add_to_favourite";
    public static final String CHECK_OUT = "check_out";
    public static final String CREATE_GAMEROLE = "create_gamerole";
    public static final String LOG_IN = "log_in";
    public static final String PURCHASE = "purchase";
    public static final String QUEST = "quest";
    public static final String REGISTER = "register";
    public static final String UPDATE_LEVEL = "update_level";
    public static final String VIEW_CONTENT = "view_content";

    public static void onEventAccessAccount(String str, boolean z) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("account_type", str);
            jSONObject.put(ActionUtils.IS_SUCCESS, k0.a(z));
            AppLog.onEventV3(ACCESS_ACCOUNT, jSONObject, 1);
        } catch (JSONException e) {
            LoggerImpl.global().error(Collections.singletonList("GameReportHelper"), "JSON handle failed", e, new Object[0]);
        }
    }

    public static void onEventAccessPaymentChannel(String str, boolean z) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(ActionUtils.PAYMENT_CHANNEL, str);
            jSONObject.put(ActionUtils.IS_SUCCESS, k0.a(z));
            AppLog.onEventV3(ACCESS_PAYMENT_CHANNEL, jSONObject, 1);
        } catch (JSONException e) {
            LoggerImpl.global().error(Collections.singletonList("GameReportHelper"), "JSON handle failed", e, new Object[0]);
        }
    }

    public static void onEventAddCart(String str, String str2, String str3, int i, boolean z) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(ActionUtils.CONTENT_TYPE, str);
            jSONObject.put(ActionUtils.CONTENT_NAME, str2);
            jSONObject.put(ActionUtils.CONTENT_ID, str3);
            jSONObject.put("content_num", i);
            jSONObject.put(ActionUtils.IS_SUCCESS, k0.a(z));
            AppLog.onEventV3(ADD_CART, jSONObject, 1);
        } catch (JSONException e) {
            LoggerImpl.global().error(Collections.singletonList("GameReportHelper"), "JSON handle failed", e, new Object[0]);
        }
    }

    public static void onEventAddToFavorite(String str, String str2, String str3, int i, boolean z) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(ActionUtils.CONTENT_TYPE, str);
            jSONObject.put(ActionUtils.CONTENT_NAME, str2);
            jSONObject.put(ActionUtils.CONTENT_ID, str3);
            jSONObject.put("content_num", i);
            jSONObject.put(ActionUtils.IS_SUCCESS, k0.a(z));
            AppLog.onEventV3(ADD_TO_FAVORITE, jSONObject, 1);
        } catch (JSONException e) {
            LoggerImpl.global().error(Collections.singletonList("GameReportHelper"), "JSON handle failed", e, new Object[0]);
        }
    }

    public static void onEventCheckOut(String str, String str2, String str3, int i, boolean z, String str4, String str5, boolean z2, int i2) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(ActionUtils.CONTENT_TYPE, str);
            jSONObject.put(ActionUtils.CONTENT_NAME, str2);
            jSONObject.put(ActionUtils.CONTENT_ID, str3);
            jSONObject.put("content_num", i);
            jSONObject.put(ActionUtils.IS_VIRTUAL_CURRENT, k0.a(z));
            jSONObject.put("virtual_currency", str4);
            jSONObject.put("currency", str5);
            jSONObject.put(ActionUtils.IS_SUCCESS, k0.a(z2));
            jSONObject.put("currency_amount", i2);
            AppLog.onEventV3(CHECK_OUT, jSONObject, 1);
        } catch (JSONException e) {
            LoggerImpl.global().error(Collections.singletonList("GameReportHelper"), "JSON handle failed", e, new Object[0]);
        }
    }

    public static void onEventCreateGameRole(String str) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("gamerole_id", str);
            AppLog.onEventV3(CREATE_GAMEROLE, jSONObject, 1);
        } catch (JSONException e) {
            LoggerImpl.global().error(Collections.singletonList("GameReportHelper"), "JSON handle failed", e, new Object[0]);
        }
    }

    public static void onEventLogin(String str, boolean z) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(ActionUtils.METHOD, str);
            jSONObject.put(ActionUtils.IS_SUCCESS, k0.a(z));
            AppLog.onEventV3(LOG_IN, jSONObject, 1);
        } catch (JSONException e) {
            LoggerImpl.global().error(Collections.singletonList("GameReportHelper"), "JSON handle failed", e, new Object[0]);
        }
    }

    public static void onEventPurchase(String str, String str2, String str3, int i, String str4, String str5, boolean z, int i2) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(ActionUtils.CONTENT_TYPE, str);
            jSONObject.put(ActionUtils.CONTENT_NAME, str2);
            jSONObject.put(ActionUtils.CONTENT_ID, str3);
            jSONObject.put("content_num", i);
            jSONObject.put(ActionUtils.PAYMENT_CHANNEL, str4);
            jSONObject.put("currency", str5);
            jSONObject.put(ActionUtils.IS_SUCCESS, k0.a(z));
            jSONObject.put("currency_amount", i2);
            AppLog.onEventV3("purchase", jSONObject, 1);
        } catch (JSONException e) {
            LoggerImpl.global().error(Collections.singletonList("GameReportHelper"), "JSON handle failed", e, new Object[0]);
        }
    }

    public static void onEventQuest(String str, String str2, String str3, int i, boolean z, String str4) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(ActionUtils.QUEST_ID, str);
            jSONObject.put(ActionUtils.QUEST_TYPE, str2);
            jSONObject.put(ActionUtils.QUEST_NAME, str3);
            jSONObject.put("quest_no", i);
            jSONObject.put(ActionUtils.IS_SUCCESS, k0.a(z));
            jSONObject.put(SocialConstants.PARAM_COMMENT, str4);
            AppLog.onEventV3(QUEST, jSONObject, 1);
        } catch (JSONException e) {
            LoggerImpl.global().error(Collections.singletonList("GameReportHelper"), "JSON handle failed", e, new Object[0]);
        }
    }

    public static void onEventRegister(String str, boolean z) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(ActionUtils.METHOD, str);
            jSONObject.put(ActionUtils.IS_SUCCESS, k0.a(z));
            AppLog.onEventV3(REGISTER, jSONObject, 1);
        } catch (JSONException e) {
            LoggerImpl.global().error(Collections.singletonList("GameReportHelper"), "JSON handle failed", e, new Object[0]);
        }
    }

    public static void onEventUpdateLevel(int i) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(ActionUtils.LEVEL, i);
            AppLog.onEventV3(UPDATE_LEVEL, jSONObject, 1);
        } catch (JSONException e) {
            LoggerImpl.global().error(Collections.singletonList("GameReportHelper"), "JSON handle failed", e, new Object[0]);
        }
    }

    public static void onEventViewContent(String str, String str2, String str3) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(ActionUtils.CONTENT_TYPE, str);
            jSONObject.put(ActionUtils.CONTENT_NAME, str2);
            jSONObject.put(ActionUtils.CONTENT_ID, str3);
            AppLog.onEventV3(VIEW_CONTENT, jSONObject, 1);
        } catch (JSONException e) {
            LoggerImpl.global().error(Collections.singletonList("GameReportHelper"), "JSON handle failed", e, new Object[0]);
        }
    }
}
