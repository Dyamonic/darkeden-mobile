package com.yofi.sdk.downloadapk;

import android.app.Activity;
import android.app.DownloadManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.database.Cursor;
import android.net.Uri;
import android.os.Environment;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
import androidx.core.app.NotificationCompat;
import com.yofi.sdk.utils.ToastUtils;
import java.io.File;

/* loaded from: classes2.dex */
public class DownLoadApk {
    Context context;
    DownloadManager downManager;
    String file;
    String fileName;
    BroadcastReceiver receiver;
    private SharedPreferences sp;
    private String url;
    String path = "/YOFISDK";
    Handler handler = new Handler() { // from class: com.yofi.sdk.downloadapk.DownLoadApk.1
        @Override // android.os.Handler
        public void dispatchMessage(Message msg) {
            super.dispatchMessage(msg);
            int i = msg.what;
            if (i == 1) {
                ToastUtils.show((Activity) DownLoadApk.this.context, "apk正在下载安装中!");
            } else {
                if (i != 2) {
                    return;
                }
                ToastUtils.show((Activity) DownLoadApk.this.context, "对不起请插入存储卡");
            }
        }
    };

    public DownLoadApk(Context context, String url, String packageName) {
        this.context = context;
        this.url = url;
        this.sp = context.getSharedPreferences("yofidownload", 0);
        DownloadCompleteReceiver downloadCompleteReceiver = new DownloadCompleteReceiver();
        this.receiver = downloadCompleteReceiver;
        context.registerReceiver(downloadCompleteReceiver, new IntentFilter("android.intent.action.DOWNLOAD_COMPLETE"));
    }

    public void DownloadFile() {
        if (!Environment.getExternalStorageState().equals("mounted")) {
            this.handler.sendEmptyMessage(2);
        } else {
            downAPKToId();
        }
    }

    public void downAPKToId() {
        this.file = Environment.getExternalStorageDirectory().getPath() + this.path;
        File file = new File(this.file);
        if (!file.exists() && !file.isDirectory()) {
            file.mkdirs();
        }
        String[] split = this.url.split("/");
        this.fileName = split[split.length - 1];
        Long valueOf = Long.valueOf(this.sp.getLong("url", 0L));
        if (valueOf.longValue() != 0) {
            queryDownloadStatus(valueOf.longValue());
            return;
        }
        this.downManager = (DownloadManager) this.context.getSystemService("download");
        DownloadManager.Request request = new DownloadManager.Request(Uri.parse(this.url));
        request.setAllowedNetworkTypes(3);
        request.setAllowedOverRoaming(false);
        request.setShowRunningNotification(true);
        request.setTitle("版本升级");
        request.setDescription(this.fileName + "下载版本中");
        request.setVisibleInDownloadsUi(true);
        request.setDestinationInExternalPublicDir("/" + this.path + "/", this.fileName);
        this.sp.edit().putLong(this.url, this.downManager.enqueue(request)).commit();
    }

    public void queryDownloadStatus(long ad_id) {
        DownloadManager.Query query = new DownloadManager.Query();
        query.setFilterById(ad_id);
        Cursor query2 = this.downManager.query(query);
        if (query2.moveToFirst()) {
            int i = query2.getInt(query2.getColumnIndex(NotificationCompat.CATEGORY_STATUS));
            if (i != 1) {
                if (i != 2) {
                    if (i != 4) {
                        if (i != 8) {
                            if (i != 16) {
                                return;
                            }
                            Log.v("down", "STATUS_FAILED");
                            this.downManager.remove(ad_id);
                            return;
                        }
                        this.sp.edit().putLong(this.url, 0L).commit();
                        Log.v("down", "下载完成");
                        this.context.startActivity(getFileIntent(new File(this.file + "/" + this.fileName)));
                        this.context.stopService(new Intent(YoFiDownLoadServer.downLoadAction));
                        return;
                    }
                    Log.v("down", "STATUS_PAUSED");
                }
                Log.v("down", "STATUS_RUNNING");
                this.handler.sendEmptyMessage(1);
            }
            Log.v("down", "STATUS_PENDING");
            Log.v("down", "STATUS_RUNNING");
            this.handler.sendEmptyMessage(1);
        }
    }

    /* loaded from: classes2.dex */
    public class DownloadCompleteReceiver extends BroadcastReceiver {
        public DownloadCompleteReceiver() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            DownLoadApk.this.queryDownloadStatus(Long.valueOf(intent.getLongExtra("extra_download_id", 0L)).longValue());
        }
    }

    public void unregisterReceiver() {
        this.context.unregisterReceiver(this.receiver);
    }

    public Intent getFileIntent(File file) {
        Uri fromFile = Uri.fromFile(file);
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.addCategory("android.intent.category.DEFAULT");
        intent.addFlags(268435456);
        intent.setDataAndType(fromFile, "application/vnd.android.package-archive");
        return intent;
    }
}
