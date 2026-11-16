package com.juhe.juhesdk.utils;

import android.content.Context;
import android.content.pm.PackageManager;
import android.hardware.Sensor;
import android.hardware.SensorManager;
import android.os.Build;
import android.util.DisplayMetrics;
import android.util.Log;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Iterator;
import java.util.Locale;
import kotlin.UByte;

/* loaded from: classes.dex */
public class NoPermissionDeviceFingerprint {
    private static final String EXT_STORAGE_FILE = ".fingerprint";
    private static final String FP_KEY = "fp_data";
    private static final String SHARED_PREF_NAME = "device_fp_secure_v2";
    private static final String TAG = "ZeroPermissionFP";

    public static String getOrCreate(Context context) {
        String tryRestoreFingerprint = tryRestoreFingerprint(context);
        if (tryRestoreFingerprint != null) {
            return tryRestoreFingerprint;
        }
        String generateFingerprint = generateFingerprint(context);
        persistFingerprint(context, generateFingerprint);
        return generateFingerprint;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String generateFingerprint(Context context) {
        String str = Build.MANUFACTURER + "|" + Build.BRAND + "|" + Build.MODEL + "|" + Build.BOARD + "|" + Build.HARDWARE;
        DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
        return sha256Hash(str + "||" + (displayMetrics.widthPixels + "x" + displayMetrics.heightPixels + "|" + displayMetrics.densityDpi + "|" + displayMetrics.xdpi) + "||" + (Build.VERSION.RELEASE + "|" + Locale.getDefault() + "|" + getInstallDays(context)) + "||" + (getSensorEntropy(context) + "|" + Runtime.getRuntime().availableProcessors()));
    }

    private static long getInstallDays(Context context) {
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 0).firstInstallTime / 86400000;
        } catch (PackageManager.NameNotFoundException unused) {
            return 0L;
        }
    }

    private static String getSensorEntropy(Context context) {
        StringBuilder sb = new StringBuilder();
        try {
            Iterator<Sensor> it = ((SensorManager) context.getSystemService("sensor")).getSensorList(-1).iterator();
            while (it.hasNext()) {
                sb.append(it.next().getName().hashCode());
                sb.append("|");
            }
        } catch (Exception e) {
            Log.w(TAG, "Get sensor info error", e);
        }
        return sb.toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String tryRestoreFingerprint(Context context) {
        String string = context.getSharedPreferences(SHARED_PREF_NAME, 0).getString(FP_KEY, null);
        return string != null ? string : restoreFromExternalStorage(context);
    }

    private static void persistFingerprint(Context context, String fingerprint) {
        FileOutputStream fileOutputStream;
        context.getSharedPreferences(SHARED_PREF_NAME, 0).edit().putString(FP_KEY, fingerprint).apply();
        FileOutputStream fileOutputStream2 = null;
        try {
            try {
                try {
                    fileOutputStream = new FileOutputStream(new File(context.getExternalFilesDir(null), EXT_STORAGE_FILE));
                } catch (IOException e) {
                    Log.w(TAG, "Failed to close FileOutputStream", e);
                }
            } catch (IOException e2) {
                e = e2;
            }
        } catch (Throwable th) {
            th = th;
        }
        try {
            fileOutputStream.write(fingerprint.getBytes(StandardCharsets.UTF_8));
            fileOutputStream.close();
        } catch (IOException e3) {
            e = e3;
            fileOutputStream2 = fileOutputStream;
            Log.w(TAG, "Failed to write fingerprint", e);
            if (fileOutputStream2 != null) {
                fileOutputStream2.close();
            }
        } catch (Throwable th2) {
            th = th2;
            fileOutputStream2 = fileOutputStream;
            if (fileOutputStream2 != null) {
                try {
                    fileOutputStream2.close();
                } catch (IOException e4) {
                    Log.w(TAG, "Failed to close FileOutputStream", e4);
                }
            }
            throw th;
        }
    }

    /* JADX WARN: Type inference failed for: r4v1, types: [boolean] */
    private static String restoreFromExternalStorage(Context context) {
        FileInputStream fileInputStream;
        FileInputStream fileInputStream2 = null;
        File file = new File(context.getExternalFilesDir(null), EXT_STORAGE_FILE);
        ?? exists = file.exists();
        try {
            if (exists == 0) {
                return null;
            }
            try {
                fileInputStream = new FileInputStream(file);
                try {
                    byte[] bArr = new byte[(int) file.length()];
                    fileInputStream.read(bArr);
                    String str = new String(bArr, StandardCharsets.UTF_8);
                    context.getSharedPreferences(SHARED_PREF_NAME, 0).edit().putString(FP_KEY, str).apply();
                    try {
                        fileInputStream.close();
                    } catch (IOException e) {
                        Log.w(TAG, "Failed to close FileInputStream", e);
                    }
                    return str;
                } catch (IOException e2) {
                    e = e2;
                    Log.w(TAG, "Failed to read fingerprint", e);
                    if (fileInputStream != null) {
                        try {
                            fileInputStream.close();
                        } catch (IOException e3) {
                            Log.w(TAG, "Failed to close FileInputStream", e3);
                        }
                    }
                    return null;
                }
            } catch (IOException e4) {
                e = e4;
                fileInputStream = null;
            } catch (Throwable th) {
                th = th;
                if (fileInputStream2 != null) {
                    try {
                        fileInputStream2.close();
                    } catch (IOException e5) {
                        Log.w(TAG, "Failed to close FileInputStream", e5);
                    }
                }
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            fileInputStream2 = exists;
        }
    }

    private static String sha256Hash(String input) {
        try {
            byte[] digest = MessageDigest.getInstance("SHA-256").digest(input.getBytes(StandardCharsets.UTF_8));
            StringBuilder sb = new StringBuilder();
            for (byte b : digest) {
                String hexString = Integer.toHexString(b & UByte.MAX_VALUE);
                if (hexString.length() == 1) {
                    sb.append('0');
                }
                sb.append(hexString);
            }
            return sb.toString();
        } catch (NoSuchAlgorithmException unused) {
            return Integer.toHexString(input.hashCode());
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static void handleDeviceChanged(Context context) {
        Log.w(TAG, "设备指纹发生变更，可能更换设备或系统重置");
        String generateFingerprint = generateFingerprint(context);
        persistFingerprint(context, generateFingerprint);
        reportDeviceChangeToServer(context, generateFingerprint);
    }

    private static void reportDeviceChangeToServer(Context context, String newFingerprint) {
        Log.d(TAG, "设备变更已上报: " + newFingerprint);
    }
}
