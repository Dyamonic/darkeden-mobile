package com.taptap.sdk.moment.legacy.widget;

import android.R;
import android.app.Activity;
import android.graphics.Rect;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;

/* loaded from: classes.dex */
public class AndroidBug5497Workaround {
    private FrameLayout.LayoutParams frameLayoutParams;
    private View mChildOfContent;
    private int usableHeightPrevious;

    public static void assistActivity(Activity activity) {
        new AndroidBug5497Workaround(activity);
    }

    public static void assistActivity(FrameLayout frameLayout) {
        new AndroidBug5497Workaround(frameLayout);
    }

    private AndroidBug5497Workaround(Activity activity) {
        View childAt = ((FrameLayout) activity.findViewById(R.id.content)).getChildAt(0);
        this.mChildOfContent = childAt;
        childAt.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.taptap.sdk.moment.legacy.widget.AndroidBug5497Workaround.1
            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public void onGlobalLayout() {
                AndroidBug5497Workaround.this.possiblyResizeChildOfContent();
            }
        });
        this.frameLayoutParams = (FrameLayout.LayoutParams) this.mChildOfContent.getLayoutParams();
    }

    private AndroidBug5497Workaround(FrameLayout frameLayout) {
        View childAt = frameLayout.getChildAt(0);
        this.mChildOfContent = childAt;
        childAt.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.taptap.sdk.moment.legacy.widget.AndroidBug5497Workaround.2
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
        int height = this.mChildOfContent.getRootView().getHeight();
        int i = height - computeUsableHeight;
        if (i > height / 4) {
            this.frameLayoutParams.height = height - i;
        } else {
            this.frameLayoutParams.height = height;
        }
        this.mChildOfContent.requestLayout();
        this.usableHeightPrevious = computeUsableHeight;
    }

    private int computeUsableHeight() {
        Rect rect = new Rect();
        this.mChildOfContent.getWindowVisibleDisplayFrame(rect);
        return rect.bottom - rect.top;
    }
}
