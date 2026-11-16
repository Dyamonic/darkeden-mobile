package com.bytedance.bdtracker;

import android.app.Application;
import android.content.pm.PackageInfo;
import android.os.AsyncTask;
import android.widget.Toast;
import androidx.core.app.NotificationCompat;
import com.bytedance.applog.IPicker;
import com.bytedance.applog.simulate.SimulateLaunchActivity;
import cz.msebera.android.httpclient.cookie.SM;
import java.util.Collections;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class v3 extends AsyncTask<Void, Void, JSONObject> {
    public int a;
    public int b;
    public String c;
    public String d;
    public String e;
    public String f;
    public final d g;

    public static void a(d dVar) {
        new v3(dVar).execute(new Void[0]);
    }

    /* JADX WARN: Removed duplicated region for block: B:44:0x019c  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x01b3 A[SYNTHETIC] */
    @Override // android.os.AsyncTask
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public org.json.JSONObject doInBackground(java.lang.Void[] r30) {
        /*
            Method dump skipped, instructions count: 504
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.bdtracker.v3.doInBackground(java.lang.Object[]):java.lang.Object");
    }

    @Override // android.os.AsyncTask
    public void onPostExecute(JSONObject jSONObject) {
        JSONObject optJSONObject;
        JSONObject jSONObject2 = jSONObject;
        this.g.D.debug(Collections.singletonList("SimulateLoginTask"), "Simulate login with response: {}", jSONObject2);
        if (jSONObject2 == null) {
            Toast.makeText(this.g.n, "启动埋点验证|圈选失败，服务端无响应", 1).show();
            return;
        }
        String optString = jSONObject2.optString("message");
        String optString2 = jSONObject2.optString(SM.SET_COOKIE);
        int optInt = jSONObject2.optInt(NotificationCompat.CATEGORY_STATUS);
        if (SimulateLaunchActivity.entryMode == 1 && (optJSONObject = jSONObject2.optJSONObject("data")) != null) {
            this.f = optJSONObject.optString("mode", "").equals("log") ? SimulateLaunchActivity.DEBUG_LOG : SimulateLaunchActivity.BIND_QUERY;
        }
        if (optInt != 0 || !"OK".equals(optString)) {
            if (optInt != 0 && k0.d(jSONObject2.optString("message"))) {
                Application application = this.g.n;
                StringBuilder a = a.a("启动埋点验证|圈选失败: ");
                a.append(jSONObject2.optString("message"));
                Toast.makeText(application, a.toString(), 1).show();
                return;
            }
            this.g.D.warn(Collections.singletonList("SimulateLoginTask"), "Start simulator failed, please check server response: {}", jSONObject2);
            return;
        }
        if (SimulateLaunchActivity.DEBUG_LOG.equals(this.f)) {
            this.g.setRangersEventVerifyEnable(true, optString2);
            return;
        }
        IPicker iPicker = null;
        if (this.g.getInitConfig() != null && this.g.getInitConfig().getPicker() != null) {
            iPicker = this.g.getInitConfig().getPicker();
        }
        if (iPicker != null) {
            iPicker.setMarqueeCookie(optString2);
        }
        this.g.startSimulator(optString2);
    }

    public v3(d dVar) {
        this.g = dVar;
        dVar.k.a = SimulateLaunchActivity.entryUrlPrefix;
        this.f = SimulateLaunchActivity.entryType;
        this.c = SimulateLaunchActivity.entryQrParam;
        this.e = dVar.getDid();
        String str = (String) dVar.getHeaderValue("resolution", null, String.class);
        if (k0.d(str)) {
            String[] split = str.split("x");
            this.b = Integer.parseInt(split[0]);
            this.a = Integer.parseInt(split[1]);
        }
        PackageInfo a = a5.a(dVar.n, dVar.n.getApplicationInfo().packageName, 0);
        this.d = a != null ? a.versionName : "1.0.0";
        dVar.D.debug(Collections.singletonList("SimulateLoginTask"), "Simulate task init success", new Object[0]);
    }
}
