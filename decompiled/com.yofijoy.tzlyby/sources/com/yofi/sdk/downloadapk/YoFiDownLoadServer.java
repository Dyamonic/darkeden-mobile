package com.yofi.sdk.downloadapk;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import com.taptap.sdk.core.internal.event.iap.lib2plus.BillingClientConstants;

/* loaded from: classes2.dex */
public class YoFiDownLoadServer extends Service {
    public static String downLoadAction = "yofi.download.server";
    DownLoadApk apk;

    @Override // android.app.Service
    public IBinder onBind(Intent arg0) {
        return null;
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int flags, int startId) {
        DownLoadApk downLoadApk = new DownLoadApk(this, intent.getStringExtra("url"), intent.getStringExtra(BillingClientConstants.PACKAGE_NAME));
        this.apk = downLoadApk;
        downLoadApk.DownloadFile();
        return super.onStartCommand(intent, flags, startId);
    }

    @Override // android.app.Service
    public void onDestroy() {
        this.apk.unregisterReceiver();
        super.onDestroy();
    }
}
