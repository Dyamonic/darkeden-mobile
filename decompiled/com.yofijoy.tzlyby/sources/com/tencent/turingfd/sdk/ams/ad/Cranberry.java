package com.tencent.turingfd.sdk.ams.ad;

import android.util.Base64;
import java.io.ByteArrayInputStream;
import java.security.cert.Certificate;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class Cranberry {
    public static final String e = Cfinally.a(Cfinally.N0);
    public static final String f = Cfinally.a(Cfinally.O0);
    public static final String g = Cfinally.a(Cfinally.P0);
    public static final String h = Cfinally.a(Cfinally.Q0);
    public static final String i = Cfinally.a(Cfinally.R0);
    public long a;
    public int b;
    public String c;
    public ArrayList<String> d;

    public Cranberry(String str, String str2) {
        this.a = -1L;
        this.b = -1;
        this.c = "";
        this.d = null;
        try {
            JSONObject jSONObject = new JSONObject(str);
            String str3 = i;
            if (jSONObject.has(str3)) {
                JSONArray optJSONArray = jSONObject.optJSONArray(str3);
                optJSONArray.length();
                this.d = new ArrayList<>();
                for (int i2 = 0; i2 < optJSONArray.length(); i2++) {
                    this.d.add(optJSONArray.getString(i2));
                }
                a((X509Certificate) CertificateFactory.getInstance("X.509").generateCertificate(new ByteArrayInputStream(this.d.get(0).getBytes())));
                jSONObject.put(g, this.c);
                jSONObject.put(h, this.b);
                jSONObject.put(f, this.a);
                jSONObject.toString();
                return;
            }
            this.a = jSONObject.optLong(f);
            this.b = jSONObject.optInt(h);
            this.c = jSONObject.optString(g);
            jSONObject.optString(e);
        } catch (Exception unused) {
        }
    }

    public final void a(X509Certificate x509Certificate) {
        try {
            Cclass.a(x509Certificate, this);
        } catch (Exception unused) {
        }
    }

    public Cranberry(Certificate[] certificateArr) {
        this.a = -1L;
        this.b = -1;
        this.c = "";
        this.d = null;
        if (certificateArr != null) {
            try {
                ArrayList<String> arrayList = new ArrayList<>();
                JSONArray jSONArray = new JSONArray();
                for (int i2 = 0; i2 < certificateArr.length; i2++) {
                    Certificate certificate = certificateArr[i2];
                    Base64.encodeToString(certificate.getEncoded(), 2);
                    String a = Cclass.a(certificate);
                    if (i2 == 0) {
                        a((X509Certificate) certificate);
                    }
                    jSONArray.put(a);
                    arrayList.add(a);
                }
                this.d = arrayList;
                JSONObject jSONObject = new JSONObject();
                jSONObject.put(i, jSONArray);
                jSONObject.put(g, this.c);
                jSONObject.put(h, this.b);
                jSONObject.put(f, this.a);
                jSONObject.toString();
            } catch (Exception unused) {
            }
        }
    }
}
