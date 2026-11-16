package com.qq.gdt.action.j;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.security.InvalidKeyException;
import java.security.KeyFactory;
import java.security.NoSuchAlgorithmException;
import java.security.PublicKey;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.X509EncodedKeySpec;
import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;

/* loaded from: classes.dex */
public class r {
    public static String a(String str) {
        byte[] bArr = new byte[0];
        try {
            bArr = a(str.getBytes(), "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDIxHA9yAi16YbRRJqi+UB5jhbb\ns3MlTsGxv0eFf3LSzPbIcbc0lIDzRIZQstKo/4oN/drDg5JWqShCmxERA+KM0D4h\npD6CFRNtN1DVvpw+H4tNkF5yB1TwAUlbNNhSuc7hi4YpttiZlSqEnl8UlX+9OWOi\n0L7IU9mCkDdQY4ErLwIDAQAB");
        } catch (Exception e) {
            o.a("Rsa encrypt encounter error: " + e.getMessage(), new Object[0]);
        }
        return i.a(bArr);
    }

    public static byte[] a(byte[] bArr) {
        byte[] bArr2 = new byte[0];
        try {
            return a(bArr, "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDIxHA9yAi16YbRRJqi+UB5jhbb\ns3MlTsGxv0eFf3LSzPbIcbc0lIDzRIZQstKo/4oN/drDg5JWqShCmxERA+KM0D4h\npD6CFRNtN1DVvpw+H4tNkF5yB1TwAUlbNNhSuc7hi4YpttiZlSqEnl8UlX+9OWOi\n0L7IU9mCkDdQY4ErLwIDAQAB");
        } catch (Exception e) {
            o.a("Rsa encrypt encounter error: " + e.getMessage(), new Object[0]);
            return bArr2;
        }
    }

    private static byte[] a(byte[] bArr, String str) throws NoSuchAlgorithmException, InvalidKeySpecException, NoSuchPaddingException, InvalidKeyException, BadPaddingException, IllegalBlockSizeException, IOException {
        PublicKey generatePublic = KeyFactory.getInstance("RSA").generatePublic(new X509EncodedKeySpec(i.b(str)));
        Cipher cipher = Cipher.getInstance("RSA/ECB/PKCS1Padding");
        cipher.init(1, generatePublic);
        int length = bArr.length;
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        int i = 0;
        int i2 = 0;
        while (true) {
            int i3 = length - i;
            if (i3 <= 0) {
                byte[] byteArray = byteArrayOutputStream.toByteArray();
                byteArrayOutputStream.close();
                return byteArray;
            }
            byte[] doFinal = i3 > 245 ? cipher.doFinal(bArr, i, 245) : cipher.doFinal(bArr, i, i3);
            byteArrayOutputStream.write(doFinal, 0, doFinal.length);
            i2++;
            i = i2 * 245;
        }
    }

    public static byte[] b(byte[] bArr) throws InvalidKeyException, NoSuchPaddingException, NoSuchAlgorithmException, BadPaddingException, IllegalBlockSizeException, InvalidKeySpecException {
        if (bArr.length > 128) {
            o.c("");
            return null;
        }
        PublicKey generatePublic = KeyFactory.getInstance("RSA").generatePublic(new X509EncodedKeySpec(i.b("MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDIxHA9yAi16YbRRJqi+UB5jhbb\ns3MlTsGxv0eFf3LSzPbIcbc0lIDzRIZQstKo/4oN/drDg5JWqShCmxERA+KM0D4h\npD6CFRNtN1DVvpw+H4tNkF5yB1TwAUlbNNhSuc7hi4YpttiZlSqEnl8UlX+9OWOi\n0L7IU9mCkDdQY4ErLwIDAQAB")));
        Cipher cipher = Cipher.getInstance("RSA/ECB/PKCS1Padding");
        cipher.init(2, generatePublic);
        return cipher.doFinal(bArr);
    }
}
