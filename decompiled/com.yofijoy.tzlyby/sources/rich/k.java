package rich;

import java.io.Serializable;
import java.util.Arrays;
import java.util.Map;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;

/* loaded from: classes2.dex */
public class k implements Serializable {
    public final int a;
    public final byte[] b;
    public final Map c;
    public final boolean d;
    public final long e;

    public k(int i, byte[] bArr, Map map, boolean z, long j) {
        this.a = i;
        this.b = bArr;
        this.c = map;
        this.d = z;
        this.e = j;
    }

    public String toString() {
        StringBuilder a = a.a("NetworkResponse{statusCode=");
        a.append(this.a);
        a.append(", data=");
        a.append(Arrays.toString(this.b));
        a.append(", headers=");
        a.append(this.c);
        a.append(", notModified=");
        a.append(this.d);
        a.append(", networkTimeMs=");
        a.append(this.e);
        a.append(AbstractJsonLexerKt.END_OBJ);
        return a.toString();
    }
}
