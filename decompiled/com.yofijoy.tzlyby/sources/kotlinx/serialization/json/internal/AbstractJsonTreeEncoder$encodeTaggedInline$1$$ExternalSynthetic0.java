package kotlinx.serialization.json.internal;

/* renamed from: kotlinx.serialization.json.internal.AbstractJsonTreeEncoder$encodeTaggedInline$1-$$ExternalSynthetic0, reason: invalid class name */
/* loaded from: classes2.dex */
public /* synthetic */ class AbstractJsonTreeEncoder$encodeTaggedInline$1$$ExternalSynthetic0 {
    public static /* synthetic */ long m0(long j, long j2) {
        if (j2 < 0) {
            return (j ^ Long.MIN_VALUE) < (j2 ^ Long.MIN_VALUE) ? 0L : 1L;
        }
        if (j >= 0) {
            return j / j2;
        }
        long j3 = ((j >>> 1) / j2) << 1;
        return j3 + (((j - (j3 * j2)) ^ Long.MIN_VALUE) < (j2 ^ Long.MIN_VALUE) ? 0 : 1);
    }
}
