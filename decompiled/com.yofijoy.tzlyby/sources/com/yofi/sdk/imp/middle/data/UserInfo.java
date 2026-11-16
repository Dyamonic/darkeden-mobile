package com.yofi.sdk.imp.middle.data;

import java.io.Serializable;

/* loaded from: classes2.dex */
public class UserInfo implements Comparable<UserInfo>, Serializable {
    private static final long serialVersionUID = 1;
    public long logintime;
    public String password;
    public String username;

    public UserInfo(String username, String password, long logintime) {
        this.username = username;
        this.password = password;
        this.logintime = logintime;
    }

    public String getUsername() {
        return this.username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return this.password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public long getLogintime() {
        return this.logintime;
    }

    public void setLogintime(long logintime) {
        this.logintime = logintime;
    }

    @Override // java.lang.Comparable
    public int compareTo(UserInfo another) {
        return new Long(another.getLogintime()).compareTo(Long.valueOf(getLogintime()));
    }
}
