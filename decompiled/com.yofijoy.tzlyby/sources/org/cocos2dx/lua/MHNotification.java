package org.cocos2dx.lua;

import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.util.Log;
import androidx.core.app.NotificationCompat;

/* loaded from: classes3.dex */
public class MHNotification {
    public static void doNotify(Context context, String str, String str2, String str3, String str4, int i) {
        Log.d("dxwdxw", "inient doNotify 3");
        NotificationManager notificationManager = (NotificationManager) context.getSystemService("notification");
        NotificationCompat.Builder builder = new NotificationCompat.Builder(context);
        builder.setTicker(str2);
        builder.setContentTitle(str3);
        builder.setContentText(str4);
        builder.setAutoCancel(true);
        try {
            Log.d("dxwdxw", "inient doNotify 4");
            Log.v("MyService", str);
            Log.v("MyService", Class.forName(str).toString());
            Intent intent = new Intent(context, Class.forName(str));
            intent.setAction("android.intent.action.MAIN");
            intent.addCategory("android.intent.category.LAUNCHER");
            intent.setFlags(67108864);
            intent.addFlags(536870912);
            builder.setContentIntent(PendingIntent.getActivity(context, 0, intent, 1073741824));
            Notification build = builder.build();
            build.defaults = 1;
            notificationManager.notify(i + 100, build);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }
}
