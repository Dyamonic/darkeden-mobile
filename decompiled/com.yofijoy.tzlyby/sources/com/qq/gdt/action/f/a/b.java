package com.qq.gdt.action.f.a;

import android.text.TextUtils;
import com.qq.gdt.action.f.b.i;
import com.qq.gdt.action.f.b.j;
import org.json.JSONObject;

/* loaded from: classes.dex */
public abstract class b extends a<com.qq.gdt.action.f.a> {
    public b() {
        super(false);
    }

    @Override // com.qq.gdt.action.f.a.a
    /* renamed from: c, reason: merged with bridge method [inline-methods] */
    public com.qq.gdt.action.f.a b(i iVar) throws Exception {
        j e;
        com.qq.gdt.action.f.a aVar = new com.qq.gdt.action.f.a(-1, "Unknown message");
        if (iVar != null && (e = iVar.e()) != null) {
            String b = e.b();
            if (!TextUtils.isEmpty(b)) {
                JSONObject jSONObject = new JSONObject(b);
                aVar.a(jSONObject.optInt("ret", -1));
                aVar.a(jSONObject.optString("msg", "Unknown message"));
            }
        }
        return aVar;
    }
}
