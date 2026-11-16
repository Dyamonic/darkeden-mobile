package com.bytedance.ads.convert.broadcast.common;

import android.app.ActivityManager;
import android.content.Context;
import com.illusion.light.EffectUtil;
import org.json.JSONArray;

/* loaded from: classes.dex */
public class EncryptionTools {
    private static final String TAG = "Convert:EncryptionTools";
    private static JSONArray zDataPCache;

    static {
        EffectUtil.Ew0PFxIIElJfVUZbX1EJ0(0);
        zDataPCache = null;
    }

    private static native String bytesToHex(byte[] bArr);

    public static native String encryptionAction(String str);

    public static native long getBootTime();

    public static native long getBootTimeMs();

    public static native long getDiskTotalBytes();

    public static native ActivityManager.MemoryInfo getMemoryInfo(Context context);

    public static native JSONArray getZDataP(Context context);

    private static native String hash(String str);
}
