package com.qq.gdt.action.multioprocess;

import android.content.ContentResolver;
import android.content.Context;
import android.net.Uri;
import android.os.Bundle;
import com.qq.gdt.action.e;
import com.qq.gdt.action.j.g;
import com.qq.gdt.action.j.h;
import com.qq.gdt.action.j.j;
import com.qq.gdt.action.j.o;
import com.qq.gdt.action.j.s;

/* loaded from: classes.dex */
public class a {
    private static volatile a a;

    public static a a() {
        if (a == null) {
            synchronized (a.class) {
                if (a == null) {
                    a = new a();
                }
            }
        }
        return a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public b a(Context context, String str) {
        return a(context, str, (b) null);
    }

    private b a(Context context, String str, b bVar) {
        try {
            if (str.equals("save_user_info")) {
                com.qq.gdt.action.h.a.a(3202);
            } else {
                com.qq.gdt.action.h.a.a(3203);
            }
            if (context == null) {
                context = e.a().g();
            }
            if (context == null) {
                return null;
            }
            com.qq.gdt.action.h.a.a(3206);
            ContentResolver contentResolver = context.getApplicationContext().getContentResolver();
            Uri parse = Uri.parse("content://" + h.d() + ".GDTInitProvider");
            Bundle bundle = new Bundle();
            if (str.equals("save_user_info") && bVar != null) {
                bundle.putSerializable("user_message_info", bVar);
                com.qq.gdt.action.h.a.a(3207, bVar);
            }
            b bVar2 = (b) contentResolver.call(parse, str, (String) null, bundle).getSerializable("result_user_info");
            com.qq.gdt.action.h.a.a(3208, bVar2);
            return bVar2;
        } catch (Throwable th) {
            o.a("sendMsg e", th);
            return null;
        }
    }

    public void a(b bVar) {
        if (c()) {
            try {
                if (g.a().b()) {
                    d.a().a = bVar;
                    s.a(bVar);
                    com.qq.gdt.action.h.a.a(3204, bVar);
                } else {
                    a(e.a().g(), "save_user_info", bVar);
                }
            } catch (Throwable th) {
                o.a("client process saveMessage t = " + th, new Object[0]);
            }
        }
    }

    public void a(final c cVar) {
        j.a().b().execute(new Runnable() { // from class: com.qq.gdt.action.multioprocess.a.1
            @Override // java.lang.Runnable
            public void run() {
                b a2;
                c cVar2;
                try {
                    if (!a.this.c()) {
                        cVar.a(null);
                        return;
                    }
                    if (g.a().b()) {
                        a2 = d.a().a;
                        if (a2 == null) {
                            s.a(cVar);
                            return;
                        }
                        cVar2 = cVar;
                    } else {
                        Context g = e.a().g();
                        if (!e.a().A()) {
                            com.qq.gdt.action.h.a.a(40037);
                            cVar.a(null);
                            return;
                        } else {
                            o.a("client process time allow , try get info", new Object[0]);
                            e.a().a = System.currentTimeMillis();
                            a2 = a.this.a(g, "get_user_info");
                            cVar2 = cVar;
                        }
                    }
                    cVar2.a(a2);
                } catch (Throwable th) {
                    o.a("getMessageAsync Throwable t = " + th, new Object[0]);
                    cVar.a(null);
                }
            }
        });
    }

    public b b() {
        try {
            if (!c()) {
                return null;
            }
            if (!g.a().b()) {
                return a(e.a().g(), "get_user_info");
            }
            if (d.a().a == null) {
                return s.a();
            }
            return null;
        } catch (Throwable th) {
            o.a("getMessageAsync Throwable t = " + th, new Object[0]);
            return null;
        }
    }

    public boolean c() {
        boolean z = true;
        try {
            if (com.qq.gdt.action.b.a(e.a().g()).q() != 0) {
                z = false;
            }
        } catch (Throwable th) {
            o.a("fillUserInfo e = " + th, new Object[0]);
        }
        o.a("fillUserInfo " + z, new Object[0]);
        return z;
    }
}
