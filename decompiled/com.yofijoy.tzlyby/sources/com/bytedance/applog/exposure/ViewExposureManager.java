package com.bytedance.applog.exposure;

import android.app.Activity;
import android.app.Application;
import android.os.Build;
import android.view.View;
import android.widget.ImageView;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager.widget.ViewPager;
import com.bytedance.applog.InitConfig;
import com.bytedance.applog.exposure.scroll.ScrollObserveConfig;
import com.bytedance.bdtracker.d;
import com.bytedance.bdtracker.e1;
import com.bytedance.bdtracker.k0;
import com.bytedance.bdtracker.k5;
import com.bytedance.bdtracker.p0;
import com.bytedance.bdtracker.r0;
import com.bytedance.bdtracker.s0;
import com.bytedance.bdtracker.t0;
import com.bytedance.bdtracker.u0;
import com.bytedance.bdtracker.v0;
import com.bytedance.bdtracker.w0;
import com.bytedance.bdtracker.y0;
import com.bytedance.bdtracker.z3;
import com.taptap.sdk.update.constants.LoggerConst;
import java.util.ArrayList;
import java.util.Collection;
import java.util.WeakHashMap;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.TypeCastException;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;
import org.json.JSONArray;
import org.json.JSONObject;

@Metadata(bv = {1, 0, 3}, d1 = {"\u0000l\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u0000 22\u00020\u0001:\u00012B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0015\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u0007H\u0000¢\u0006\u0002\b\u001eJ\u000e\u0010\u001f\u001a\u00020\u001c2\u0006\u0010 \u001a\u00020\bJ\b\u0010!\u001a\u0004\u0018\u00010\u0007J\u000e\u0010\"\u001a\u00020\u001c2\u0006\u0010 \u001a\u00020\bJ\u001e\u0010\"\u001a\u00020\u001c2\u0006\u0010 \u001a\u00020\b2\u000e\u0010#\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010$J\u001e\u0010%\u001a\u00020\u001c2\u0006\u0010 \u001a\u00020&2\u000e\b\u0002\u0010#\u001a\b\u0012\u0004\u0012\u00020'0$J\u001e\u0010%\u001a\u00020\u001c2\u0006\u0010 \u001a\u00020(2\u000e\b\u0002\u0010#\u001a\b\u0012\u0004\u0012\u00020'0$J\u0018\u0010)\u001a\u00020\u001c2\u0006\u0010 \u001a\u00020\b2\u0006\u0010*\u001a\u00020\tH\u0002J\b\u0010+\u001a\u00020\u001cH\u0002J\u0018\u0010,\u001a\u00020\u001c2\u0006\u0010 \u001a\u00020\b2\u0006\u0010*\u001a\u00020\tH\u0002J\u0010\u0010-\u001a\u00020\u001c2\b\u0010.\u001a\u0004\u0018\u00010/J\u000e\u00100\u001a\u00020\u001c2\u0006\u00101\u001a\u00020\u000bR&\u0010\u0005\u001a\u001a\u0012\u0004\u0012\u00020\u0007\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\t0\u00060\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R\u001b\u0010\f\u001a\u00020\r8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u000e\u0010\u000fR\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u000e¢\u0006\u0002\n\u0000R\u001b\u0010\u0014\u001a\u00020\u00158BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0018\u0010\u0011\u001a\u0004\b\u0016\u0010\u0017R\u000e\u0010\u0019\u001a\u00020\u001aX\u0082\u000e¢\u0006\u0002\n\u0000¨\u00063"}, d2 = {"Lcom/bytedance/applog/exposure/ViewExposureManager;", "", "appLog", "Lcom/bytedance/applog/AppLogInstance;", "(Lcom/bytedance/applog/AppLogInstance;)V", "activitiesMap", "Ljava/util/WeakHashMap;", "Landroid/app/Activity;", "Landroid/view/View;", "Lcom/bytedance/applog/exposure/ViewExposureHolder;", "globalConfig", "Lcom/bytedance/applog/exposure/ViewExposureConfig;", "scrollExposureHelper", "Lcom/bytedance/applog/exposure/scroll/ScrollExposureHelper;", "getScrollExposureHelper", "()Lcom/bytedance/applog/exposure/scroll/ScrollExposureHelper;", "scrollExposureHelper$delegate", "Lkotlin/Lazy;", "started", "", "task", "Lcom/bytedance/applog/exposure/task/ViewExposureTask;", "getTask", "()Lcom/bytedance/applog/exposure/task/ViewExposureTask;", "task$delegate", "viewTreeChangeObserver", "Lcom/bytedance/applog/exposure/ViewTreeChangeObserver;", "checkViewExposureFromActivity", "", "activity", "checkViewExposureFromActivity$agent_liteChinaRelease", "disposeViewExposure", LoggerConst.ACTION_VIEW, "getCurrActivity", "observeViewExposure", "data", "Lcom/bytedance/applog/exposure/ViewExposureData;", "observeViewScroll", "Landroidx/recyclerview/widget/RecyclerView;", "Lcom/bytedance/applog/exposure/scroll/ScrollObserveConfig;", "Landroidx/viewpager/widget/ViewPager;", "sendViewExposureEvent", "holder", "start", "triggeredExposure", "updateExposureCheckStrategy", "exposureCheckType", "Lcom/bytedance/applog/exposure/ExposureCheckType;", "updateViewExposureConfig", "viewExposureConfig", "Companion", "agent_liteChinaRelease"}, k = 1, mv = {1, 1, 16})
/* loaded from: classes.dex */
public final class ViewExposureManager {
    public final WeakHashMap<Activity, WeakHashMap<View, r0>> a;
    public boolean b;
    public w0 c;
    public ViewExposureConfig d;
    public final Lazy e;
    public final Lazy f;
    public final d g;
    public static final /* synthetic */ KProperty[] h = {Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(ViewExposureManager.class), "task", "getTask()Lcom/bytedance/applog/exposure/task/ViewExposureTask;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(ViewExposureManager.class), "scrollExposureHelper", "getScrollExposureHelper()Lcom/bytedance/applog/exposure/scroll/ScrollExposureHelper;"))};
    public static final ViewExposureConfig i = new ViewExposureConfig(Float.valueOf(1.0f), null, 0, null, 14, null);

    /* loaded from: classes.dex */
    public static final class b extends Lambda implements Function0<y0> {
        public b() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public y0 invoke() {
            return new y0(ViewExposureManager.this.g);
        }
    }

    /* loaded from: classes.dex */
    public static final class c extends Lambda implements Function0<e1> {
        public c() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public e1 invoke() {
            return new e1(ViewExposureManager.this);
        }
    }

    public ViewExposureManager(d appLog) {
        Intrinsics.checkParameterIsNotNull(appLog, "appLog");
        this.g = appLog;
        this.a = new WeakHashMap<>();
        Application application = appLog.n;
        if (application == null) {
            throw new TypeCastException("null cannot be cast to non-null type android.app.Application");
        }
        this.c = new w0(application);
        this.d = i;
        this.e = LazyKt.lazy(new c());
        this.f = LazyKt.lazy(new b());
        InitConfig initConfig = appLog.getInitConfig();
        if (initConfig != null && initConfig.isExposureEnabled()) {
            if (this.b) {
                return;
            }
            this.c.a(new t0(this));
            this.c.a(new u0(this));
            this.b = true;
            return;
        }
        appLog.D.warn("[ViewExposure] init failed isExposureEnabled false.", new Object[0]);
    }

    public static final /* synthetic */ e1 access$getTask$p(ViewExposureManager viewExposureManager) {
        Lazy lazy = viewExposureManager.e;
        KProperty kProperty = h[0];
        return (e1) lazy.getValue();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void observeViewScroll$default(ViewExposureManager viewExposureManager, RecyclerView recyclerView, ViewExposureData viewExposureData, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            viewExposureData = viewExposureManager.a().b;
        }
        viewExposureManager.observeViewScroll(recyclerView, (ViewExposureData<ScrollObserveConfig>) viewExposureData);
    }

    public final y0 a() {
        Lazy lazy = this.f;
        KProperty kProperty = h[1];
        return (y0) lazy.getValue();
    }

    public final void a(View view, r0 r0Var) {
        Function1<ViewExposureParam, Boolean> exposureCallback;
        d dVar = this.g;
        try {
            ViewExposureData<ViewExposureConfig> viewExposureData = r0Var.a;
            String eventName = viewExposureData.getEventName();
            if (eventName == null) {
                eventName = "$bav2b_exposure";
            }
            boolean z = true;
            z3 a = k0.a(view, true);
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("page_key", a.v);
                jSONObject.put("page_title", a.w);
                jSONObject.put("element_path", a.x);
                jSONObject.put("element_width", a.C);
                jSONObject.put("element_height", a.D);
                jSONObject.put("element_id", a.y);
                jSONObject.put("element_type", a.z);
                ArrayList<String> arrayList = a.B;
                if (!(arrayList == null || arrayList.isEmpty())) {
                    jSONObject.put("positions", new JSONArray((Collection) a.B));
                }
                ArrayList<String> arrayList2 = a.A;
                if (arrayList2 != null && !arrayList2.isEmpty()) {
                    z = false;
                }
                if (!z) {
                    jSONObject.put("texts", new JSONArray((Collection) a.A));
                }
                jSONObject.put("$exposure_type", r0Var.c.a);
                JSONObject properties = viewExposureData.getProperties();
                if (properties != null) {
                    k0.c(properties, jSONObject);
                }
            } catch (Exception e) {
                this.g.D.error(7, "[ViewExposure] JSON handle failed", e, new Object[0]);
            }
            ViewExposureConfig config = viewExposureData.getConfig();
            if (config == null || (exposureCallback = config.getExposureCallback()) == null) {
                exposureCallback = this.d.getExposureCallback();
            }
            if (exposureCallback.invoke(new ViewExposureParam(jSONObject)).booleanValue()) {
                this.g.onEventV3(eventName, jSONObject, 0);
                return;
            }
            this.g.D.warn("[ViewExposure] filter sendViewExposureEvent event " + eventName + ", " + jSONObject, new Object[0]);
        } catch (Throwable th) {
            dVar.D.error(7, "Run task failed", th, new Object[0]);
        }
    }

