package com.yofi.sdk.utils;

import androidx.recyclerview.widget.ItemTouchHelper;
import com.bytedance.applog.aggregation.BuildConfig;
import cz.msebera.android.httpclient.HttpStatus;
import java.lang.reflect.Array;
import kotlin.UByte;
import okhttp3.internal.ws.WebSocketProtocol;

/* loaded from: classes2.dex */
public class AES {
    private int[] Sbox = {99, 124, 119, 123, 242, 107, 111, 197, 48, 1, 103, 43, 254, 215, 171, 118, HttpStatus.SC_ACCEPTED, 130, HttpStatus.SC_CREATED, 125, ItemTouchHelper.Callback.DEFAULT_SWIPE_ANIMATION_DURATION, 89, 71, 240, 173, 212, 162, 175, 156, 164, 114, 192, 183, 253, 147, 38, 54, 63, 247, HttpStatus.SC_NO_CONTENT, 52, 165, 229, 241, 113, 216, 49, 21, 4, 199, 35, 195, 24, 150, 5, 154, 7, 18, 128, 226, 235, 39, 178, 117, 9, 131, 44, 26, 27, 110, 90, 160, 82, 59, 214, 179, 41, 227, 47, 132, 83, 209, 0, 237, 32, 252, 177, 91, 106, HttpStatus.SC_NON_AUTHORITATIVE_INFORMATION, BuildConfig.VERSION_CODE, 57, 74, 76, 88, HttpStatus.SC_MULTI_STATUS, 208, 239, 170, 251, 67, 77, 51, 133, 69, 249, 2, 127, 80, 60, 159, 168, 81, 163, 64, 143, 146, 157, 56, 245, 188, 182, 218, 33, 16, 255, 243, 210, HttpStatus.SC_RESET_CONTENT, 12, 19, 236, 95, 151, 68, 23, 196, 167, WebSocketProtocol.PAYLOAD_SHORT, 61, 100, 93, 25, 115, 96, 129, 79, 220, 34, 42, 144, 136, 70, 238, 184, 20, 222, 94, 11, 219, 224, 50, 58, 10, 73, 6, 36, 92, 194, 211, 172, 98, 145, 149, 228, 121, 231, 200, 55, 109, 141, 213, 78, 169, 108, 86, 244, 234, 101, 122, 174, 8, 186, 120, 37, 46, 28, 166, 180, 198, 232, 221, 116, 31, 75, 189, 139, 138, 112, 62, 181, 102, 72, 3, 246, 14, 97, 53, 87, 185, 134, 193, 29, 158, 225, 248, 152, 17, 105, 217, 142, 148, 155, 30, 135, 233, HttpStatus.SC_PARTIAL_CONTENT, 85, 40, 223, 140, 161, 137, 13, 191, 230, 66, 104, 65, 153, 45, 15, 176, 84, 187, 22};
    private int[] InvSbox = {82, 9, 106, 213, 48, 54, 165, 56, 191, 64, 163, 158, 129, 243, 215, 251, 124, 227, 57, 130, 155, 47, 255, 135, 52, 142, 67, 68, 196, 222, 233, HttpStatus.SC_NON_AUTHORITATIVE_INFORMATION, 84, 123, 148, 50, 166, 194, 35, 61, 238, 76, 149, 11, 66, ItemTouchHelper.Callback.DEFAULT_SWIPE_ANIMATION_DURATION, 195, 78, 8, 46, 161, 102, 40, 217, 36, 178, 118, 91, 162, 73, 109, 139, 209, 37, 114, 248, 246, 100, 134, 104, 152, 22, 212, 164, 92, HttpStatus.SC_NO_CONTENT, 93, 101, 182, 146, 108, 112, 72, 80, 253, 237, 185, 218, 94, 21, 70, 87, 167, 141, 157, 132, 144, 216, 171, 0, 140, 188, 211, 10, 247, 228, 88, 5, 184, 179, 69, 6, 208, 44, 30, 143, HttpStatus.SC_ACCEPTED, 63, 15, 2, 193, 175, 189, 3, 1, 19, 138, 107, 58, 145, 17, 65, 79, 103, 220, 234, 151, 242, HttpStatus.SC_MULTI_STATUS, HttpStatus.SC_PARTIAL_CONTENT, 240, 180, 230, 115, 150, 172, 116, 34, 231, 173, 53, 133, 226, 249, 55, 232, 28, 117, 223, 110, 71, 241, 26, 113, 29, 41, 197, 137, 111, 183, 98, 14, 170, 24, BuildConfig.VERSION_CODE, 27, 252, 86, 62, 75, 198, 210, 121, 32, 154, 219, 192, 254, 120, HttpStatus.SC_RESET_CONTENT, 90, 244, 31, 221, 168, 51, 136, 7, 199, 49, 177, 18, 16, 89, 39, 128, 236, 95, 96, 81, 127, 169, 25, 181, 74, 13, 45, 229, 122, 159, 147, HttpStatus.SC_CREATED, 156, 239, 160, 224, 59, 77, 174, 42, 245, 176, 200, 235, 187, 60, 131, 83, 153, 97, 23, 43, 4, WebSocketProtocol.PAYLOAD_SHORT, 186, 119, 214, 38, 225, 105, 20, 99, 85, 33, 12, 125};
    private int[][][] w = (int[][][]) Array.newInstance((Class<?>) int.class, 11, 4, 4);

