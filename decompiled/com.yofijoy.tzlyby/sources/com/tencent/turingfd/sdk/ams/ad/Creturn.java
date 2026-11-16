package com.tencent.turingfd.sdk.ams.ad;

import androidx.core.view.MotionEventCompat;
import androidx.core.view.ViewCompat;
import java.io.IOException;
import java.io.InputStream;
import java.text.DecimalFormat;
import java.util.HashMap;
import java.util.Map;
import javax.xml.parsers.ParserConfigurationException;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;
import org.w3c.dom.Document;
import org.w3c.dom.Element;

/* renamed from: com.tencent.turingfd.sdk.ams.ad.return, reason: invalid class name */
/* loaded from: classes2.dex */
public class Creturn {
    public static final String[] j = {"px", "dp", "sp", "pt", "in", "mm"};
    public Cpublic a;
    public Map<String, String> b = new HashMap();
    public byte[] c;
    public String[] d;
    public int[] e;
    public int f;
    public int g;
    public int h;
    public int i;

    public Document a(InputStream inputStream) throws IOException, ParserConfigurationException {
        String b;
        String str;
        Element createElementNS;
        String format;
        byte[] bArr;
        Cpublic cpublic = new Cpublic();
        this.a = cpublic;
        byte[] bArr2 = new byte[inputStream.available()];
        this.c = bArr2;
        inputStream.read(bArr2);
        inputStream.close();
        while (true) {
            int i = this.i;
            if (i < this.c.length) {
                int a = a(i);
                int i2 = -1;
                if (a == -1) {
                    this.a.getClass();
                } else if (a != 524291) {
                    if (a == 524672) {
                        int a2 = a(this.i + 4);
                        int i3 = (a2 / 4) - 2;
                        this.h = i3;
                        this.e = new int[i3];
                        for (int i4 = 0; i4 < this.h; i4++) {
                            this.e[i4] = a(((i4 + 2) * 4) + this.i);
                        }
                        this.i += a2;
                    } else if (a != 1835009) {
                        switch (a) {
                            case 1048832:
                                a(true);
                                break;
                            case 1048833:
                                a(false);
                                break;
                            case 1048834:
                                int a3 = a(this.i + 16);
                                int a4 = a(this.i + 20);
                                int i5 = this.i + 28;
                                byte[] bArr3 = this.c;
                                int i6 = (65280 & (bArr3[i5 + 1] << 8)) | ((bArr3[i5 + 0] << 0) & 255);
                                String b2 = b(a4);
                                if (a3 == -1) {
                                    str = b2;
                                    b = "";
                                } else {
                                    b = b(a3);
                                    str = this.b.containsKey(b) ? this.b.get(b) + AbstractJsonLexerKt.COLON + b2 : b2;
                                }
                                this.i += 36;
                                Celse[] celseArr = new Celse[i6];
                                int i7 = 0;
                                while (i7 < i6) {
                                    int a5 = a(this.i);
                                    int a6 = a(this.i + 4);
                                    int a7 = a(this.i + 8);
                                    int a8 = a(this.i + 12);
                                    int a9 = a(this.i + 16);
                                    Celse celse = new Celse();
                                    celse.a = b(a6);
                                    if (a5 == i2) {
                                        celse.c = null;
                                        celse.b = null;
                                    } else {
                                        String b3 = b(a5);
                                        if (this.b.containsKey(b3)) {
                                            celse.c = b3;
                                            celse.b = this.b.get(b3);
                                        }
                                    }
                                    if (a7 == i2) {
                                        switch (a8) {
                                            case 16777224:
                                                format = String.format("@id/0x%08X", Integer.valueOf(a9));
                                                break;
                                            case 33554440:
                                                format = String.format("?id/0x%08X", Integer.valueOf(a9));
                                                break;
                                            case 50331656:
                                                format = b(a9);
                                                break;
                                            case 67108872:
                                                format = Float.toString(Float.intBitsToFloat(a9));
                                                break;
                                            case 83886088:
                                                format = Integer.toString(a9 >> 8) + j[a9 & 255];
                                                break;
                                            case 100663304:
                                                format = new DecimalFormat("#.##%").format(a9 / 2.147483647E9d);
                                                break;
                                            case 268435464:
                                            case 285212680:
                                                format = Integer.toString(a9);
                                                break;
                                            case 301989896:
                                                format = Boolean.toString(a9 != 0);
                                                break;
                                            case 469762056:
                                            case 486539272:
                                                format = String.format("#%08X", Integer.valueOf(a9));
                                                break;
                                            default:
                                                format = String.format("%08X/0x%08X", Integer.valueOf(a8), Integer.valueOf(a9));
                                                break;
                                        }
                                        celse.d = format;
                                    } else {
                                        celse.d = b(a7);
                                    }
                                    celseArr[i7] = celse;
                                    this.i += 20;
                                    i7++;
                                    i2 = -1;
                                }
                                Cpublic cpublic2 = this.a;
                                cpublic2.getClass();
                                if (b == null || "".equals(b)) {
                                    createElementNS = cpublic2.b.createElement(b2);
                                } else {
                                    createElementNS = cpublic2.b.createElementNS(b, str);
                                }
                                for (int i8 = 0; i8 < i6; i8++) {
                                    Celse celse2 = celseArr[i8];
                                    String str2 = celse2.c;
                                    if (str2 == null || "".equals(str2)) {
                                        createElementNS.setAttribute(celse2.a, celse2.d);
                                    } else {
                                        createElementNS.setAttributeNS(celse2.c, celse2.b + AbstractJsonLexerKt.COLON + celse2.a, celse2.d);
                                    }
                                }
                                cpublic2.a.peek().appendChild(createElementNS);
                                cpublic2.a.push(createElementNS);
                                break;
                            case 1048835:
                                int a10 = a(this.i + 16);
                                b(a(this.i + 20));
                                if (a10 != -1) {
                                    b(a10);
                                }
                                this.a.a.pop();
                                this.i += 24;
                                break;
                            case 1048836:
                                String b4 = b(a(this.i + 16));
                                Cpublic cpublic3 = this.a;
                                cpublic3.a.peek().appendChild(cpublic3.b.createCDATASection(b4));
                                this.i += 28;
                                break;
                            default:
                                this.i += 4;
                                break;
                        }
                    } else {
                        int a11 = a(this.i + 4);
                        this.f = a(this.i + 8);
                        this.g = a(this.i + 12);
                        int i9 = this.i;
                        int a12 = a(i9 + 20) + i9;
                        int a13 = a(this.i + 24);
                        this.d = new String[this.f];
                        for (int i10 = 0; i10 < this.f; i10++) {
                            int a14 = a(((i10 + 7) * 4) + this.i) + a12;
                            String[] strArr = this.d;
                            byte[] bArr4 = this.c;
                            int i11 = a14 + 1;
                            if (bArr4[i11] == bArr4[a14]) {
                                int i12 = bArr4[a14];
                                bArr = new byte[i12];
                                for (int i13 = 0; i13 < i12; i13++) {
                                    bArr[i13] = this.c[a14 + 2 + i13];
                                }
                            } else {
                                int i14 = (bArr4[a14] & 255) | ((bArr4[i11] << 8) & MotionEventCompat.ACTION_POINTER_INDEX_MASK);
                                bArr = new byte[i14];
                                for (int i15 = 0; i15 < i14; i15++) {
                                    bArr[i15] = this.c[(i15 * 2) + a14 + 2];
                                }
                            }
                            strArr[i10] = new String(bArr);
                        }
                        if (a13 > 0) {
                            for (int i16 = 0; i16 < this.g; i16++) {
                            }
                        }
                        this.i += a11;
                    }
                } else {
                    Cpublic cpublic4 = this.a;
                    Document newDocument = cpublic4.c.newDocument();
                    cpublic4.b = newDocument;
                    cpublic4.a.push(newDocument);
                    this.i += 8;
                }
            } else {
                this.a.getClass();
                return cpublic.b;
            }
        }
    }

    public final String b(int i) {
        if (i < 0 || i >= this.f) {
            return null;
        }
        return this.d[i];
    }

    public final void a(boolean z) {
        int a = a(this.i + 16);
        String b = b(a(this.i + 20));
        String b2 = b(a);
        if (z) {
            this.a.getClass();
            this.b.put(b, b2);
        } else {
            this.a.getClass();
            this.b.remove(b);
        }
        this.i += 24;
    }

    public final int a(int i) {
        byte[] bArr = this.c;
        return ((bArr[i + 0] << 0) & 255) | ((bArr[i + 3] << 24) & ViewCompat.MEASURED_STATE_MASK) | ((bArr[i + 2] << 16) & 16711680) | ((bArr[i + 1] << 8) & MotionEventCompat.ACTION_POINTER_INDEX_MASK);
    }
}
