package com.bytedance.bdtracker;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import com.bytedance.applog.profile.UserProfileCallback;
import com.loopj.android.http.RequestParams;
import com.taptap.sdk.moment.constant.Constant;
import java.util.HashMap;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class r3 implements Runnable {
    public static final Handler g = new Handler(Looper.getMainLooper());
    public final String a;
    public final String b;
    public final JSONObject c;
    public final UserProfileCallback d;
    public final Context e;
    public final d f;

    public r3(d dVar, String str, String str2, JSONObject jSONObject, UserProfileCallback userProfileCallback, Context context) {
        this.f = dVar;
        this.a = str;
        this.b = str2;
        this.c = jSONObject;
        this.d = userProfileCallback;
        this.e = context;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            if (!z4.b(this.e)) {
                g.post(new p3(this, 0));
                return;
            }
            HashMap hashMap = new HashMap();
            hashMap.put("Content-Type", RequestParams.APPLICATION_JSON);
            hashMap.put("X-APIKEY", this.b);
            this.f.getNetClient().execute((byte) 1, this.a, this.c, hashMap, (byte) 0, false, Constant.CALLBACK_CODE_LOGIN_SUCCESS);
            g.post(new q3(this));
        } catch (Throwable th) {
            this.f.D.error(9, "Report profile failed", th, new Object[0]);
            g.post(new p3(this, 1));
        }
    }
}
