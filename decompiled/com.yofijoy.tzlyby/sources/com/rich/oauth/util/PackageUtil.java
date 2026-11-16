package com.rich.oauth.util;

import android.content.Context;
import java.security.MessageDigest;
import kotlin.UByte;

/* loaded from: classes.dex */
public class PackageUtil {
    public static String getPackageName(Context context) {
        return context.getPackageName();
    }

    public static String getProcessName(Context context) {
        return context.getPackageName();
    }

    public static String getSignMd5(Context context) {
        if (context == null) {
            return null;
        }
        return getSignValidString(context.getPackageManager().getPackageInfo(getPackageName(context), 64).signatures[0].toByteArray());
    }

    public static String getSignValidString(byte[] bArr) {
        MessageDigest messageDigest = MessageDigest.getInstance("MD5");
        messageDigest.update(bArr);
        return toHexString(messageDigest.digest());
    }

    public static String toHexString(byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        StringBuilder sb = new StringBuilder(bArr.length * 2);
        for (byte b : bArr) {
            String num = Integer.toString(b & UByte.MAX_VALUE, 16);
            if (num.length() == 1) {
                num = "0" + num;
            }
            sb.append(num);
        }
        return sb.toString();
    }
}
