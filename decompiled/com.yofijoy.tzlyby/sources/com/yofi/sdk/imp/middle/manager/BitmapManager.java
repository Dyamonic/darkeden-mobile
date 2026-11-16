package com.yofi.sdk.imp.middle.manager;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.os.Handler;
import android.os.Message;
import android.widget.ImageView;
import com.taptap.sdk.moment.constant.Constant;
import com.yofi.sdk.utils.FileUtils;
import com.yofi.sdk.utils.ImageUtils;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.lang.ref.SoftReference;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.WeakHashMap;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* loaded from: classes2.dex */
public class BitmapManager {
    private Bitmap defaultBmp;
    public static HashMap<String, SoftReference<Bitmap>> cache = new HashMap<>();
    private static ExecutorService pool = Executors.newFixedThreadPool(5);
    private static Map<ImageView, String> imageViews = Collections.synchronizedMap(new WeakHashMap());

    public BitmapManager() {
    }

    public BitmapManager(Bitmap def) {
        this.defaultBmp = def;
    }

    public void setDefaultBmp(Bitmap bmp) {
        this.defaultBmp = bmp;
    }

    public void loadBitmap(String url, ImageView imageView) {
        loadBitmap(url, imageView, this.defaultBmp, 0, 0);
    }

    public void loadBitmap(String url, ImageView imageView, Bitmap defaultBmp) {
        loadBitmap(url, imageView, defaultBmp, 0, 0);
    }

    public void loadBitmap(String url, ImageView imageView, Bitmap defaultBmp, int width, int height) {
        imageViews.put(imageView, url);
        Bitmap bitmapFromCache = getBitmapFromCache(url);
        if (bitmapFromCache != null) {
            imageView.setImageBitmap(bitmapFromCache);
        } else {
            imageView.setImageBitmap(defaultBmp);
            queueJob(url, imageView, width, height);
        }
    }

    public Bitmap getBitmapFromCache(String url) {
        if (cache.containsKey(url)) {
            return cache.get(url).get();
        }
        return null;
    }

    public void queueJob(final String url, final ImageView imageView, final int width, final int height) {
        final Handler handler = new Handler() { // from class: com.yofi.sdk.imp.middle.manager.BitmapManager.1
            @Override // android.os.Handler
            public void handleMessage(Message msg) {
                String str = (String) BitmapManager.imageViews.get(imageView);
                if (str == null || !str.equals(url) || msg.obj == null) {
                    return;
                }
                imageView.setImageBitmap((Bitmap) msg.obj);
                try {
                    ImageUtils.saveImage(imageView.getContext(), FileUtils.getFileName(url), (Bitmap) msg.obj);
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        };
        pool.execute(new Runnable() { // from class: com.yofi.sdk.imp.middle.manager.BitmapManager.2
            @Override // java.lang.Runnable
            public void run() {
                Message obtain = Message.obtain();
                obtain.obj = BitmapManager.this.downloadBitmap(url, width, height);
                handler.sendMessage(obtain);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Bitmap downloadBitmap(String url, int width, int height) {
        Bitmap bitmap = null;
        try {
            HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(url).openConnection();
            httpURLConnection.setRequestMethod("GET");
            httpURLConnection.setReadTimeout(Constant.CALLBACK_CODE_GET_NOTICE_SUCCESS);
            InputStream inputStream = httpURLConnection.getInputStream();
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            try {
                byte[] bArr = new byte[1024];
                while (true) {
                    int read = inputStream.read(bArr);
                    if (read == -1) {
                        break;
                    }
                    byteArrayOutputStream.write(bArr, 0, read);
                }
            } catch (IOException e) {
                e.printStackTrace();
            }
            byte[] byteArray = byteArrayOutputStream.toByteArray();
            bitmap = BitmapFactory.decodeByteArray(byteArray, 0, byteArray.length);
            if (width > 0 && height > 0) {
                bitmap = Bitmap.createScaledBitmap(bitmap, width, height, true);
            }
            cache.put(url, new SoftReference<>(bitmap));
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        return bitmap;
    }

    public static Bitmap toRoundCorner(Bitmap bitmap, int pixels) {
        Bitmap createBitmap = Bitmap.createBitmap(bitmap.getWidth(), bitmap.getHeight(), Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(createBitmap);
        Paint paint = new Paint();
        Rect rect = new Rect(0, 0, bitmap.getWidth(), bitmap.getHeight());
        RectF rectF = new RectF(rect);
        float f = pixels;
        paint.setAntiAlias(true);
        canvas.drawARGB(0, 0, 0, 0);
        paint.setColor(-12434878);
        canvas.drawRoundRect(rectF, f, f, paint);
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_IN));
        canvas.drawBitmap(bitmap, rect, rect, paint);
        return createBitmap;
    }
}
