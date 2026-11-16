package com.yofi.sdk.cachewebviewlib.utils;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;

/* loaded from: classes2.dex */
public class CopyInputStream {
    private ByteArrayOutputStream _copy = new ByteArrayOutputStream();
    private InputStream _is;

    public CopyInputStream(InputStream is) {
        this._is = is;
        try {
            copy();
        } catch (IOException unused) {
        }
    }

    private int copy() throws IOException {
        byte[] bArr = new byte[4096];
        int i = 0;
        while (true) {
            int read = this._is.read(bArr);
            if (-1 == read) {
                return i;
            }
            i += 4096;
            this._copy.write(bArr, 0, read);
        }
    }

    public InputStream getCopy() {
        return new ByteArrayInputStream(this._copy.toByteArray());
    }
}
