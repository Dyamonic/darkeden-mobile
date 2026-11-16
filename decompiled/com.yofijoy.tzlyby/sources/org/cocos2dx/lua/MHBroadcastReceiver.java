package org.cocos2dx.lua;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import com.taptap.sdk.core.internal.event.iap.lib2plus.BillingClientConstants;
import com.taptap.sdk.update.download.core.breakpoint.BreakpointSQLiteKey;

/* loaded from: classes3.dex */
public class MHBroadcastReceiver extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        Bundle extras = intent.getExtras();
        String string = extras.getString(BillingClientConstants.PACKAGE_NAME);
        String string2 = extras.getString("ticker");
        String string3 = extras.getString("title");
        String string4 = extras.getString("text");
        int i = extras.getInt(BreakpointSQLiteKey.ID);
        Log.d("dxwdxw", "inient onReceive 2");
        Log.i("MHBroadcastReceiver", String.format("Send notification %d. Title:%s", Integer.valueOf(i), string3));
        MHAlarmManager.appendLog(String.format("Send notification %d. Title:%s", Integer.valueOf(i), string3));
        MHNotification.doNotify(context, string, string2, string3, string4, i);
    }
}
