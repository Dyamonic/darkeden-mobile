package com.taptap.sdk.moment.legacy.utils;

import android.app.Dialog;
import android.view.View;

/* loaded from: classes.dex */
public class HoloThemeHelper {
    public static void fixHoloDialogBlueLine(Dialog dialog) {
        try {
            View findViewById = dialog.findViewById(dialog.getContext().getResources().getIdentifier("android:id/titleDivider", null, null));
            if (findViewById != null) {
                findViewById.setBackgroundColor(0);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
