package com.hjq.xtoast.draggable;

import android.view.MotionEvent;
import android.view.View;

/* loaded from: classes.dex */
public class MovingDraggable extends BaseDraggable {
    private float mViewDownX;
    private float mViewDownY;

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action == 0) {
            this.mViewDownX = motionEvent.getX();
            this.mViewDownY = motionEvent.getY();
            return false;
        }
        if (action == 1) {
            return isTouchMove(this.mViewDownX, motionEvent.getX(), this.mViewDownY, motionEvent.getY());
        }
        if (action != 2) {
            return false;
        }
        updateLocation(motionEvent.getRawX() - this.mViewDownX, (motionEvent.getRawY() - getStatusBarHeight()) - this.mViewDownY);
        return false;
    }
}
