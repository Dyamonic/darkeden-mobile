package com.yofi.sdk.imp.middle;

import android.os.Bundle;
import com.yofi.sdk.activity.ContainerActivity;
import com.yofi.sdk.activity.VerticalContainerActivity;
import com.yofi.sdk.imp.middle.view.ChatView;
import com.yofi.sdk.imp.middle.view.CheckUpdateView;
import com.yofi.sdk.imp.middle.view.PayView;
import com.yofi.sdk.imp.middle.view.PopView;
import com.yofi.sdk.imp.middle.view.ServiceAppraiseView;
import com.yofi.sdk.imp.middle.view.TapTapCheckUpdateView;
import com.yofi.sdk.interfaces.IContainerView;
import com.yofi.sdk.interfaces.IViewBuilder;

/* loaded from: classes2.dex */
public class YoFiViewBuilder implements IViewBuilder {
    @Override // com.yofi.sdk.interfaces.IViewBuilder
    public IContainerView create(ContainerActivity containerActivity, Bundle bundle) {
        int i = bundle.getInt("FUNCTION_CODE");
        if (i == 3) {
            return new PayView(containerActivity, bundle);
        }
        if (i == 17) {
            return new CheckUpdateView(containerActivity, bundle);
        }
        if (i != 18) {
            return null;
        }
        return new TapTapCheckUpdateView(containerActivity, bundle);
    }

    @Override // com.yofi.sdk.interfaces.IViewBuilder
    public IContainerView create(VerticalContainerActivity containerActivity, Bundle bundle) {
        switch (bundle.getInt("FUNCTION_CODE")) {
            case 20:
                return new ChatView(containerActivity, bundle);
            case 21:
                return new PopView(containerActivity, bundle);
            case 22:
                return new ServiceAppraiseView(containerActivity, bundle);
            default:
                return null;
        }
    }
}
