package com.qq.gdt.action.g;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.qq.gdt.action.j.f;
import com.qq.gdt.action.j.o;
import com.qq.gdt.action.j.p;
import com.qq.gdt.action.j.v;
import java.util.ArrayList;
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
public class a extends Handler {
    private Context a;
    private final Set<Long> b;
    private final Map<String, com.qq.gdt.action.g.a.a> c;
    private final Set<String> d;
    private final com.qq.gdt.action.c.a.a e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(Looper looper) {
        super(looper);
        this.b = Collections.newSetFromMap(new ConcurrentHashMap());
        this.c = new ConcurrentHashMap();
        this.d = Collections.newSetFromMap(new ConcurrentHashMap());
        this.a = com.qq.gdt.action.e.a().g();
        this.e = com.qq.gdt.action.c.a.a.a(com.qq.gdt.action.e.a().g());
        sendEmptyMessage(4);
        sendEmptyMessageDelayed(1, 30000L);
    }

    private void a() {
        o.a("Cleaning old actions.", new Object[0]);
        this.e.b();
    }

    private void a(int i) {
        if (!p.a(this.a)) {
            o.a(v.a("Network not available while flush events(status=%d), schedule later.", Integer.valueOf(i)), new Object[0]);
            return;
        }
        long j = 0;
        List<com.qq.gdt.action.g.a.a> a = this.e.a(i, 50L, 0L);
        if (f.a(a)) {
            o.a(v.a("No more events in status(%d), bravo!", Integer.valueOf(i)), new Object[0]);
            return;
        }
        Iterator<com.qq.gdt.action.g.a.a> it = a.iterator();
        while (it.hasNext()) {
            com.qq.gdt.action.g.a.a next = it.next();
            j = Math.max(j, next.a());
            if (this.b.contains(Long.valueOf(next.a()))) {
                it.remove();
            }
        }
        if (f.a(a)) {
            o.a("所有的event 都在上报", new Object[0]);
            return;
        }
        Iterator<com.qq.gdt.action.g.a.a> it2 = a.iterator();
        while (it2.hasNext()) {
            this.b.add(Long.valueOf(it2.next().a()));
        }
        o.a(v.a("Flushing %d events(status=%d)", Integer.valueOf(a.size()), Integer.valueOf(i)), new Object[0]);
        a(a, i);
    }

    private void a(Message message) {
        List<com.qq.gdt.action.g.a.a> list = (List) message.obj;
        if (this.e.a(list)) {
            return;
        }
        o.a("onMsgAddEvents 没有插入成功,存到内存中", new Object[0]);
        if (this.c.size() >= 10000) {
            o.a("onMsgAddEvents 超出内存中最大数量 ", new Object[0]);
            return;
        }
        for (com.qq.gdt.action.g.a.a aVar : list) {
            this.c.put(aVar.d(), aVar);
        }
    }

