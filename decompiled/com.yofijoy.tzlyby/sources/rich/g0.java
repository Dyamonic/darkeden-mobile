package rich;

import java.io.ByteArrayOutputStream;

/* loaded from: classes2.dex */
public class g0 extends ByteArrayOutputStream {
    public final x a;

    public g0(x xVar, int i) {
        this.a = xVar;
        ((ByteArrayOutputStream) this).buf = xVar.a(Math.max(i, 256));
    }

    public final void a(int i) {
        int i2 = ((ByteArrayOutputStream) this).count + i;
        if (i2 <= ((ByteArrayOutputStream) this).buf.length) {
            return;
        }
        byte[] a = this.a.a(i2 * 2);
        System.arraycopy(((ByteArrayOutputStream) this).buf, 0, a, 0, ((ByteArrayOutputStream) this).count);
        this.a.a(((ByteArrayOutputStream) this).buf);
        ((ByteArrayOutputStream) this).buf = a;
    }

    @Override // java.io.ByteArrayOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.a.a(((ByteArrayOutputStream) this).buf);
        ((ByteArrayOutputStream) this).buf = null;
        super.close();
    }

    public void finalize() {
        this.a.a(((ByteArrayOutputStream) this).buf);
    }

    @Override // java.io.ByteArrayOutputStream, java.io.OutputStream
    public synchronized void write(int i) {
        a(1);
        super.write(i);
    }

    @Override // java.io.ByteArrayOutputStream, java.io.OutputStream
    public synchronized void write(byte[] bArr, int i, int i2) {
        a(i2);
        super.write(bArr, i, i2);
    }
}
