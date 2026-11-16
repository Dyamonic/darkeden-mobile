package com.yofi.sdk.interfaces;

import android.os.Bundle;
import com.yofi.sdk.activity.ContainerActivity;
import com.yofi.sdk.activity.VerticalContainerActivity;

/* loaded from: classes2.dex */
public interface IViewBuilder {
    IContainerView create(ContainerActivity var1, Bundle var2);

    IContainerView create(VerticalContainerActivity var1, Bundle var2);
}