    private void a(final List<com.qq.gdt.action.g.a.a> list, final int i) {
        if (list == null || list.size() <= 0) {
            return;
        }
        com.qq.gdt.action.i.a.a(list, true, new com.qq.gdt.action.f.a.b() { // from class: com.qq.gdt.action.g.a.1
            @Override // com.qq.gdt.action.f.a.a
            public void a(int i2, com.qq.gdt.action.f.a aVar) {
                o.a("Dp3Service onSuccess statusCode = " + i + " dp3Response = " + aVar, new Object[0]);
                if (i2 == 200 && aVar.a() == 0) {
                    a.this.b(list, i);
                } else {
                    a.this.a(list, aVar.a(), aVar.b(), i2, i);
                }
            }

            @Override // com.qq.gdt.action.f.a.a
            public void b(Throwable th) {
                o.a("Dp3Service onFail:" + th.getMessage(), new Object[0]);
                if (th.getMessage() != null) {
                    r1 = th.getMessage().contains("java.net.SocketTimeoutException") ? -2 : -1;
                    if (th.getMessage().contains("java.net.UnknownHostException")) {
                        r1 = -9;
                    }
                    if (th.getMessage().contains("java.net.ConnectException")) {
                        r1 = -4;
                    }
                    if (th.getMessage().contains("java.net.ProtocolException")) {
                        r1 = -5;
                    }
                    if (th.getMessage().contains("java.net.UnknownServiceException")) {
                        r1 = -6;
                    }
                    if (th.getMessage().equals("body null")) {
                        r1 = -7;
                    }
                    if (th.getMessage().contains("unexpected end of stream on com.android.okhttp")) {
                        r1 = -8;
                    }
                }
                a.this.a(list, r1, th.getMessage(), -1, i);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(List<com.qq.gdt.action.g.a.a> list, int i, String str, int i2, int i3) {
        if (f.b(list)) {
            ArrayList arrayList = new ArrayList();
            for (com.qq.gdt.action.g.a.a aVar : list) {
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.putOpt("httpStatus", Integer.valueOf(i2));
                    jSONObject.putOpt("errorCode", Integer.valueOf(i));
                    jSONObject.putOpt("errorMsg", str);
                    jSONObject.putOpt("requestCgi", Integer.valueOf(i2));
                } catch (JSONException e) {
                    e.printStackTrace();
                }
                if (aVar.a() > 0) {
                    arrayList.add(aVar);
                } else {
                    this.d.remove(aVar.d());
                }
                if (i2 != 200 || i <= 0) {
                    o.a(v.a("send Event failed(scheduled retry %d milliseconds later): actionType = %s , eventid = %s, eventUnique = %s", Integer.valueOf(com.qq.gdt.action.b.a(this.a).b()), aVar.f(), Long.valueOf(aVar.b()), aVar.d()), new Object[0]);
                } else {
                    o.c(v.a("send Event failed(errorCode = %d, errorMessage = %s): actionType = %s , eventid = %s, eventUnique = %s", Integer.valueOf(i), str, aVar.f(), Long.valueOf(aVar.b()), aVar.d()));
                }
            }
            if (f.b(arrayList)) {
                if (i2 == 200 && i > 0) {
                    c(arrayList, 4);
                } else if (i3 != 2) {
                    c(arrayList, 2);
                }
                Iterator<com.qq.gdt.action.g.a.a> it = arrayList.iterator();
                while (it.hasNext()) {
                    this.b.remove(Long.valueOf(it.next().a()));
                }
                o.a(v.a("Flush events(status=%d) failed(http status = %d): code = %d, msg = %s", Integer.valueOf(i3), Integer.valueOf(i2), Integer.valueOf(i), str), new Object[0]);
            }
        }
    }

    private void b() {
        try {
            a(0);
            a(2);
            c();
        } catch (Throwable th) {
            o.a("sendEvents ex = " + th, new Object[0]);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(List<com.qq.gdt.action.g.a.a> list, int i) {
        if (f.b(list)) {
            ArrayList arrayList = new ArrayList();
            for (com.qq.gdt.action.g.a.a aVar : list) {
                if (aVar.a() > 0) {
                    arrayList.add(aVar);
                } else {
                    this.c.remove(aVar.d());
                    this.d.remove(aVar.d());
                }
            }
            if (arrayList.isEmpty()) {
                return;
            }
            c(arrayList, 1);
            Iterator<com.qq.gdt.action.g.a.a> it = arrayList.iterator();
            while (it.hasNext()) {
                this.b.remove(Long.valueOf(it.next().a()));
            }
            o.a(v.a("Flushed %d events in status(%d)", Integer.valueOf(arrayList.size()), Integer.valueOf(i)), new Object[0]);
        }
    }

    private void c() {
        if (!p.a(this.a)) {
            o.a(v.a("sendInMemEvent Network not available while flush events, schedule later.", new Object[0]), new Object[0]);
            return;
        }
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        o.a("sendInMemEvent backUpEventsInMem size = " + this.c.size(), new Object[0]);
        for (com.qq.gdt.action.g.a.a aVar : this.c.values()) {
            if (!this.d.contains(aVar.d())) {
                arrayList.add(aVar);
                this.d.add(aVar.d());
            }
        }
        Iterator it = arrayList2.iterator();
        while (it.hasNext()) {
            this.c.remove((String) it.next());
        }
        if (arrayList.isEmpty()) {
            return;
        }
        if (arrayList.size() <= 50) {
            a(arrayList, -1);
            return;
        }
        Iterator it2 = f.a(arrayList, 50).iterator();
        while (it2.hasNext()) {
            a((List) it2.next(), -1);
        }
    }

    private void c(List<com.qq.gdt.action.g.a.a> list, int i) {
        if (f.a(list)) {
            return;
        }
        o.a(this.e.a(list, i) < 0 ? "Update event status error" : "Update event status success", new Object[0]);
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        int i = message.what;
        if (i == 1) {
            o.a("轮询，间隔30s", new Object[0]);
            e.a(this.a);
            sendEmptyMessageDelayed(1, 30000L);
        } else {
            if (i == 2) {
                a(message);
                return;
            }
            if (i == 3) {
                b();
            } else {
                if (i != 4) {
                    return;
                }
                o.a("初始化开始", new Object[0]);
                a();
            }
        }
    }
}
