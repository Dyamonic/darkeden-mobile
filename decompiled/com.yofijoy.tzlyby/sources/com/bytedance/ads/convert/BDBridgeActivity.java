package com.bytedance.ads.convert;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import com.bytedance.ads.convert.IClickIdReceiver;
import com.bytedance.ads.convert.utils.BusinessConstant;
import com.bytedance.ads.convert.utils.ClickIdHeaderTimelyCallback;
import com.bytedance.ads.convert.utils.ClickIdSPUtil;
import com.bytedance.applog.AppLog;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class BDBridgeActivity extends Activity {
    private static final String START_ONLY_FOR_ANDROID = "start_only_for_android";
    private static final String TAG = "Convert:BridgeActivity";

    private void autoJump() {
        Log.i(TAG, "auto jump by bridge");
        if (jumpByDeeplink()) {
            return;
        }
        jumpByPackage();
    }

    private boolean jumpByDeeplink() {
        String stringExtra = getIntent().getStringExtra(BusinessConstant.INTENT_KEY_OPEN_URL);
        if (TextUtils.isEmpty(stringExtra)) {
            return false;
        }
        Uri parse = Uri.parse(stringExtra);
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setData(parse);
        intent.addFlags(268435456);
        intent.putExtra(BusinessConstant.INTENT_KEY_OPEN_URL, stringExtra);
        intent.putExtra(START_ONLY_FOR_ANDROID, true);
        intent.putExtra("is_convert_bridge", true);
        try {
            startActivity(intent);
            Log.i(TAG, "jumpByDeeplink: ");
            return true;
        } catch (ActivityNotFoundException e) {
            Log.e(TAG, "jumpByDeeplink: ", e);
            return false;
        }
    }

    private void jumpByPackage() {
        String packageName = getPackageName();
        Intent launchIntentForPackage = getPackageManager().getLaunchIntentForPackage(packageName);
        launchIntentForPackage.setPackage(null);
        launchIntentForPackage.addFlags(2097152);
        launchIntentForPackage.addFlags(268435456);
        launchIntentForPackage.putExtra("is_convert_bridge", true);
        startActivity(launchIntentForPackage);
        Log.i(TAG, "jumpByPackage: " + packageName);
    }

    private void reportAndSaveClickId() {
        Intent intent = getIntent();
        String stringExtra = intent.getStringExtra("click_id");
        String stringExtra2 = intent.getStringExtra("click_id_nature");
        String stringExtra3 = intent.getStringExtra("hume_channel_id");
        boolean z = !TextUtils.isEmpty(stringExtra);
        if (z) {
            AppLog.registerHeaderCustomCallback(new ClickIdHeaderTimelyCallback(stringExtra, AppLog.getHeaderCustomCallback()));
            ClickIdSPUtil.saveByPriority(this, new BDConvertInfo(stringExtra, stringExtra2, stringExtra3, IClickIdReceiver.ClickIdFrom.Jump));
        }
        String stringExtra4 = intent.getStringExtra("intent_extra");
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(BusinessConstant.PARAMS_HAS_CLICKID, z);
            jSONObject.put(BusinessConstant.PARAMS_SOURCE, 1);
            jSONObject.put("intent_extra", stringExtra4);
        } catch (JSONException e) {
            Log.e(TAG, "reportAndSaveClickId: ", e);
        }
        AppLog.onEventV3(BusinessConstant.LABEL, jSONObject);
        Log.d(TAG, "reportAndSaveClickId: " + stringExtra + " " + stringExtra4);
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        Log.i(TAG, "onCreate: BDBridgeActivity");
        try {
            reportAndSaveClickId();
        } catch (Throwable th) {
            Log.e(TAG, "onCreate: ", th);
        }
        autoJump();
        finish();
        super.onCreate(bundle);
    }
}
