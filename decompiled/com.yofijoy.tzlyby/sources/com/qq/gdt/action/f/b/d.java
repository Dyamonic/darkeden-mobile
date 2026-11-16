package com.qq.gdt.action.f.b;

import android.os.Handler;
import android.os.Looper;
import java.util.concurrent.Executor;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public class d {
    public int a = (int) TimeUnit.SECONDS.toMillis(30);
    public int b = (int) TimeUnit.SECONDS.toMillis(30);
    public Executor c = new ThreadPoolExecutor(3, 10, 60, TimeUnit.SECONDS, new LinkedBlockingQueue());
    public Executor d = new Executor() { // from class: com.qq.gdt.action.f.b.d.1
        Handler a = new Handler(Looper.getMainLooper());

        @Override // java.util.concurrent.Executor
        public void execute(Runnable runnable) {
            this.a.post(runnable);
        }
    };
}
