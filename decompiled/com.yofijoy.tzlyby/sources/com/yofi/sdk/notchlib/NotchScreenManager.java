package com.yofi.sdk.notchlib;

import android.app.Activity;
import android.graphics.Rect;
import android.os.Build;
import com.yofi.sdk.notchlib.INotchScreen;
import com.yofi.sdk.notchlib.impl.AndroidPNotchScreen;
import com.yofi.sdk.notchlib.impl.HuaweiNotchScreen;
import com.yofi.sdk.notchlib.impl.MiNotchScreen;
import com.yofi.sdk.notchlib.impl.OppoNotchScreen;
import com.yofi.sdk.notchlib.impl.VivoNotchScreen;
import com.yofi.sdk.notchlib.utils.RomUtils;
import java.util.List;

/* loaded from: classes2.dex */
public class NotchScreenManager {
    private static final NotchScreenManager instance = new NotchScreenManager();
    private final INotchScreen notchScreen = getNotchScreen();

    private NotchScreenManager() {
    }

    public static NotchScreenManager getInstance() {
        return instance;
    }

    public void setDisplayInNotch(Activity activity) {
        INotchScreen iNotchScreen = this.notchScreen;
        if (iNotchScreen != null) {
            iNotchScreen.setDisplayInNotch(activity);
        }
    }

    public void getNotchInfo(final Activity activity, final INotchScreen.NotchScreenCallback notchScreenCallback) {
        final INotchScreen.NotchScreenInfo notchScreenInfo = new INotchScreen.NotchScreenInfo();
        INotchScreen iNotchScreen = this.notchScreen;
        if (iNotchScreen != null && iNotchScreen.hasNotch(activity)) {
            this.notchScreen.getNotchRect(activity, new INotchScreen.NotchSizeCallback() { // from class: com.yofi.sdk.notchlib.NotchScreenManager.1
                @Override // com.yofi.sdk.notchlib.INotchScreen.NotchSizeCallback
                public void onResult(List<Rect> notchRects) {
                    if (notchRects != null && notchRects.size() > 0) {
                        notchScreenInfo.hasNotch = true;
                        notchScreenInfo.notchRects = notchRects;
                    }
                    notchScreenCallback.onResult(notchScreenInfo);
                }
            });
        } else {
            notchScreenCallback.onResult(notchScreenInfo);
        }
    }

    private INotchScreen getNotchScreen() {
        if (Build.VERSION.SDK_INT >= 28) {
            return new AndroidPNotchScreen();
        }
        if (Build.VERSION.SDK_INT >= 26) {
            if (RomUtils.isHuawei()) {
                return new HuaweiNotchScreen();
            }
            if (RomUtils.isOppo()) {
                return new OppoNotchScreen();
            }
            if (RomUtils.isVivo()) {
                return new VivoNotchScreen();
            }
            if (RomUtils.isXiaomi()) {
                return new MiNotchScreen();
            }
        }
        return null;
    }
}
