package com.juhe.juhesdk.notchlib.utils;

import android.R;
import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Point;
import android.graphics.Rect;
import android.os.Build;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.View;
import android.view.WindowManager;

/* loaded from: classes.dex */
public class ScreenUtil {
    public static boolean isPortrait(Context context) {
        return context.getResources().getConfiguration().orientation == 1;
    }

    public static int getContentViewHeight(Activity activity) {
        return getContentView(activity).getHeight();
    }

    public static Rect getContentViewDisplayFrame(Activity activity) {
        View contentView = getContentView(activity);
        Rect rect = new Rect();
        contentView.getWindowVisibleDisplayFrame(rect);
        return rect;
    }

    public static View getContentView(Activity activity) {
        return activity.getWindow().getDecorView().findViewById(R.id.content);
    }

    public static int getNavigationBarHeight(Context context) {
        return getDimensionPixel(context, "navigation_bar_height");
    }

    public static int getStatusBarHeight(Context context) {
        return getDimensionPixel(context, "status_bar_height");
    }

    private static int getDimensionPixel(Context context, String navigation_bar_height) {
        Resources resources = context.getResources();
        int identifier = resources.getIdentifier(navigation_bar_height, "dimen", "android");
        if (identifier > 0) {
            return resources.getDimensionPixelSize(identifier);
        }
        return 0;
    }

    public static int[] getScreenSize(Context context) {
        int[] iArr = new int[2];
        Display defaultDisplay = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
        DisplayMetrics displayMetrics = new DisplayMetrics();
        defaultDisplay.getMetrics(displayMetrics);
        int i = displayMetrics.widthPixels;
        int i2 = displayMetrics.heightPixels;
        if (Build.VERSION.SDK_INT >= 17) {
            try {
                Point point = new Point();
                Display.class.getMethod("getRealSize", Point.class).invoke(defaultDisplay, point);
                i = point.x;
                i2 = point.y;
            } catch (Throwable unused) {
            }
        }
        iArr[0] = i;
        iArr[1] = i2;
        return iArr;
    }

    public static Rect calculateNotchRect(Context context, int notchWidth, int notchHeight) {
        int i;
        int i2;
        int[] screenSize = getScreenSize(context);
        int i3 = 0;
        int i4 = screenSize[0];
        int i5 = screenSize[1];
        if (isPortrait(context)) {
            int i6 = (i4 - notchWidth) / 2;
            i = 0;
            i3 = i6;
            notchHeight = notchWidth + i6;
            i2 = notchHeight;
        } else {
            i = (i5 - notchWidth) / 2;
            i2 = notchWidth + i;
        }
        return new Rect(i3, i, notchHeight, i2);
    }
}
