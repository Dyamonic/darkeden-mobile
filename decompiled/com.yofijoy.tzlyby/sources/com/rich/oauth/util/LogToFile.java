package com.rich.oauth.util;

import android.content.Context;
import android.os.Build;
import android.os.Environment;
import android.util.Log;
import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.locks.ReentrantLock;

/* loaded from: classes.dex */
public class LogToFile {
    public static final char DEBUG = 'd';
    public static final char ERROR = 'e';
    public static final char INFO = 'i';
    public static String TAG = "LogToFile";
    public static final char VERBOSE = 'v';
    public static final char WARN = 'w';
    public static String logPath;
    public static SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd_HH-mm-ss", Locale.US);
    public static Date date = new Date();
    public static ReentrantLock mLock = new ReentrantLock();
    public static ExecutorService mFixedThreadExecutor = null;

    /* loaded from: classes.dex */
    public static class a implements Runnable {
        public final /* synthetic */ char a;
        public final /* synthetic */ String b;
        public final /* synthetic */ String c;

        public a(char c, String str, String str2) {
            this.a = c;
            this.b = str;
            this.c = str2;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                LogToFile.writeToFile2(this.a, this.b, this.c);
            } catch (Exception unused) {
            }
        }
    }

    public static void d(String str, String str2) {
        writeToFile(DEBUG, str, str2);
    }

    public static void e(String str, String str2) {
        writeToFile(ERROR, str, str2);
    }

    public static ExecutorService getExecutor() {
        if (mFixedThreadExecutor == null) {
            synchronized (LogToFile.class) {
                if (mFixedThreadExecutor == null) {
                    mFixedThreadExecutor = Executors.newFixedThreadPool(8);
                }
            }
        }
        return mFixedThreadExecutor;
    }

    public static String getFilePath(Context context) {
        return context.getExternalFilesDir(null).getPath();
    }

    public static String getLogPath(Context context) {
        if (logPath == null) {
            initLogPath(context);
        }
        return logPath;
    }

    public static void i(String str, String str2) {
        writeToFile(INFO, str, str2);
    }

    public static void init(Context context) {
        try {
            logPath = getLogPath(context);
            Log.i(TAG, "logPath: " + logPath);
        } catch (Exception unused) {
        }
    }

    public static void initLogPath(Context context) {
        String str;
        try {
            if (Build.VERSION.SDK_INT >= 29) {
                File externalFilesDir = context.getExternalFilesDir("/AuthLog");
                if (externalFilesDir == null) {
                    return;
                } else {
                    str = externalFilesDir.getPath();
                }
            } else {
                str = Environment.getExternalStorageDirectory() + "/AuthLog";
            }
            logPath = str;
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static void v(String str, String str2) {
        writeToFile(VERBOSE, str, str2);
    }

    public static void w(String str, String str2) {
        writeToFile(WARN, str, str2);
    }

    public static void writeToFile(char c, String str, String str2) {
        getExecutor().execute(new a(c, str, str2));
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x00c3, code lost:
    
        if (r1 == null) goto L6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x00ba, code lost:
    
        r1.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x00b8, code lost:
    
        if (r1 == null) goto L6;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void writeToFile2(char r6, java.lang.String r7, java.lang.String r8) {
        /*
            java.lang.String r0 = " "
            java.util.concurrent.locks.ReentrantLock r1 = com.rich.oauth.util.LogToFile.mLock
            r1.lock()
            r1 = 0
            java.lang.String r2 = com.rich.oauth.util.LogToFile.logPath     // Catch: java.lang.Throwable -> Lb2 java.io.IOException -> Lb4 java.io.FileNotFoundException -> Lbf
            if (r2 != 0) goto L19
            java.lang.String r6 = com.rich.oauth.util.LogToFile.TAG     // Catch: java.lang.Throwable -> Lb2 java.io.IOException -> Lb4 java.io.FileNotFoundException -> Lbf
            java.lang.String r7 = "logPath == null ，未初始化LogToFile"
            android.util.Log.e(r6, r7)     // Catch: java.lang.Throwable -> Lb2 java.io.IOException -> Lb4 java.io.FileNotFoundException -> Lbf
        L13:
            java.util.concurrent.locks.ReentrantLock r6 = com.rich.oauth.util.LogToFile.mLock
            r6.unlock()
            return
        L19:
            java.util.Date r2 = new java.util.Date     // Catch: java.lang.Throwable -> Lb2 java.io.IOException -> Lb4 java.io.FileNotFoundException -> Lbf
            long r3 = java.lang.System.currentTimeMillis()     // Catch: java.lang.Throwable -> Lb2 java.io.IOException -> Lb4 java.io.FileNotFoundException -> Lbf
            r2.<init>(r3)     // Catch: java.lang.Throwable -> Lb2 java.io.IOException -> Lb4 java.io.FileNotFoundException -> Lbf
            com.rich.oauth.util.LogToFile.date = r2     // Catch: java.lang.Throwable -> Lb2 java.io.IOException -> Lb4 java.io.FileNotFoundException -> Lbf
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> Lb2 java.io.IOException -> Lb4 java.io.FileNotFoundException -> Lbf
            r2.<init>()     // Catch: java.lang.Throwable -> Lb2 java.io.IOException -> Lb4 java.io.FileNotFoundException -> Lbf
            java.lang.String r3 = com.rich.oauth.util.LogToFile.logPath     // Catch: java.lang.Throwable -> Lb2 java.io.IOException -> Lb4 java.io.FileNotFoundException -> Lbf
            r2.append(r3)     // Catch: java.lang.Throwable -> Lb2 java.io.IOException -> Lb4 java.io.FileNotFoundException -> Lbf
            java.lang.String r3 = "/log_"
            r2.append(r3)     // Catch: java.lang.Throwable -> Lb2 java.io.IOException -> Lb4 java.io.FileNotFoundException -> Lbf
            java.text.SimpleDateFormat r3 = com.rich.oauth.util.LogToFile.dateFormat     // Catch: java.lang.Throwable -> Lb2 java.io.IOException -> Lb4 java.io.FileNotFoundException -> Lbf
            java.util.Date r4 = new java.util.Date     // Catch: java.lang.Throwable -> Lb2 java.io.IOException -> Lb4 java.io.FileNotFoundException -> Lbf
            r4.<init>()     // Catch: java.lang.Throwable -> Lb2 java.io.IOException -> Lb4 java.io.FileNotFoundException -> Lbf
            java.lang.String r3 = r3.format(r4)     // Catch: java.lang.Throwable -> Lb2 java.io.IOException -> Lb4 java.io.FileNotFoundException -> Lbf
            r4 = 0
            r5 = 10
            java.lang.String r3 = r3.substring(r4, r5)     // Catch: java.lang.Throwable -> Lb2 java.io.IOException -> Lb4 java.io.FileNotFoundException -> Lbf
            r2.append(r3)     // Catch: java.lang.Throwable -> Lb2 java.io.IOException -> Lb4 java.io.FileNotFoundException -> Lbf
            java.lang.String r3 = ".log"
            r2.append(r3)     // Catch: java.lang.Throwable -> Lb2 java.io.IOException -> Lb4 java.io.FileNotFoundException -> Lbf
            java.lang.String r2 = r2.toString()     // Catch: java.lang.Throwable -> Lb2 java.io.IOException -> Lb4 java.io.FileNotFoundException -> Lbf
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> Lb2 java.io.IOException -> Lb4 java.io.FileNotFoundException -> Lbf
            r3.<init>()     // Catch: java.lang.Throwable -> Lb2 java.io.IOException -> Lb4 java.io.FileNotFoundException -> Lbf
            java.text.SimpleDateFormat r4 = com.rich.oauth.util.LogToFile.dateFormat     // Catch: java.lang.Throwable -> Lb2 java.io.IOException -> Lb4 java.io.FileNotFoundException -> Lbf
            java.util.Date r5 = com.rich.oauth.util.LogToFile.date     // Catch: java.lang.Throwable -> Lb2 java.io.IOException -> Lb4 java.io.FileNotFoundException -> Lbf
            java.lang.String r4 = r4.format(r5)     // Catch: java.lang.Throwable -> Lb2 java.io.IOException -> Lb4 java.io.FileNotFoundException -> Lbf
            r3.append(r4)     // Catch: java.lang.Throwable -> Lb2 java.io.IOException -> Lb4 java.io.FileNotFoundException -> Lbf
            r3.append(r0)     // Catch: java.lang.Throwable -> Lb2 java.io.IOException -> Lb4 java.io.FileNotFoundException -> Lbf
            r3.append(r6)     // Catch: java.lang.Throwable -> Lb2 java.io.IOException -> Lb4 java.io.FileNotFoundException -> Lbf
            r3.append(r0)     // Catch: java.lang.Throwable -> Lb2 java.io.IOException -> Lb4 java.io.FileNotFoundException -> Lbf
            r3.append(r7)     // Catch: java.lang.Throwable -> Lb2 java.io.IOException -> Lb4 java.io.FileNotFoundException -> Lbf
            r3.append(r0)     // Catch: java.lang.Throwable -> Lb2 java.io.IOException -> Lb4 java.io.FileNotFoundException -> Lbf
            java.lang.String r6 = "1.5.1"
            r3.append(r6)     // Catch: java.lang.Throwable -> Lb2 java.io.IOException -> Lb4 java.io.FileNotFoundException -> Lbf
            r3.append(r8)     // Catch: java.lang.Throwable -> Lb2 java.io.IOException -> Lb4 java.io.FileNotFoundException -> Lbf
            java.lang.String r6 = "\n"
            r3.append(r6)     // Catch: java.lang.Throwable -> Lb2 java.io.IOException -> Lb4 java.io.FileNotFoundException -> Lbf
            java.lang.String r6 = r3.toString()     // Catch: java.lang.Throwable -> Lb2 java.io.IOException -> Lb4 java.io.FileNotFoundException -> Lbf
            java.io.File r7 = new java.io.File     // Catch: java.lang.Throwable -> Lb2 java.io.IOException -> Lb4 java.io.FileNotFoundException -> Lbf
            java.lang.String r8 = com.rich.oauth.util.LogToFile.logPath     // Catch: java.lang.Throwable -> Lb2 java.io.IOException -> Lb4 java.io.FileNotFoundException -> Lbf
            r7.<init>(r8)     // Catch: java.lang.Throwable -> Lb2 java.io.IOException -> Lb4 java.io.FileNotFoundException -> Lbf
            boolean r8 = r7.exists()     // Catch: java.lang.Throwable -> Lb2 java.io.IOException -> Lb4 java.io.FileNotFoundException -> Lbf
            if (r8 != 0) goto L91
            r7.mkdirs()     // Catch: java.lang.Throwable -> Lb2 java.io.IOException -> Lb4 java.io.FileNotFoundException -> Lbf
        L91:
            java.io.FileOutputStream r7 = new java.io.FileOutputStream     // Catch: java.lang.Throwable -> Lb2 java.io.IOException -> Lb4 java.io.FileNotFoundException -> Lbf
            r8 = 1
            r7.<init>(r2, r8)     // Catch: java.lang.Throwable -> Lb2 java.io.IOException -> Lb4 java.io.FileNotFoundException -> Lbf
            java.io.BufferedWriter r8 = new java.io.BufferedWriter     // Catch: java.lang.Throwable -> Lb2 java.io.IOException -> Lb4 java.io.FileNotFoundException -> Lbf
            java.io.OutputStreamWriter r0 = new java.io.OutputStreamWriter     // Catch: java.lang.Throwable -> Lb2 java.io.IOException -> Lb4 java.io.FileNotFoundException -> Lbf
            r0.<init>(r7)     // Catch: java.lang.Throwable -> Lb2 java.io.IOException -> Lb4 java.io.FileNotFoundException -> Lbf
            r8.<init>(r0)     // Catch: java.lang.Throwable -> Lb2 java.io.IOException -> Lb4 java.io.FileNotFoundException -> Lbf
            r8.write(r6)     // Catch: java.lang.Throwable -> La9 java.io.IOException -> Lac java.io.FileNotFoundException -> Laf
            r8.close()     // Catch: java.io.IOException -> Lc6
            goto L13
        La9:
            r6 = move-exception
            r1 = r8
            goto Lcc
        Lac:
            r6 = move-exception
            r1 = r8
            goto Lb5
        Laf:
            r6 = move-exception
            r1 = r8
            goto Lc0
        Lb2:
            r6 = move-exception
            goto Lcc
        Lb4:
            r6 = move-exception
        Lb5:
            r6.printStackTrace()     // Catch: java.lang.Throwable -> Lb2
            if (r1 == 0) goto L13
        Lba:
            r1.close()     // Catch: java.io.IOException -> Lc6
            goto L13
        Lbf:
            r6 = move-exception
        Lc0:
            r6.printStackTrace()     // Catch: java.lang.Throwable -> Lb2
            if (r1 == 0) goto L13
            goto Lba
        Lc6:
            r6 = move-exception
            r6.printStackTrace()
            goto L13
        Lcc:
            if (r1 == 0) goto Ld6
            r1.close()     // Catch: java.io.IOException -> Ld2
            goto Ld6
        Ld2:
            r7 = move-exception
            r7.printStackTrace()
        Ld6:
            java.util.concurrent.locks.ReentrantLock r7 = com.rich.oauth.util.LogToFile.mLock
            r7.unlock()
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.rich.oauth.util.LogToFile.writeToFile2(char, java.lang.String, java.lang.String):void");
    }
}
