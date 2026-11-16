package cn.gamegod.littlegame;

import android.graphics.Point;
import android.os.Build;
import android.util.Log;
import android.view.Display;
import androidx.core.os.EnvironmentCompat;
import java.lang.reflect.Method;
import org.cocos2dx.lua.AppActivity;

/* loaded from: classes.dex */
public class AdjustAndroidNotchScreen {
    public static final int NOTCH_IN_SCREEN_VOIO = 32;
    public static final int ROUNDED_IN_SCREEN_VOIO = 8;

    public static String hasIphoneAdjustNotchScreenHeight() {
        String str = Build.BRAND;
        String str2 = Build.MODEL;
        String str3 = Build.DISPLAY;
        Log.e("brand : ", str);
        Log.e("model : ", str2);
        Log.e("displayStr : ", str3);
        int i = 0;
        if (str.equals("Xiaomi") && hasNotchInXiaomi()) {
            i = getStatusBarHeight();
        } else if (str.equals("vivo") && hasNotchInScreenAtVoio()) {
            i = getStatusBarHeight();
        } else if (str.equals("OPPO") && hasNotchInOppo()) {
            i = getStatusBarHeight();
        } else if (str.equals("HUAWEI") && hasNotchInHuawei()) {
            i = getNotchSizeHuawei()[1];
        } else if (!str.equals("samsung")) {
            Display defaultDisplay = AppActivity.instance.getWindowManager().getDefaultDisplay();
            Point point = new Point();
            defaultDisplay.getSize(point);
            int i2 = point.x;
            int i3 = point.y;
            System.out.println("width-display :" + i2);
            System.out.println("heigth-display :" + i3);
            if (i3 / i2 > 2.07d) {
                i = 44;
            }
        }
        Log.e("notchHeight:", String.valueOf(i));
        return String.valueOf(i);
    }

    private static int getStatusBarHeight() {
        int identifier = AppActivity.instance.getResources().getIdentifier("status_bar_height", "dimen", "android");
        if (identifier > 0) {
            return AppActivity.instance.getResources().getDimensionPixelSize(identifier);
        }
        return 0;
    }

    public static int[] getNotchSizeHuawei() {
        int[] iArr = {0, 0};
        try {
            try {
                Class<?> loadClass = AppActivity.instance.getClassLoader().loadClass("com.huawei.android.util.HwNotchSizeUtil");
                return (int[]) loadClass.getMethod("getNotchSize", new Class[0]).invoke(loadClass, new Object[0]);
            } catch (ClassNotFoundException unused) {
                Log.e("test", "getNotchSize ClassNotFoundException");
                return iArr;
            } catch (NoSuchMethodException unused2) {
                Log.e("test", "getNotchSize NoSuchMethodException");
                return iArr;
            } catch (Exception unused3) {
                Log.e("test", "getNotchSize Exception");
                return iArr;
            }
        } catch (Throwable unused4) {
            return iArr;
        }
    }

    public static boolean hasNotchInHuawei() {
        try {
            Class<?> loadClass = AppActivity.instance.getClassLoader().loadClass("com.huawei.android.util.HwNotchSizeUtil");
            Method method = loadClass.getMethod("hasNotchInScreen", new Class[0]);
            if (method != null) {
                return method.invoke(loadClass, new Object[0]) != null;
            }
            return false;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    public static boolean hasNotchInXiaomi() {
        return getProperty("ro.miui.notch", "0").equals("1");
    }

    public static boolean hasNotchInOppo() {
        return AppActivity.instance.getPackageManager().hasSystemFeature("com.oppo.feature.screen.heteromorphism");
    }

    public static boolean hasNotchInScreenAtVoio() {
        try {
            try {
                try {
                    try {
                        Class<?> loadClass = AppActivity.instance.getClassLoader().loadClass("com.util.FtFeature");
                        return loadClass.getMethod("isFeatureSupport", Integer.TYPE).invoke(loadClass, 32) != null;
                    } catch (Exception unused) {
                        Log.e("test", "hasNotchInScreen Exception");
                        return false;
                    }
                } catch (NoSuchMethodException unused2) {
                    Log.e("test", "hasNotchInScreen NoSuchMethodException");
                    return false;
                }
            } catch (ClassNotFoundException unused3) {
                Log.e("test", "hasNotchInScreen ClassNotFoundException");
                return false;
            }
        } catch (Throwable unused4) {
            return false;
        }
    }

    public static String getProperty(String str, String str2) {
        try {
            try {
                Class<?> cls = Class.forName("android.os.SystemProperties");
                return (String) cls.getMethod("getInt", String.class, String.class).invoke(cls, str, EnvironmentCompat.MEDIA_UNKNOWN);
            } catch (Exception e) {
                e.printStackTrace();
                return str2;
            }
        } catch (Throwable unused) {
            return str2;
        }
    }
}
