package com.huawei.hms.ads.identifier;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import android.util.Log;
import java.lang.ref.SoftReference;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;

/* loaded from: classes.dex */
public abstract class d {
    private static final byte[] a = new byte[0];
    private static final byte[] b = new byte[0];
    private static SoftReference<byte[]> c;

    /* renamed from: com.huawei.hms.ads.identifier.d$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public static class AnonymousClass1 implements Runnable {
        public final /* synthetic */ a a;
        public final /* synthetic */ String b;

        public AnonymousClass1(a aVar, String str) {
            this.a = aVar;
            this.b = str;
        }

        @Override // java.lang.Runnable
        public native void run();
    }

    /* loaded from: classes.dex */
    public static class a {
        private static final Long a = 120000L;
        private static final byte[] h = new byte[0];
        private static volatile a i;
        private SharedPreferences b;
        private SharedPreferences c;
        private SharedPreferences d;
        private final byte[] e = new byte[0];
        private final byte[] f = new byte[0];
        private final byte[] g = new byte[0];
        private Context j;

        private a(Context context) {
            this.b = null;
            this.c = null;
            this.d = null;
            try {
                this.j = context.getApplicationContext();
                Context a2 = e.a(context);
                this.b = a2.getSharedPreferences("identifier_sp_story_book_file", 4);
                this.c = a2.getSharedPreferences("identifier_hiad_sp_bed_rock_file", 4);
                this.d = a2.getSharedPreferences("identifier_hiad_sp_red_stone_file", 4);
            } catch (Throwable th) {
                Log.w("Aes128", "get SharedPreference error: " + th.getClass().getSimpleName());
            }
        }

        public static a a(Context context) {
            a aVar;
            if (i != null) {
                return i;
            }
            synchronized (h) {
                if (i == null) {
                    i = new a(context);
                }
                aVar = i;
            }
            return aVar;
        }

        public String a() {
            synchronized (this.f) {
                SharedPreferences sharedPreferences = this.d;
                if (sharedPreferences == null) {
                    return "";
                }
                String string = sharedPreferences.getString("read_first_chapter", "");
                if (TextUtils.isEmpty(string)) {
                    return string;
                }
                return d.a(string, d.a(this.j));
            }
        }

        public void a(String str) {
            synchronized (this.f) {
                if (this.d == null) {
                    return;
                }
                byte[] a2 = d.a(this.j);
                this.d.edit().putString("read_first_chapter", d.b(str, a2)).apply();
            }
        }

        public void b() {
            synchronized (this.g) {
                SharedPreferences sharedPreferences = this.b;
                if (sharedPreferences == null) {
                    return;
                }
                sharedPreferences.edit().putLong("read_first_chapter_time", System.currentTimeMillis()).apply();
            }
        }

        public void b(String str) {
            synchronized (this.e) {
                SharedPreferences sharedPreferences = this.c;
                if (sharedPreferences == null) {
                    return;
                }
                sharedPreferences.edit().putString("get_a_book", str).commit();
            }
        }

        public void c(String str) {
            synchronized (this.g) {
                SharedPreferences sharedPreferences = this.b;
                if (sharedPreferences == null) {
                    return;
                }
                sharedPreferences.edit().putString("catch_a_cat", str).commit();
            }
        }

        public boolean c() {
            synchronized (this.g) {
                SharedPreferences sharedPreferences = this.b;
                if (sharedPreferences == null) {
                    return false;
                }
                long j = sharedPreferences.getLong("read_first_chapter_time", -1L);
                if (j < 0) {
                    return false;
                }
                return j + a.longValue() > System.currentTimeMillis();
            }
        }

        public void d() {
            synchronized (this.g) {
                SharedPreferences sharedPreferences = this.b;
                if (sharedPreferences == null) {
                    return;
                }
                sharedPreferences.edit().putBoolean("has_read_first_chapter", true).apply();
            }
        }

        public void d(String str) {
            synchronized (this.g) {
                this.b.edit().putString("read_second_chapter", str).apply();
            }
        }

        public boolean e() {
            synchronized (this.g) {
                SharedPreferences sharedPreferences = this.b;
                if (sharedPreferences == null) {
                    return false;
                }
                return sharedPreferences.getBoolean("has_read_first_chapter", false);
            }
        }

        public String f() {
            synchronized (this.e) {
                SharedPreferences sharedPreferences = this.c;
                if (sharedPreferences == null) {
                    return null;
                }
                return sharedPreferences.getString("get_a_book", null);
            }
        }

        public String g() {
            synchronized (this.g) {
                SharedPreferences sharedPreferences = this.b;
                if (sharedPreferences == null) {
                    return null;
                }
                String string = sharedPreferences.getString("catch_a_cat", null);
                if (string == null) {
                    string = d.a(d.a());
                    c(string);
                }
                return string;
            }
        }

        public String h() {
            String string;
            synchronized (this.g) {
                string = this.b.getString("read_second_chapter", "");
            }
            return string;
        }
    }

    private static native String a(Context context, a aVar);

    public static native String a(String str, String str2);

    public static native String a(String str, byte[] bArr);

    public static native String a(byte[] bArr);

    public static native byte[] a();

    public static native byte[] a(int i);

    public static native byte[] a(Context context);

    private static native byte[] a(Context context, String str);

    public static native byte[] a(String str);

    private static native byte[] a(String str, String str2, String str3);

    private static native byte[] a(String str, byte[] bArr, byte[] bArr2);

    private static native byte[] a(byte[] bArr, byte[] bArr2);

    public static native byte[] a(byte[] bArr, byte[] bArr2, byte[] bArr3);

    public static native byte[] a(char[] cArr, byte[] bArr);

    private static native String b(int i);

    private static native String b(Context context);

    public static native String b(String str, byte[] bArr);

    private static native boolean b(byte[] bArr);

    public static native byte[] b();

    public static native byte[] b(String str);

    private static native String c(String str);

    private static native String c(String str, byte[] bArr);

    private static native SecureRandom c();

    private static native boolean c(byte[] bArr);

    private static native byte[] c(Context context);

    private static native String d(String str);

    private static native String d(String str, byte[] bArr);

    private static native AlgorithmParameterSpec d(byte[] bArr);

    private static native boolean d();

    private static native byte[] d(Context context);

    private static native byte[] e(Context context);

    private static native String f(Context context);
}
