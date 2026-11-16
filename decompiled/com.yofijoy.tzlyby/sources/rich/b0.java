package rich;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.net.http.AndroidHttpClient;
import android.os.Build;
import android.text.TextUtils;
import android.util.Base64;
import com.rich.oauth.util.EncryptUtils;
import com.tencent.open.SocialConstants;
import cz.msebera.android.httpclient.client.cache.HeaderConstants;
import java.io.File;
import java.io.UnsupportedEncodingException;
import java.net.Inet4Address;
import java.net.Inet6Address;
import java.net.InetAddress;
import java.net.NetworkInterface;
import java.security.MessageDigest;
import java.security.SecureRandom;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Enumeration;
import java.util.Map;
import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
import org.apache.http.impl.cookie.DateParseException;
import org.apache.http.impl.cookie.DateUtils;
import org.json.JSONException;
import org.json.JSONObject;
import rich.c;

/* loaded from: classes2.dex */
public class b0 {
    public static Context a;

    public static int a(String str, int i) {
        return a.getSharedPreferences("ssoconfigs", 0).getInt(a(str), i);
    }

    public static long a(String str, long j) {
        return a.getSharedPreferences("ssoconfigs", 0).getLong(a(str), j);
    }

    public static String a() {
        return new SimpleDateFormat("yyyyMMddHHmmssSSS").format(new Date(System.currentTimeMillis()));
    }

    public static String a(Context context) {
        String str = null;
        try {
            PackageManager packageManager = context.getPackageManager();
            PackageInfo c = c(context);
            String str2 = (String) packageManager.getApplicationLabel(packageManager.getApplicationInfo(c == null ? "" : c.packageName, 0));
            if (str2 != null) {
                return str2;
            }
            try {
                PackageInfo c2 = c(context);
                if (c2 == null) {
                    return null;
                }
                return context.getResources().getString(c2.applicationInfo.labelRes);
            } catch (Exception e) {
                e = e;
                str = str2;
                e.printStackTrace();
                return str;
            }
        } catch (Exception e2) {
            e = e2;
        }
    }

