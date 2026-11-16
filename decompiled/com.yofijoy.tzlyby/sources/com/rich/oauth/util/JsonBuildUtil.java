package com.rich.oauth.util;

import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class JsonBuildUtil {
    public static String getJsonString(int i, String str) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("code", i);
            jSONObject.put("msg", str);
        } catch (JSONException e) {
            e.printStackTrace();
        }
        return jSONObject.toString();
    }
}
