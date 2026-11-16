package com.tencent.connect.auth;

import android.content.SharedPreferences;
import android.text.TextUtils;
import android.util.Base64;
import com.tencent.connect.common.Constants;
import com.tencent.open.log.SLog;
import com.tencent.open.utils.d;
import com.tencent.open.utils.e;
import com.tencent.open.utils.k;
import org.json.JSONObject;

/* compiled from: ProGuard */
/* loaded from: classes2.dex */
public class QQToken {
    public static final int AUTH_QQ = 2;
    public static final int AUTH_QZONE = 3;
    public static final int AUTH_WEB = 1;
    private static SharedPreferences f;
    private String a;
    private String b;
    private String c;
    private int d = 1;
    private long e = -1;

    public QQToken(String str) {
        this.a = str;
    }

    public boolean isSessionValid() {
        return this.b != null && System.currentTimeMillis() < this.e;
    }

    public String getAppId() {
        return this.a;
    }

    public void setAppId(String str) {
        this.a = str;
    }

    public String getAccessToken() {
        return this.b;
    }

    public void setAccessToken(String str, String str2) throws NumberFormatException {
        this.b = str;
        this.e = 0L;
        if (str2 != null) {
            this.e = System.currentTimeMillis() + (Long.parseLong(str2) * 1000);
        }
    }

    public String getOpenId() {
        return this.c;
    }

    public void setOpenId(String str) {
        this.c = str;
    }

    public int getAuthSource() {
        return this.d;
    }

    public void setAuthSource(int i) {
        this.d = i;
    }

    public long getExpireTimeInSecond() {
        return this.e;
    }

    public void saveSession(JSONObject jSONObject) {
        try {
            a(this.a, jSONObject);
        } catch (Exception e) {
            SLog.i("QQToken", "login saveSession" + e.toString());
        }
    }

    public JSONObject loadSession(String str) {
        try {
            return a(str);
        } catch (Exception e) {
            SLog.i("QQToken", "login loadSession" + e.toString());
            return null;
        }
    }

    private static synchronized SharedPreferences a() {
        SharedPreferences sharedPreferences;
        synchronized (QQToken.class) {
            if (f == null) {
                f = e.a().getSharedPreferences("token_info_file", 0);
            }
            sharedPreferences = f;
        }
        return sharedPreferences;
    }

    private static synchronized JSONObject a(String str) {
        String c;
        synchronized (QQToken.class) {
            if (e.a() == null) {
                SLog.i("QQToken", "loadJsonPreference context null");
                return null;
            }
            if (str == null) {
                SLog.i("QQToken", "loadJsonPreference prefKey is null");
                return null;
            }
            String encodeToString = Base64.encodeToString(k.i(str), 2);
            String str2 = encodeToString + "_spkey";
            String string = a().getString(str2, null);
            if (string == null) {
                String string2 = a().getString(encodeToString, null);
                if (string2 == null) {
                    SLog.i("QQToken", "loadJsonPreference encoded value null");
                    return null;
                }
                c = d.a(string2, "asdfghjk");
                if (!TextUtils.isEmpty(c)) {
                    String b = d.b(c, "4026aec5f46360286842041e8cd49856");
                    if (str2.length() > 6 && b != null) {
                        a().edit().putString(str2, b).commit();
                        a().edit().remove(encodeToString).commit();
                        SLog.i("QQToken", "loadJsonPreference convert old to new save sucess");
                    }
                }
            } else {
                c = d.c(string, "4026aec5f46360286842041e8cd49856");
            }
            try {
                JSONObject jSONObject = new JSONObject(c);
                SLog.i("QQToken", "loadJsonPreference sucess");
                return jSONObject;
            } catch (Exception e) {
                SLog.i("QQToken", "loadJsonPreference decode " + e.toString());
                return null;
            }
        }
    }

    private static synchronized void a(String str, JSONObject jSONObject) {
        synchronized (QQToken.class) {
            if (e.a() == null) {
                SLog.i("QQToken", "saveJsonPreference context null");
                return;
            }
            if (str == null || jSONObject == null) {
                SLog.i("QQToken", "saveJsonPreference prefKey or jsonObject null");
                return;
            }
            try {
                String string = jSONObject.getString(Constants.PARAM_EXPIRES_IN);
                if (!TextUtils.isEmpty(string)) {
                    jSONObject.put(Constants.PARAM_EXPIRES_TIME, System.currentTimeMillis() + (Long.parseLong(string) * 1000));
                    String str2 = Base64.encodeToString(k.i(str), 2) + "_spkey";
                    String b = d.b(jSONObject.toString(), "4026aec5f46360286842041e8cd49856");
                    if (str2.length() > 6 && b != null) {
                        a().edit().putString(str2, b).commit();
                        SLog.i("QQToken", "saveJsonPreference sucess");
                        return;
                    }
                    SLog.i("QQToken", "saveJsonPreference keyEncode or josnEncode null");
                    return;
                }
                SLog.i("QQToken", "expires is null");
            } catch (Exception e) {
                SLog.e("QQToken", "saveJsonPreference exception:" + e.toString());
            }
        }
    }

    public void removeSession(String str) {
        String encodeToString = Base64.encodeToString(k.i(str), 2);
        a().edit().remove(encodeToString + "_spkey").commit();
        a().edit().remove(encodeToString).commit();
        SLog.i("QQToken", "removeSession sucess");
    }
}
