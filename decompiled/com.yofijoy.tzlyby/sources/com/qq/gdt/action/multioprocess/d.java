package com.qq.gdt.action.multioprocess;

import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.HandlerThread;
import android.text.TextUtils;
import com.qq.gdt.action.ChannelType;
import com.qq.gdt.action.e;
import com.qq.gdt.action.j.g;
import com.qq.gdt.action.j.o;
import com.qq.gdt.action.j.v;

/* loaded from: classes.dex */
public class d {
    private static volatile d b;
    public b a;
    private HandlerThread c;
    private Handler d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class a implements Runnable {
        b a;

        a(b bVar) {
            this.a = bVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            o.a("BroadSendRunnable run", new Object[0]);
            Intent intent = new Intent();
            intent.setAction(UserMessageChangeReceiver.a);
            intent.putExtra("user_message", this.a);
            Context g = e.a().g();
            if (g != null && !TextUtils.isEmpty(g.getPackageName())) {
                intent.setPackage(g.getPackageName());
            }
            e.a().g().sendBroadcast(intent, UserMessageChangeReceiver.c);
        }
    }

    public static d a() {
        if (b == null) {
            synchronized (d.class) {
                if (b == null) {
                    b = new d();
                }
            }
        }
        return b;
    }

    private void a(b bVar) {
        o.a("notifyAllProcess BroadSendRunnable, userMessage = " + bVar, new Object[0]);
        if (this.c == null) {
            HandlerThread handlerThread = new HandlerThread("send HandlerThread");
            this.c = handlerThread;
            handlerThread.start();
        }
        if (this.d == null) {
            this.d = new Handler(this.c.getLooper());
        }
        this.d.removeCallbacksAndMessages(null);
        this.d.postDelayed(new a(bVar), 1000L);
    }

    private synchronized void g() {
        if (this.a == null) {
            b b2 = b();
            this.a = b2;
            if (b2 == null) {
                this.a = new b();
            }
        }
    }

    private synchronized com.qq.gdt.action.multioprocess.b.a h() {
        com.qq.gdt.action.multioprocess.b.a aVar;
        aVar = null;
        b bVar = this.a;
        if (bVar != null && bVar.o() != null) {
            aVar = this.a.o();
        }
        return aVar;
    }

    private synchronized void i() {
        int i;
        b bVar;
        int i2;
        b bVar2;
        com.qq.gdt.action.h.a.a(2300, this.a);
        b bVar3 = this.a;
        if (bVar3 != null) {
            com.qq.gdt.action.h.a.a(2301, bVar3);
        }
        if (TextUtils.isEmpty(this.a.b()) || TextUtils.isEmpty(this.a.h())) {
            i = 2308;
            bVar = this.a;
        } else {
            i = this.a.b().equals(this.a.h()) ? 2303 : 2302;
            bVar = this.a;
        }
        com.qq.gdt.action.h.a.a(i, bVar);
        if (TextUtils.isEmpty(this.a.c()) || TextUtils.isEmpty(this.a.i())) {
            com.qq.gdt.action.h.a.a(2309);
        } else {
            com.qq.gdt.action.h.a.a(this.a.c().equals(this.a.i()) ? 2305 : 2304, this.a);
        }
        if (TextUtils.isEmpty(this.a.d()) || TextUtils.isEmpty(this.a.j())) {
            i2 = 2310;
            bVar2 = this.a;
        } else {
            i2 = this.a.d().equals(this.a.j()) ? 2307 : 2306;
            bVar2 = this.a;
        }
        com.qq.gdt.action.h.a.a(i2, bVar2);
    }

    public b a(String str, String str2, ChannelType channelType, String str3, String str4, boolean z) {
        o.a("updateRemoteMessage enter", new Object[0]);
        g();
        if (channelType == null) {
            channelType = ChannelType.CHANNEL_TENCENT;
        }
        this.a.e(str).f(str2).b(channelType).g(str3).h(str4);
        if (z) {
            com.qq.gdt.action.multioprocess.a.a().a(this.a);
        }
        i();
        a(this.a);
        return this.a;
    }

    public b a(String str, String str2, ChannelType channelType, String str3, boolean z) {
        g();
        this.a.a(str).b(str2).a(channelType).c(str3);
        o.a("updateUserSetMessage needSaveUserSetInfo = " + z, new Object[0]);
        com.qq.gdt.action.h.a.a(z ? 3200 : 3201, this.a);
        if (z) {
            com.qq.gdt.action.multioprocess.a.a().a(this.a);
        }
        com.qq.gdt.action.h.a.a(3408, this.a);
        o.a("update UserMessage-> updateUserSetMessage = " + this.a, new Object[0]);
        i();
        a(this.a);
        return this.a;
    }

    public synchronized void a(com.qq.gdt.action.multioprocess.b.a aVar) {
        g();
        this.a.a(aVar);
        com.qq.gdt.action.multioprocess.a.a().a(this.a);
        o.a("update UserMessage-> updateDeviceMessage = " + this.a, new Object[0]);
        a(this.a);
    }

    public synchronized void a(String str) {
        g();
        this.a.d(str);
        com.qq.gdt.action.multioprocess.a.a().a(this.a);
        o.a("update UserMessage-> updateUniqueIdMessage = " + this.a, new Object[0]);
        a(this.a);
    }

    public synchronized b b() {
        b c = c();
        this.a = c;
        if (c == null) {
            this.a = com.qq.gdt.action.multioprocess.a.a().b();
        }
        return this.a;
    }

    public synchronized b c() {
        return this.a;
    }

    public synchronized String d() {
        String f = f();
        if (e.a().g() == null) {
            o.a("getUserUniqueId context is null，no allow ipc getUserUniqueId", new Object[0]);
        } else if (TextUtils.isEmpty(f)) {
            if (g.a().b()) {
                return f;
            }
            this.a = com.qq.gdt.action.multioprocess.a.a().b();
            f = f();
        }
        return f;
    }

    public synchronized com.qq.gdt.action.multioprocess.b.a e() {
        com.qq.gdt.action.multioprocess.b.a h = h();
        if (e.a().g() == null) {
            o.a("getPrivacyStatus context is null，no allow ipc getPrivacyStatus", new Object[0]);
        } else if (h == null) {
            if (g.a().b()) {
                return null;
            }
            this.a = com.qq.gdt.action.multioprocess.a.a().b();
            h = h();
        }
        return h;
    }

    public synchronized String f() {
        String str;
        str = "";
        b bVar = this.a;
        if (bVar != null && !v.a(bVar.b())) {
            str = this.a.f();
        }
        return str;
    }
}
