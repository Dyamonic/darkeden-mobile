package com.taptap.sdk.moment.legacy.utils;

import android.R;
import android.app.Activity;
import android.app.Application;
import android.app.Fragment;
import android.app.FragmentTransaction;
import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import com.bytedance.applog.aggregation.MetricsSQLiteCacheKt;
import com.taptap.sdk.kit.internal.utils.TapActivityLifecycleTracker;
import com.taptap.sdk.moment.TapMomentInternal;
import com.taptap.sdk.moment.constant.Constant;
import com.taptap.sdk.moment.legacy.entity.MomentComponent;
import com.taptap.sdk.moment.legacy.widget.dialog.LoadingDialog;
import com.taptap.sdk.moment.legacy.widget.dialog.MomentDialog;
import com.taptap.sdk.update.download.core.breakpoint.BreakpointSQLiteKey;
import com.tencent.connect.common.Constants;
import java.io.Serializable;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class TapTapMomentPlatform {
    private static final String MSG_PROGRESS_TIMEOUT = "msg_progress_timeout";
    private static final String PUBLISH_FROM = "sdk";
    private static WeakReference<Activity> activityWeakReference;
    private static WeakReference<LoadingDialog> loadingDialogWeakReference;
    private static LoginResultCallback loginResultCallback;
    private static WeakReference<MomentDialog> momentDialogWeakReference;
    private Fragment current;
    private String type;
    private final String PUBLISH_VIDEO = "video-editor";
    private final String PUBLISH_CONTENT = "moment-editor";

    /* loaded from: classes.dex */
    public interface LoginResultCallback {
        void onFail();

        void onSuccess();
    }

    public static void init(Context context) {
        if (context instanceof Activity) {
            TdsActivityManager.getInstance().setApplication(((Activity) context).getApplication());
        } else if (context instanceof Application) {
            TdsActivityManager.getInstance().setApplication((Application) context);
        }
    }

    public static Activity getActivity() {
        Activity topActivity = TapActivityLifecycleTracker.getTopActivity();
        if (topActivity != null && !topActivity.isDestroyed()) {
            return topActivity;
        }
        WeakReference<Activity> weakReference = activityWeakReference;
        if (weakReference != null) {
            return weakReference.get();
        }
        return null;
    }

    public static void showMomentDialog(Bundle bundle) {
        String string;
        if (getActivity() == null || bundle == null || (string = bundle.getString("type")) == null || !string.equals("moment")) {
            return;
        }
        String string2 = bundle.getString("client_id");
        Serializable serializable = bundle.getSerializable("locale");
        String string3 = bundle.getString(Constants.PARAM_ACCESS_TOKEN);
        String string4 = bundle.getString("token_type");
        String string5 = bundle.getString("mac_algorithm");
        String string6 = bundle.getString("kid");
        String string7 = bundle.getString("mac_key");
        int i = bundle.getInt("show_type", 0);
        String string8 = bundle.getString("data");
        String string9 = bundle.getString(MetricsSQLiteCacheKt.METRICS_PARAMS);
        MomentDialog momentDialog = new MomentDialog();
        Bundle bundle2 = new Bundle();
        bundle2.putString("client_id", string2);
        bundle2.putString(Constants.PARAM_ACCESS_TOKEN, string3);
        bundle2.putString("token_type", string4);
        bundle2.putString("mac_algorithm", string5);
        bundle2.putString("kid", string6);
        bundle2.putString("mac_key", string7);
        try {
            bundle2.putString("url_extra", getUrlExtra(i, string9));
        } catch (JSONException e) {
            e.printStackTrace();
        }
        if (serializable != null) {
            bundle2.putSerializable("locale", serializable);
        }
        bundle2.putString("type", string);
        bundle2.putString("data", string8);
        momentDialog.setArguments(bundle2);
        momentDialog.setStyle(1, R.style.Theme.Dialog);
        FragmentTransaction beginTransaction = getActivity().getFragmentManager().beginTransaction();
        beginTransaction.add(momentDialog, momentDialog.getClass().getSimpleName());
        beginTransaction.commitAllowingStateLoss();
        momentDialogWeakReference = new WeakReference<>(momentDialog);
        SimpleLocalBroadcastManager.getInstance().sendBroadcast(Constant.TAP_MOMENT_APPEAR_ACTION);
    }

    public static void closeMomentDialog() {
        if (isShowing()) {
            momentDialogWeakReference.get().dismiss();
            momentDialogWeakReference.clear();
        }
    }

    /* loaded from: classes.dex */
    static class LoadingProgressHandler extends Handler {
        WeakReference<Activity> activityWeakReference;

        public LoadingProgressHandler(Activity activity) {
            this.activityWeakReference = new WeakReference<>(activity);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            super.handleMessage(message);
            if (message.obj != TapTapMomentPlatform.MSG_PROGRESS_TIMEOUT || this.activityWeakReference.get() == null || TapTapMomentPlatform.loadingDialogWeakReference.get() == null || !((LoadingDialog) TapTapMomentPlatform.loadingDialogWeakReference.get()).isShowing()) {
                return;
            }
            TapTapMomentPlatform.dismissLoading();
        }
    }

    private static void showLoading() {
        if (loadingDialogWeakReference == null) {
            loadingDialogWeakReference = new WeakReference<>(new LoadingDialog(getActivity()));
        }
        if (loadingDialogWeakReference.get() != null && !loadingDialogWeakReference.get().isShowing()) {
            loadingDialogWeakReference.get().show();
        }
        Message obtain = Message.obtain();
        obtain.obj = MSG_PROGRESS_TIMEOUT;
        new LoadingProgressHandler(getActivity()).sendMessageDelayed(obtain, 8000L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void dismissLoading() {
        WeakReference<LoadingDialog> weakReference = loadingDialogWeakReference;
        if (weakReference == null || weakReference.get() == null || !loadingDialogWeakReference.get().isShowing()) {
            return;
        }
        loadingDialogWeakReference.get().dismiss();
    }

    public static void setMomentShowCallback(Runnable runnable) {
        WeakReference<MomentDialog> weakReference = momentDialogWeakReference;
        if (weakReference == null || weakReference.get() == null) {
            return;
        }
        momentDialogWeakReference.get().setResultCallback(runnable);
    }

    public static boolean isShowing() {
        WeakReference<MomentDialog> weakReference = momentDialogWeakReference;
        return (weakReference == null || weakReference.get() == null || !momentDialogWeakReference.get().isShowing()) ? false : true;
    }

    private static String getUrlExtra(int i, String str) throws JSONException {
        String str2 = "";
        if (i == MomentComponent.COMMON.type) {
            return "";
        }
        if (i == MomentComponent.SCENE.type) {
            if (!TextUtils.isEmpty(str)) {
                JSONObject jSONObject = new JSONObject(str);
                if (jSONObject.has(BreakpointSQLiteKey.ID)) {
                    str2 = jSONObject.getString(BreakpointSQLiteKey.ID);
                }
            }
            return "?entry=" + Utils.encodeToBase64(str2);
        }
        String component = MomentComponent.toComponent(i);
        HashMap hashMap = new HashMap();
        hashMap.put("from", PUBLISH_FROM);
        if (!TextUtils.isEmpty(str)) {
            JSONObject jSONObject2 = new JSONObject(str);
            if (jSONObject2.has(BreakpointSQLiteKey.ID)) {
                hashMap.put("openId", Utils.encodeToBase64(jSONObject2.getString(BreakpointSQLiteKey.ID)));
            } else if (jSONObject2.has("tap_id")) {
                hashMap.put(BreakpointSQLiteKey.ID, jSONObject2.getString("tap_id"));
            }
        }
        return "?to=" + Utils.encodeToBase64((TapMomentInternal.INSTANCE.getRegionType() == 0 ? "itkMoments" : "itkmomentsintl") + "://forum/" + component + constructorParams(hashMap));
    }

    private static String constructorParams(HashMap<String, String> hashMap) {
        StringBuilder sb = new StringBuilder();
        for (Map.Entry<String, String> entry : hashMap.entrySet()) {
            if (!TextUtils.isEmpty(entry.getKey()) && !TextUtils.isEmpty(entry.getValue())) {
                if (sb.toString().contains("?")) {
                    sb.append(String.format("&%s=%s", entry.getKey(), entry.getValue()));
                } else {
                    sb.append(String.format("?%s=%s", entry.getKey(), entry.getValue()));
                }
            }
        }
        return sb.toString();
    }
}
