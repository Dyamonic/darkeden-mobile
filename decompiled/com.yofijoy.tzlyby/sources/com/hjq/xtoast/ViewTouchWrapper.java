package com.hjq.xtoast;

import android.view.MotionEvent;
import android.view.View;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class ViewTouchWrapper implements View.OnTouchListener {
    private final OnTouchListener mListener;
    private final XToast mToast;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ViewTouchWrapper(XToast xToast, View view, OnTouchListener onTouchListener) {
        this.mToast = xToast;
        this.mListener = onTouchListener;
        view.setFocusable(true);
        view.setEnabled(true);
        view.setClickable(true);
        view.setOnTouchListener(this);
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        return this.mListener.onTouch(this.mToast, view, motionEvent);
    }
}
