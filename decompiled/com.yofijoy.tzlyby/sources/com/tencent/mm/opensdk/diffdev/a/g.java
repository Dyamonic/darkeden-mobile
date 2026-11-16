package com.tencent.mm.opensdk.diffdev.a;

import cz.msebera.android.httpclient.HttpStatus;

/* loaded from: classes2.dex */
public enum g {
    UUID_EXPIRED(HttpStatus.SC_PAYMENT_REQUIRED),
    UUID_CANCELED(HttpStatus.SC_FORBIDDEN),
    UUID_SCANED(HttpStatus.SC_NOT_FOUND),
    UUID_CONFIRM(HttpStatus.SC_METHOD_NOT_ALLOWED),
    UUID_KEEP_CONNECT(HttpStatus.SC_REQUEST_TIMEOUT),
    UUID_ERROR(500);

    private int code;

    g(int i) {
        this.code = i;
    }

    public final int getCode() {
        return this.code;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return "UUIDStatusCode:" + this.code;
    }
}
