package com.qq.gdt.action.multioprocess;

import android.text.TextUtils;
import com.qq.gdt.action.ChannelType;
import com.qq.gdt.action.j.o;
import com.qq.gdt.action.j.v;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class b implements Serializable {
    String a;
    String b;
    String c;
    String d;
    String e;
    String f;
    ChannelType g;
    ChannelType h;
    String i;
    String j;
    String k;
    com.qq.gdt.action.multioprocess.b.a l;

    private void a(JSONObject jSONObject, String str, String str2) {
        if (v.a(str2)) {
            return;
        }
        try {
            jSONObject.putOpt(str, str2);
        } catch (JSONException e) {
            e.printStackTrace();
        }
    }

    public b a(ChannelType channelType) {
        this.h = channelType;
        return this;
    }

    public b a(com.qq.gdt.action.multioprocess.b.a aVar) {
        this.l = aVar;
        return this;
    }

    public b a(String str) {
        this.a = str;
        return this;
    }

    public JSONObject a() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        ChannelType channelType = this.h;
        if (channelType != null) {
            jSONObject.putOpt("ipcChannelType", channelType);
        }
        ChannelType channelType2 = this.g;
        if (channelType2 != null) {
            jSONObject.putOpt("ipcChannelTypeByRemote", channelType2);
        }
        a(jSONObject, "ipcUserActionSetId", this.a);
        a(jSONObject, "ipcAppSecretKey", this.b);
        a(jSONObject, "ipcChannelId", this.c);
        a(jSONObject, "ipcUserActionSetIdByRemote", this.d);
        a(jSONObject, "ipcAppSecretKeyByRemote", this.e);
        a(jSONObject, "ipcChannelIdByRemote", this.f);
        a(jSONObject, "ipcUserUniqueId", this.k);
        a(jSONObject, "ipcPrivacyStatus", this.j);
        return jSONObject;
    }

    public b b(ChannelType channelType) {
        this.g = channelType;
        return this;
    }

    public b b(String str) {
        this.b = str;
        return this;
    }

    public String b() {
        return this.a;
    }

    public b c(String str) {
        this.c = str;
        return this;
    }

    public String c() {
        return this.b;
    }

    public b d(String str) {
        this.k = str;
        return this;
    }

    public String d() {
        return this.c;
    }

    public ChannelType e() {
        return this.h;
    }

    public b e(String str) {
        this.d = str;
        return this;
    }

    public b f(String str) {
        this.e = str;
        return this;
    }

    public String f() {
        return this.k;
    }

    public b g(String str) {
        this.f = str;
        return this;
    }

    public String g() {
        return this.j;
    }

    public b h(String str) {
        this.i = str;
        return this;
    }

    public String h() {
        return this.d;
    }

    public String i() {
        return this.e;
    }

    public String j() {
        return this.f;
    }

    public boolean k() {
        return (v.a(this.a) || v.a(this.b)) ? false : true;
    }

    public boolean l() {
        return (v.a(this.d) || v.a(this.e)) ? false : true;
    }

    public ChannelType m() {
        return this.g;
    }

    public String n() {
        if (TextUtils.isEmpty(this.i)) {
            this.i = "1";
        }
        return this.i;
    }

    public com.qq.gdt.action.multioprocess.b.a o() {
        return this.l;
    }

    public boolean p() {
        return !v.a(this.f);
    }

    public List<String> q() {
        ArrayList arrayList;
        Exception e;
        ArrayList arrayList2 = new ArrayList();
        try {
            if (!p()) {
                return arrayList2;
            }
            arrayList = new ArrayList();
            try {
                o.a("getRemoteChannelIds = " + this.f, new Object[0]);
                JSONArray jSONArray = new JSONArray(this.f);
                for (int i = 0; i < jSONArray.length(); i++) {
                    String obj = jSONArray.get(i).toString();
                    o.a("getRemoteChannelIds each = " + obj, new Object[0]);
                    if (!arrayList.contains(obj)) {
                        arrayList.add(obj);
                    }
                }
                return arrayList;
            } catch (Exception e2) {
                e = e2;
                o.b("getRemoteChannelIds ipcChannelIdByRemote e ", e);
                return arrayList;
            }
        } catch (Exception e3) {
            arrayList = arrayList2;
            e = e3;
        }
    }

    public String toString() {
        return "{\"ipcUserActionSetId\":\"" + this.a + "\",\"ipcAppSecretKey\":\"" + this.b + "\",\"ipcChannelId\":\"" + this.c + "\",\"ipcUserActionSetIdByRemote\":\"" + this.d + "\",\"ipcAppSecretKeyByRemote\":\"" + this.e + "\",\"ipcChannelIdByRemote\":\"" + this.f + "\",\"ipcChannelTypeByRemote\":" + this.g + ",\"ipcChannelType\":" + this.h + ",\"fromByRemote\":\"" + this.i + "\",\"ipcPrivacyStatus\":\"" + this.j + "\",\"ipcUserUniqueId\":\"" + this.k + "\",\"deviceInfo\":" + this.l + AbstractJsonLexerKt.END_OBJ;
    }
}
