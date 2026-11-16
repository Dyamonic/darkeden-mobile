package com.yofi.sdk.cachewebviewlib.utils;

import android.text.TextUtils;
import android.webkit.MimeTypeMap;

/* loaded from: classes2.dex */
public class MimeTypeMapUtils {
    public static String getFileExtensionFromUrl(String url) {
        int lastIndexOf;
        String lowerCase = url.toLowerCase();
        if (TextUtils.isEmpty(lowerCase)) {
            return "";
        }
        int lastIndexOf2 = lowerCase.lastIndexOf(35);
        if (lastIndexOf2 > 0) {
            lowerCase = lowerCase.substring(0, lastIndexOf2);
        }
        int lastIndexOf3 = lowerCase.lastIndexOf(63);
        if (lastIndexOf3 > 0) {
            lowerCase = lowerCase.substring(0, lastIndexOf3);
        }
        int lastIndexOf4 = lowerCase.lastIndexOf(47);
        if (lastIndexOf4 >= 0) {
            lowerCase = lowerCase.substring(lastIndexOf4 + 1);
        }
        return (lowerCase.isEmpty() || (lastIndexOf = lowerCase.lastIndexOf(46)) < 0) ? "" : lowerCase.substring(lastIndexOf + 1);
    }

    public static String getFileMd5NameFromUrl(String url) {
        int lastIndexOf;
        String lowerCase = url.toLowerCase();
        if (TextUtils.isEmpty(lowerCase)) {
            return "";
        }
        int lastIndexOf2 = lowerCase.lastIndexOf(35);
        if (lastIndexOf2 > 0) {
            lowerCase = lowerCase.substring(0, lastIndexOf2);
        }
        int lastIndexOf3 = lowerCase.lastIndexOf(63);
        if (lastIndexOf3 > 0) {
            lowerCase = lowerCase.substring(0, lastIndexOf3);
        }
        int lastIndexOf4 = lowerCase.lastIndexOf(47);
        if (lastIndexOf4 >= 0) {
            lowerCase = lowerCase.substring(lastIndexOf4 + 1);
        }
        if (lowerCase.isEmpty() || (lastIndexOf = lowerCase.lastIndexOf(46)) < 0) {
            return "";
        }
        String substring = lowerCase.substring(0, lastIndexOf);
        if (substring.length() < 11) {
            return "";
        }
        String substring2 = substring.substring(substring.length() - 11);
        return substring2.startsWith("_") ? substring2.substring(1) : "";
    }

    public static boolean isMd5NameFromUrl(String url) {
        int lastIndexOf;
        if (getFileExtensionFromUrl(url).length() <= 0) {
            return false;
        }
        String lowerCase = url.toLowerCase();
        if (!TextUtils.isEmpty(lowerCase)) {
            int lastIndexOf2 = lowerCase.lastIndexOf(35);
            if (lastIndexOf2 > 0) {
                lowerCase = lowerCase.substring(0, lastIndexOf2);
            }
            int lastIndexOf3 = lowerCase.lastIndexOf(63);
            if (lastIndexOf3 > 0) {
                lowerCase = lowerCase.substring(0, lastIndexOf3);
            }
            int lastIndexOf4 = lowerCase.lastIndexOf(47);
            if (lastIndexOf4 >= 0) {
                lowerCase = lowerCase.substring(lastIndexOf4 + 1);
            }
            if (!lowerCase.isEmpty() && (lastIndexOf = lowerCase.lastIndexOf(46)) >= 0) {
                String substring = lowerCase.substring(0, lastIndexOf);
                if (substring.length() >= 11 && substring.substring(substring.length() - 11).startsWith("_")) {
                    return true;
                }
            }
        }
        return false;
    }

    public static String getMimeTypeFromUrl(String url) {
        return MimeTypeMap.getSingleton().getMimeTypeFromExtension(getFileExtensionFromUrl(url));
    }

    public static String getMimeTypeFromExtension(String extension) {
        return MimeTypeMap.getSingleton().getMimeTypeFromExtension(extension);
    }
}
