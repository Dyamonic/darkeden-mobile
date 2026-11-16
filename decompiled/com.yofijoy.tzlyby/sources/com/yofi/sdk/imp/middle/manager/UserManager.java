package com.yofi.sdk.imp.middle.manager;

import android.content.Context;
import android.content.SharedPreferences;
import com.yofi.sdk.utils.AES;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class UserManager {
    private static final String GAME_STAGE = "GAME_STAGE";
    private static final String SDK_STAGE = "SDK_STAGE";
    private static String allUserInfo = "LittleSDKAllUser";
    private static String shareUserInfo = "LittleSDKUser";
    private static UserManager sharedUserManager;
    private boolean authen;
    private Context mContext;
    private SharedPreferences.Editor mEditor;
    private SharedPreferences mKV;
    private boolean tourist;
    private JSONObject user;
    private int age = 18;
    private String phoneNumber = "";
    private int gameStage = 0;
    private int sdkStage = 0;

    private String aes_encode(String src) {
        return new AES("GGOD_WHO_K#@*&^M321_ as:N+~s(w@").Cipher(src);
    }

    private String aes_decode(String src) {
        return new AES("GGOD_WHO_K#@*&^M321_ as:N+~s(w@").InvCipher(src);
    }

    public static UserManager instance() {
        if (sharedUserManager == null) {
            sharedUserManager = new UserManager();
        }
        return sharedUserManager;
    }

    public void init(Context context) {
        this.mContext = context;
        SharedPreferences sharedPreferences = context.getSharedPreferences(allUserInfo, 0);
        this.mKV = sharedPreferences;
        this.mEditor = sharedPreferences.edit();
        Map<String, ?> all = this.mKV.getAll();
        if (all.containsKey(GAME_STAGE)) {
            this.gameStage = ((Integer) all.get(GAME_STAGE)).intValue();
        }
        if (all.containsKey("SDK_STAGE")) {
            this.sdkStage = ((Integer) all.get("SDK_STAGE")).intValue();
        }
        this.user = getUserInfo();
    }

    public String getTouristUser() {
        try {
            JSONObject jSONObject = this.user;
            return jSONObject != null ? aes_decode(jSONObject.getString("tourist_user")) : "";
        } catch (JSONException e) {
            e.printStackTrace();
            return "";
        }
    }

    public String getTouristPassword() {
        try {
            JSONObject jSONObject = this.user;
            return jSONObject != null ? aes_decode(jSONObject.getString("tourist_pass")) : "";
        } catch (JSONException e) {
            e.printStackTrace();
            return "";
        }
    }

    public boolean isAuthened() {
        return this.authen;
    }

    public void setAuthen(boolean authen) {
        this.authen = authen;
    }

    public void setTourist(boolean tourist) {
        this.tourist = tourist;
    }

    public boolean isTourist() {
        return this.tourist;
    }

    public int getAge() {
        return this.age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public String getPhoneNumber() {
        return this.phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public int getGameStage() {
        return this.gameStage;
    }

    public int getSdkStage() {
        return this.sdkStage;
    }

    public void setGameStage(int gameStage) {
        this.gameStage = gameStage;
        this.mEditor.putInt(GAME_STAGE, gameStage);
        commit();
    }

    public void setSdkStage(int sdkStage) {
        this.sdkStage = sdkStage;
        this.mEditor.putInt("SDK_STAGE", sdkStage);
        commit();
    }

    private JSONObject getUserInfo() {
        SharedPreferences sharedPreferences = this.mContext.getSharedPreferences(shareUserInfo, 0);
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("tourist_user", sharedPreferences.getString("tourist_user", ""));
            jSONObject.put("tourist_pass", sharedPreferences.getString("tourist_pass", ""));
        } catch (JSONException e) {
            e.printStackTrace();
        }
        return jSONObject;
    }

    public void clearSession() {
        this.age = 0;
        this.phoneNumber = "";
        this.tourist = true;
        this.authen = false;
    }

    public void commit() {
        this.mEditor.commit();
    }
}
