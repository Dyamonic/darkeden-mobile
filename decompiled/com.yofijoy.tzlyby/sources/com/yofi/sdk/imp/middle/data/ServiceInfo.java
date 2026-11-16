package com.yofi.sdk.imp.middle.data;

/* loaded from: classes2.dex */
public class ServiceInfo {
    private String message;
    private String webSite = "";
    private String phone = "";
    private String QQ = "";
    private String QQGroup = "";
    private String contex = "";

    public String getMessage() {
        return this.message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public String getContex() {
        return this.contex;
    }

    public void setContex(String contex) {
        this.contex = contex;
    }

    public String getWebSite() {
        return this.webSite;
    }

    public void setWebSite(String webSite) {
        this.webSite = webSite;
    }

    public String getPhone() {
        return this.phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getQQ() {
        return this.QQ;
    }

    public void setQQ(String qQ) {
        this.QQ = qQ;
    }

    public String getQQGroup() {
        return this.QQGroup;
    }

    public void setQQGroup(String qQGroup) {
        this.QQGroup = qQGroup;
    }

    public String toString() {
        return "ServiceInfo [message=" + this.message + ", webSite=" + this.webSite + ", phone=" + this.phone + ", QQ=" + this.QQ + ", QQGroup=" + this.QQGroup + ", contex=" + this.contex + "]";
    }
}
