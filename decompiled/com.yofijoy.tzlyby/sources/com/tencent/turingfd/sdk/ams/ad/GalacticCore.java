package com.tencent.turingfd.sdk.ams.ad;

import android.os.Build;
import android.security.keystore.KeyGenParameterSpec;
import java.lang.reflect.InvocationTargetException;
import java.math.BigInteger;
import java.security.spec.AlgorithmParameterSpec;
import java.util.Objects;
import javax.security.auth.x500.X500Principal;

/* loaded from: classes2.dex */
public abstract class GalacticCore {

    /* renamed from: com.tencent.turingfd.sdk.ams.ad.GalacticCore$do, reason: invalid class name */
    /* loaded from: classes2.dex */
    public static class Cdo extends GalacticCore {
        public KeyGenParameterSpec.Builder a;

        public Cdo(String str, int i) {
            this.a = null;
            this.a = new KeyGenParameterSpec.Builder(str, i);
        }

        @Override // com.tencent.turingfd.sdk.ams.ad.GalacticCore
        public AlgorithmParameterSpec a() throws ClassNotFoundException, NoSuchMethodException, IllegalAccessException, InvocationTargetException, InstantiationException {
            return this.a.build();
        }

        @Override // com.tencent.turingfd.sdk.ams.ad.GalacticCore
        public GalacticCore b(String... strArr) {
            this.a.setSignaturePaddings(strArr);
            return this;
        }

        @Override // com.tencent.turingfd.sdk.ams.ad.GalacticCore
        public GalacticCore a(String... strArr) {
            this.a.setDigests(strArr);
            return this;
        }
    }

    public static GalacticCore a(String str, int i) {
        if (Build.VERSION.SDK_INT >= 23) {
            return new Cdo(str, i);
        }
        return new Cif(str, i);
    }

    public abstract GalacticCore a(String... strArr);

    public abstract AlgorithmParameterSpec a() throws ClassNotFoundException, NoSuchMethodException, IllegalAccessException, InvocationTargetException, InstantiationException;

    public abstract GalacticCore b(String... strArr);

    /* renamed from: com.tencent.turingfd.sdk.ams.ad.GalacticCore$if, reason: invalid class name */
    /* loaded from: classes2.dex */
    public static class Cif extends GalacticCore {
        public final String a;
        public int b;
        public String[] c;
        public String[] d;

        public Cif(String str, int i) {
            Objects.requireNonNull(str, "keystoreAlias == null");
            if (!str.isEmpty()) {
                this.a = str;
                this.b = i;
                return;
            }
            throw new IllegalArgumentException("keystoreAlias must not be empty");
        }

        @Override // com.tencent.turingfd.sdk.ams.ad.GalacticCore
        public AlgorithmParameterSpec a() throws ClassNotFoundException, NoSuchMethodException, IllegalAccessException, InvocationTargetException, InstantiationException {
            Class<?> cls = Class.forName("android.security.keystore.KeyGenParameterSpec");
            Class<?> cls2 = Integer.TYPE;
            Class<?> cls3 = Boolean.TYPE;
            return (AlgorithmParameterSpec) cls.getConstructor(String.class, cls2, AlgorithmParameterSpec.class, X500Principal.class, BigInteger.class, java.util.Date.class, java.util.Date.class, java.util.Date.class, java.util.Date.class, java.util.Date.class, cls2, String[].class, String[].class, String[].class, String[].class, cls3, cls3, cls2).newInstance(this.a, -1, null, null, null, null, null, null, null, null, Integer.valueOf(this.b), this.c, null, this.d, null, Boolean.TRUE, Boolean.FALSE, -1);
        }

        @Override // com.tencent.turingfd.sdk.ams.ad.GalacticCore
        public GalacticCore b(String... strArr) {
            if (strArr.length > 0) {
                strArr = (String[]) strArr.clone();
            }
            this.d = strArr;
            return this;
        }

        @Override // com.tencent.turingfd.sdk.ams.ad.GalacticCore
        public GalacticCore a(String... strArr) {
            if (strArr.length > 0) {
                strArr = (String[]) strArr.clone();
            }
            this.c = strArr;
            return this;
        }
    }
}
