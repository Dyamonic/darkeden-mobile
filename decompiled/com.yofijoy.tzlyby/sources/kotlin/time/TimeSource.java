package kotlin.time;

import kotlin.Metadata;
import kotlin.jvm.JvmInline;

/* JADX WARN: Classes with same name are omitted:
  classes2.dex
 */
/* compiled from: TimeSource.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\bg\u0018\u0000 \u00042\u00020\u0001:\u0002\u0004\u0005J\b\u0010\u0002\u001a\u00020\u0003H&¨\u0006\u0006"}, d2 = {"Lkotlin/time/TimeSource;", "", "markNow", "Lkotlin/time/TimeMark;", "Companion", "Monotonic", "kotlin-stdlib"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes3.dex */
public interface TimeSource {

    /* renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = Companion.$$INSTANCE;

    TimeMark markNow();

    /* JADX WARN: Classes with same name are omitted:
  classes2.dex
 */
    /* compiled from: TimeSource.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\t\u0010\u0003\u001a\u00020\u0004H\u0096\u0001J\b\u0010\u0005\u001a\u00020\u0006H\u0016¨\u0006\u0007"}, d2 = {"Lkotlin/time/TimeSource$Monotonic;", "Lkotlin/time/TimeSource;", "()V", "markNow", "Lkotlin/time/TimeMark;", "toString", "", "kotlin-stdlib"}, k = 1, mv = {1, 4, 0})
    /* loaded from: classes3.dex */
    public static final class Monotonic implements TimeSource {
        public static final Monotonic INSTANCE = new Monotonic();
        private final /* synthetic */ MonotonicTimeSource $$delegate_0 = MonotonicTimeSource.INSTANCE;

        @Override // kotlin.time.TimeSource
        public TimeMark markNow() {
            return this.$$delegate_0.markNow();
        }

        private Monotonic() {
        }

        public String toString() {
            return MonotonicTimeSource.INSTANCE.toString();
        }

