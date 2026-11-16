package com.juhe.juhesdk.web;

import cz.msebera.android.httpclient.HttpStatus;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public enum WebResult {
    NETWORK_NOT_ALLOWED(64536, "网络连接被禁止"),
    OPERATION_TOO_FREQUENTLY(-7, "操作过于频繁"),
    PARAM_ERROR(-6, "参数错误"),
    METHOD_INVOKE_ERROR(-5, "Method Invoke Error"),
    METHOD_ACCESS_ERROR(-4, "Method Access Error"),
    METHOD_NOT_FOUND(-3, "No such Method"),
    NO_RESULT(-2, "No Result"),
    UNKNOWN_ERROR(-1, "Unknown Error"),
    FALSE(0, "False"),
    OK(1, "Ok"),
    IDENTIFY_ERROR_401(HttpStatus.SC_UNAUTHORIZED, "param error"),
    ORDER_ERROR_900(900, "age under 18, invalid order"),
    ORDER_ERROR_901(901, "age under 18, invalid order"),
    ORDER_ERROR_902(902, "age under 18, invalid order"),
    LOGIN_ERROR_903(903, "age under 18, login time limit"),
    LOGIN_ERROR_904(904, "age under 8, can't login"),
    ORDER_ERROR_905(905, "age under 18, invalid order"),
    ORDER_ERROR_906(906, "age under 18, invalid order"),
    ORDER_ERROR_907(907, "age under 18, invalid order"),
    ORDER_ERROR_908(908, "age under 18, invalid order");

    public static final String CODE = "code";
    public static final String DATA = "data";
    public static final String MSG = "msg";
    public final int code;
    public final String msg;

    WebResult(int code, String msg) {
        this.code = code;
        this.msg = msg;
    }

    public boolean equal(Object o) {
        if (o == null) {
            return false;
        }
        return o instanceof WebResult ? this.code == ((WebResult) o).code : o instanceof Integer ? this.code == ((Integer) o).intValue() : (o instanceof Long) && this.code == ((Long) o).intValue();
    }

    public JSONObject toJson(JSONObject obj) {
        try {
            obj.put("code", this.code);
            obj.put("msg", this.msg);
            return obj;
        } catch (JSONException e) {
            e.printStackTrace();
            return obj;
        }
    }

    public JSONObject toJson() {
        JSONObject jSONObject = new JSONObject();
        toJson(jSONObject);
        return jSONObject;
    }

    public JSONObject toJson(JSONObject obj, String newMsg) {
        try {
            obj.put("code", this.code);
            obj.put("msg", newMsg);
            return obj;
        } catch (JSONException e) {
            e.printStackTrace();
            return obj;
        }
    }

    public JSONObject toJson(String newMsg) {
        JSONObject jSONObject = new JSONObject();
        toJson(jSONObject, newMsg);
        return jSONObject;
    }

    public <T> JSONObject makeResult(T data) {
        JSONObject json = toJson();
        try {
            json.put("data", data);
            return json;
        } catch (JSONException e) {
            e.printStackTrace();
            return json;
        }
    }

    public <T> JSONObject makeResult(T data, String newMsg) {
        JSONObject json = toJson(newMsg);
        try {
            json.put("data", data);
            return json;
        } catch (JSONException e) {
            e.printStackTrace();
            return json;
        }
    }

    public static WebResult findResult(int code) {
        for (WebResult webResult : values()) {
            if (webResult.code == code) {
                return webResult;
            }
        }
        return UNKNOWN_ERROR;
    }

    public static <T> JSONObject build(WebResult gr, T data) {
        return gr.makeResult(data);
    }

    public static <T> JSONObject build(WebResult gr, T data, String newMsg) {
        return gr.makeResult(data, newMsg);
    }
}
