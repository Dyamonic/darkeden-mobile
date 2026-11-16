package com.juhe.juhesdk.utils;

import android.app.Activity;
import android.app.ActivityManager;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Process;
import android.util.Log;
import android.widget.Toast;
import com.juhe.juhesdk.app.JuHeApplication;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public class JuHeToolUtils {
    public static void verifiedDialog(Activity activity) {
        AlertDialog.Builder builder = new AlertDialog.Builder(activity);
        builder.setTitle("提示");
        builder.setMessage("实名认证失败，将退出游戏");
        builder.setPositiveButton("确定", new DialogInterface.OnClickListener() { // from class: com.juhe.juhesdk.utils.JuHeToolUtils.1
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialog, int which) {
                System.exit(0);
            }
        });
        builder.show();
    }

    public static String getOrientation() {
        try {
            return JuHeApplication.getContextObject().getResources().getString(JuHeApplication.getContextObject().getResources().getIdentifier("ORIENTATION", "string", JuHeApplication.getContextObject().getPackageName()));
        } catch (Exception e) {
            Log.d("TAG", "getOrientation: " + e.toString());
            return null;
        }
    }

    public static String getJuHeString(String name) {
        try {
            return JuHeApplication.getContextObject().getResources().getString(JuHeApplication.getContextObject().getResources().getIdentifier(name, "string", JuHeApplication.getContextObject().getPackageName()));
        } catch (Exception unused) {
            return null;
        }
    }

    public static void juHeToast(Activity activity, String msg) {
        Toast.makeText(activity, msg, 1).show();
    }

    public static void juHeExitGame(Context context) {
        try {
            List<Integer> gameProcessId = getGameProcessId(context);
            if (context instanceof Activity) {
                Activity activity = (Activity) context;
                if (!activity.isFinishing()) {
                    activity.finish();
                }
            }
            Iterator<Integer> it = gameProcessId.iterator();
            while (it.hasNext()) {
                int intValue = it.next().intValue();
                if (intValue != 0) {
                    Process.killProcess(intValue);
                }
            }
            System.exit(0);
        } catch (Exception unused) {
        }
    }

    private static List<Integer> getGameProcessId(Context context) {
        ArrayList arrayList = new ArrayList();
        Iterator<ActivityManager.RunningAppProcessInfo> runningAppProcessInfos = getRunningAppProcessInfos(context);
        if (runningAppProcessInfos != null) {
            String packageName = context.getPackageName();
            while (runningAppProcessInfos.hasNext()) {
                ActivityManager.RunningAppProcessInfo next = runningAppProcessInfos.next();
                if (next.processName.equals(packageName)) {
                    arrayList.add(Integer.valueOf(next.pid));
                }
            }
        }
        return arrayList;
    }

    private static Iterator<ActivityManager.RunningAppProcessInfo> getRunningAppProcessInfos(Context context) {
        List<ActivityManager.RunningAppProcessInfo> runningAppProcesses = ((ActivityManager) context.getSystemService("activity")).getRunningAppProcesses();
        if (runningAppProcesses == null || runningAppProcesses.isEmpty()) {
            return null;
        }
        return runningAppProcesses.iterator();
    }
}
