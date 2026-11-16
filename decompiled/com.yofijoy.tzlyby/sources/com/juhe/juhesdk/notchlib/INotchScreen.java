package com.juhe.juhesdk.notchlib;

import android.app.Activity;
import android.graphics.Rect;
import java.util.List;

/* loaded from: classes.dex */
public interface INotchScreen {

    /* loaded from: classes.dex */
    public interface HasNotchCallback {
        void onResult(boolean hasNotch);
    }

    /* loaded from: classes.dex */
    public interface NotchScreenCallback {
        void onResult(NotchScreenInfo notchScreenInfo);
    }

    /* loaded from: classes.dex */
    public static class NotchScreenInfo {
        public boolean hasNotch;
        public List<Rect> notchRects;
    }

    /* loaded from: classes.dex */
    public interface NotchSizeCallback {
        void onResult(List<Rect> notchRects);
    }

    void getNotchRect(Activity activity, NotchSizeCallback callback);

    boolean hasNotch(Activity activity);

    void setDisplayInNotch(Activity activity);
}
