package com.yofi.sdk.utils;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import java.io.ByteArrayOutputStream;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;

/* loaded from: classes2.dex */
public class ImageUtils {
    public static void saveImage(Context context, String fileName, Bitmap bitmap) throws IOException {
        saveImage(context, fileName, bitmap, 100);
    }

    public static void saveImage(Context context, String fileName, Bitmap bitmap, int quality) throws IOException {
        if (bitmap == null || fileName == null || context == null) {
            return;
        }
        FileOutputStream openFileOutput = context.openFileOutput(fileName, 0);
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        bitmap.compress(Bitmap.CompressFormat.PNG, quality, byteArrayOutputStream);
        openFileOutput.write(byteArrayOutputStream.toByteArray());
        openFileOutput.close();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v0, types: [android.content.Context] */
    /* JADX WARN: Type inference failed for: r1v1 */
    /* JADX WARN: Type inference failed for: r1v2 */
    /* JADX WARN: Type inference failed for: r1v3 */
    /* JADX WARN: Type inference failed for: r1v4, types: [java.io.FileInputStream] */
    /* JADX WARN: Type inference failed for: r1v5 */
    /* JADX WARN: Type inference failed for: r1v6, types: [java.io.FileInputStream] */
    /* JADX WARN: Type inference failed for: r1v7, types: [java.io.FileInputStream, java.io.InputStream] */
    public static Bitmap getBitmap(Context context, String str) {
        FileInputStream fileInputStream = null;
        r0 = null;
        r0 = null;
        Bitmap bitmap = null;
        try {
            try {
                context = context.openFileInput(str);
            } catch (Throwable th) {
                th = th;
                fileInputStream = context;
                try {
                    fileInputStream.close();
                } catch (Exception unused) {
                }
                throw th;
            }
        } catch (FileNotFoundException e) {
            e = e;
            context = 0;
        } catch (OutOfMemoryError e2) {
            e = e2;
            context = 0;
        } catch (Throwable th2) {
            th = th2;
            fileInputStream.close();
            throw th;
        }
        try {
            try {
                bitmap = BitmapFactory.decodeStream(context);
            } catch (FileNotFoundException e3) {
                e = e3;
                e.printStackTrace();
                context.close();
            } catch (OutOfMemoryError e4) {
                e = e4;
                e.printStackTrace();
                try {
                    context.close();
                } catch (Exception unused2) {
                }
                context.close();
            }
            context.close();
        } catch (Exception unused3) {
            return bitmap;
        }
    }
}
