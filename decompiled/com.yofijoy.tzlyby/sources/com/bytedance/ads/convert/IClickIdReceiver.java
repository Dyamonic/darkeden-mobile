package com.bytedance.ads.convert;

/* loaded from: classes.dex */
public interface IClickIdReceiver {

    /* loaded from: classes.dex */
    public enum ClickIdFrom {
        APK,
        Jump,
        ContentProvider,
        StickyBroadcast
    }

    void onReceive(ClickIdFrom clickIdFrom, String str);
}
