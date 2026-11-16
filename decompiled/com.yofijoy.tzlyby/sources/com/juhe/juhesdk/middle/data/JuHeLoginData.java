package com.juhe.juhesdk.middle.data;

import com.alibaba.fastjson.annotation.JSONField;

/* loaded from: classes.dex */
public class JuHeLoginData {

    @JSONField
    private String accessToken;

    @JSONField
    private int channelId;

    @JSONField
    private int code;

    @JSONField
    private String msg;

    @JSONField
    private String userId;

    @JSONField
    private String userName;

    public String getUserName() {
        return this.userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getUserId() {
        return this.userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public int getCode() {
        return this.code;
    }

    public void setCode(int code) {
        this.code = code;
    }

    public String getMsg() {
        return this.msg;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }

    public String getAccessToken() {
        return this.accessToken;
    }

    public void setAccessToken(String accessToken) {
        this.accessToken = accessToken;
    }

    public int getChannelId() {
        return this.channelId;
    }

    public void setChannelId(int channelId) {
        this.channelId = channelId;
    }
}