    private int ascillToValue(byte ch) {
        if (ch >= 48 && ch <= 57) {
            return ch - 48;
        }
        byte b = 97;
        if (ch < 97 || ch > 122) {
            b = 65;
            if (ch < 65 || ch > 90) {
                return -1;
            }
        }
        return (ch - b) + 10;
    }

    private byte valueToHexCh(int value) {
        int i;
        if (value >= 0 && value <= 9) {
            i = value + 48;
        } else {
            if (value < 10 || value > 15) {
                return (byte) 0;
            }
            i = (value - 10) + 65;
        }
        return (byte) i;
    }

    public AES(String key) {
        KeyExpansion(key.getBytes());
    }

    public String Cipher(String input) {
        return ucharToHex(Cipher(strToUChar(input)));
    }

    public String InvCipher(String input) {
        return ucharToStr(InvCipher(hexToUChar(input)));
    }

    private int[] Cipher(int[] input) {
        int[] iArr = new int[input.length];
        for (int i = 0; i < input.length; i += 16) {
            int[] iArr2 = new int[16];
            for (int i2 = 0; i2 < 16; i2++) {
                iArr2[i2] = input[i + i2];
            }
            int[] Cipher16 = Cipher16(iArr2);
            for (int i3 = 0; i3 < 16; i3++) {
                iArr[i + i3] = Cipher16[i3];
            }
        }
        return iArr;
    }

    private int[] InvCipher(int[] input) {
        int[] iArr = new int[input.length];
        for (int i = 0; i < input.length; i += 16) {
            int[] iArr2 = new int[16];
            for (int i2 = 0; i2 < 16; i2++) {
                iArr2[i2] = input[i + i2];
            }
            int[] InvCipher16 = InvCipher16(iArr2);
            for (int i3 = 0; i3 < 16; i3++) {
                iArr[i + i3] = InvCipher16[i3];
            }
        }
        return iArr;
    }

