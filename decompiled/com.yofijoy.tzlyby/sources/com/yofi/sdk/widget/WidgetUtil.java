package com.yofi.sdk.widget;

import android.graphics.ColorMatrixColorFilter;
import android.graphics.drawable.Drawable;
import android.view.MotionEvent;
import android.view.View;
import android.widget.Button;

/* loaded from: classes2.dex */
public class WidgetUtil {
    public static final float[] BUTTON_PRESSED = {2.0f, 0.0f, 0.0f, 0.0f, -50.0f, 0.0f, 2.0f, 0.0f, 0.0f, -50.0f, 0.0f, 0.0f, 2.0f, 0.0f, -50.0f, 0.0f, 0.0f, 0.0f, 5.0f, 0.0f};
    public static final float[] BUTTON_RELEASED = {1.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f};
    private static final View.OnTouchListener touchListener = new View.OnTouchListener() { // from class: com.yofi.sdk.widget.WidgetUtil.1
        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View v, MotionEvent event) {
            Drawable background = v.getBackground();
            if (event.getAction() == 0) {
                if (background != null) {
                    v.getBackground().setColorFilter(new ColorMatrixColorFilter(WidgetUtil.BUTTON_PRESSED));
                    v.setBackgroundDrawable(v.getBackground());
                    return false;
                }
                ((Button) v).setTextColor(v.getResources().getColor(v.getResources().getIdentifier("gray", "color", v.getContext().getPackageName())));
                return false;
            }
            if (event.getAction() != 1) {
                return false;
            }
            if (background != null) {
                v.getBackground().setColorFilter(new ColorMatrixColorFilter(WidgetUtil.BUTTON_RELEASED));
                v.setBackgroundDrawable(v.getBackground());
                return false;
            }
            ((Button) v).setTextColor(v.getResources().getColor(v.getResources().getIdentifier("red", "color", v.getContext().getPackageName())));
            return false;
        }
    };

    public static void setButtonStateChangeListener(View v) {
        v.setOnTouchListener(touchListener);
    }
}
