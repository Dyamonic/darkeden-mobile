package com.taptap.sdk.kit.internal.identifier.content;

import android.os.Handler;
import android.os.Looper;
import com.taptap.sdk.kit.internal.TapTapKit;
import com.taptap.sdk.kit.internal.identifier.TapIdentifierUtil;
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
/* compiled from: TapGAIDUtil.kt */
@Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "invoke"}, k = 3, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes.dex */
public final class TapGAIDUtil$queryGAID$2 extends Lambda implements Function0<Unit> {
    final /* synthetic */ TapGAIDUtil this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TapGAIDUtil$queryGAID$2(TapGAIDUtil tapGAIDUtil) {
        super(0);
        this.this$0 = tapGAIDUtil;
    }

    @Override // kotlin.jvm.functions.Function0
    public /* bridge */ /* synthetic */ Unit invoke() {
        invoke2();
        return Unit.INSTANCE;
    }

    /* renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2() {
        final TapIdentifierUtil.GAID androidId;
        androidId = TapGAIDUtil.INSTANCE.getAndroidId(TapTapKit.INSTANCE.getContext());
        Handler handler = new Handler(Looper.getMainLooper());
        final TapGAIDUtil tapGAIDUtil = this.this$0;
        handler.post(new Runnable() { // from class: com.taptap.sdk.kit.internal.identifier.content.-$$Lambda$TapGAIDUtil$queryGAID$2$iG5F6WsOhiTakvieSDPY634VSCI
            @Override // java.lang.Runnable
            public final void run() {
                TapGAIDUtil$queryGAID$2.invoke$lambda$2(TapGAIDUtil.this, androidId);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void invoke$lambda$2(TapGAIDUtil this$0, TapIdentifierUtil.GAID advertisingId) {
        List list;
        List list2;
        AtomicBoolean atomicBoolean;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(advertisingId, "$advertisingId");
        synchronized (this$0) {
            TapGAIDUtil tapGAIDUtil = TapGAIDUtil.INSTANCE;
            TapGAIDUtil.gaid = advertisingId;
            list = TapGAIDUtil.waitingList;
            Iterator it = list.iterator();
            while (it.hasNext()) {
                ((Function1) it.next()).invoke(advertisingId);
            }
            list2 = TapGAIDUtil.waitingList;
            list2.clear();
            atomicBoolean = TapGAIDUtil.isQuerying;
            atomicBoolean.set(false);
            Unit unit = Unit.INSTANCE;
        }
    }
}