    private void KeyExpansion(byte[] key) {
        int[] iArr = {1, 2, 4, 8, 16, 32, 64, 128, 27, 54};
        for (int i = 0; i < 4; i++) {
            for (int i2 = 0; i2 < 4; i2++) {
                this.w[0][i][i2] = key[(i2 * 4) + i];
            }
        }
        for (int i3 = 1; i3 <= 10; i3++) {
            int i4 = 0;
            while (i4 < 4) {
                int[] iArr2 = new int[4];
                for (int i5 = 0; i5 < 4; i5++) {
                    iArr2[i5] = i4 != 0 ? this.w[i3][i5][i4 - 1] : this.w[i3 - 1][i5][3];
                }
                if (i4 == 0) {
                    int i6 = iArr2[0];
                    int i7 = 0;
                    while (i7 < 3) {
                        int i8 = i7 + 1;
                        iArr2[i7] = this.Sbox[iArr2[i8 % 4]];
                        i7 = i8;
                    }
                    iArr2[3] = this.Sbox[i6];
                    iArr2[0] = iArr2[0] ^ iArr[i3 - 1];
                }
                for (int i9 = 0; i9 < 4; i9++) {
                    int[][][] iArr3 = this.w;
                    iArr3[i3][i9][i4] = iArr3[i3 - 1][i9][i4] ^ iArr2[i9];
                }
                i4++;
            }
        }
    }

    private String ucharToStr(int[] input) {
        int i = 0;
        while (i < input.length && input[i] != 0) {
            i++;
        }
        byte[] bArr = new byte[i];
        for (int i2 = 0; i2 < i; i2++) {
            bArr[i2] = (byte) input[i2];
        }
        return new String(bArr);
    }

    private int[] strToUChar(String input) {
        byte[] bytes = input.getBytes();
        int length = ((bytes.length / 16) + (bytes.length % 16 != 0 ? 1 : 0)) * 16;
        int[] iArr = new int[length];
        for (int i = 0; i < length; i++) {
            if (i < bytes.length) {
                iArr[i] = bytes[i] & UByte.MAX_VALUE;
            } else {
                iArr[i] = 0;
            }
        }
        return iArr;
    }

    private String ucharToHex(int[] input) {
        byte[] bArr = new byte[input.length * 2];
        for (int i = 0; i < input.length; i++) {
            int i2 = input[i] >> 4;
            int i3 = input[i] & 15;
            int i4 = i * 2;
            bArr[i4] = valueToHexCh(i2);
            bArr[i4 + 1] = valueToHexCh(i3);
        }
        return new String(bArr);
    }

    private int[] hexToUChar(String input) {
        byte[] bytes = input.getBytes();
        int length = (((bytes.length / 2) / 16) + ((bytes.length / 2) % 16 != 0 ? 1 : 0)) * 16;
        int[] iArr = new int[length];
        for (int i = 0; i < length; i++) {
            if (i < bytes.length / 2) {
                int i2 = i * 2;
                iArr[i] = ascillToValue(bytes[i2 + 1]) | (ascillToValue(bytes[i2]) << 4);
            } else {
                iArr[i] = 0;
            }
        }
        return iArr;
    }

    private int[] Cipher16(int[] input) {
        int[][] iArr = (int[][]) Array.newInstance((Class<?>) int.class, 4, 4);
        for (int i = 0; i < 4; i++) {
            for (int i2 = 0; i2 < 4; i2++) {
                iArr[i][i2] = input[(i2 * 4) + i];
            }
        }
        AddRoundKey(iArr, this.w[0]);
        for (int i3 = 1; i3 <= 10; i3++) {
            SubBytes(iArr);
            ShiftRows(iArr);
            if (i3 != 10) {
                MixColumns(iArr);
            }
            AddRoundKey(iArr, this.w[i3]);
        }
        int[] iArr2 = new int[16];
        for (int i4 = 0; i4 < 4; i4++) {
            for (int i5 = 0; i5 < 4; i5++) {
                iArr2[(i5 * 4) + i4] = iArr[i4][i5];
            }
        }
        return iArr2;
    }

