package com.bytedance.bdtracker;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import android.util.Base64;
import com.bytedance.applog.log.LoggerImpl;
import com.rich.oauth.util.EncryptUtils;
import java.util.HashSet;
import java.util.Objects;
import java.util.Set;
import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
import okhttp3.HttpUrl;
import org.json.JSONArray;

/* loaded from: classes.dex */
public class p4 extends m4 {
    public static final String[] e = new String[0];
    public static boolean f;
    public final String[] d;

    public p4(String str, Context context, String str2) {
        super(str, context, str2);
        SharedPreferences a = j4.a(context, "security_store_" + str, 0);
        if (a.contains("sks_kv")) {
            this.d = a.getString("sks_kv", "").split("/");
        } else {
            String[] a2 = w4.a();
            this.d = a2;
            a.edit().putString("sks_kv", a2[0] + "/" + a2[1]).apply();
        }
        a(a, this.d);
    }

    public p4(String str, Context context, String str2, String str3) {
        super(str, context, str2);
        String[] strArr = {str3, new String(new byte[16])};
        this.d = strArr;
        LoggerImpl.global().debug("[{}][KVStore]SecurityKVStore create use custom key", str);
        SharedPreferences a = j4.a(context, "security_store_" + str, 0);
        if (a.contains("sks_kv")) {
            a.edit().remove("sks_kv").apply();
        }
        a(a, strArr);
    }

    public static String a(String str, String[] strArr, String str2) {
        if (strArr != null && strArr.length >= 2) {
            String str3 = strArr[0];
            String str4 = strArr[1];
            try {
                Cipher cipher = Cipher.getInstance("AES/CBC/PKCS7PADDING");
                cipher.init(2, new SecretKeySpec(str3.getBytes(), EncryptUtils.AES_Algorithm), new IvParameterSpec(str4.getBytes()));
                return new String(cipher.doFinal(Base64.decode(str, 0)));
            } catch (Throwable th) {
                LoggerImpl.global().error("[{}][KVStore]decrypt aes failed", th, str2);
            }
        }
        return str;
    }

    public static String[] a(Context context, String str) {
        String string;
        SharedPreferences a = j4.a(context, "security_store_" + str, 0);
        if (a.contains("sks_kv") && (string = a.getString("sks_kv", null)) != null) {
            return string.split("/");
        }
        return e;
    }

    public static String b(String str, String[] strArr, String str2) {
        if (strArr != null && strArr.length >= 2) {
            String str3 = strArr[0];
            String str4 = strArr[1];
            try {
                Cipher cipher = Cipher.getInstance("AES/CBC/PKCS7PADDING");
                cipher.init(1, new SecretKeySpec(str3.getBytes(), EncryptUtils.AES_Algorithm), new IvParameterSpec(str4.getBytes()));
                return Base64.encodeToString(cipher.doFinal(str.getBytes()), 0);
            } catch (Throwable th) {
                LoggerImpl.global().error("[{}][KVStore]encrypt aes failed", th, str2);
            }
        }
        return str;
    }

    public static HashSet<String> b(String str, String str2) {
        try {
            JSONArray jSONArray = new JSONArray(str);
            int length = jSONArray.length();
            HashSet<String> hashSet = new HashSet<>();
            for (int i = 0; i < length; i++) {
                String string = jSONArray.getString(i);
                if (!TextUtils.isEmpty(string)) {
                    hashSet.add(string);
                }
            }
            return hashSet;
        } catch (Throwable th) {
            LoggerImpl.global().error("[{}][KVStore]convertToSet failed", th, str2);
            return new HashSet<>();
        }
    }

    @Override // com.bytedance.bdtracker.m4
    public String a() {
        return "sks";
    }

    public final void a(SharedPreferences sharedPreferences, String[] strArr) {
        if (sharedPreferences.contains("sks_hash")) {
            String string = sharedPreferences.getString("sks_hash", "");
            String a = v4.a(strArr[0]);
            if (f || !Objects.equals(string, a)) {
                if (!Objects.equals(string, a)) {
                    f = true;
                }
                o4.a(this.a, this.b);
            }
        }
        sharedPreferences.edit().putString("sks_hash", v4.a(strArr[0])).apply();
    }

    @Override // com.bytedance.bdtracker.m4
    public void a(String str) {
        String a = a.a("", str);
        if (this.a.contains(a)) {
            this.a.edit().remove(a).apply();
            LoggerImpl.global().debug("[{}][KVStore]BaseKVStore remove raw key: {}", this.b, a);
        }
    }

    @Override // com.bytedance.bdtracker.m4
    public void a(String str, boolean z) {
        this.a.edit().putString(a() + str, b(String.valueOf(z), this.d, this.b)).apply();
    }

