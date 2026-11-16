package com.bytedance.applog.simulate;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.util.ArrayMap;
import android.widget.TextView;
import com.bytedance.applog.AppLog;
import com.bytedance.applog.AppLogManager;
import com.bytedance.applog.IAppLogInstance;
import com.bytedance.applog.IPageMeta;
import com.bytedance.applog.R;
import com.bytedance.applog.annotation.PageMeta;
import com.bytedance.applog.log.IAppLogLogger;
import com.bytedance.applog.log.LoggerImpl;
import com.bytedance.bdtracker.d;
import com.bytedance.bdtracker.k0;
import com.bytedance.bdtracker.v3;
import java.lang.reflect.Field;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

@PageMeta(path = "/simulateLaunch", title = "圈选/埋点验证")
/* loaded from: classes.dex */
public class SimulateLaunchActivity extends Activity implements IPageMeta {
    public static final String BIND_QUERY = "bind_query";
    public static final String DEBUG_LOG = "debug_log";
    public static final String KEY_URL_PREFIX = "url_prefix";
    public static final String KEY_URL_PREFIX_NO_QR = "url_prefix_no_qr";
    public static final int MODE_NO_QR = 1;
    public static final int MODE_QR = 0;
    public static String entryAppId = "";
    public static int entryMode = 0;
    public static String entryQrParam = "";
    public static String entryType = "";
    public static String entryUrlPrefix = "";
    public TextView a;

    public static void startSimulatorWithoutQR(Context context, String str) {
        startSimulatorWithoutQR(context, AppLog.getAppId(), str);
    }

    public static void startSimulatorWithoutQR(Context context, String str, String str2) {
        Intent intent = new Intent(context, (Class<?>) SimulateLaunchActivity.class);
        intent.putExtra(KEY_URL_PREFIX_NO_QR, str2);
        intent.putExtra("aid_no_qr", str);
        context.startActivity(intent);
    }

    public final IAppLogLogger a() {
        IAppLogLogger logger = LoggerImpl.getLogger(entryAppId);
        return logger != null ? logger : LoggerImpl.global();
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        TextView textView;
        String str;
        boolean z;
        Intent launchIntentForPackage;
        Map map;
        super.onCreate(bundle);
        setContentView(R.layout.applog_activity_simulate);
        this.a = (TextView) findViewById(R.id.text_tip);
        Intent intent = getIntent();
        Uri data = intent.getData();
        if (intent.hasExtra(KEY_URL_PREFIX_NO_QR) && intent.hasExtra("aid_no_qr")) {
            entryMode = 1;
            entryUrlPrefix = intent.getStringExtra(KEY_URL_PREFIX_NO_QR);
            entryAppId = intent.getStringExtra("aid_no_qr");
        } else if (data != null) {
            entryMode = 0;
            entryAppId = data.getQueryParameter("aid");
            entryQrParam = data.getQueryParameter("qr_param");
            entryUrlPrefix = data.getQueryParameter(KEY_URL_PREFIX);
            String queryParameter = data.getQueryParameter("type");
            entryType = queryParameter;
            if (!DEBUG_LOG.equals(queryParameter)) {
                textView = this.a;
                str = "启动失败：type参数错误";
            } else if (k0.c(entryUrlPrefix)) {
                textView = this.a;
                str = "启动失败：缺少url_prefix参数";
            }
            textView.setText(str);
            return;
        }
        IAppLogInstance appLogManager = AppLogManager.getInstance(entryAppId);
        if (appLogManager != null && appLogManager.hasStarted()) {
            a().debug(Collections.singletonList("SimulateLaunchActivity"), "AppLog has started with appId:{}", entryAppId);
            new v3((d) appLogManager).execute(new Void[0]);
        }
        try {
            Class<?> cls = Class.forName("android.app.ActivityThread");
            Object invoke = cls.getMethod("currentActivityThread", new Class[0]).invoke(null, new Object[0]);
            Field declaredField = cls.getDeclaredField("mActivities");
            declaredField.setAccessible(true);
            map = Build.VERSION.SDK_INT < 19 ? (HashMap) declaredField.get(invoke) : (ArrayMap) declaredField.get(invoke);
        } catch (Throwable th) {
            a().debug(Collections.singletonList("SimulateLaunchActivity"), "Check has activity failed", th);
        }
        if (map != null) {
            if (map.size() > 0) {
                z = true;
                a().debug(Collections.singletonList("SimulateLaunchActivity"), "Simulator onCreate appId: {}, urlPrefix: {}, mode: {}, params: {}, activity exists: {}", entryAppId, entryUrlPrefix, Integer.valueOf(entryMode), entryQrParam, Boolean.valueOf(z));
                if (!z && (launchIntentForPackage = getPackageManager().getLaunchIntentForPackage(getApplicationInfo().packageName)) != null) {
                    launchIntentForPackage.setPackage(null);
                    startActivity(launchIntentForPackage);
                }
                finish();
            }
        }
        z = false;
        a().debug(Collections.singletonList("SimulateLaunchActivity"), "Simulator onCreate appId: {}, urlPrefix: {}, mode: {}, params: {}, activity exists: {}", entryAppId, entryUrlPrefix, Integer.valueOf(entryMode), entryQrParam, Boolean.valueOf(z));
        if (!z) {
            launchIntentForPackage.setPackage(null);
            startActivity(launchIntentForPackage);
        }
        finish();
    }

    @Override // android.app.Activity
    public void onDestroy() {
        super.onDestroy();
    }

    @Override // com.bytedance.applog.IPageMeta
    public JSONObject pageProperties() {
        try {
            return new JSONObject().put("class_name", "SimulateLaunchActivity");
        } catch (JSONException e) {
            a().debug(Collections.singletonList("SimulateLaunchActivity"), "JSON handle failed", e);
            return null;
        }
    }

    @Override // com.bytedance.applog.IPageMeta
    public String path() {
        return "/simulateLaunch";
    }

    @Override // com.bytedance.applog.IPageMeta
    public String title() {
        return "圈选/埋点验证";
    }
}
