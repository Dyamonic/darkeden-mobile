package com.hjq.xtoast;

import android.view.View;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class ViewClickWrapper implements View.OnClickListener {
    private final OnClickListener mListener;
    private final XToast mToast;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ViewClickWrapper(XToast xToast, View view, OnClickListener onClickListener) {
        this.mToast = xToast;
        this.mListener = onClickListener;
        view.setOnClickListener(this);
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        this.mListener.onClick(this.mToast, view);
    }
}
