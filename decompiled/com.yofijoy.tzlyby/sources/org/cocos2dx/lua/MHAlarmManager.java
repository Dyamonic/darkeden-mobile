package org.cocos2dx.lua;

import android.app.AlarmManager;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Environment;
import android.util.Log;
import androidx.core.app.NotificationCompat;
import com.taptap.sdk.core.internal.event.iap.lib2plus.BillingClientConstants;
import com.taptap.sdk.update.download.core.breakpoint.BreakpointSQLiteKey;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class MHAlarmManager {
    public static void alarmNotify(Context context, String str) {
        int i;
        AlarmManager alarmManager = (AlarmManager) context.getSystemService(NotificationCompat.CATEGORY_ALARM);
        long currentTimeMillis = System.currentTimeMillis();
        try {
            JSONObject jSONObject = new JSONObject(str);
            String optString = jSONObject.optString(BillingClientConstants.PACKAGE_NAME, context.getPackageName());
            String optString2 = jSONObject.optString("ticker", "null");
            String optString3 = jSONObject.optString("title", "null");
            String optString4 = jSONObject.optString("text", "null");
            String optString5 = jSONObject.optString("tag", "noonce");
            long optLong = jSONObject.optLong("triggerOffset", 0L) * 1000;
            long optLong2 = jSONObject.optLong("intervalAtMillis", 0L) * 60000;
            String optString6 = jSONObject.optString(BreakpointSQLiteKey.ID, "0");
            try {
                i = Integer.parseInt(optString6);
            } catch (NumberFormatException unused) {
                i = 0;
            }
            if (optLong > 0) {
                currentTimeMillis += optLong;
            }
            long j = currentTimeMillis;
            Log.d("dxwdxw", "inient MHBroadcastReceiver 1");
            Intent intent = new Intent(context, (Class<?>) MHBroadcastReceiver.class);
            Bundle bundle = new Bundle();
            bundle.putInt("flag", i);
            bundle.putString(BillingClientConstants.PACKAGE_NAME, optString);
            bundle.putString("ticker", optString2);
            bundle.putString("title", optString3);
            bundle.putString("text", optString4);
            bundle.putInt(BreakpointSQLiteKey.ID, i);
            intent.putExtras(bundle);
            PendingIntent broadcast = PendingIntent.getBroadcast(context, i, intent, 134217728);
            if (optString5.equals("once")) {
                Log.d("dxwdxw", String.format("Alarm %s is created. Trigger at %s. Once.", optString6, convertMilliToString(j)));
                appendLog(String.format("Alarm %s is created. Trigger at %s. Once.", optString6, convertMilliToString(j)));
                alarmManager.set(0, j, broadcast);
            } else {
                Log.d("dxwdxw", String.format("Alarm %s is created. Trigger at %s. Repeat %d.", optString6, convertMilliToString(j), Long.valueOf(optLong2)));
                appendLog(String.format("Alarm %s is created. Trigger at %s. Repeat %d.", optString6, convertMilliToString(j), Long.valueOf(optLong2)));
                alarmManager.setRepeating(0, j, optLong2, broadcast);
            }
        } catch (JSONException unused2) {
        }
    }

    public static void cancelNotify(Context context, int i) {
        ((NotificationManager) context.getSystemService("notification")).cancel(i);
        AlarmManager alarmManager = (AlarmManager) context.getSystemService(NotificationCompat.CATEGORY_ALARM);
        PendingIntent broadcast = PendingIntent.getBroadcast(context, i, new Intent(context, (Class<?>) MHBroadcastReceiver.class), 268435456);
        if (broadcast == null) {
            return;
        }
        alarmManager.cancel(broadcast);
        appendLog(String.format("Alarm %s is deleted.", Integer.valueOf(i)));
    }

    public static void cancelNotify(Context context, String str) {
        PendingIntent broadcast;
        AlarmManager alarmManager = (AlarmManager) context.getSystemService(NotificationCompat.CATEGORY_ALARM);
        try {
            JSONArray optJSONArray = new JSONObject(str).optJSONArray("piids");
            if (optJSONArray.length() > 0 && (broadcast = PendingIntent.getBroadcast(context, optJSONArray.getInt(0), new Intent(context, (Class<?>) MHBroadcastReceiver.class), 536870912)) != null) {
                alarmManager.cancel(broadcast);
            }
        } catch (JSONException e) {
            e.printStackTrace();
        }
    }

    public static void appendLog(String str) {
        File file = new File(Environment.getExternalStorageDirectory(), "mh_log.txt");
        if (!file.exists()) {
            try {
                file.createNewFile();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        try {
            String format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date());
            BufferedWriter bufferedWriter = new BufferedWriter(new FileWriter(file, true));
            bufferedWriter.append((CharSequence) (format + " " + str));
            bufferedWriter.newLine();
            bufferedWriter.close();
        } catch (IOException e2) {
            e2.printStackTrace();
        }
    }

    public static String convertMilliToString(long j) {
        return new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date(j));
    }
}
