package com.bytedance.ad.common.uaid.identity.utils;

import android.content.Context;
import android.telephony.TelephonyManager;

/* loaded from: classes.dex */
public class SIMUtils {
    public static final String SIM_MOBILE = "1";
    public static final String SIM_OTHER = "0";
    public static final String SIM_TELECOM = "2";
    public static final String SIM_UNICOM = "3";

    public static int getCurrentSimSubId(Context context) {
        return 0;
    }

    private static String getSimOperator(Context context) {
        TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
        return telephonyManager.getSimState() != 5 ? "" : telephonyManager.getSimOperator();
    }

    public static String getSimOperatorCode(Context context) {
        return parseOperator(getSimOperator(context));
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private static String parseOperator(String str) {
        char c;
        int hashCode = str.hashCode();
        if (hashCode != 49679502) {
            switch (hashCode) {
                case 49679470:
                    if (str.equals("46000")) {
                        c = 0;
                        break;
                    }
                    c = 65535;
                    break;
                case 49679471:
                    if (str.equals("46001")) {
                        c = '\b';
                        break;
                    }
                    c = 65535;
                    break;
                case 49679472:
                    if (str.equals("46002")) {
                        c = 1;
                        break;
                    }
                    c = 65535;
                    break;
                case 49679473:
                    if (str.equals("46003")) {
                        c = 5;
                        break;
                    }
                    c = 65535;
                    break;
                case 49679474:
                    if (str.equals("46004")) {
                        c = 2;
                        break;
                    }
                    c = 65535;
                    break;
                case 49679475:
                    if (str.equals("46005")) {
                        c = 6;
                        break;
                    }
                    c = 65535;
                    break;
                case 49679476:
                    if (str.equals("46006")) {
                        c = '\t';
                        break;
                    }
                    c = 65535;
                    break;
                case 49679477:
                    if (str.equals("46007")) {
                        c = 3;
                        break;
                    }
                    c = 65535;
                    break;
                case 49679478:
                    if (str.equals("46008")) {
                        c = 4;
                        break;
                    }
                    c = 65535;
                    break;
                case 49679479:
                    if (str.equals("46009")) {
                        c = '\n';
                        break;
                    }
                    c = 65535;
                    break;
                default:
                    c = 65535;
                    break;
            }
        } else {
            if (str.equals("46011")) {
                c = 7;
            }
            c = 65535;
        }
        switch (c) {
            case 0:
            case 1:
            case 2:
            case 3:
            case 4:
                return "1";
            case 5:
            case 6:
            case 7:
                return "2";
            case '\b':
            case '\t':
            case '\n':
                return "3";
            default:
                return "0";
        }
    }
}
