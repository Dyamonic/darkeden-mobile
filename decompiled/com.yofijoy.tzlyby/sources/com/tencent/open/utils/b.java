package com.tencent.open.utils;

import android.app.Activity;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Environment;
import android.os.Handler;
import android.os.Message;
import com.tencent.open.log.SLog;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.lang.ref.WeakReference;
import java.net.HttpURLConnection;
import java.net.URL;

/* compiled from: ProGuard */
/* loaded from: classes2.dex */
public class b {
    private static String c;
    private String a;
    private c b;
    private long d;
    private Handler e;
    private WeakReference<Activity> f;
    private Runnable g = new Runnable() { // from class: com.tencent.open.utils.b.2
        @Override // java.lang.Runnable
        public void run() {
            boolean z;
            SLog.v("AsynLoadImg", "saveFileRunnable:");
            String str = "share_qq_" + k.f(b.this.a) + ".jpg";
            String str2 = b.c + str;
            File file = new File(str2);
            Message obtainMessage = b.this.e.obtainMessage();
            if (!file.exists()) {
                Bitmap a = b.a(b.this.a);
                if (a != null) {
                    z = b.this.a(a, str);
                } else {
                    SLog.v("AsynLoadImg", "saveFileRunnable:get bmp fail---");
                    z = false;
                }
                if (z) {
                    obtainMessage.arg1 = 0;
                    obtainMessage.obj = str2;
                } else {
                    obtainMessage.arg1 = 1;
                }
                SLog.v("AsynLoadImg", "file not exists: download time:" + (System.currentTimeMillis() - b.this.d));
            } else {
                obtainMessage.arg1 = 0;
                obtainMessage.obj = str2;
                SLog.v("AsynLoadImg", "file exists: time:" + (System.currentTimeMillis() - b.this.d));
            }
            b.this.e.sendMessage(obtainMessage);
        }
    };

    public b(Activity activity) {
        this.f = new WeakReference<>(activity);
        this.e = new Handler(activity.getMainLooper()) { // from class: com.tencent.open.utils.b.1
            @Override // android.os.Handler
            public void handleMessage(Message message) {
                SLog.v("AsynLoadImg", "handleMessage:" + message.arg1);
                if (message.arg1 == 0) {
                    b.this.b.a(message.arg1, (String) message.obj);
                } else {
                    b.this.b.a(message.arg1, (String) null);
                }
            }
        };
    }

    public void a(String str, c cVar) {
        SLog.v("AsynLoadImg", "--save---");
        if (str == null || str.equals("")) {
            cVar.a(1, (String) null);
            return;
        }
        if (!k.b()) {
            cVar.a(2, (String) null);
            return;
        }
        if (this.f.get() != null) {
            Activity activity = this.f.get();
            File externalFilesDir = activity.getExternalFilesDir("Images");
            File externalStorageDirectory = Environment.getExternalStorageDirectory();
            if (externalFilesDir == null) {
                SLog.e("AsynLoadImg", "externalImageFile is null");
                cVar.a(2, (String) null);
                return;
            } else {
                StringBuilder sb = new StringBuilder();
                sb.append(h.c(activity) ? externalFilesDir.getAbsolutePath() : externalStorageDirectory.getAbsolutePath());
                sb.append("/tmp/");
                c = sb.toString();
            }
        }
        this.d = System.currentTimeMillis();
        this.a = str;
        this.b = cVar;
        new Thread(this.g).start();
    }

    public boolean a(Bitmap bitmap, String str) {
        BufferedOutputStream bufferedOutputStream;
        String str2 = c;
        BufferedOutputStream bufferedOutputStream2 = null;
        try {
            try {
                File file = new File(str2);
                if (!file.exists()) {
                    file.mkdir();
                }
                SLog.v("AsynLoadImg", "saveFile:" + str);
                bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(new File(str2 + str)));
            } catch (IOException e) {
                e = e;
            }
        } catch (Throwable th) {
            th = th;
        }
        try {
            bitmap.compress(Bitmap.CompressFormat.JPEG, 80, bufferedOutputStream);
            bufferedOutputStream.flush();
            try {
                bufferedOutputStream.close();
                return true;
            } catch (IOException e2) {
                e2.printStackTrace();
                return true;
            }
        } catch (IOException e3) {
            e = e3;
            bufferedOutputStream2 = bufferedOutputStream;
            e.printStackTrace();
            SLog.e("AsynLoadImg", "saveFile bmp fail---", e);
            if (bufferedOutputStream2 != null) {
                try {
                    bufferedOutputStream2.close();
                } catch (IOException e4) {
                    e4.printStackTrace();
                }
            }
            return false;
        } catch (Throwable th2) {
            th = th2;
            bufferedOutputStream2 = bufferedOutputStream;
            if (bufferedOutputStream2 != null) {
                try {
                    bufferedOutputStream2.close();
                } catch (IOException e5) {
                    e5.printStackTrace();
                }
            }
            throw th;
        }
    }

    public static Bitmap a(String str) {
        SLog.v("AsynLoadImg", "getbitmap:" + str);
        try {
            HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
            httpURLConnection.setDoInput(true);
            httpURLConnection.connect();
            InputStream inputStream = httpURLConnection.getInputStream();
            Bitmap decodeStream = BitmapFactory.decodeStream(inputStream);
            inputStream.close();
            SLog.v("AsynLoadImg", "image download finished." + str);
            return decodeStream;
        } catch (IOException e) {
            e.printStackTrace();
            SLog.v("AsynLoadImg", "getbitmap bmp fail---");
            return null;
        } catch (OutOfMemoryError e2) {
            e2.printStackTrace();
            SLog.v("AsynLoadImg", "getbitmap bmp fail---");
            return null;
        }
    }
}
