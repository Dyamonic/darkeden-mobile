package com.taptap.sdk.moment.legacy.utils;

import android.app.ActivityManager;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.Environment;
import android.os.StatFs;
import android.provider.Settings;
import android.text.format.Formatter;
import com.taptap.sdk.core.internal.event.constants.TapEventParamConstants;

/* loaded from: classes.dex */
public class DeviceUtils {
    public static String getAndroidId(Context context) {
        try {
            return Settings.Secure.getString(context.getContentResolver(), TapEventParamConstants.PARAM_SUB_ANDROID_ID);
        } catch (Exception e) {
            e.printStackTrace();
            return "";
        }
    }

    public static String getDeviceTotalRam(Context context) {
        try {
            ActivityManager activityManager = (ActivityManager) context.getSystemService("activity");
            ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
            if (activityManager == null) {
                return null;
            }
            activityManager.getMemoryInfo(memoryInfo);
            return Formatter.formatFileSize(context, memoryInfo.totalMem);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public static String getDeviceTotalRom(Context context) {
        long blockCount;
        long blockSize;
        try {
            StatFs statFs = new StatFs(Environment.getDataDirectory().getPath());
            if (Build.VERSION.SDK_INT >= 18) {
                blockCount = statFs.getBlockCountLong();
                blockSize = statFs.getBlockSizeLong();
            } else {
                blockCount = statFs.getBlockCount();
                blockSize = statFs.getBlockSize();
            }
            return Formatter.formatFileSize(context, blockCount * blockSize);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public static boolean isAppExist(Context context, String str) {
        ApplicationInfo applicationInfo;
        try {
            applicationInfo = context.getPackageManager().getApplicationInfo(str, 0);
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
            applicationInfo = null;
        }
        return applicationInfo != null;
    }
}
