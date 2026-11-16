package kotlinx.serialization.json.internal;

/* renamed from: kotlinx.serialization.json.internal.AbstractJsonTreeEncoder$encodeTaggedInline$1-$$ExternalSynthetic4, reason: invalid class name */
/* loaded from: classes2.dex */
public /* synthetic */ class AbstractJsonTreeEncoder$encodeTaggedInline$1$$ExternalSynthetic4 {
    public static /* synthetic */ String m0(long j, int i) {
        if (j == 0) {
            return "0";
        }
        if (j > 0) {
            return Long.toString(j, i);
        }
        if (i < 2 || i > 36) {
            i = 10;
        }
        int i2 = 64;
        char[] cArr = new char[64];
        int i3 = i - 1;
        if ((i & i3) == 0) {
            int numberOfTrailingZeros = Integer.numberOfTrailingZeros(i);
            do {
                i2--;
                cArr[i2] = Character.forDigit(((int) j) & i3, i);
                j >>>= numberOfTrailingZeros;
            } while (j != 0);
        } else {
            long m0 = (i & 1) == 0 ? (j >>> 1) / (i >>> 1) : AbstractJsonTreeEncoder$encodeTaggedInline$1$$ExternalSynthetic0.m0(j, i);
            long j2 = i;
            i2 = 63;
            cArr[63] = Character.forDigit((int) (j - (m0 * j2)), i);
            while (m0 > 0) {
                i2--;
                cArr[i2] = Character.forDigit((int) (m0 % j2), i);
                m0 /= j2;
            }
        }
        return new String(cArr, i2, 64 - i2);
    }
}
