package com.yofi.sdk.imp.middle.manager;

import android.app.Activity;
import android.app.DownloadManager;
import android.content.Context;
import android.net.Uri;
import android.os.Environment;
import com.yofi.sdk.utils.ToastUtils;
import java.io.File;

/* loaded from: classes2.dex */
public class Download {
    private Context context;
    private DownloadManager dManager;
    private String filename;
    private String name;
    private String url;

    public Download(Context context, String filename, String url, String name) {
        this.context = context.getApplicationContext();
        this.filename = filename;
        this.url = url;
        this.name = name;
        this.dManager = (DownloadManager) context.getSystemService("download");
        Fileexit();
    }

    private void Fileexit() {
        File file = new File(Environment.getExternalStorageDirectory().getAbsolutePath() + this.filename);
        if (file.exists() && file.isDirectory()) {
            return;
        }
        file.mkdirs();
    }

    public void download() {
        DownloadManager.Request request = new DownloadManager.Request(Uri.parse(this.url));
        request.setDestinationInExternalPublicDir(this.filename, this.name);
        request.setTitle(this.name);
        request.setMimeType("application/vnd.android.package-archive");
        request.setVisibleInDownloadsUi(true);
        request.setShowRunningNotification(true);
        this.dManager.enqueue(request);
        ToastUtils.show((Activity) this.context, "开始下载");
    }
}
