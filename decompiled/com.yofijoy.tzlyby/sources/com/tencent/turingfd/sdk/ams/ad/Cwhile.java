package com.tencent.turingfd.sdk.ams.ad;

import android.util.JsonWriter;
import androidx.core.app.NotificationCompat;
import com.tencent.turingfd.sdk.ams.ad.Nucleus;
import java.io.IOException;
import java.io.StringWriter;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;

/* renamed from: com.tencent.turingfd.sdk.ams.ad.while, reason: invalid class name */
/* loaded from: classes2.dex */
public class Cwhile {
    public static final /* synthetic */ int a = 0;

    static {
        new HashSet();
        new HashSet();
    }

    public static String a() {
        String a2 = Kiwifruit.f.a("s_h");
        if (a2 == null || a2.isEmpty()) {
            return "";
        }
        HashSet hashSet = new HashSet(Arrays.asList(a2.split(";")));
        StringWriter stringWriter = new StringWriter();
        JsonWriter jsonWriter = new JsonWriter(stringWriter);
        try {
            jsonWriter.beginObject();
            Iterator it = hashSet.iterator();
            while (it.hasNext()) {
                String str = (String) it.next();
                jsonWriter.name(str);
                Nucleus.Cif b = Casaba.b(str);
                jsonWriter.beginObject();
                jsonWriter.name("std");
                jsonWriter.value(b.a);
                jsonWriter.name(NotificationCompat.CATEGORY_ERROR);
                jsonWriter.value(b.b);
                jsonWriter.endObject();
            }
            jsonWriter.endObject();
            return stringWriter.toString();
        } catch (IOException unused) {
            return "";
        }
    }
}
