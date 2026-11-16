package com.yofi.sdk.activity;

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Build;
import android.os.Bundle;
import android.os.Environment;
import android.util.Log;
import android.view.KeyEvent;
import android.webkit.DownloadListener;
import android.webkit.MimeTypeMap;
import android.webkit.URLUtil;
import android.webkit.WebView;
import android.widget.ProgressBar;
import androidx.core.content.FileProvider;
import com.taptap.sdk.update.download.core.breakpoint.BreakpointSQLiteKey;
import com.yofi.sdk.imp.middle.YoFiSdkImp;
import com.yofi.sdk.imp.middle.common.Constants;
import com.yofi.sdk.notchlib.NotchScreenManager;
import java.io.File;

/* loaded from: classes2.dex */
public class DownloadView extends Activity {
    private ProgressBar progressBar;

    @Override // android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(getResources().getIdentifier("download", "layout", getPackageName()));
        String string = getIntent().getExtras().getString(Constants.DOWNLOAD_URL);
        this.progressBar = (ProgressBar) findViewById(getResources().getIdentifier("progress_bar_h", BreakpointSQLiteKey.ID, getPackageName()));
        WebView webView = (WebView) findViewById(getResources().getIdentifier("wv_download", BreakpointSQLiteKey.ID, getPackageName()));
        webView.loadUrl(string);
        webView.setDownloadListener(new DownloadListener() { // from class: com.yofi.sdk.activity.DownloadView.1
            @Override // android.webkit.DownloadListener
            public void onDownloadStart(String url, String userAgent, String contentDisposition, String mimeType, long contentLength) {
                new DownloadTask().execute(url, Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOWNLOADS).getAbsolutePath() + File.separator + URLUtil.guessFileName(url, contentDisposition, mimeType));
            }
        });
        NotchScreenManager.getInstance().setDisplayInNotch(this);
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        NotchScreenManager.getInstance().setDisplayInNotch(this);
    }

    /* loaded from: classes2.dex */
    private class DownloadTask extends AsyncTask<String, Integer, Void> {
        private String destPath;
        private String url;

        private DownloadTask() {
        }

        @Override // android.os.AsyncTask
        protected void onPreExecute() {
            Log.d("DownloadTask", "开始下载");
        }

        /* JADX INFO: Access modifiers changed from: protected */
        /* JADX WARN: Removed duplicated region for block: B:32:0x00af  */
        /* JADX WARN: Removed duplicated region for block: B:35:0x00b4 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:46:0x00a4 -> B:17:0x00ab). Please report as a decompilation issue!!! */
        @Override // android.os.AsyncTask
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public java.lang.Void doInBackground(java.lang.String... r13) {
            /*
                r12 = this;
                java.lang.StringBuilder r0 = new java.lang.StringBuilder
                r0.<init>()
                java.lang.String r1 = "doInBackground. url:"
                r0.append(r1)
                r1 = 0
                r2 = r13[r1]
                r0.append(r2)
                java.lang.String r2 = " dest:"
                r0.append(r2)
                r2 = 1
                r3 = r13[r2]
                r0.append(r3)
                java.lang.String r0 = r0.toString()
                java.lang.String r3 = "DownloadTask"
                android.util.Log.d(r3, r0)
                r0 = r13[r1]
                r12.url = r0
                r0 = r13[r2]
                r12.destPath = r0
                r0 = 0
                java.net.URL r4 = new java.net.URL     // Catch: java.lang.Throwable -> L89 java.io.IOException -> L8e
                r13 = r13[r1]     // Catch: java.lang.Throwable -> L89 java.io.IOException -> L8e
                r4.<init>(r13)     // Catch: java.lang.Throwable -> L89 java.io.IOException -> L8e
                java.net.URLConnection r13 = r4.openConnection()     // Catch: java.lang.Throwable -> L89 java.io.IOException -> L8e
                java.net.HttpURLConnection r13 = (java.net.HttpURLConnection) r13     // Catch: java.lang.Throwable -> L89 java.io.IOException -> L8e
                r4 = 15000(0x3a98, float:2.102E-41)
                r13.setConnectTimeout(r4)     // Catch: java.lang.Throwable -> L82 java.io.IOException -> L86
                r13.setReadTimeout(r4)     // Catch: java.lang.Throwable -> L82 java.io.IOException -> L86
                java.io.InputStream r4 = r13.getInputStream()     // Catch: java.lang.Throwable -> L82 java.io.IOException -> L86
                int r5 = r13.getContentLength()     // Catch: java.lang.Throwable -> L82 java.io.IOException -> L86
                java.io.FileOutputStream r6 = new java.io.FileOutputStream     // Catch: java.lang.Throwable -> L82 java.io.IOException -> L86
                java.lang.String r7 = r12.destPath     // Catch: java.lang.Throwable -> L82 java.io.IOException -> L86
                r6.<init>(r7)     // Catch: java.lang.Throwable -> L82 java.io.IOException -> L86
                r7 = 10240(0x2800, float:1.4349E-41)
                byte[] r7 = new byte[r7]     // Catch: java.io.IOException -> L80 java.lang.Throwable -> Lac
                r8 = r1
            L56:
                int r9 = r4.read(r7)     // Catch: java.io.IOException -> L80 java.lang.Throwable -> Lac
                r10 = -1
                if (r9 == r10) goto L74
                r6.write(r7, r1, r9)     // Catch: java.io.IOException -> L80 java.lang.Throwable -> Lac
                int r8 = r8 + r9
                java.lang.Integer[] r9 = new java.lang.Integer[r2]     // Catch: java.io.IOException -> L80 java.lang.Throwable -> Lac
                float r10 = (float) r8     // Catch: java.io.IOException -> L80 java.lang.Throwable -> Lac
                float r11 = (float) r5     // Catch: java.io.IOException -> L80 java.lang.Throwable -> Lac
                float r10 = r10 / r11
                r11 = 1120403456(0x42c80000, float:100.0)
                float r10 = r10 * r11
                int r10 = (int) r10     // Catch: java.io.IOException -> L80 java.lang.Throwable -> Lac
                java.lang.Integer r10 = java.lang.Integer.valueOf(r10)     // Catch: java.io.IOException -> L80 java.lang.Throwable -> Lac
                r9[r1] = r10     // Catch: java.io.IOException -> L80 java.lang.Throwable -> Lac
                r12.publishProgress(r9)     // Catch: java.io.IOException -> L80 java.lang.Throwable -> Lac
                goto L56
            L74:
                r4.close()     // Catch: java.io.IOException -> L80 java.lang.Throwable -> Lac
                if (r13 == 0) goto L7c
                r13.disconnect()
            L7c:
                r6.close()     // Catch: java.io.IOException -> La3
                goto Lab
            L80:
                r1 = move-exception
                goto L91
            L82:
                r1 = move-exception
                r6 = r0
                r0 = r1
                goto Lad
            L86:
                r1 = move-exception
                r6 = r0
                goto L91
            L89:
                r13 = move-exception
                r6 = r0
                r0 = r13
                r13 = r6
                goto Lad
            L8e:
                r1 = move-exception
                r13 = r0
                r6 = r13
            L91:
                java.lang.String r1 = r1.toString()     // Catch: java.lang.Throwable -> Lac
                android.util.Log.e(r3, r1)     // Catch: java.lang.Throwable -> Lac
                if (r13 == 0) goto L9d
                r13.disconnect()
            L9d:
                if (r6 == 0) goto Lab
                r6.close()     // Catch: java.io.IOException -> La3
                goto Lab
            La3:
                r13 = move-exception
                java.lang.String r13 = r13.toString()
                android.util.Log.e(r3, r13)
            Lab:
                return r0
            Lac:
                r0 = move-exception
            Lad:
                if (r13 == 0) goto Lb2
                r13.disconnect()
            Lb2:
                if (r6 == 0) goto Lc0
                r6.close()     // Catch: java.io.IOException -> Lb8
                goto Lc0
            Lb8:
                r13 = move-exception
                java.lang.String r13 = r13.toString()
                android.util.Log.e(r3, r13)
            Lc0:
                throw r0
            */
            throw new UnsupportedOperationException("Method not decompiled: com.yofi.sdk.activity.DownloadView.DownloadTask.doInBackground(java.lang.String[]):java.lang.Void");
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public void onProgressUpdate(Integer... progresses) {
            DownloadView.this.progressBar.setProgress(progresses[0].intValue());
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public void onPostExecute(Void aVoid) {
            Log.v("DownloadTask", "完成下载");
            DownloadView.this.progressBar.setProgress(100);
            File file = new File(this.destPath);
            Intent intent = new Intent("android.intent.action.VIEW");
            String mIMEType = DownloadView.this.getMIMEType(this.url);
            if (Build.VERSION.SDK_INT >= 24) {
                Uri uriForFile = FileProvider.getUriForFile(DownloadView.this, YoFiSdkImp.instance().getPackageName() + ".fileprovider", file);
                intent.addFlags(1);
                intent.addFlags(268435456);
                Log.d("DownloadTask", "mimiType:" + mIMEType + ", uri:" + uriForFile);
                intent.setDataAndType(uriForFile, mIMEType);
            } else {
                Uri fromFile = Uri.fromFile(file);
                Log.d("DownloadTask", "mimiType:" + mIMEType + ", uri:" + fromFile);
                intent.setDataAndType(fromFile, mIMEType);
            }
            DownloadView.this.startActivity(intent);
            DownloadView.this.finish();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String getMIMEType(String url) {
        String fileExtensionFromUrl = MimeTypeMap.getFileExtensionFromUrl(url);
        Log.d("getMIMEType", "extension:" + fileExtensionFromUrl);
        if (fileExtensionFromUrl != null) {
            return MimeTypeMap.getSingleton().getMimeTypeFromExtension(fileExtensionFromUrl);
        }
        return null;
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int keyCode, KeyEvent event) {
        if (keyCode == 4) {
            return false;
        }
        return super.onKeyDown(keyCode, event);
    }
}
