package com.taptap.sdk.moment.legacy.utils;

import android.content.Context;
import android.os.Build;
import android.os.Environment;
import com.taptap.sdk.moment.legacy.entity.ImageSuffix;
import com.taptap.sdk.moment.legacy.exception.NetworkException;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.Random;

/* loaded from: classes.dex */
public class NetSaveImageHelper {
    public static final int CONNECTION_TIMEOUT = 6000;
    private static final String MEDIA_DIR = "Moment_Media";

    public static void download(final Context context, final String str, final SaveImageCallback saveImageCallback) {
        Async.runOnPool(new Runnable() { // from class: com.taptap.sdk.moment.legacy.utils.NetSaveImageHelper.1
            @Override // java.lang.Runnable
            public void run() {
                try {
                    NetSaveImageHelper.saveImageToFile(context, str, saveImageCallback);
                } catch (NetworkException | IOException e) {
                    e.printStackTrace();
                }
            }
        });
    }

    private static HttpURLConnection createDownloadImageUrlConnection(String str) throws IOException, NetworkException {
        HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
        httpURLConnection.setConnectTimeout(CONNECTION_TIMEOUT);
        httpURLConnection.setDoInput(true);
        httpURLConnection.setUseCaches(false);
        return httpURLConnection;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void saveImageToFile(Context context, String str, SaveImageCallback saveImageCallback) throws IOException, NetworkException {
        writeToFile(context, createDownloadImageUrlConnection(str).getInputStream(), str, saveImageCallback);
    }

    private static void writeToFile(Context context, InputStream inputStream, String str, SaveImageCallback saveImageCallback) {
        FileInputStream fileInputStream;
        FileOutputStream fileOutputStream;
        File file;
        FileInputStream fileInputStream2;
        byte[] bArr = new byte[1024];
        FileOutputStream fileOutputStream2 = null;
        try {
            file = new File(constructorMediaFileDir(context), Utils.encodeToBase64(str));
            fileOutputStream = new FileOutputStream(file);
            while (true) {
                try {
                    int read = inputStream.read(bArr);
                    if (read == -1) {
                        break;
                    }
                    fileOutputStream.write(bArr, 0, read);
                    fileOutputStream.flush();
                } catch (Exception e) {
                    e = e;
                    fileInputStream = null;
                } catch (Throwable th) {
                    th = th;
                    fileInputStream = null;
                    fileOutputStream2 = fileOutputStream;
                    Utils.closeQuietly(fileOutputStream2);
                    Utils.closeQuietly(fileInputStream);
                    Utils.closeQuietly(inputStream);
                    throw th;
                }
            }
            fileInputStream2 = new FileInputStream(file);
        } catch (Exception e2) {
            e = e2;
            fileOutputStream = null;
            fileInputStream = null;
        } catch (Throwable th2) {
            th = th2;
            fileInputStream = null;
        }
        try {
            File renameFile = renameFile(file, fileInputStream2);
            notifyResult(saveImageCallback, renameFile.exists(), renameFile);
            Utils.closeQuietly(fileOutputStream);
            Utils.closeQuietly(fileInputStream2);
        } catch (Exception e3) {
            fileInputStream = fileInputStream2;
            e = e3;
            try {
                e.printStackTrace();
                notifyResult(saveImageCallback, false, null);
                Utils.closeQuietly(fileOutputStream);
                Utils.closeQuietly(fileInputStream);
                Utils.closeQuietly(inputStream);
            } catch (Throwable th3) {
                th = th3;
                fileOutputStream2 = fileOutputStream;
                Utils.closeQuietly(fileOutputStream2);
                Utils.closeQuietly(fileInputStream);
                Utils.closeQuietly(inputStream);
                throw th;
            }
        } catch (Throwable th4) {
            fileOutputStream2 = fileOutputStream;
            fileInputStream = fileInputStream2;
            th = th4;
            Utils.closeQuietly(fileOutputStream2);
            Utils.closeQuietly(fileInputStream);
            Utils.closeQuietly(inputStream);
            throw th;
        }
        Utils.closeQuietly(inputStream);
    }

    private static void notifyResult(final SaveImageCallback saveImageCallback, final boolean z, final File file) {
        Async.runOnUIThread(new Runnable() { // from class: com.taptap.sdk.moment.legacy.utils.NetSaveImageHelper.2
            @Override // java.lang.Runnable
            public void run() {
                SaveImageCallback.this.callback(z, file);
            }
        });
    }

    private static File constructorMediaFileDir(Context context) {
        String absolutePath;
        if (Build.VERSION.SDK_INT >= 29) {
            absolutePath = context.getExternalFilesDir(Environment.DIRECTORY_PICTURES) + "";
        } else {
            absolutePath = Environment.getExternalStorageDirectory().getAbsolutePath();
        }
        File file = new File(absolutePath, MEDIA_DIR);
        if (!file.exists()) {
            file.mkdir();
        }
        return file;
    }

    private static File renameFile(File file, FileInputStream fileInputStream) throws IOException {
        byte[] bArr = new byte[10];
        fileInputStream.read(bArr, 0, 10);
        File file2 = new File(file.getAbsoluteFile() + String.valueOf(new Random().nextInt(1000)) + ImageSuffix.readType(bArr));
        file.renameTo(file2);
        file.deleteOnExit();
        return file2;
    }
}
