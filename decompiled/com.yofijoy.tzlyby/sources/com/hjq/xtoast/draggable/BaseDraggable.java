package com.hjq.xtoast.draggable;

import android.graphics.Rect;
import android.view.View;
import android.view.WindowManager;
import com.google.android.material.badge.BadgeDrawable;
import com.hjq.xtoast.XToast;

/* loaded from: classes.dex */
public abstract class BaseDraggable implements View.OnTouchListener {
    private View mRootView;
    private XToast mToast;
    private WindowManager mWindowManager;
    private WindowManager.LayoutParams mWindowParams;

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean isTouchMove(float f, float f2, float f3, float f4) {
        return (((int) f) == ((int) f2) && ((int) f3) == ((int) f4)) ? false : true;
    }

    public void start(XToast xToast) {
        this.mToast = xToast;
        this.mRootView = xToast.getView();
        this.mWindowManager = xToast.getWindowManager();
        this.mWindowParams = xToast.getWindowParams();
        this.mRootView.setOnTouchListener(this);
    }

    protected XToast getXToast() {
        return this.mToast;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public WindowManager getWindowManager() {
        return this.mWindowManager;
    }

    protected WindowManager.LayoutParams getWindowParams() {
        return this.mWindowParams;
    }

    protected View getRootView() {
        return this.mRootView;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public int getStatusBarHeight() {
        Rect rect = new Rect();
        getRootView().getWindowVisibleDisplayFrame(rect);
        return rect.top;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void updateLocation(float f, float f2) {
        updateLocation((int) f, (int) f2);
    }

    protected void updateLocation(int i, int i2) {
        if (this.mWindowParams.x == i && this.mWindowParams.y == i2) {
            return;
        }
        this.mWindowParams.x = i;
        this.mWindowParams.y = i2;
        this.mWindowParams.gravity = BadgeDrawable.TOP_START;
        try {
            this.mWindowManager.updateViewLayout(this.mRootView, this.mWindowParams);
        } catch (IllegalArgumentException unused) {
        }
    }
}
