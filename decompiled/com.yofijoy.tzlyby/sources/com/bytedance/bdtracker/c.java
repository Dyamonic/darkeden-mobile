package com.bytedance.bdtracker;

import com.bytedance.bdtracker.b;

/* loaded from: classes.dex */
public final class c implements b.d {

    /* loaded from: classes.dex */
    public class a implements Runnable {
        public final /* synthetic */ d a;

        public a(c cVar, d dVar) {
            this.a = dVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            d dVar = this.a;
            v1 v1Var = dVar.b("getConfig") ? null : dVar.q.e;
            if (v1Var != null) {
                if (v1Var.q || v1Var.f.getBoolean("enter_background_not_send", false)) {
                    return;
                }
                this.a.flush();
            }
        }
    }

    @Override // com.bytedance.bdtracker.b.d
    public void a(d dVar) {
        w.a.execute(new a(this, dVar));
    }
}
