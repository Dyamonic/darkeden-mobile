package com.tencent.turingfd.sdk.ams.ad;

import android.util.Log;
import java.nio.ByteBuffer;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes2.dex */
public class Peach {
    public static Eridanus a(Eridanus eridanus, byte[] bArr) {
        if (bArr != null && bArr.length != 0) {
            byte[] a = Cstatic.a(bArr, Cstatic.a());
            if (a != null && a.length != 0) {
                byte[] b = Cnative.b(a);
                if (b != null && b.length != 0) {
                    Bennet bennet = new Bennet();
                    new HashMap();
                    HashMap hashMap = new HashMap();
                    bennet.a = (short) 3;
                    bennet.d = 3;
                    if (b.length >= 4) {
                        try {
                            Dorado dorado = new Dorado(b, 4);
                            dorado.b = "UTF-8";
                            bennet.a(dorado);
                            dorado.a = ByteBuffer.wrap(bennet.g);
                            if (Papaya.a == null) {
                                HashMap<String, byte[]> hashMap2 = new HashMap<>();
                                Papaya.a = hashMap2;
                                hashMap2.put("", new byte[0]);
                            }
                            HashMap a2 = dorado.a((Map) Papaya.a, 0, false);
                            try {
                                Object obj = null;
                                if (a2.containsKey("resp")) {
                                    if (hashMap.containsKey("resp")) {
                                        obj = hashMap.get("resp");
                                    } else {
                                        byte[] bArr2 = (byte[]) a2.get("resp");
                                        try {
                                            Dorado dorado2 = new Dorado();
                                            dorado2.a = ByteBuffer.wrap(bArr2);
                                            dorado2.b = "UTF-8";
                                            obj = dorado2.a((Dorado) eridanus, 0, true);
                                            if (obj != null) {
                                                hashMap.put("resp", obj);
                                            }
                                        } catch (Exception e) {
                                            throw new Exception(e);
                                        }
                                    }
                                }
                                return (Eridanus) obj;
                            } catch (Throwable th) {
                                Log.w("TuringDebug", th);
                                return eridanus;
                            }
                        } catch (Exception e2) {
                            throw new RuntimeException(e2);
                        }
                    }
                    throw new IllegalArgumentException("decode package must include size head");
                }
                Log.w("TuringDebug", "u3");
                return eridanus;
            }
            Log.w("TuringDebug", "u2");
            return eridanus;
        }
        Log.w("TuringDebug", "u1");
        return eridanus;
    }
}