    @Override // com.bytedance.applog.store.kv.IKVStore
    public boolean getBoolean(String str, boolean z) {
        String a = a.a("", str);
        if (this.a.contains(a)) {
            boolean z2 = this.a.getBoolean(a, z);
            this.a.edit().remove(a).apply();
            a(str);
            a(str, z2);
            LoggerImpl.global().debug("[{}][KVStore]SecurityKVStore replace raw key: {}", this.b, str);
        }
        String string = this.a.getString(a() + str, null);
        if (TextUtils.isEmpty(string)) {
            return z;
        }
        try {
            return Boolean.parseBoolean(a(string, this.d, this.b));
        } catch (Throwable th) {
            LoggerImpl.global().error("[{}][KVStore]SecurityKVStore Boolean.parseBoolean failed, key: {}, ", th, this.b, str);
            remove(str);
            return z;
        }
    }

    @Override // com.bytedance.applog.store.kv.IKVStore
    public int getInt(String str, int i) {
        String a = a.a("", str);
        if (this.a.contains(a)) {
            LoggerImpl.global().debug("[{}][KVStore]SecurityKVStore replace raw key: {}", this.b, str);
            int i2 = this.a.getInt(a, i);
            this.a.edit().remove(a).apply();
            a(str);
            a(str, i2);
        }
        String string = this.a.getString(a() + str, null);
        if (TextUtils.isEmpty(string)) {
            return i;
        }
        try {
            return Integer.parseInt(a(string, this.d, this.b));
        } catch (Throwable th) {
            LoggerImpl.global().error("[{}][KVStore]SecurityKVStore Integer.parseInt failed, key: {}, ", th, this.b, str);
            remove(str);
            return i;
        }
    }

    @Override // com.bytedance.applog.store.kv.IKVStore
    public long getLong(String str, long j) {
        String a = a.a("", str);
        if (this.a.contains(a)) {
            long j2 = this.a.getLong(a, j);
            this.a.edit().remove(a).apply();
            a(str);
            a(str, j2);
            LoggerImpl.global().debug("[{}][KVStore]SecurityKVStore replace raw key: {}", this.b, str);
        }
        String string = this.a.getString(a() + str, null);
        if (TextUtils.isEmpty(string)) {
            return j;
        }
        try {
            return Long.parseLong(a(string, this.d, this.b));
        } catch (Throwable th) {
            LoggerImpl.global().error("[{}][KVStore]SecurityKVStore Long.parseLong failed, key: {}, ", th, this.b, str);
            remove(str);
            return j;
        }
    }

    @Override // com.bytedance.applog.store.kv.IKVStore
    public String getString(String str, String str2) {
        String a = a.a("", str);
        if (this.a.contains(a)) {
            String string = this.a.getString(a, str2);
            this.a.edit().remove(a).apply();
            a(str);
            a(str, string);
            LoggerImpl.global().debug("[{}][KVStore]SecurityKVStore replace raw key: {}", this.b, str);
        }
        String string2 = this.a.getString(a() + str, str2);
        return TextUtils.isEmpty(string2) ? str2 : a(string2, this.d, this.b);
    }

    @Override // com.bytedance.applog.store.kv.IKVStore
    public Set<String> getStringSet(String str, Set<String> set) {
        String a = a.a("", str);
        if (this.a.contains(a)) {
            Set<String> stringSet = this.a.getStringSet(a, set);
            this.a.edit().remove(a).apply();
            a(str);
            if (stringSet == null) {
                stringSet = new HashSet<>();
            }
            a(str, stringSet);
            LoggerImpl.global().debug("[{}][KVStore]SecurityKVStore replace raw key: {}", this.b, str);
        }
        if (TextUtils.isEmpty(this.a.getString(a() + str, null))) {
            return set;
        }
        return b(a(this.a.getString(a() + str, HttpUrl.PATH_SEGMENT_ENCODE_SET_URI), this.d, this.b), this.b);
    }

    @Override // com.bytedance.bdtracker.m4
    public void a(String str, int i) {
        this.a.edit().putString(a() + str, b(String.valueOf(i), this.d, this.b)).apply();
    }

    @Override // com.bytedance.bdtracker.m4
    public void a(String str, long j) {
        this.a.edit().putString(a() + str, b(String.valueOf(j), this.d, this.b)).apply();
    }

    @Override // com.bytedance.bdtracker.m4
    public void a(String str, String str2) {
        this.a.edit().putString(a() + str, b(str2, this.d, this.b)).apply();
    }

    @Override // com.bytedance.bdtracker.m4
    public void a(String str, Set<String> set) {
        this.a.edit().putString(a() + str, b(set.toString(), this.d, this.b)).apply();
    }
}
