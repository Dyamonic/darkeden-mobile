package com.yofi.sdk.utils.toolbar;

import android.R;
import android.app.Activity;
import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.FrameLayout;

/* loaded from: classes2.dex */
class StatusBarKitKatCompact {
    private static final String TAG_FAKE_STATUS_BAR_VIEW = "statusBarView";
    private static final String TAG_MARGIN_ADDED = "marginAdded";

    StatusBarKitKatCompact() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void setStatusBarColor(Activity activity, int statusColor) {
        Window window = activity.getWindow();
        window.addFlags(67108864);
        View childAt = ((ViewGroup) window.findViewById(R.id.content)).getChildAt(0);
        int statusBarHeight = getStatusBarHeight(activity);
        removeFakeStatusBarViewIfExist(activity);
        addFakeStatusBarView(activity, statusColor, statusBarHeight);
        addMarginTopToContentChild(childAt, statusBarHeight);
        if (childAt != null) {
            childAt.setFitsSystemWindows(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void translucentStatusBar(Activity activity) {
        activity.getWindow().addFlags(67108864);
        View childAt = ((ViewGroup) activity.findViewById(R.id.content)).getChildAt(0);
        removeFakeStatusBarViewIfExist(activity);
        removeMarginTopOfContentChild(childAt, getStatusBarHeight(activity));
        if (childAt != null) {
            childAt.setFitsSystemWindows(false);
        }
    }

    private static void removeFakeStatusBarViewIfExist(Activity activity) {
        ViewGroup viewGroup = (ViewGroup) activity.getWindow().getDecorView();
        View findViewWithTag = viewGroup.findViewWithTag(TAG_FAKE_STATUS_BAR_VIEW);
        if (findViewWithTag != null) {
            viewGroup.removeView(findViewWithTag);
        }
    }

    private static View addFakeStatusBarView(Activity activity, int statusBarColor, int statusBarHeight) {
        ViewGroup viewGroup = (ViewGroup) activity.getWindow().getDecorView();
        View view = new View(activity);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, statusBarHeight);
        layoutParams.gravity = 48;
        view.setLayoutParams(layoutParams);
        view.setBackgroundColor(statusBarColor);
        view.setTag(TAG_FAKE_STATUS_BAR_VIEW);
        viewGroup.addView(view);
        return view;
    }

    private static void addMarginTopToContentChild(View mContentChild, int statusBarHeight) {
        if (mContentChild == null || TAG_MARGIN_ADDED.equals(mContentChild.getTag())) {
            return;
        }
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) mContentChild.getLayoutParams();
        layoutParams.topMargin += statusBarHeight;
        mContentChild.setLayoutParams(layoutParams);
        mContentChild.setTag(TAG_MARGIN_ADDED);
    }

    private static int getStatusBarHeight(Context context) {
        int identifier = context.getResources().getIdentifier("status_bar_height", "dimen", "android");
        if (identifier > 0) {
            return context.getResources().getDimensionPixelOffset(identifier);
        }
        return 0;
    }

    private static void removeMarginTopOfContentChild(View mContentChild, int statusBarHeight) {
        if (mContentChild != null && TAG_MARGIN_ADDED.equals(mContentChild.getTag())) {
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) mContentChild.getLayoutParams();
            layoutParams.topMargin -= statusBarHeight;
            mContentChild.setLayoutParams(layoutParams);
            mContentChild.setTag(null);
        }
    }
}
