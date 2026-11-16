package com.qq.gdt.action.g;

import android.os.HandlerThread;
import android.os.Message;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class b {
    private static volatile b a;
    private final a b;

    private b() {
        HandlerThread handlerThread = new HandlerThread("recorder");
        handlerThread.start();
        this.b = new a(handlerThread.getLooper());
    }

    public static b a() {
        if (a == null) {
            synchronized (b.class) {
                if (a == null) {
                    a = new b();
                }
            }
        }
        return a;
    }

    public void a(com.qq.gdt.action.g.a.a... aVarArr) {
        ArrayList arrayList = new ArrayList();
        for (com.qq.gdt.action.g.a.a aVar : aVarArr) {
            if (aVar != null) {
                arrayList.add(aVar);
            }
        }
        Message obtainMessage = this.b.obtainMessage(2);
        obtainMessage.obj = arrayList;
        this.b.sendMessage(obtainMessage);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b() {
        this.b.sendEmptyMessage(3);
    }
}