        /* compiled from: TimeSource.kt */
        @Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\b\n\u0002\u0010\b\n\u0002\b\t\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0087@\u0018\u00002\u00020\u0001B\u0018\b\u0000\u0012\n\u0010\u0002\u001a\u00060\u0003j\u0002`\u0004ø\u0001\u0000¢\u0006\u0004\b\u0005\u0010\u0006J\u0015\u0010\u0007\u001a\u00020\bH\u0016ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\b\t\u0010\u0006J\u001a\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rHÖ\u0003¢\u0006\u0004\b\u000e\u0010\u000fJ\u000f\u0010\u0010\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\u0011\u0010\u0012J\u000f\u0010\u0013\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\u0014\u0010\u0012J\u0010\u0010\u0015\u001a\u00020\u0016HÖ\u0001¢\u0006\u0004\b\u0017\u0010\u0018J\u001b\u0010\u0019\u001a\u00020\u00002\u0006\u0010\u001a\u001a\u00020\bH\u0096\u0002ø\u0001\u0000¢\u0006\u0004\b\u001b\u0010\u001cJ\u001b\u0010\u001d\u001a\u00020\u00002\u0006\u0010\u001a\u001a\u00020\bH\u0096\u0002ø\u0001\u0000¢\u0006\u0004\b\u001e\u0010\u001cJ\u0010\u0010\u001f\u001a\u00020 HÖ\u0001¢\u0006\u0004\b!\u0010\"R\u0012\u0010\u0002\u001a\u00060\u0003j\u0002`\u0004X\u0080\u0004¢\u0006\u0002\n\u0000\u0088\u0001\u0002\u0092\u0001\u00060\u0003j\u0002`\u0004ø\u0001\u0000\u0082\u0002\b\n\u0002\b\u0019\n\u0002\b!¨\u0006#"}, d2 = {"Lkotlin/time/TimeSource$Monotonic$ValueTimeMark;", "Lkotlin/time/TimeMark;", "reading", "", "Lkotlin/time/ValueTimeMarkReading;", "constructor-impl", "(J)J", "elapsedNow", "Lkotlin/time/Duration;", "elapsedNow-UwyO8pc", "equals", "", "other", "", "equals-impl", "(JLjava/lang/Object;)Z", "hasNotPassedNow", "hasNotPassedNow-impl", "(J)Z", "hasPassedNow", "hasPassedNow-impl", "hashCode", "", "hashCode-impl", "(J)I", "minus", "duration", "minus-LRDsOJo", "(JJ)J", "plus", "plus-LRDsOJo", "toString", "", "toString-impl", "(J)Ljava/lang/String;", "kotlin-stdlib"}, k = 1, mv = {1, 7, 1}, xi = 48)
        @JvmInline
        /* loaded from: classes2.dex */
        public static final class ValueTimeMark implements TimeMark {
            private final long reading;

            /* renamed from: box-impl, reason: not valid java name */
            public static final /* synthetic */ ValueTimeMark m1370boximpl(long j) {
                return new ValueTimeMark(j);
            }

            /* renamed from: constructor-impl, reason: not valid java name */
            public static long m1371constructorimpl(long j) {
                return j;
            }

            /* renamed from: equals-impl, reason: not valid java name */
            public static boolean m1373equalsimpl(long j, Object obj) {
                return (obj instanceof ValueTimeMark) && j == ((ValueTimeMark) obj).getReading();
            }

            /* renamed from: equals-impl0, reason: not valid java name */
            public static final boolean m1374equalsimpl0(long j, long j2) {
                return j == j2;
            }

            /* renamed from: hashCode-impl, reason: not valid java name */
            public static int m1377hashCodeimpl(long j) {
                return (int) (j ^ (j >>> 32));
            }

            /* renamed from: toString-impl, reason: not valid java name */
            public static String m1380toStringimpl(long j) {
                return "ValueTimeMark(reading=" + j + ')';
            }

            public boolean equals(Object obj) {
                return m1373equalsimpl(this.reading, obj);
            }

            public int hashCode() {
                return m1377hashCodeimpl(this.reading);
            }

            public String toString() {
                return m1380toStringimpl(this.reading);
            }

            /* renamed from: unbox-impl, reason: not valid java name and from getter */
            public final /* synthetic */ long getReading() {
                return this.reading;
            }

            /* renamed from: minus-LRDsOJo, reason: not valid java name */
            public /* bridge */ /* synthetic */ TimeMark m1382minusLRDsOJo(long j) {
                return m1370boximpl(m1381minusLRDsOJo(j));
            }

            /* renamed from: plus-LRDsOJo, reason: not valid java name */
            public /* bridge */ /* synthetic */ TimeMark m1384plusLRDsOJo(long j) {
                return m1370boximpl(m1383plusLRDsOJo(j));
            }

            private /* synthetic */ ValueTimeMark(long j) {
                this.reading = j;
            }

            /* renamed from: elapsedNow-UwyO8pc, reason: not valid java name */
            public static long m1372elapsedNowUwyO8pc(long j) {
                return MonotonicTimeSource.INSTANCE.elapsedFrom-6eNON_k(j);
            }

            @Override // kotlin.time.TimeMark
            /* renamed from: elapsedNow-UwyO8pc */
            public long mo1307elapsedNowUwyO8pc() {
                return m1372elapsedNowUwyO8pc(this.reading);
            }

            /* renamed from: plus-LRDsOJo, reason: not valid java name */
            public static long m1379plusLRDsOJo(long j, long j2) {
                return MonotonicTimeSource.INSTANCE.adjustReading-6QKq23U(j, j2);
            }

            /* renamed from: plus-LRDsOJo, reason: not valid java name */
            public long m1383plusLRDsOJo(long j) {
                return m1379plusLRDsOJo(this.reading, j);
            }

            /* renamed from: minus-LRDsOJo, reason: not valid java name */
            public static long m1378minusLRDsOJo(long j, long j2) {
                return MonotonicTimeSource.INSTANCE.adjustReading-6QKq23U(j, Duration.unaryMinus-UwyO8pc(j2));
            }

            /* renamed from: minus-LRDsOJo, reason: not valid java name */
            public long m1381minusLRDsOJo(long j) {
                return m1378minusLRDsOJo(this.reading, j);
            }

            /* renamed from: hasPassedNow-impl, reason: not valid java name */
            public static boolean m1376hasPassedNowimpl(long j) {
                return !Duration.isNegative-impl(m1372elapsedNowUwyO8pc(j));
            }

            @Override // kotlin.time.TimeMark
            public boolean hasPassedNow() {
                return m1376hasPassedNowimpl(this.reading);
            }

            /* renamed from: hasNotPassedNow-impl, reason: not valid java name */
            public static boolean m1375hasNotPassedNowimpl(long j) {
                return Duration.isNegative-impl(m1372elapsedNowUwyO8pc(j));
            }

            @Override // kotlin.time.TimeMark
            public boolean hasNotPassedNow() {
                return m1375hasNotPassedNowimpl(this.reading);
            }
        }
    }

    /* JADX WARN: Classes with same name are omitted:
  classes2.dex
 */
    /* compiled from: TimeSource.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, d2 = {"Lkotlin/time/TimeSource$Companion;", "", "()V", "kotlin-stdlib"}, k = 1, mv = {1, 4, 0})
    /* loaded from: classes3.dex */
    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();

        private Companion() {
        }
    }
}
