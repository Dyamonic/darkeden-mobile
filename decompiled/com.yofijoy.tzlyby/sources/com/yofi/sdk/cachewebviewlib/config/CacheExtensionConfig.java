package com.yofi.sdk.cachewebviewlib.config;

import android.text.TextUtils;
import java.util.HashSet;

/* loaded from: classes2.dex */
public class CacheExtensionConfig {
    private static HashSet STATIC = new HashSet() { // from class: com.yofi.sdk.cachewebviewlib.config.CacheExtensionConfig.1
        {
            add("htm");
            add("js");
            add("ico");
            add("css");
            add("png");
            add("jpg");
            add("jpeg");
            add("gif");
            add("bmp");
            add("ttf");
            add("woff");
            add("woff2");
            add("otf");
            add("eot");
            add("svg");
            add("xml");
            add("swf");
            add("txt");
            add("text");
            add("conf");
            add("webp");
        }
    };
    private static HashSet NO_CACH = new HashSet() { // from class: com.yofi.sdk.cachewebviewlib.config.CacheExtensionConfig.2
        {
            add("mp4");
            add("mp3");
            add("ogg");
            add("avi");
            add("wmv");
            add("flv");
            add("rmvb");
            add("3gp");
        }
    };
    private HashSet statics = new HashSet(STATIC);
    private HashSet no_cache = new HashSet(NO_CACH);

    public static void addGlobalExtension(String extension) {
        add(STATIC, extension);
    }

    public static void removeGlobalExtension(String extension) {
        remove(STATIC, extension);
    }

    private static void add(HashSet set, String extension) {
        if (TextUtils.isEmpty(extension)) {
            return;
        }
        set.add(extension.replace(".", "").toLowerCase().trim());
    }

    private static void remove(HashSet set, String extension) {
        if (TextUtils.isEmpty(extension)) {
            return;
        }
        set.remove(extension.replace(".", "").toLowerCase().trim());
    }

    public boolean isMedia(String extension) {
        if (TextUtils.isEmpty(extension)) {
            return false;
        }
        if (NO_CACH.contains(extension)) {
            return true;
        }
        return this.no_cache.contains(extension.toLowerCase().trim());
    }

    public boolean canCache(String extension) {
        if (TextUtils.isEmpty(extension)) {
            return false;
        }
        String trim = extension.toLowerCase().trim();
        if (STATIC.contains(trim)) {
            return true;
        }
        return this.statics.contains(trim);
    }

    public CacheExtensionConfig addExtension(String extension) {
        add(this.statics, extension);
        return this;
    }

    public CacheExtensionConfig removeExtension(String extension) {
        remove(this.statics, extension);
        return this;
    }

    public boolean isHtml(String extension) {
        if (TextUtils.isEmpty(extension)) {
            return false;
        }
        return extension.toLowerCase().contains("html") || extension.toLowerCase().contains("htm");
    }

    public void clearAll() {
        clearDiskExtension();
    }

    public void clearDiskExtension() {
        this.statics.clear();
    }
}
