package com.yofi.sdk.interfaces;

import android.content.Intent;
import android.view.KeyEvent;
import android.view.MotionEvent;
import java.util.List;

/* loaded from: classes2.dex */
public interface IContainerView {
    boolean onBackPressed();

    void onDestory();

    boolean onKeyDown(int var1, KeyEvent var2);

    void onPermissionsGranted(int requestCode, List<String> perms);

    void onResult(int var1, int var2, Intent var3);

    void onResume();

    boolean onTouchEvent(MotionEvent event);
}