    private int[] InvCipher16(int[] input) {
        int[][] iArr = (int[][]) Array.newInstance((Class<?>) int.class, 4, 4);
        for (int i = 0; i < 4; i++) {
            for (int i2 = 0; i2 < 4; i2++) {
                iArr[i][i2] = input[(i2 * 4) + i];
            }
        }
        AddRoundKey(iArr, this.w[10]);
        for (int i3 = 9; i3 >= 0; i3--) {
            InvShiftRows(iArr);
            InvSubBytes(iArr);
            AddRoundKey(iArr, this.w[i3]);
            if (i3 != 0) {
                InvMixColumns(iArr);
            }
        }
        int[] iArr2 = new int[16];
        for (int i4 = 0; i4 < 4; i4++) {
            for (int i5 = 0; i5 < 4; i5++) {
                iArr2[(i5 * 4) + i4] = iArr[i4][i5];
            }
        }
        return iArr2;
    }

    private void AddRoundKey(int[][] state, int[][] k) {
        for (int i = 0; i < 4; i++) {
            for (int i2 = 0; i2 < 4; i2++) {
                int[] iArr = state[i2];
                iArr[i] = iArr[i] ^ k[i2][i];
            }
        }
    }

    private void SubBytes(int[][] state) {
        for (int i = 0; i < 4; i++) {
            for (int i2 = 0; i2 < 4; i2++) {
                state[i][i2] = this.Sbox[state[i][i2]];
            }
        }
    }

    private void ShiftRows(int[][] state) {
        int[] iArr = new int[4];
        for (int i = 0; i < 4; i++) {
            for (int i2 = 0; i2 < 4; i2++) {
                iArr[i2] = state[i][(i2 + i) % 4];
            }
            for (int i3 = 0; i3 < 4; i3++) {
                state[i][i3] = iArr[i3];
            }
        }
    }

    private int FFmul(int a, int b) {
        int[] iArr = new int[4];
        iArr[0] = b;
        for (int i = 1; i < 4; i++) {
            int i2 = i - 1;
            iArr[i] = (iArr[i2] << 1) & 255;
            if ((iArr[i2] & 128) != 0) {
                iArr[i] = iArr[i] ^ 27;
            }
        }
        int i3 = 0;
        for (int i4 = 0; i4 < 4; i4++) {
            if (((a >> i4) & 1) != 0) {
                i3 ^= iArr[i4];
            }
        }
        return i3;
    }

    private void MixColumns(int[][] state) {
        int[] iArr = new int[4];
        for (int i = 0; i < 4; i++) {
            for (int i2 = 0; i2 < 4; i2++) {
                iArr[i2] = state[i2][i];
            }
            int i3 = 0;
            while (i3 < 4) {
                int i4 = i3 + 1;
                state[i3][i] = FFmul(1, iArr[(i3 + 3) % 4]) ^ ((FFmul(2, iArr[i3]) ^ FFmul(3, iArr[i4 % 4])) ^ FFmul(1, iArr[(i3 + 2) % 4]));
                i3 = i4;
            }
        }
    }

    private void InvSubBytes(int[][] state) {
        for (int i = 0; i < 4; i++) {
            for (int i2 = 0; i2 < 4; i2++) {
                state[i][i2] = this.InvSbox[state[i][i2]];
            }
        }
    }

    private void InvShiftRows(int[][] state) {
        int[] iArr = new int[4];
        for (int i = 1; i < 4; i++) {
            for (int i2 = 0; i2 < 4; i2++) {
                iArr[i2] = state[i][((i2 - i) + 4) % 4];
            }
            for (int i3 = 0; i3 < 4; i3++) {
                state[i][i3] = iArr[i3];
            }
        }
    }

    private void InvMixColumns(int[][] state) {
        int[] iArr = new int[4];
        for (int i = 0; i < 4; i++) {
            for (int i2 = 0; i2 < 4; i2++) {
                iArr[i2] = state[i2][i];
            }
            int i3 = 0;
            while (i3 < 4) {
                int i4 = i3 + 1;
                state[i3][i] = FFmul(9, iArr[(i3 + 3) % 4]) ^ ((FFmul(14, iArr[i3]) ^ FFmul(11, iArr[i4 % 4])) ^ FFmul(13, iArr[(i3 + 2) % 4]));
                i3 = i4;
            }
        }
    }
}
