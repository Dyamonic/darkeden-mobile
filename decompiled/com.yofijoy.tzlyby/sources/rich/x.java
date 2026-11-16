package rich;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.LinkedList;
import java.util.List;

/* loaded from: classes2.dex */
public class x {
    public static final Comparator e = new a();
    public List a = new LinkedList();
    public List b = new ArrayList(64);
    public int c = 0;
    public final int d;

    /* loaded from: classes2.dex */
    public static class a implements Comparator {
        @Override // java.util.Comparator
        public int compare(Object obj, Object obj2) {
            return ((byte[]) obj).length - ((byte[]) obj2).length;
        }
    }

    public x(int i) {
        this.d = i;
    }

    public final synchronized void a() {
        while (this.c > this.d) {
            byte[] bArr = (byte[]) this.a.remove(0);
            this.b.remove(bArr);
            this.c -= bArr.length;
        }
    }

    public synchronized void a(byte[] bArr) {
        if (bArr != null) {
            if (bArr.length <= this.d) {
                this.a.add(bArr);
                int binarySearch = Collections.binarySearch(this.b, bArr, e);
                if (binarySearch < 0) {
                    binarySearch = (-binarySearch) - 1;
                }
                this.b.add(binarySearch, bArr);
                this.c += bArr.length;
                a();
            }
        }
    }

    public synchronized byte[] a(int i) {
        for (int i2 = 0; i2 < this.b.size(); i2++) {
            byte[] bArr = (byte[]) this.b.get(i2);
            if (bArr.length >= i) {
                this.c -= bArr.length;
                this.b.remove(i2);
                this.a.remove(bArr);
                return bArr;
            }
        }
        return new byte[i];
    }
}
