package com.tencent.turingfd.sdk.ams.ad;

import android.content.Context;
import android.content.pm.Signature;
import android.os.IBinder;
import android.os.Parcel;
import java.security.MessageDigest;
import kotlin.UByte;

/* loaded from: classes2.dex */
public class Solar extends Serpens {
    public static final String b = Cfinally.a(Cfinally.i);

    @Override // com.tencent.turingfd.sdk.ams.ad.Serpens
    public String a(IBinder iBinder) throws Exception {
        Context context;
        synchronized (Ccase.class) {
            context = Ccase.a;
        }
        String packageName = context.getPackageName();
        Signature[] a = Cimplements.a(context, packageName);
        String str = null;
        if (a != null && a.length > 0) {
            byte[] byteArray = a[0].toByteArray();
            try {
                MessageDigest messageDigest = MessageDigest.getInstance("SHA1");
                if (messageDigest != null) {
                    byte[] digest = messageDigest.digest(byteArray);
                    StringBuilder sb = new StringBuilder();
                    for (byte b2 : digest) {
                        sb.append(Integer.toHexString((b2 & UByte.MAX_VALUE) | 256).substring(1, 3));
                    }
                    str = sb.toString();
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
        String a2 = Cfinally.a(Cfinally.j);
        Parcel obtain = Parcel.obtain();
        Parcel obtain2 = Parcel.obtain();
        try {
            obtain.writeInterfaceToken(b);
            obtain.writeString(packageName);
            obtain.writeString(str);
            obtain.writeString(a2);
            iBinder.transact(1, obtain, obtain2, 0);
            obtain2.readException();
            return obtain2.readString();
        } finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }
}
