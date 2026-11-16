package com.yofi.sdk.utils;

import android.R;
import android.app.Activity;
import android.graphics.Rect;
import android.os.Build;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import com.yofi.sdk.imp.middle.YoFiSdkImp;

/* loaded from: classes2.dex */
public class AndroidBug5497Workaround {
    private Activity activity;
    private FrameLayout.LayoutParams frameLayoutParams;
    private View mChildOfContent;
    private int usableHeightPrevious;

    public static void assistActivity(Activity activity) {
        new AndroidBug5497Workaround(activity);
    }

    private AndroidBug5497Workaround(Activity activity) {
        this.activity = activity;
        View childAt = ((FrameLayout) activity.findViewById(R.id.content)).getChildAt(0);
        this.mChildOfContent = childAt;
        childAt.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.yofi.sdk.utils.AndroidBug5497Workaround.1
            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public void onGlobalLayout() {
                AndroidBug5497Workaround.this.possiblyResizeChildOfContent();
            }
        });
        this.frameLayoutParams = (FrameLayout.LayoutParams) this.mChildOfContent.getLayoutParams();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void possiblyResizeChildOfContent() {
        int computeUsableHeight = computeUsableHeight();
        if (computeUsableHeight != this.usableHeightPrevious) {
            int height = this.mChildOfContent.getRootView().getHeight();
            if (Build.VERSION.SDK_INT < 19) {
                Rect rect = new Rect();
                this.activity.getWindow().getDecorView().getWindowVisibleDisplayFrame(rect);
                height -= rect.top;
            }
            int i = height - computeUsableHeight;
            if (i > height / 4) {
                if (YoFiSdkImp.instance().getLandSpace()) {
                    this.frameLayoutParams.height = (height - i) + 50;
                    this.frameLayoutParams.topMargin = -50;
                } else {
                    this.frameLayoutParams.height = height - i;
                }
            } else {
                this.frameLayoutParams.height = height;
                this.frameLayoutParams.topMargin = 0;
            }
            this.mChildOfContent.requestLayout();
            this.usableHeightPrevious = computeUsableHeight;
        }
    }

    private int computeUsableHeight() {
        Rect rect = new Rect();
        this.activity.getWindow().getDecorView().getWindowVisibleDisplayFrame(rect);
        int i = rect.top;
        Rect rect2 = new Rect();
        this.mChildOfContent.getWindowVisibleDisplayFrame(rect2);
        if (Build.VERSION.SDK_INT >= 19) {
            return (rect2.bottom - rect2.top) + i;
        }
        return rect2.bottom - rect2.top;
    }
}
