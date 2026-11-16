package com.hjq.xtoast;

import java.lang.ref.WeakReference;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class CancelRunnable extends WeakReference<XToast> implements Runnable {
    /* JADX INFO: Access modifiers changed from: package-private */
    public CancelRunnable(XToast xToast) {
        super(xToast);
    }

    @Override // java.lang.Runnable
    public void run() {
        XToast xToast = (XToast) get();
        if (xToast == null || !xToast.isShow()) {
            return;
        }
        xToast.cancel();
    }
}
