package com.bytedance.bdtracker;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager.widget.ViewPager;
import com.bytedance.applog.InitConfig;
import com.bytedance.applog.exposure.ViewExposureData;
import com.bytedance.applog.exposure.ViewExposureParam;
import com.bytedance.applog.exposure.scroll.ScrollObserveConfig;
import com.taptap.sdk.update.constants.LoggerConst;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.json.JSONObject;

@Metadata(bv = {1, 0, 3}, d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\u0018\u0000 \u00182\u00020\u0001:\u0001\u0018B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u001e\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000e2\u000e\b\u0002\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006J\u001e\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u00102\u000e\b\u0002\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006J6\u0010\u0011\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u00122\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00070\u00062\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0016\u001a\u00020\u0017H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0017\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u000e\u0010\n\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0019"}, d2 = {"Lcom/bytedance/applog/exposure/scroll/ScrollExposureHelper;", "", "appLog", "Lcom/bytedance/applog/AppLogInstance;", "(Lcom/bytedance/applog/AppLogInstance;)V", "defaultData", "Lcom/bytedance/applog/exposure/ViewExposureData;", "Lcom/bytedance/applog/exposure/scroll/ScrollObserveConfig;", "getDefaultData", "()Lcom/bytedance/applog/exposure/ViewExposureData;", "globalConfig", "observeViewScroll", "", LoggerConst.ACTION_VIEW, "Landroidx/recyclerview/widget/RecyclerView;", "data", "Landroidx/viewpager/widget/ViewPager;", "sendScrollExposure", "Landroid/view/View;", "dx", "", "dy", "direction", "", "Companion", "agent_liteChinaRelease"}, k = 1, mv = {1, 1, 16})
/* loaded from: classes.dex */
public final class y0 {
    public final ScrollObserveConfig a;
    public final ViewExposureData<ScrollObserveConfig> b;
    public final d c;

    /* loaded from: classes.dex */
    public static final class a extends Lambda implements Function3<Float, Float, Integer, Unit> {
        public final /* synthetic */ ViewExposureData b;
        public final /* synthetic */ RecyclerView c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(ViewExposureData viewExposureData, RecyclerView recyclerView) {
            super(3);
            this.b = viewExposureData;
            this.c = recyclerView;
        }

        @Override // kotlin.jvm.functions.Function3
        public Unit invoke(Float f, Float f2, Integer num) {
            y0.this.a(this.c, this.b, f.floatValue(), f2.floatValue(), num.intValue());
            return Unit.INSTANCE;
        }
    }

    /* loaded from: classes.dex */
    public static final class b extends Lambda implements Function3<Float, Float, Integer, Unit> {
        public final /* synthetic */ ViewExposureData b;
        public final /* synthetic */ ViewPager c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(ViewExposureData viewExposureData, ViewPager viewPager) {
            super(3);
            this.b = viewExposureData;
            this.c = viewPager;
        }

        @Override // kotlin.jvm.functions.Function3
        public Unit invoke(Float f, Float f2, Integer num) {
            y0.this.a(this.c, this.b, f.floatValue(), f2.floatValue(), num.intValue());
            return Unit.INSTANCE;
        }
    }

    public y0(d appLog) {
        Intrinsics.checkParameterIsNotNull(appLog, "appLog");
        this.c = appLog;
        ScrollObserveConfig scrollObserveConfig = new ScrollObserveConfig(0, null, 3, null);
        this.a = scrollObserveConfig;
        this.b = new ViewExposureData<>(null, null, scrollObserveConfig, 3, null);
    }

    public final void a(RecyclerView view, ViewExposureData<ScrollObserveConfig> data) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        Intrinsics.checkParameterIsNotNull(data, "data");
        d dVar = this.c;
        try {
            InitConfig initConfig = dVar.getInitConfig();
            if (initConfig == null || !initConfig.isScrollObserveEnabled()) {
                this.c.D.warn("[ScrollExposure] observeScrollExposure failed isScrollExposureEnabled false.", new Object[0]);
            } else {
                ScrollObserveConfig config = data.getConfig();
                view.addOnScrollListener(new x0(config != null ? config.getMinOffset() : 30, new a(data, view)));
            }
        } catch (Throwable th) {
            dVar.D.error(7, "Run task failed", th, new Object[0]);
        }
    }

    public final void a(ViewPager view, ViewExposureData<ScrollObserveConfig> data) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        Intrinsics.checkParameterIsNotNull(data, "data");
        d dVar = this.c;
        try {
            InitConfig initConfig = dVar.getInitConfig();
            if (initConfig == null || !initConfig.isScrollObserveEnabled()) {
                this.c.D.warn("[ScrollExposure] observeScrollExposure failed isScrollExposureEnabled false.", new Object[0]);
            } else {
                ScrollObserveConfig config = data.getConfig();
                view.addOnPageChangeListener(new z0(config != null ? config.getMinOffset() : 30, new b(data, view)));
            }
        } catch (Throwable th) {
            dVar.D.error(7, "Run task failed", th, new Object[0]);
        }
    }

    public final void a(View view, ViewExposureData<ScrollObserveConfig> viewExposureData, float f, float f2, int i) {
        Function1<ViewExposureParam, Boolean> scrollCallback;
        String eventName = viewExposureData.getEventName();
        if (eventName == null) {
            eventName = "$bav2b_slide";
        }
        z3 a2 = k0.a(view, true);
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("page_key", a2.v);
            jSONObject.put("page_title", a2.w);
            jSONObject.put("element_path", a2.x);
            jSONObject.put("element_width", a2.C);
            jSONObject.put("element_height", a2.D);
            jSONObject.put("element_id", a2.y);
            jSONObject.put("element_type", a2.z);
            jSONObject.put("$offsetX", Float.valueOf(f));
            jSONObject.put("$offsetY", Float.valueOf(f2));
            jSONObject.put("$direction", i);
            JSONObject properties = viewExposureData.getProperties();
            if (properties != null) {
                k0.c(properties, jSONObject);
            }
        } catch (Exception e) {
            this.c.D.error(7, "[ScrollExposure] JSON handle failed", e, new Object[0]);
        }
        ScrollObserveConfig config = viewExposureData.getConfig();
        if (config == null || (scrollCallback = config.getScrollCallback()) == null) {
            scrollCallback = this.a.getScrollCallback();
        }
        if (scrollCallback.invoke(new ViewExposureParam(jSONObject)).booleanValue()) {
            this.c.onEventV3(eventName, jSONObject, 0);
            return;
        }
        this.c.D.warn("[ScrollExposure] filter sendScrollExposure event " + eventName + ", " + jSONObject, new Object[0]);
    }
}
