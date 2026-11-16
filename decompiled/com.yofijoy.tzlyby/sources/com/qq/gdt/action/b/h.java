package com.qq.gdt.action.b;

import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import kotlin.UShort;

/* loaded from: classes.dex */
public abstract class h {
    public static int a(ByteBuffer byteBuffer, int i) {
        return byteBuffer.getShort(i) & UShort.MAX_VALUE;
    }

    public static long a(ByteBuffer byteBuffer) {
        c(byteBuffer);
        return b(byteBuffer, byteBuffer.position() + 16);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static d<ByteBuffer, Long> a(RandomAccessFile randomAccessFile) throws IOException {
        if (randomAccessFile.length() < 22) {
            return null;
        }
        d<ByteBuffer, Long> a = a(randomAccessFile, 0);
        return a != null ? a : a(randomAccessFile, 65535);
    }

    private static d<ByteBuffer, Long> a(RandomAccessFile randomAccessFile, int i) throws IOException {
        if (i < 0 || i > 65535) {
            throw new IllegalArgumentException("maxCommentSize: " + i);
        }
        long length = randomAccessFile.length();
        if (length < 22) {
            return null;
        }
        ByteBuffer allocate = ByteBuffer.allocate(((int) Math.min(i, length - 22)) + 22);
        allocate.order(ByteOrder.LITTLE_ENDIAN);
        long capacity = length - allocate.capacity();
        randomAccessFile.seek(capacity);
        randomAccessFile.readFully(allocate.array(), allocate.arrayOffset(), allocate.capacity());
        int d = d(allocate);
        if (d == -1) {
            return null;
        }
        allocate.position(d);
        ByteBuffer slice = allocate.slice();
        slice.order(ByteOrder.LITTLE_ENDIAN);
        return d.a(slice, Long.valueOf(capacity + d));
    }

    public static final boolean a(RandomAccessFile randomAccessFile, long j) throws IOException {
        long j2 = j - 20;
        if (j2 < 0) {
            return false;
        }
        randomAccessFile.seek(j2);
        return randomAccessFile.readInt() == 1347094023;
    }

    public static long b(ByteBuffer byteBuffer) {
        c(byteBuffer);
        return b(byteBuffer, byteBuffer.position() + 12);
    }

    public static long b(ByteBuffer byteBuffer, int i) {
        return byteBuffer.getInt(i) & 4294967295L;
    }

    public static void c(ByteBuffer byteBuffer) {
        if (byteBuffer.order() != ByteOrder.LITTLE_ENDIAN) {
            throw new IllegalArgumentException("ByteBuffer byte order must be little endian");
        }
    }

    private static int d(ByteBuffer byteBuffer) {
        c(byteBuffer);
        int capacity = byteBuffer.capacity();
        if (capacity < 22) {
            return -1;
        }
        int i = capacity - 22;
        int min = Math.min(i, 65535);
        for (int i2 = 0; i2 <= min; i2++) {
            int i3 = i - i2;
            if (byteBuffer.getInt(i3) == 101010256 && a(byteBuffer, i3 + 20) == i2) {
                return i3;
            }
        }
        return -1;
    }
}
