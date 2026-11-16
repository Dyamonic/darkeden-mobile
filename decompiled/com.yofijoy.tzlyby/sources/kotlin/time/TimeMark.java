package kotlin.time;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX WARN: Classes with same name are omitted:
  classes2.dex
 */
/* compiled from: TimeSource.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\b\b'\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0015\u0010\u0003\u001a\u00020\u0004H&ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u0005\u0010\u0006J\u0006\u0010\u0007\u001a\u00020\bJ\u0006\u0010\t\u001a\u00020\bJ\u001b\u0010\n\u001a\u00020\u00002\u0006\u0010\u000b\u001a\u00020\u0004H\u0096\u0002ø\u0001\u0000¢\u0006\u0004\b\f\u0010\rJ\u001b\u0010\u000e\u001a\u00020\u00002\u0006\u0010\u000b\u001a\u00020\u0004H\u0096\u0002ø\u0001\u0000¢\u0006\u0004\b\u000f\u0010\r\u0082\u0002\b\n\u0002\b\u0019\n\u0002\b!¨\u0006\u0010"}, d2 = {"Lkotlin/time/TimeMark;", "", "()V", "elapsedNow", "Lkotlin/time/Duration;", "elapsedNow-UwyO8pc", "()D", "hasNotPassedNow", "", "hasPassedNow", "minus", "duration", "minus-LRDsOJo", "(D)Lkotlin/time/TimeMark;", "plus", "plus-LRDsOJo", "kotlin-stdlib"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes3.dex */
public abstract class TimeMark {
    /* renamed from: elapsedNow-UwyO8pc */
    public abstract double mo1307elapsedNowUwyO8pc();

    /* renamed from: plus-LRDsOJo */
    public TimeMark mo1308plusLRDsOJo(double duration) {
        return new AdjustedTimeMark(this, duration, null);
    }

    /* renamed from: minus-LRDsOJo, reason: not valid java name */
    public TimeMark m1367minusLRDsOJo(double duration) {
        return mo1308plusLRDsOJo(Duration.m1355unaryMinusUwyO8pc(duration));
    }

    public final boolean hasPassedNow() {
        return !Duration.m1335isNegativeimpl(mo1307elapsedNowUwyO8pc());
    }

    public final boolean hasNotPassedNow() {
        return Duration.m1335isNegativeimpl(mo1307elapsedNowUwyO8pc());
    }

    /* compiled from: TimeSource.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes2.dex */
    public static final class DefaultImpls {
        /* renamed from: plus-LRDsOJo, reason: not valid java name */
        public static TimeMark m1369plusLRDsOJo(TimeMark timeMark, long j) {
            return new AdjustedTimeMark(timeMark, j, (DefaultConstructorMarker) null);
        }

        /* renamed from: minus-LRDsOJo, reason: not valid java name */
        public static TimeMark m1368minusLRDsOJo(TimeMark timeMark, long j) {
            return timeMark.plus-LRDsOJo(Duration.unaryMinus-UwyO8pc(j));
        }

        public static boolean hasPassedNow(TimeMark timeMark) {
            return !Duration.isNegative-impl(timeMark.mo1307elapsedNowUwyO8pc());
        }

        public static boolean hasNotPassedNow(TimeMark timeMark) {
            return Duration.isNegative-impl(timeMark.mo1307elapsedNowUwyO8pc());
        }
    }
}
