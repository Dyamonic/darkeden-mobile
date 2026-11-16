package com.taptap.sdk.kit.internal.identifier.content;

import android.os.Handler;
import android.os.Looper;
import com.taptap.sdk.kit.internal.TapTapKit;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: TapOAIDUtil.kt */
@Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "invoke"}, k = 3, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes.dex */
public final class TapOAIDUtil$queryOAID$2 extends Lambda implements Function0<Unit> {
    final /* synthetic */ TapOAIDUtil this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TapOAIDUtil$queryOAID$2(TapOAIDUtil tapOAIDUtil) {
        super(0);
        this.this$0 = tapOAIDUtil;
    }

    @Override // kotlin.jvm.functions.Function0
    public /* bridge */ /* synthetic */ Unit invoke() {
        invoke2();
        return Unit.INSTANCE;
    }

    /* renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2() {
        final String oaid = OaidHelper.getOAID(TapTapKit.INSTANCE.getContext());
        Handler handler = new Handler(Looper.getMainLooper());
        final TapOAIDUtil tapOAIDUtil = this.this$0;
        handler.post(new Runnable() { // from class: com.taptap.sdk.kit.internal.identifier.content.-$$Lambda$TapOAIDUtil$queryOAID$2$F31HUaMiKVNsL0E2X91iBMBOQ3Q
            @Override // java.lang.Runnable
            public final void run() {
                TapOAIDUtil$queryOAID$2.invoke$lambda$2(TapOAIDUtil.this, oaid);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void invoke$lambda$2(TapOAIDUtil this$0, String str) {
        List list;
        List list2;
        AtomicBoolean atomicBoolean;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        synchronized (this$0) {
            TapOAIDUtil tapOAIDUtil = TapOAIDUtil.INSTANCE;
            TapOAIDUtil.oaid = str;
            list = TapOAIDUtil.waitingList;
            Iterator it = list.iterator();
            while (it.hasNext()) {
                ((Function1) it.next()).invoke(str);
            }
            list2 = TapOAIDUtil.waitingList;
            list2.clear();
            atomicBoolean = TapOAIDUtil.isQuerying;
            atomicBoolean.set(false);
            Unit unit = Unit.INSTANCE;
        }
    }
}
