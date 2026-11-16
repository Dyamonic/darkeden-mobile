package com.qq.gdt.action.a;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.RemoteException;
import com.qq.gdt.action.acj.odis;
import com.qq.gdt.action.j.o;

/* loaded from: classes.dex */
public class a {

    /* renamed from: com.qq.gdt.action.a.a$a, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static final class C0032a {
        private final String a;
        private final boolean b;

        public C0032a(String str, boolean z) {
            this.a = str;
            this.b = z;
        }

        public String a() {
            return this.a;
        }

        public boolean b() {
            return this.b;
        }
    }

    public static void a(Context context) {
        C0032a c = c(context);
        if (c != null) {
            SharedPreferences.Editor edit = context.getSharedPreferences("com.qq.gdt.action.DeviceIdPref", 0).edit();
            edit.putString("native_oaid", c.a);
            edit.putString("is_oaid_track_limited", String.valueOf(c.b));
            edit.apply();
        }
    }

    public static C0032a b(Context context) {
        String string;
        SharedPreferences sharedPreferences = context.getSharedPreferences("com.qq.gdt.action.DeviceIdPref", 0);
        if (sharedPreferences == null || (string = sharedPreferences.getString("is_oaid_track_limited", null)) == null || string.isEmpty()) {
            return null;
        }
        return new C0032a(sharedPreferences.getString("native_oaid", null), Boolean.parseBoolean(sharedPreferences.getString("is_oaid_track_limited", null)));
    }

    private static C0032a c(Context context) {
        b bVar = new b();
        Intent intent = new Intent("com.uodis.opendevice.OPENIDS_SERVICE");
        intent.setPackage(c.a(context));
        if (context.bindService(intent, bVar, 1)) {
            try {
                try {
                    odis a = odis.a.a(bVar.a());
                    C0032a c0032a = new C0032a(a.a(), a.b());
                    try {
                        context.unbindService(bVar);
                        return c0032a;
                    } catch (Throwable th) {
                        o.a("unbind " + th.getClass().getSimpleName(), new Object[0]);
                        return c0032a;
                    }
                } catch (Throwable th2) {
                    try {
                        context.unbindService(bVar);
                    } catch (Throwable th3) {
                        o.a("unbind " + th3.getClass().getSimpleName(), new Object[0]);
                    }
                    throw th2;
                }
            } catch (RemoteException unused) {
                o.a("bind hms service RemoteException", new Object[0]);
                try {
                    context.unbindService(bVar);
                } catch (Throwable th4) {
                    o.a("unbind " + th4.getClass().getSimpleName(), new Object[0]);
                }
            } catch (InterruptedException unused2) {
                o.a("bind hms service InterruptedException", new Object[0]);
                try {
                    context.unbindService(bVar);
                } catch (Throwable th5) {
                    o.a("unbind " + th5.getClass().getSimpleName(), new Object[0]);
                }
            }
        }
        return null;
    }
}