    public static String a(String str) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        try {
            return a(str.getBytes("utf-8"));
        } catch (UnsupportedEncodingException unused) {
            return "";
        }
    }

    public static String a(String str, String str2, String str3) {
        return a.getSharedPreferences(str, 0).getString(a(str2), str3);
    }

    public static String a(Map map, String str) {
        String str2 = (String) map.get("Content-Type");
        if (str2 != null) {
            String[] split = str2.split(";");
            for (int i = 1; i < split.length; i++) {
                String[] split2 = split[i].trim().split("=");
                if (split2.length == 2 && split2[0].equals("charset")) {
                    return split2[1];
                }
            }
        }
        return str;
    }

    public static String a(byte[] bArr) {
        if (bArr == null) {
            return "";
        }
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            messageDigest.update(bArr);
            return l2.a(messageDigest.digest());
        } catch (Exception unused) {
            return "";
        }
    }

    public static String a(byte[] bArr, String str, byte[] bArr2) {
        try {
            SecretKeySpec secretKeySpec = new SecretKeySpec(bArr, EncryptUtils.AES_Algorithm);
            Cipher cipher = Cipher.getInstance("AES/CBC/PKCS5Padding");
            cipher.init(1, secretKeySpec, new IvParameterSpec(bArr2));
            return Base64.encodeToString(cipher.doFinal(str.getBytes("utf-8")), 0);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    /* renamed from: a, reason: collision with other method in class */
    public static JSONObject m1663a() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("resultCode", "103000");
            jSONObject.put(SocialConstants.PARAM_APP_DESC, "true");
        } catch (JSONException e) {
            e.printStackTrace();
        }
        return jSONObject;
    }

    public static JSONObject a(String str, String str2) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("resultCode", str);
            jSONObject.put(SocialConstants.PARAM_APP_DESC, str2);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return jSONObject;
    }

    public static JSONObject a(String str, l0 l0Var, JSONObject jSONObject) {
        String b;
        String str2;
        String[] strArr = {"未知", "移动", "联通", "电信"};
        try {
            b = l0Var.b("operatortype", "0");
        } catch (Exception e) {
            e.printStackTrace();
        }
        if (!"0".equals(b) && !TextUtils.isEmpty(b)) {
            str2 = strArr[Integer.parseInt(b)];
            jSONObject.put("operatorType", str2);
            return jSONObject;
        }
        str2 = "103000".equals(str) ? strArr[1] : strArr[0];
        jSONObject.put("operatorType", str2);
        return jSONObject;
    }

    public static c.a a(k kVar) {
        boolean z;
        long j;
        long j2;
        long j3;
        long j4;
        long j5;
        long currentTimeMillis = System.currentTimeMillis();
        Map map = kVar.c;
        String str = (String) map.get("Date");
        long c = str != null ? c(str) : 0L;
        String str2 = (String) map.get("Cache-Control");
        int i = 0;
        if (str2 != null) {
            String[] split = str2.split(",");
            int i2 = 0;
            j = 0;
            j2 = 0;
            while (i < split.length) {
                String trim = split[i].trim();
                if (trim.equals(HeaderConstants.CACHE_CONTROL_NO_CACHE) || trim.equals(HeaderConstants.CACHE_CONTROL_NO_STORE)) {
                    return null;
                }
                if (trim.startsWith("max-age=")) {
                    try {
                        j = Long.parseLong(trim.substring(8));
                    } catch (Exception unused) {
                    }
                } else if (trim.startsWith("stale-while-revalidate=")) {
                    j2 = Long.parseLong(trim.substring(23));
                } else if (trim.equals(HeaderConstants.CACHE_CONTROL_MUST_REVALIDATE) || trim.equals(HeaderConstants.CACHE_CONTROL_PROXY_REVALIDATE)) {
                    i2 = 1;
                }
                i++;
            }
            i = i2;
            z = true;
        } else {
            z = false;
            j = 0;
            j2 = 0;
        }
        String str3 = (String) map.get("Expires");
        long c2 = str3 != null ? c(str3) : 0L;
        String str4 = (String) map.get("Last-Modified");
        long c3 = str4 != null ? c(str4) : 0L;
        String str5 = (String) map.get("ETag");
        if (z) {
            long j6 = currentTimeMillis + (j * 1000);
            if (i != 0) {
                j5 = j6;
            } else {
                Long.signum(j2);
                j5 = (j2 * 1000) + j6;
            }
            j3 = j6;
            j4 = j5;
        } else {
            j3 = 0;
            if (c <= 0 || c2 < c) {
                j4 = 0;
            } else {
                j4 = currentTimeMillis + (c2 - c);
                j3 = j4;
            }
        }
        c.a aVar = new c.a();
        aVar.a = kVar.b;
        aVar.b = str5;
        aVar.f = j3;
        aVar.e = j4;
        aVar.c = c;
        aVar.d = c3;
        aVar.g = map;
        return aVar;
    }

    /* renamed from: a, reason: collision with other method in class */
    public static i2 m1664a() {
        return new i2(a.getSharedPreferences("ssoconfigs", 0).edit());
    }

    /* renamed from: a, reason: collision with other method in class */
    public static void m1665a(String str, String str2) {
        SharedPreferences sharedPreferences = a.getSharedPreferences("ssoconfigs", 0);
        sharedPreferences.edit().putString(a(str), str2).commit();
    }

    public static void a(Map map) {
        if (map == null || map.isEmpty()) {
            return;
        }
        SharedPreferences.Editor edit = a.getSharedPreferences("ssoconfigs", 0).edit();
        for (String str : map.keySet()) {
            Object obj = map.get(str);
            String a2 = a(str);
            if (obj instanceof String) {
                edit.putString(a2, (String) obj);
            } else if (obj instanceof Integer) {
                edit.putInt(a2, ((Integer) obj).intValue());
            } else if (obj instanceof Long) {
                edit.putLong(a2, ((Long) obj).longValue());
            } else if (obj instanceof Boolean) {
                edit.putBoolean(a2, ((Boolean) obj).booleanValue());
            }
        }
        edit.commit();
    }

    /* renamed from: a, reason: collision with other method in class */
    public static byte[] m1666a() {
        byte[] bArr = new byte[16];
        new SecureRandom().nextBytes(bArr);
        return bArr;
    }

    public static String[] a(boolean z) {
        StringBuilder sb;
        String[] strArr = {"", ""};
        StringBuilder sb2 = new StringBuilder();
        StringBuilder sb3 = new StringBuilder();
        try {
            Enumeration<NetworkInterface> networkInterfaces = NetworkInterface.getNetworkInterfaces();
            while (networkInterfaces.hasMoreElements()) {
                NetworkInterface nextElement = networkInterfaces.nextElement();
                if (!z || !nextElement.getName().toLowerCase().contains("wlan")) {
                    Enumeration<InetAddress> inetAddresses = nextElement.getInetAddresses();
                    while (inetAddresses.hasMoreElements()) {
                        InetAddress nextElement2 = inetAddresses.nextElement();
                        if (!nextElement2.isLoopbackAddress() && !nextElement2.isLinkLocalAddress()) {
                            String hostAddress = nextElement2.getHostAddress();
                            if (!TextUtils.isEmpty(hostAddress)) {
                                if (nextElement2 instanceof Inet6Address) {
                                    sb2.append(hostAddress);
                                    sb = sb2;
                                } else if (nextElement2 instanceof Inet4Address) {
                                    sb3.append(hostAddress);
                                    sb = sb3;
                                }
                                sb.append(",");
                            }
                        }
                    }
                }
            }
            if (!TextUtils.isEmpty(sb2)) {
                sb2 = sb2.delete(sb2.length() - 1, sb2.length());
            }
            if (!TextUtils.isEmpty(sb3)) {
                sb3 = sb3.delete(sb3.length() - 1, sb3.length());
            }
            strArr[0] = sb3.toString();
            strArr[1] = sb2.toString();
            c2.b("UmcIPUtils", "onlyMobileDataIp " + z + " IPV6 ip：" + sb2.toString());
            c2.b("UmcIPUtils", "onlyMobileDataIp " + z + " IPV4 ip：" + sb3.toString());
            return strArr;
        } catch (Exception e) {
            e.printStackTrace();
            return strArr;
        }
    }

    public static String b(Context context) {
        try {
            PackageInfo c = c(context);
            if (c != null) {
                StringBuilder sb = new StringBuilder();
                PackageInfo c2 = c(context);
                sb.append(c2 == null ? "" : c2.packageName);
                sb.append("&");
                sb.append(c.versionName);
                return sb.toString();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "";
    }

    public static String b(String str, String str2) {
        return a.getSharedPreferences("ssoconfigs", 0).getString(a(str), str2);
    }

    public static String b(byte[] bArr, String str, byte[] bArr2) {
        try {
            byte[] decode = Base64.decode(str, 0);
            SecretKeySpec secretKeySpec = new SecretKeySpec(bArr, EncryptUtils.AES_Algorithm);
            Cipher cipher = Cipher.getInstance("AES/CBC/PKCS5Padding");
            cipher.init(2, secretKeySpec, new IvParameterSpec(bArr2));
            return new String(cipher.doFinal(decode), "utf-8");
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public static i2 b(String str) {
        return new i2(a.getSharedPreferences(str, 0).edit());
    }

    public static long c(String str) {
        try {
            return DateUtils.parseDate(str).getTime();
        } catch (DateParseException unused) {
            return 0L;
        }
    }

    public static PackageInfo c(Context context) {
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 0);
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
            return null;
        }
    }

    public static p d(Context context) {
        String str;
        File file = new File(context.getCacheDir(), "volley");
        try {
            String packageName = context.getPackageName();
            str = packageName + "/" + context.getPackageManager().getPackageInfo(packageName, 0).versionCode;
        } catch (PackageManager.NameNotFoundException unused) {
            str = "volley/0";
        }
        p pVar = new p(new y(file, 5242880), new w(Build.VERSION.SDK_INT >= 9 ? new d0() : new a0(AndroidHttpClient.newInstance(str))));
        d dVar = pVar.j;
        if (dVar != null) {
            dVar.e = true;
            dVar.interrupt();
        }
        int i = 0;
        while (true) {
            i[] iVarArr = pVar.i;
            if (i >= iVarArr.length) {
                break;
            }
            if (iVarArr[i] != null) {
                i iVar = iVarArr[i];
                iVar.e = true;
                iVar.interrupt();
            }
            i++;
        }
        pVar.j = new d(pVar.d, pVar.e, pVar.f, pVar.h);
        pVar.j.start();
        for (int i2 = 0; i2 < pVar.i.length; i2++) {
            i iVar2 = new i(pVar.e, pVar.g, pVar.f, pVar.h);
            pVar.i[i2] = iVar2;
            iVar2.start();
        }
        return pVar;
    }

    public static JSONObject a(String str, String str2, l0 l0Var, JSONObject jSONObject) {
        String str3;
        String str4;
        String str5;
        String str6 = "0";
        JSONObject jSONObject2 = new JSONObject();
        try {
            int parseInt = Integer.parseInt(l0Var.b("authType", "0"));
            int b = l0Var.b("networktype", 0);
            if (parseInt == 3) {
                if (b == 3) {
                    str4 = "WIFI下网关鉴权";
                    str5 = "1";
                } else {
                    str4 = "网关鉴权";
                    str5 = "2";
                }
                String str7 = str5;
                str3 = str4;
                str6 = str7;
            } else {
                str3 = "其他";
            }
            jSONObject2.put("resultCode", str);
            jSONObject2.put("authType", str6);
            jSONObject2.put("authTypeDes", str3);
            if ("103000".equals(str)) {
                if (1 == l0Var.b("logintype", 0)) {
                    jSONObject2.put("openId", l0Var.b("openId", ""));
                }
                jSONObject2.put("token", jSONObject.optString("token"));
                jSONObject2.put("tokenExpiresIn", jSONObject.optString("tokenExpiresIn"));
            } else {
                jSONObject2.put(SocialConstants.PARAM_APP_DESC, str2);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        StringBuilder a2 = a.a("返回参数:");
        a2.append(jSONObject2.toString());
        c2.b("AuthnResult", a2.toString());
        return jSONObject2;
    }

    public static int b(Context context, String str) {
        int identifier = context.getResources().getIdentifier(str, "anim", context.getPackageName());
        if (identifier != 0) {
            return identifier;
        }
        throw new Resources.NotFoundException(str);
    }

    public static int a(Context context, String str) {
        int identifier = context.getResources().getIdentifier(str, "drawable", context.getPackageName());
        if (identifier != 0) {
            return identifier;
        }
        throw new Resources.NotFoundException(str);
    }
}
