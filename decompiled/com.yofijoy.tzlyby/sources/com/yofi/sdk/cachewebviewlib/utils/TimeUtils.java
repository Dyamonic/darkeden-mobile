package com.yofi.sdk.cachewebviewlib.utils;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

/* loaded from: classes2.dex */
public class TimeUtils {
    private static final String STARD_FROMAT = "yyyy-MM-dd HH:mm:ss";

    public static Date formatGMT(String time) {
        if (time.indexOf("GMT") < 0) {
            try {
                return new Date(Long.valueOf(time).longValue() * 1000);
            } catch (Exception unused) {
                return null;
            }
        }
        try {
            return new SimpleDateFormat("EEE, dd MMM yyyy HH:mm:ss 'GMT'", Locale.US).parse(time.trim());
        } catch (ParseException e) {
            e.printStackTrace();
            return null;
        }
    }

    public static boolean compare(Date d1, Date d2) {
        return (d1 == null || d2 == null || d1.getTime() - d2.getTime() <= 0) ? false : true;
    }

    public static Date getStardTime(String time) {
        try {
            return new SimpleDateFormat(STARD_FROMAT).parse(time);
        } catch (ParseException e) {
            e.printStackTrace();
            return null;
        }
    }

    public static Date getStardTime(Long time) {
        try {
            return new Date(time.longValue() * 1000);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public static String getCurrentTime() {
        return new SimpleDateFormat(STARD_FROMAT).format(new Date());
    }
}
