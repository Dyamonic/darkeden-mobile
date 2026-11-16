package com.taptap.sdk.moment.legacy.entity;

import java.io.IOException;

/* loaded from: classes.dex */
public class ImageSuffix {
    private static boolean isBMP(byte[] bArr) {
        return compare(bArr, "BM".getBytes());
    }

    private static boolean isICON(byte[] bArr) {
        return compare(bArr, new byte[]{0, 0, 1, 0, 1, 0, 32, 32});
    }

    private static boolean isWEBP(byte[] bArr) {
        return compare(bArr, "RIFF".getBytes());
    }

    private static boolean isGIF(byte[] bArr) {
        if (compare(bArr, "GIF89a".getBytes())) {
            return true;
        }
        return compare(bArr, "GIF87a".getBytes());
    }

    private static boolean isPNG(byte[] bArr) {
        return compare(bArr, new byte[]{-119, 80, 78, 71, 13, 10, 26, 10});
    }

    private static boolean isJPEGHeader(byte[] bArr) {
        return compare(bArr, new byte[]{-1, -40});
    }

    private static boolean compare(byte[] bArr, byte[] bArr2) {
        for (int i = 0; i < bArr2.length; i++) {
            if (bArr[i] != bArr2[i]) {
                return false;
            }
        }
        return true;
    }

    public static String readType(byte[] bArr) throws IOException {
        if (isJPEGHeader(bArr)) {
            return ".jpg";
        }
        if (isPNG(bArr)) {
            return ".png";
        }
        if (isGIF(bArr)) {
            return ".gif";
        }
        if (isWEBP(bArr)) {
            return ".webp";
        }
        if (isBMP(bArr)) {
            return ".bmp";
        }
        if (isICON(bArr)) {
            return ".ico";
        }
        throw new IOException("the image's format is unKnown!");
    }
}
