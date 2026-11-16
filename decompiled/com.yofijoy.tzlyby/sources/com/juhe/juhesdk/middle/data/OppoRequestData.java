package com.juhe.juhesdk.middle.data;

import com.alibaba.fastjson.annotation.JSONField;

/* loaded from: classes.dex */
public class OppoRequestData {

    @JSONField
    private String ssoid;

    @JSONField
    private String token;

    public OppoRequestData(String token, String ssoid) {
        this.ssoid = ssoid;
        this.token = token;
    }

    public String getToken() {
        return this.token;
    }

    public void setToken(String token) {
        this.token = token;
    }

    public String getSsoid() {
        return this.ssoid;
    }

    public void setSsoid(String ssoid) {
        this.ssoid = ssoid;
    }
}