    public final void b(View view, r0 r0Var) {
        v0 v0Var;
        int i2 = s0.a[r0Var.c.ordinal()];
        if (i2 == 1) {
            v0Var = v0.EXPOSURE_ONCE;
        } else {
            if (i2 != 2) {
                if (i2 == 3 || i2 == 4) {
                    a(view, r0Var);
                    r0Var.a(v0.EXPOSURE_MORE_THAN_ONCE);
                    r0Var.b = true;
                    r0Var.d = 0L;
                }
                a(view, r0Var);
                r0Var.b = true;
                r0Var.d = 0L;
            }
            v0Var = v0.EXPOSURE_MORE_THAN_ONCE;
        }
        r0Var.a(v0Var);
        a(view, r0Var);
        r0Var.b = true;
        r0Var.d = 0L;
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x0090 A[Catch: all -> 0x012b, TryCatch #0 {all -> 0x012b, blocks: (B:3:0x000d, B:5:0x0017, B:6:0x0024, B:8:0x002a, B:10:0x004b, B:11:0x0051, B:13:0x005d, B:15:0x0068, B:17:0x007e, B:18:0x0084, B:23:0x0090, B:25:0x0096, B:26:0x009c, B:30:0x00a4, B:32:0x00b8, B:37:0x00c5, B:38:0x00d0, B:40:0x00d8, B:41:0x00de, B:43:0x00e8, B:44:0x00ed, B:49:0x00ce), top: B:2:0x000d }] */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00a2 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0024 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:51:0x009b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void checkViewExposureFromActivity$agent_liteChinaRelease(android.app.Activity r17) {
        /*
            Method dump skipped, instructions count: 310
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.applog.exposure.ViewExposureManager.checkViewExposureFromActivity$agent_liteChinaRelease(android.app.Activity):void");
    }

    public final void disposeViewExposure(View view) {
        Activity a;
        r0 remove;
        Intrinsics.checkParameterIsNotNull(view, "view");
        d dVar = this.g;
        if (view == null) {
            a = null;
        } else {
            try {
                a = k0.a(view.getContext());
            } catch (Throwable th) {
                dVar.D.error(7, "Run task failed", th, new Object[0]);
                return;
            }
        }
        if (a != null) {
            Intrinsics.checkExpressionValueIsNotNull(a, "ActivityUtil.findActivit…view) ?: return@runSafely");
            WeakHashMap<View, r0> weakHashMap = this.a.get(a);
            if (weakHashMap == null || (remove = weakHashMap.remove(view)) == null) {
                return;
            }
            Intrinsics.checkExpressionValueIsNotNull(remove, "activitiesMap[activity]?…view) ?: return@runSafely");
            ViewExposureConfig config = remove.a.getConfig();
            if (Intrinsics.areEqual((Object) (config != null ? config.getVisualDiagnosis() : null), (Object) true)) {
                k0.a(view);
            }
        }
    }

    public final Activity getCurrActivity() {
        return this.c.a.get();
    }

    public final void observeViewExposure(View view) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        observeViewExposure(view, null);
    }

    public final void observeViewExposure(View view, ViewExposureData<ViewExposureConfig> data) {
        Float areaRatio;
        Boolean visualDiagnosis;
        Function1<ViewExposureParam, Boolean> exposureCallback;
        Intrinsics.checkParameterIsNotNull(view, "view");
        d dVar = this.g;
        try {
            InitConfig initConfig = dVar.getInitConfig();
            if (initConfig != null && initConfig.isExposureEnabled()) {
                Activity a = view == null ? null : k0.a(view.getContext());
                if (a == null) {
                    this.g.D.warn(7, "[ViewExposure] observe failed: The view context is not Activity.", new Object[0]);
                    return;
                }
                if (k5.b(view)) {
                    this.g.D.warn(7, "[ViewExposure] observe failed: The view is ignored.", new Object[0]);
                    return;
                }
                WeakHashMap<View, r0> weakHashMap = this.a.get(a);
                if (weakHashMap == null) {
                    weakHashMap = new WeakHashMap<>();
                    this.a.put(a, weakHashMap);
                }
                ViewExposureConfig copyWith = this.d;
                ViewExposureConfig config = data != null ? data.getConfig() : null;
                Intrinsics.checkParameterIsNotNull(copyWith, "$this$copyWith");
                if (config == null || (areaRatio = config.getAreaRatio()) == null) {
                    areaRatio = copyWith.getAreaRatio();
                }
                Float f = areaRatio;
                if (config == null || (visualDiagnosis = config.getVisualDiagnosis()) == null) {
                    visualDiagnosis = copyWith.getVisualDiagnosis();
                }
                ViewExposureConfig viewExposureConfig = new ViewExposureConfig(f, visualDiagnosis, config != null ? config.getStayTriggerTime() : copyWith.getStayTriggerTime(), (config == null || (exposureCallback = config.getExposureCallback()) == null) ? copyWith.getExposureCallback() : exposureCallback);
                weakHashMap.put(view, new r0(new ViewExposureData(data != null ? data.getEventName() : null, data != null ? data.getProperties() : null, viewExposureConfig), false, null, 0L, 14));
                if (Intrinsics.areEqual((Object) viewExposureConfig.getVisualDiagnosis(), (Object) true)) {
                    Intrinsics.checkParameterIsNotNull(view, "$this$enableViewExposureDebugMode");
                    if (Build.VERSION.SDK_INT >= 16) {
                        if (view instanceof ImageView) {
                            ImageView imageView = (ImageView) view;
                            imageView.setImageDrawable(new p0(imageView.getDrawable()));
                        }
                        view.setBackground(new p0(view.getBackground()));
                    }
                }
                checkViewExposureFromActivity$agent_liteChinaRelease(a);
                this.c.a(view);
                this.g.D.debug(7, "[ViewExposure] observe successful, data=" + data + ", view=" + view, new Object[0]);
                return;
            }
            this.g.D.warn(7, "[ViewExposure] observe failed: InitConfig.exposureEnabled is not true.", new Object[0]);
        } catch (Throwable th) {
            dVar.D.error(7, "Run task failed", th, new Object[0]);
        }
    }

    public final void observeViewScroll(RecyclerView view, ViewExposureData<ScrollObserveConfig> data) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        Intrinsics.checkParameterIsNotNull(data, "data");
        a().a(view, data);
    }

    public final void observeViewScroll(ViewPager view, ViewExposureData<ScrollObserveConfig> data) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        Intrinsics.checkParameterIsNotNull(data, "data");
        a().a(view, data);
    }

    public final void updateExposureCheckStrategy(ExposureCheckType exposureCheckType) {
        Lazy lazy = this.e;
        KProperty kProperty = h[0];
        ((e1) lazy.getValue()).a(exposureCheckType);
    }

    public final void updateViewExposureConfig(ViewExposureConfig viewExposureConfig) {
        Intrinsics.checkParameterIsNotNull(viewExposureConfig, "viewExposureConfig");
        this.d = viewExposureConfig;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void observeViewScroll$default(ViewExposureManager viewExposureManager, ViewPager viewPager, ViewExposureData viewExposureData, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            viewExposureData = viewExposureManager.a().b;
        }
        viewExposureManager.observeViewScroll(viewPager, (ViewExposureData<ScrollObserveConfig>) viewExposureData);
    }
}
