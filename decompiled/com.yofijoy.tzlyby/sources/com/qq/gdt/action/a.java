package com.qq.gdt.action;

import android.content.Context;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import com.qq.gdt.action.i.c;
import com.qq.gdt.action.j.n;
import com.qq.gdt.action.j.o;
import com.qq.gdt.action.j.p;
import com.qq.gdt.action.j.t;
import com.qq.gdt.action.j.v;
import com.qq.gdt.action.j.w;
import com.tencent.tauth.Tencent;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class a {
    private static volatile a a;
    private final Context b;
    private final C0030a c = new C0030a();

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.qq.gdt.action.a$a, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public class C0030a {
        private final Object b = new Object();
        private Handler c;

        /* renamed from: com.qq.gdt.action.a$a$a, reason: collision with other inner class name */
        /* loaded from: classes.dex */
        private class HandlerC0031a extends Handler {
            private final Set<Long> b;
            private boolean c;
            private final Map<String, com.qq.gdt.action.c.a> d;
            private final Set<String> e;
            private final com.qq.gdt.action.c.b f;
            private boolean g;

            HandlerC0031a(Looper looper) {
                super(looper);
                this.b = Collections.newSetFromMap(new ConcurrentHashMap());
                this.c = false;
                this.d = new ConcurrentHashMap();
                this.e = Collections.newSetFromMap(new ConcurrentHashMap());
                this.g = false;
                this.f = com.qq.gdt.action.c.b.a(a.this.b);
            }

            private void a() {
                o.a("======>Action reporter running now.", new Object[0]);
                this.g = true;
                b();
                c();
            }

            private void a(int i) {
                if (!p.a(a.this.b)) {
                    o.a(v.a("Network not available while flush actions(status=%d), schedule later.", Integer.valueOf(i)), new Object[0]);
                    return;
                }
                long j = 0;
                while (true) {
                    List<com.qq.gdt.action.c.a> a = this.f.a(i, 50L, j);
                    if (com.qq.gdt.action.j.f.a(a)) {
                        o.a(v.a("No more actions in status(%d), bravo!", Integer.valueOf(i)), new Object[0]);
                        return;
                    }
                    Iterator<com.qq.gdt.action.c.a> it = a.iterator();
                    while (it.hasNext()) {
                        com.qq.gdt.action.c.a next = it.next();
                        j = Math.max(j, next.f());
                        if (!this.b.contains(Long.valueOf(next.f()))) {
                            if (next.c().equals(ActionType.START_APP)) {
                                if (!this.c) {
                                    this.c = true;
                                }
                            }
                        }
                        it.remove();
                    }
                    if (!com.qq.gdt.action.j.f.a(a)) {
                        Iterator<com.qq.gdt.action.c.a> it2 = a.iterator();
                        while (it2.hasNext()) {
                            this.b.add(Long.valueOf(it2.next().f()));
                        }
                        o.a(v.a("Flushing %d actions(status=%d)", Integer.valueOf(a.size()), Integer.valueOf(i)), new Object[0]);
                        a(a, i);
                    }
                }
            }

            private void a(Message message) {
                List<com.qq.gdt.action.c.a> list = (List) message.obj;
                if (this.f.a(list)) {
                    if (!b(list) && this.f.a(0) < 5) {
                        return;
                    }
                } else if (!a(list)) {
                    return;
                }
                c();
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void a(com.qq.gdt.action.c.a aVar, boolean z) {
                if (aVar == null) {
                    return;
                }
                long d = aVar.d();
                long h = aVar.h();
                if (h <= 0 && w.a()) {
                    h = w.b();
                }
                if (ActionType.START_APP.equals(aVar.c())) {
                    this.c = false;
                    t.a(a.this.b, d, h);
                }
            }

            private void a(List<com.qq.gdt.action.c.a> list, final int i) {
                com.qq.gdt.action.i.c.a(list, new c.a() { // from class: com.qq.gdt.action.a.a.a.1
                    @Override // com.qq.gdt.action.i.c.a
                    public void a(List<com.qq.gdt.action.c.a> list2, int i2, String str, int i3) {
                        if (com.qq.gdt.action.j.f.b(list2)) {
                            ArrayList arrayList = new ArrayList();
                            for (com.qq.gdt.action.c.a aVar : list2) {
                                JSONObject jSONObject = new JSONObject();
                                try {
                                    jSONObject.putOpt("httpStatus", Integer.valueOf(i3));
                                    jSONObject.putOpt("errorCode", Integer.valueOf(i2));
                                    jSONObject.putOpt("errorMsg", str);
                                    jSONObject.putOpt("requestCgi", Integer.valueOf(i3));
                                } catch (JSONException e) {
                                    e.printStackTrace();
                                }
                                com.qq.gdt.action.h.a.a(9006, aVar, jSONObject);
                                if (aVar.f() > 0) {
                                    arrayList.add(aVar);
                                } else {
                                    HandlerC0031a.this.e.remove(aVar.a());
                                }
                                if (i3 != 200 || i2 <= 0) {
                                    o.b(v.a("LogAction failed(scheduled retry %d milliseconds later): actionType = %s , actionParams = %s, userActionSetId = %s", Integer.valueOf(b.a(a.this.b).b()), aVar.c(), aVar.e(), e.a().h()));
                                } else {
                                    o.c(v.a("LogAction failed(errorCode = %d, errorMessage = %s): actionType = %s , actionParams = %s, userActionSetId = %s", Integer.valueOf(i2), str, aVar.c(), aVar.e(), e.a().h()));
                                }
                                if (ActionType.START_APP.equals(aVar.c())) {
                                    HandlerC0031a.this.c = false;
                                }
                            }
                            if (com.qq.gdt.action.j.f.b(arrayList)) {
                                if (i3 == 200 && i2 > 0) {
                                    HandlerC0031a.this.b(arrayList, 4);
                                } else if (i != 2) {
                                    HandlerC0031a.this.b(arrayList, 2);
                                }
                                Iterator it = arrayList.iterator();
                                while (it.hasNext()) {
                                    HandlerC0031a.this.b.remove(Long.valueOf(((com.qq.gdt.action.c.a) it.next()).f()));
                                }
                                o.b(v.a("Flush actions(status=%d) failed(http status = %d): code = %d, msg = %s", Integer.valueOf(i), Integer.valueOf(i3), Integer.valueOf(i2), str));
                            }
                        }
                    }

                    @Override // com.qq.gdt.action.i.c.a
                    public void a(List<com.qq.gdt.action.c.a> list2, boolean z) {
                        if (com.qq.gdt.action.j.f.b(list2)) {
                            ArrayList arrayList = new ArrayList();
                            for (com.qq.gdt.action.c.a aVar : list2) {
                                com.qq.gdt.action.h.a.a(9005, aVar, n.a("dbStatus", i));
                                if (aVar.f() > 0) {
                                    arrayList.add(aVar);
                                } else {
                                    HandlerC0031a.this.d.remove(aVar.a());
                                    HandlerC0031a.this.e.remove(aVar.a());
                                }
                                HandlerC0031a.this.a(aVar, z);
                                if (GDTAction.isAutoCollectionAction(aVar)) {
                                    o.a(v.a("LogAction success: actionType = %s, actionParams = %s, userActionSetId = %s", aVar.c(), aVar.e(), e.a().h()), new Object[0]);
                                } else {
                                    o.a(v.a("LogAction success: actionType = %s, actionParams = %s, userActionSetId = %s", aVar.c(), aVar.e(), e.a().h()));
                                }
                            }
                            if (arrayList.isEmpty()) {
                                return;
                            }
                            HandlerC0031a.this.b(arrayList, 1);
                            Iterator it = arrayList.iterator();
                            while (it.hasNext()) {
                                HandlerC0031a.this.b.remove(Long.valueOf(((com.qq.gdt.action.c.a) it.next()).f()));
                            }
                            o.a(v.a("Flushed %d Actions in status(%d)", Integer.valueOf(list2.size()), Integer.valueOf(i)), new Object[0]);
                        }
                    }
                });
            }

            private boolean a(List<com.qq.gdt.action.c.a> list) {
                boolean z = false;
                for (com.qq.gdt.action.c.a aVar : list) {
                    if (b.a(a.this.b).a(aVar.c())) {
                        this.d.put(aVar.a(), aVar);
                        z = true;
                    }
                }
                return z;
            }

            private void b() {
                o.a("Cleaning old actions.", new Object[0]);
                this.f.b();
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void b(List<com.qq.gdt.action.c.a> list, int i) {
                if (com.qq.gdt.action.j.f.a(list)) {
                    return;
                }
                Iterator<com.qq.gdt.action.c.a> it = list.iterator();
                while (it.hasNext()) {
                    com.qq.gdt.action.h.a.a(Tencent.REQUEST_LOGIN, it.next(), n.a("dbStatus", i));
                }
                int a = this.f.a(list, i);
                Iterator<com.qq.gdt.action.c.a> it2 = list.iterator();
                while (it2.hasNext()) {
                    com.qq.gdt.action.h.a.a(a < 0 ? 10003 : 10002, it2.next(), n.a("dbStatus", i));
                }
                if (a < 0) {
                    o.c("Update action status error");
                }
            }

            private boolean b(List<com.qq.gdt.action.c.a> list) {
                Iterator<com.qq.gdt.action.c.a> it = list.iterator();
                while (it.hasNext()) {
                    if (b.a(a.this.b).a(it.next().c())) {
                        return true;
                    }
                }
                return false;
            }

            private void c() {
                if (this.g) {
                    o.a("Flush all actions.", new Object[0]);
                    try {
                        e();
                        f();
                    } catch (Throwable unused) {
                    }
                    d();
                }
            }

            private void d() {
                ArrayList arrayList = new ArrayList();
                ArrayList arrayList2 = new ArrayList();
                for (com.qq.gdt.action.c.a aVar : this.d.values()) {
                    com.qq.gdt.action.h.a.a(50001, aVar);
                    if (!this.e.contains(aVar.a())) {
                        if (ActionType.START_APP.equals(aVar.c())) {
                            if (!this.c) {
                                this.c = true;
                            }
                        }
                        arrayList.add(aVar);
                        this.e.add(aVar.a());
                    }
                }
                Iterator it = arrayList2.iterator();
                while (it.hasNext()) {
                    this.d.remove((String) it.next());
                }
                if (arrayList.isEmpty()) {
                    return;
                }
                Iterator<com.qq.gdt.action.c.a> it2 = arrayList.iterator();
                while (it2.hasNext()) {
                    com.qq.gdt.action.h.a.a(50002, it2.next());
                }
                if (arrayList.size() <= 50) {
                    a(arrayList, -1);
                    return;
                }
                Iterator it3 = com.qq.gdt.action.j.f.a(arrayList, 50).iterator();
                while (it3.hasNext()) {
                    a((List<com.qq.gdt.action.c.a>) it3.next(), -1);
                }
            }

            private void e() {
                o.a("Flush all pending actions.", new Object[0]);
                a(0);
            }

            private void f() {
                o.a("Flush all failed actions.", new Object[0]);
                a(2);
            }

            @Override // android.os.Handler
            public void handleMessage(Message message) {
                try {
                    o.a("Handle message: " + message.what, new Object[0]);
                    int i = message.what;
                    if (i == 1) {
                        c();
                    } else if (i == 5) {
                        a();
                    } else if (i != 6) {
                        o.a("Unexpected message received by reporter: " + message);
                    } else {
                        a(message);
                    }
                } catch (Throwable th) {
                    o.a("Worker handle message threw an unhandled exception", th);
                }
                try {
                    if (hasMessages(1)) {
                        return;
                    }
                    Message obtain = Message.obtain();
                    obtain.what = 1;
                    sendMessageDelayed(obtain, b.a(a.this.b).b());
                } catch (Throwable th2) {
                    o.b("Send Delay 'FLUSH_ACTION' message failed", th2);
                }
            }
        }

        C0030a() {
            HandlerThread handlerThread = new HandlerThread("com.qq.gdt.action.ActionReporter.Worker", 10);
            handlerThread.start();
            this.c = new HandlerC0031a(handlerThread.getLooper());
        }

        void a(Message message) {
            synchronized (this.b) {
                Handler handler = this.c;
                if (handler == null) {
                    o.c("Dropping a message: " + message.what);
                } else {
                    handler.sendMessage(message);
                }
            }
        }
    }

    private a(Context context) {
        this.b = context;
    }

    public static a a(Context context) {
        if (a == null) {
            synchronized (a.class) {
                if (a == null) {
                    a = new a(context);
                }
            }
        }
        return a;
    }

    public void a() {
        Message obtain = Message.obtain();
        obtain.what = 1;
        this.c.a(obtain);
    }

    public void a(com.qq.gdt.action.c.a... aVarArr) {
        Message obtain = Message.obtain();
        obtain.what = 6;
        obtain.obj = Arrays.asList(aVarArr);
        this.c.a(obtain);
    }

    public void b() {
        Message obtain = Message.obtain();
        obtain.what = 5;
        this.c.a(obtain);
    }
}
