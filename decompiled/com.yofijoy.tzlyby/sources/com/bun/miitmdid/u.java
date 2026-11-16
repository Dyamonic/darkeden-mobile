package com.bun.miitmdid;

import android.content.Context;
import com.heytap.openid.bean.OpenIDInfo;
import com.heytap.openid.sdk.OpenIDSDK;

/* loaded from: classes.dex */
public class u extends n {
    public Context l;
    public OpenIDInfo m;

    public u(Context context) {
        this.l = context;
        Context a = a(context);
        this.l = a;
        OpenIDSDK.init(a);
        if (h0.a) {
            OpenIDSDK.setLoggable(true);
        }
    }

    @Override // com.bun.miitmdid.n
    public native g d();

    @Override // com.bun.miitmdid.n, com.bun.miitmdid.interfaces.IIdProvider
    public native void doStart();

    public final native void e();
}
