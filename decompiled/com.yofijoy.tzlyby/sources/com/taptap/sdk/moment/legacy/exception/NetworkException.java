package com.taptap.sdk.moment.legacy.exception;

/* loaded from: classes.dex */
public class NetworkException extends Exception {
    public int code;

    public NetworkException(String str) {
        super(str);
    }

    public NetworkException(int i, String str) {
        super(str);
        this.code = i;
    }

    public NetworkException(String str, Throwable th) {
        super(str, th);
    }

    public NetworkException(int i, String str, Throwable th) {
        super(str, th);
        this.code = i;
    }
}
