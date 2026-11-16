package com.hjq.xtoast.draggable;

import android.animation.ValueAnimator;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;
import android.view.WindowManager;

/* loaded from: classes.dex */
public class SpringDraggable extends BaseDraggable {
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
        if (action != 1) {
            if (action != 2) {
                return false;
            }
            updateLocation(motionEvent.getRawX() - this.mViewDownX, (motionEvent.getRawY() - getStatusBarHeight()) - this.mViewDownY);
            return false;
        }
        float rawX = motionEvent.getRawX();
        float rawY = motionEvent.getRawY() - getStatusBarHeight();
        float screenWidth = getScreenWidth();
        if (rawX < screenWidth / 2.0f) {
            screenWidth = 0.0f;
        }
        float f = this.mViewDownX;
        startAnimation(rawX - f, screenWidth - f, rawY - this.mViewDownY);
        return isTouchMove(this.mViewDownX, motionEvent.getX(), this.mViewDownY, motionEvent.getY());
    }

    private int getScreenWidth() {
        WindowManager windowManager = getWindowManager();
        DisplayMetrics displayMetrics = new DisplayMetrics();
        windowManager.getDefaultDisplay().getMetrics(displayMetrics);
        return displayMetrics.widthPixels;
    }

    private void startAnimation(float f, float f2, final float f3) {
        ValueAnimator ofFloat = ValueAnimator.ofFloat(f, f2);
        ofFloat.setDuration(500L);
        ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.hjq.xtoast.draggable.SpringDraggable.1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                SpringDraggable.this.updateLocation(((Float) valueAnimator.getAnimatedValue()).floatValue(), f3);
            }
        });
        ofFloat.start();
    }
}
