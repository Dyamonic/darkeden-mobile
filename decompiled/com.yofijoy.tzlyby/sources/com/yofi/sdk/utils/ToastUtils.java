package com.yofi.sdk.utils;

import android.R;
import android.app.Activity;
import android.widget.Toast;
import com.hjq.xtoast.XToast;
import com.taptap.sdk.update.download.DownloadTask;
import com.taptap.sdk.update.download.core.breakpoint.BreakpointSQLiteKey;

/* loaded from: classes2.dex */
public class ToastUtils {
    public static void show(Activity activity, String msg) {
        new XToast(activity).setView(activity.getResources().getIdentifier("yofi_toast", "layout", activity.getPackageName())).setDuration(DownloadTask.Builder.DEFAULT_SYNC_BUFFER_INTERVAL_MILLIS).setAnimStyle(R.style.Animation.Toast).setOutsideTouchable(false).setBackgroundDimAmount(0.0f).setText(activity.getResources().getIdentifier("message_text", BreakpointSQLiteKey.ID, activity.getPackageName()), msg).show();
    }

    public static void show(Activity activity, String msg, int duration) {
        new XToast(activity).setView(activity.getResources().getIdentifier("yofi_toast", "layout", activity.getPackageName())).setDuration(duration).setAnimStyle(R.style.Animation.Toast).setOutsideTouchable(false).setBackgroundDimAmount(0.0f).setText(activity.getResources().getIdentifier("message_text", BreakpointSQLiteKey.ID, activity.getPackageName()), msg).show();
    }

    public static void showToast(Activity context, String msg) {
        Toast.makeText(context, msg, 0).show();
    }
}
