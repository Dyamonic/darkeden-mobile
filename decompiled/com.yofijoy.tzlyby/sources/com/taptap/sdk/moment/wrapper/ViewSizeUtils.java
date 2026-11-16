package com.taptap.sdk.moment.wrapper;

import android.view.View;
import android.view.ViewGroup;
import com.taptap.sdk.kit.internal.utils.DeviceUtils;
import com.taptap.sdk.kit.internal.utils.TapDensityUtilsKt;
import com.taptap.sdk.moment.model.Orientation;
import com.taptap.sdk.update.constants.LoggerConst;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;

/* compiled from: ViewSizeUtils.kt */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001a\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0007¨\u0006\t"}, d2 = {"Lcom/taptap/sdk/moment/wrapper/ViewSizeUtils;", "", "()V", "update", "", LoggerConst.ACTION_VIEW, "Landroid/view/View;", "orientation", "Lcom/taptap/sdk/moment/model/Orientation;", "tap-moment_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes.dex */
public final class ViewSizeUtils {
    public static final ViewSizeUtils INSTANCE = new ViewSizeUtils();

    /* compiled from: ViewSizeUtils.kt */
    @Metadata(k = 3, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[Orientation.values().length];
            try {
                iArr[Orientation.LANDSCAPE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[Orientation.PORTRAIT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    private ViewSizeUtils() {
    }

    @JvmStatic
    public static final void update(View view, Orientation orientation) {
        Intrinsics.checkNotNullParameter(orientation, "orientation");
        if (view == null) {
            return;
        }
        int[] deviceSize = DeviceUtils.getDeviceSize(view.getContext());
        int coerceAtLeast = RangesKt.coerceAtLeast(deviceSize[0], deviceSize[1]);
        if (coerceAtLeast <= 0) {
            return;
        }
        int i = WhenMappings.$EnumSwitchMapping$0[orientation.ordinal()];
        if (i == 1) {
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            layoutParams.width = ((int) (coerceAtLeast * 0.6d)) + TapDensityUtilsKt.getDip(84.0f);
            layoutParams.height = -1;
            view.setLayoutParams(layoutParams);
            return;
        }
        if (i != 2) {
            return;
        }
        ViewGroup.LayoutParams layoutParams2 = view.getLayoutParams();
        layoutParams2.width = -1;
        layoutParams2.height = ((int) (coerceAtLeast * 0.6d)) + TapDensityUtilsKt.getDip(84.0f);
        view.setLayoutParams(layoutParams2);
    }
}
