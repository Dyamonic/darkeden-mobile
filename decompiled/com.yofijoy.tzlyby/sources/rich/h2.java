package rich;

import android.content.Context;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import rich.v0;

/* loaded from: classes2.dex */
public class h2 {
    public static h2 d;
    public final Context a;
    public long b = 0;
    public String c = "";

    public h2(Context context) {
        this.a = context;
    }

    public String a(String str, boolean z) {
        if (TextUtils.isEmpty(str)) {
            str = a(z);
        }
        str.hashCode();
        char c = 65535;
        switch (str.hashCode()) {
            case 49679470:
                if (str.equals("46000")) {
                    c = 0;
                    break;
                }
                break;
            case 49679471:
                if (str.equals("46001")) {
                    c = 1;
                    break;
                }
                break;
            case 49679472:
                if (str.equals("46002")) {
                    c = 2;
                    break;
                }
                break;
            case 49679473:
                if (str.equals("46003")) {
                    c = 3;
                    break;
                }
                break;
            case 49679474:
                if (str.equals("46004")) {
                    c = 4;
                    break;
                }
                break;
            case 49679475:
                if (str.equals("46005")) {
                    c = 5;
                    break;
                }
                break;
            case 49679476:
                if (str.equals("46006")) {
                    c = 6;
                    break;
                }
                break;
            case 49679477:
                if (str.equals("46007")) {
                    c = 7;
                    break;
                }
                break;
            case 49679479:
                if (str.equals("46009")) {
                    c = '\b';
                    break;
                }
                break;
            case 49679502:
                if (str.equals("46011")) {
                    c = '\t';
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
            case 2:
            case 4:
            case 7:
                c2.a("SIMUtils", "中国移动");
                return "1";
            case 1:
            case 6:
            case '\b':
                c2.a("SIMUtils", "中国联通");
                return "2";
            case 3:
            case 5:
            case '\t':
                c2.a("SIMUtils", "中国电信");
                return "3";
            default:
                return "0";
        }
    }

    public String a(boolean z) {
        String str;
        if (!z) {
            return "";
        }
        if (System.currentTimeMillis() - this.b > 3000) {
            this.b = System.currentTimeMillis();
            TelephonyManager telephonyManager = (TelephonyManager) this.a.getSystemService("phone");
            if (telephonyManager == null) {
                return "";
            }
            this.c = telephonyManager.getSimOperator();
            str = "getSimOperator SysOperator= ";
        } else {
            str = "使用缓存operator Operator= ";
        }
        StringBuilder a = a.a(str);
        a.append(this.c);
        c2.b("SIMUtils", a.toString());
        return this.c;
    }

    public String a() {
        try {
            v0.a aVar = v0.a().a;
            if (aVar == null) {
                aVar = new v0.a();
            }
            int i = aVar.b;
            return i >= 0 ? Integer.toString(i) : "";
        } catch (Exception e) {
            e.printStackTrace();
            return "";
        }
    }
}
