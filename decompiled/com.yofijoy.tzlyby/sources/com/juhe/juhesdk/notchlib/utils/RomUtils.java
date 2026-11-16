package com.juhe.juhesdk.notchlib.utils;

import android.os.Build;
import android.os.Environment;
import android.text.TextUtils;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.Properties;

/* loaded from: classes.dex */
public final class RomUtils {
    private static final String HUAWEI = "huawei";
    private static final String OPPO = "oppo";
    private static final String UNKNOWN = "unknown";
    private static final String VERSION_PROPERTY_HUAWEI = "ro.build.version.emui";
    private static final String VERSION_PROPERTY_OPPO = "ro.build.version.opporom";
    private static final String VERSION_PROPERTY_VIVO = "ro.vivo.os.build.display.id";
    private static final String VERSION_PROPERTY_XIAOMI = "ro.build.version.incremental";
    private static final String VIVO = "vivo";
    private static final String XIAOMI = "xiaomi";
    private static RomInfo bean;

    private RomUtils() {
        throw new UnsupportedOperationException("u can't instantiate me...");
    }

    public static boolean isHuawei() {
        return HUAWEI.equals(getRomInfo().name);
    }

    public static boolean isVivo() {
        return VIVO.equals(getRomInfo().name);
    }

    public static boolean isXiaomi() {
        return XIAOMI.equals(getRomInfo().name);
    }

    public static boolean isOppo() {
        return OPPO.equals(getRomInfo().name);
    }

    public static RomInfo getRomInfo() {
        RomInfo romInfo = bean;
        if (romInfo != null) {
            return romInfo;
        }
        bean = new RomInfo();
        String brand = getBrand();
        String manufacturer = getManufacturer();
        if (!isRightRom(brand, manufacturer, HUAWEI)) {
            if (!isRightRom(brand, manufacturer, VIVO)) {
                if (!isRightRom(brand, manufacturer, XIAOMI)) {
                    if (isRightRom(brand, manufacturer, OPPO)) {
                        bean.name = OPPO;
                        bean.version = getRomVersion(VERSION_PROPERTY_OPPO);
                        return bean;
                    }
                    bean.name = manufacturer;
                    bean.version = getRomVersion("");
                    return bean;
                }
                bean.name = XIAOMI;
                bean.version = getRomVersion(VERSION_PROPERTY_XIAOMI);
                return bean;
            }
            bean.name = VIVO;
            bean.version = getRomVersion(VERSION_PROPERTY_VIVO);
            return bean;
        }
        bean.name = HUAWEI;
        String romVersion = getRomVersion(VERSION_PROPERTY_HUAWEI);
        String[] split = romVersion.split("_");
        if (split.length > 1) {
            bean.version = split[1];
        } else {
            bean.version = romVersion;
        }
        return bean;
    }

    private static boolean isRightRom(final String brand, final String manufacturer, final String... names) {
        for (String str : names) {
            if (brand.contains(str) || manufacturer.contains(str)) {
                return true;
            }
        }
        return false;
    }

    private static String getManufacturer() {
        try {
            String str = Build.MANUFACTURER;
            return !TextUtils.isEmpty(str) ? str.toLowerCase() : "unknown";
        } catch (Throwable unused) {
            return "unknown";
        }
    }

    private static String getBrand() {
        try {
            String str = Build.BRAND;
            return !TextUtils.isEmpty(str) ? str.toLowerCase() : "unknown";
        } catch (Throwable unused) {
            return "unknown";
        }
    }

    private static String getRomVersion(final String propertyName) {
        String systemProperty = !TextUtils.isEmpty(propertyName) ? getSystemProperty(propertyName) : "";
        if (TextUtils.isEmpty(systemProperty) || systemProperty.equals("unknown")) {
            try {
                String str = Build.DISPLAY;
                if (!TextUtils.isEmpty(str)) {
                    systemProperty = str.toLowerCase();
                }
            } catch (Throwable unused) {
            }
        }
        return TextUtils.isEmpty(systemProperty) ? "unknown" : systemProperty;
    }

    private static String getSystemProperty(final String name) {
        String systemPropertyByShell = getSystemPropertyByShell(name);
        if (!TextUtils.isEmpty(systemPropertyByShell)) {
            return systemPropertyByShell;
        }
        String systemPropertyByStream = getSystemPropertyByStream(name);
        return (TextUtils.isEmpty(systemPropertyByStream) && Build.VERSION.SDK_INT < 28) ? getSystemPropertyByReflect(name) : systemPropertyByStream;
    }

    private static String getSystemPropertyByShell(final String propName) {
        BufferedReader bufferedReader;
        String readLine;
        BufferedReader bufferedReader2 = null;
        try {
            try {
                bufferedReader = new BufferedReader(new InputStreamReader(Runtime.getRuntime().exec("getprop " + propName).getInputStream()), 1024);
            } catch (IOException unused) {
                return "";
            }
        } catch (IOException unused2) {
        } catch (Throwable th) {
            th = th;
        }
        try {
            readLine = bufferedReader.readLine();
        } catch (IOException unused3) {
            bufferedReader2 = bufferedReader;
            if (bufferedReader2 == null) {
                return "";
            }
            bufferedReader2.close();
            return "";
        } catch (Throwable th2) {
            th = th2;
            bufferedReader2 = bufferedReader;
            if (bufferedReader2 != null) {
                try {
                    bufferedReader2.close();
                } catch (IOException unused4) {
                }
            }
            throw th;
        }
        if (readLine != null) {
            try {
                bufferedReader.close();
            } catch (IOException unused5) {
            }
            return readLine;
        }
        bufferedReader.close();
        return "";
    }

    private static String getSystemPropertyByStream(final String key) {
        try {
            Properties properties = new Properties();
            properties.load(new FileInputStream(new File(Environment.getRootDirectory(), "build.prop")));
            return properties.getProperty(key, "");
        } catch (Exception unused) {
            return "";
        }
    }

    private static String getSystemPropertyByReflect(String key) {
        try {
            Class<?> cls = Class.forName("android.os.SystemProperties");
            return (String) cls.getMethod("get", String.class, String.class).invoke(cls, key, "");
        } catch (Exception unused) {
            return "";
        }
    }

    /* loaded from: classes.dex */
    public static class RomInfo {
        private String name;
        private String version;

        public String getName() {
            return this.name;
        }

        public String getVersion() {
            return this.version;
        }

        public String toString() {
            return "RomInfo{name=" + this.name + ", version=" + this.version + "}";
        }
    }
}
