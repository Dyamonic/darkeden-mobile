package com.taptap.sdk.moment.model;

import com.qq.gdt.action.ActionUtils;
import java.util.LinkedHashMap;
import kotlin.Metadata;
import kotlin.collections.MapsKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.ranges.RangesKt;

/* compiled from: Orientation.kt */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0006\b\u0086\u0001\u0018\u0000 \t2\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\tB\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0012\u0010\u0003\u001a\u00020\u0004X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\u0007j\u0002\b\b¨\u0006\n"}, d2 = {"Lcom/taptap/sdk/moment/model/Orientation;", "", "(Ljava/lang/String;I)V", ActionUtils.PAYMENT_AMOUNT, "", "getValue", "()I", "LANDSCAPE", "PORTRAIT", "Companion", "tap-moment_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes.dex */
public enum Orientation {
    LANDSCAPE { // from class: com.taptap.sdk.moment.model.Orientation.LANDSCAPE
        @Override // com.taptap.sdk.moment.model.Orientation
        public int getValue() {
            return 0;
        }
    },
    PORTRAIT { // from class: com.taptap.sdk.moment.model.Orientation.PORTRAIT
        @Override // com.taptap.sdk.moment.model.Orientation
        public int getValue() {
            return 1;
        }
    };


    /* renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* synthetic */ Orientation(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    @JvmStatic
    public static final Orientation from(int i) {
        return INSTANCE.from(i);
    }

    public abstract int getValue();

    /* compiled from: Orientation.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007¨\u0006\u0007"}, d2 = {"Lcom/taptap/sdk/moment/model/Orientation$Companion;", "", "()V", "from", "Lcom/taptap/sdk/moment/model/Orientation;", ActionUtils.PAYMENT_AMOUNT, "", "tap-moment_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        @JvmStatic
        public final Orientation from(int value) {
            Orientation[] values = Orientation.values();
            LinkedHashMap linkedHashMap = new LinkedHashMap(RangesKt.coerceAtLeast(MapsKt.mapCapacity(values.length), 16));
            for (Orientation orientation : values) {
                linkedHashMap.put(Integer.valueOf(orientation.getValue()), orientation);
            }
            Object obj = linkedHashMap.get(Integer.valueOf(value));
            if (obj != null) {
                return (Orientation) obj;
            }
            throw new IllegalStateException(("can not find Orientation by value " + value).toString());
        }
    }
}
