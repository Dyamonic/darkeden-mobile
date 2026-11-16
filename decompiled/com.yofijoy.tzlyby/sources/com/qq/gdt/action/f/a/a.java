package com.qq.gdt.action.f.a;

import android.os.Handler;
import android.os.Looper;
import com.qq.gdt.action.f.b.i;

/* loaded from: classes.dex */
public abstract class a<T> implements com.qq.gdt.action.f.b.b {
    private static Handler a = new Handler(Looper.getMainLooper());
    private boolean b;

    public a(boolean z) {
        this.b = z;
    }

    private void b(final int i, final T t) {
        a.post(new Runnable() { // from class: com.qq.gdt.action.f.a.a.1
            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.lang.Runnable
            public void run() {
                a.this.a(i, t);
            }
        });
    }

    private void c(final Throwable th) {
        a.post(new Runnable() { // from class: com.qq.gdt.action.f.a.a.2
            @Override // java.lang.Runnable
            public void run() {
                a.this.b(th);
            }
        });
    }

    public abstract void a(int i, T t);

    @Override // com.qq.gdt.action.f.b.b
    public void a(i iVar) {
        try {
            int c = iVar.c();
            T b = b(iVar);
            if (this.b) {
                b(c, b);
            } else {
                a(c, b);
            }
        } catch (Throwable th) {
            com.qq.gdt.action.d.a aVar = new com.qq.gdt.action.d.a("Response parse error", th);
            if (this.b) {
                c(aVar);
            } else {
                b(aVar);
            }
        }
    }

    @Override // com.qq.gdt.action.f.b.b
    public void a(Throwable th) {
        if (this.b) {
            c(th);
        } else {
            b(th);
        }
    }

    public abstract T b(i iVar) throws Exception;

    public abstract void b(Throwable th);
}
