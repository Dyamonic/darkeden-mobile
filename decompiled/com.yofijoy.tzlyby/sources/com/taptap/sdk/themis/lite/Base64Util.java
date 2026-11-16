package com.taptap.sdk.themis.lite;

import android.util.Base64;

/* loaded from: classes2.dex */
public class Base64Util {
    public static String decode(String str) {
        return new String(Base64.decode(str, 0));
    }
}
