package com.bytedance.ad.common.uaid.identity;

import androidx.core.app.NotificationCompat;
import com.bytedance.ad.common.uaid.identity.Constant;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class UAIDResult {
    private String errCode;
    private String token = "";
    private String carrier = "";
    private String vendor = "";
    private int slot = -1;
    private long timestamp = 0;

    public UAIDResult(String str) {
        this.errCode = Constant.StatusCode.INIT;
        this.errCode = str;
    }

    public String getCarrier() {
        return this.carrier;
    }

    public String getErrCode() {
        return this.errCode;
    }

    public int getSlot() {
        return this.slot;
    }

    public long getTimestamp() {
        return this.timestamp;
    }

    public String getToken() {
        return this.token;
    }

    public String getVendor() {
        return this.vendor;
    }

    public void set(String str, String str2, String str3, String str4, int i, long j) {
        this.token = str3;
        this.errCode = str2;
        this.vendor = str;
        this.carrier = str4;
        this.slot = i;
        this.timestamp = j;
    }

    public void setCarrier(String str) {
        this.carrier = str;
    }

    public void setErrCode(String str) {
        this.errCode = str;
    }

    public void setSlot(int i) {
        this.slot = i;
    }

    public void setTimestamp(long j) {
        this.timestamp = j;
    }

    public void setToken(String str) {
        this.token = str;
    }

    public void setVendor(String str) {
        this.vendor = str;
    }

    public JSONObject toJSONObject() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("tk", this.token).put("vd", this.vendor).put("cr", this.carrier).put(NotificationCompat.CATEGORY_ERROR, this.errCode).put("sl", this.slot);
        } catch (Exception unused) {
        }
        return jSONObject;
    }

    public String toString() {
        return toJSONObject().toString();
    }
}
