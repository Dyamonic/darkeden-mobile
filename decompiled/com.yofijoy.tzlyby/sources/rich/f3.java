package rich;

import java.util.List;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;

/* loaded from: classes2.dex */
public class f3 {
    public String a;
    public String b;
    public List c;

    /* loaded from: classes2.dex */
    public static class a {
        public String a;
        public String b;
        public int c;
        public String d;

        public String toString() {
            StringBuilder a = rich.a.a("Info{appId='");
            a.append(this.a);
            a.append('\'');
            a.append(", appSecret='");
            a.append(this.b);
            a.append('\'');
            a.append(", serviceType=");
            a.append(this.c);
            a.append(", rsaKey='");
            a.append(this.d);
            a.append('\'');
            a.append(AbstractJsonLexerKt.END_OBJ);
            return a.toString();
        }
    }

    public String toString() {
        StringBuilder a2 = rich.a.a("InitBean{status='");
        a2.append(this.a);
        a2.append('\'');
        a2.append(", msg='");
        a2.append(this.b);
        a2.append('\'');
        a2.append(", info=");
        a2.append(this.c);
        a2.append(AbstractJsonLexerKt.END_OBJ);
        return a2.toString();
    }
}
