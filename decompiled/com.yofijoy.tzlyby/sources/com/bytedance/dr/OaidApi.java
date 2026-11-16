package com.bytedance.dr;

import android.content.Context;

/* loaded from: classes.dex */
public interface OaidApi {

    /* loaded from: classes.dex */
    public static class a {
        public String a;
        public boolean b;
    }

    String getName();

    a getOaid(Context context);

    boolean support(Context context);
}
