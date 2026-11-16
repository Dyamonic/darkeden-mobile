package com.heytap.openid.bean;

/* loaded from: classes.dex */
public final class OpenIDInfo {
    public static int Type_AAID = 2;
    public static int Type_OAID = 8;
    public static int Type_VAID = 4;
    public final String AAID;
    public final String OAID;
    public final boolean OAIDStatus;
    public final String VAID;

    public OpenIDInfo(String str, boolean z, String str2, String str3) {
        this.OAID = str;
        this.OAIDStatus = z;
        this.VAID = str2;
        this.AAID = str3;
    }

    public native String getAAID();

    public native String getOAID();

    public native boolean getOAIDStatus();

    public native String getVAID();
}
