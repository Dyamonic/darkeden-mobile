package com.bumptech.glide.gifdecoder;

import android.graphics.Bitmap;
import android.util.Log;
import androidx.fragment.app.FragmentTransaction;
import com.bumptech.glide.gifdecoder.GifDecoder;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Iterator;
import kotlin.UByte;

/* loaded from: classes.dex */
public class StandardGifDecoder implements GifDecoder {
    private static final int BYTES_PER_INTEGER = 4;
    private static final int COLOR_TRANSPARENT_BLACK = 0;
    private static final int INITIAL_FRAME_POINTER = -1;
    private static final int MASK_INT_LOWEST_BYTE = 255;
    private static final int MAX_STACK_SIZE = 4096;
    private static final int NULL_CODE = -1;
    private static final String TAG = "StandardGifDecoder";
    private static final int WORK_BUFFER_SIZE = 16384;
    private int[] act;
    private GifDecoder.BitmapProvider bitmapProvider;
    private byte[] block;
    private int downsampledHeight;
    private int downsampledWidth;
    private int framePointer;
    private GifHeader header;
    private boolean isFirstFrameTransparent;
    private byte[] mainPixels;
    private int[] mainScratch;
    private GifHeaderParser parser;
    private final int[] pct;
    private byte[] pixelStack;
    private short[] prefix;
    private Bitmap previousImage;
    private ByteBuffer rawData;
    private int sampleSize;
    private boolean savePrevious;
    private int status;
    private byte[] suffix;
    private byte[] workBuffer;
    private int workBufferPosition;
    private int workBufferSize;

    public StandardGifDecoder(GifDecoder.BitmapProvider bitmapProvider, GifHeader gifHeader, ByteBuffer byteBuffer) {
        this(bitmapProvider, gifHeader, byteBuffer, 1);
    }

    public StandardGifDecoder(GifDecoder.BitmapProvider bitmapProvider, GifHeader gifHeader, ByteBuffer byteBuffer, int i) {
        this(bitmapProvider);
        setData(gifHeader, byteBuffer, i);
    }

    public StandardGifDecoder(GifDecoder.BitmapProvider bitmapProvider) {
        this.pct = new int[256];
        this.workBufferSize = 0;
        this.workBufferPosition = 0;
        this.bitmapProvider = bitmapProvider;
        this.header = new GifHeader();
    }

    @Override // com.bumptech.glide.gifdecoder.GifDecoder
    public int getWidth() {
        return this.header.width;
    }

    @Override // com.bumptech.glide.gifdecoder.GifDecoder
    public int getHeight() {
        return this.header.height;
    }

    @Override // com.bumptech.glide.gifdecoder.GifDecoder
    public ByteBuffer getData() {
        return this.rawData;
    }

    @Override // com.bumptech.glide.gifdecoder.GifDecoder
    public int getStatus() {
        return this.status;
    }

    @Override // com.bumptech.glide.gifdecoder.GifDecoder
    public void advance() {
        this.framePointer = (this.framePointer + 1) % this.header.frameCount;
    }

    @Override // com.bumptech.glide.gifdecoder.GifDecoder
    public int getDelay(int i) {
        if (i < 0 || i >= this.header.frameCount) {
            return -1;
        }
        return this.header.frames.get(i).delay;
    }

    @Override // com.bumptech.glide.gifdecoder.GifDecoder
    public int getNextDelay() {
        int i;
        if (this.header.frameCount <= 0 || (i = this.framePointer) < 0) {
            return 0;
        }
        return getDelay(i);
    }

    @Override // com.bumptech.glide.gifdecoder.GifDecoder
    public int getFrameCount() {
        return this.header.frameCount;
    }

    @Override // com.bumptech.glide.gifdecoder.GifDecoder
    public int getCurrentFrameIndex() {
        return this.framePointer;
    }

    @Override // com.bumptech.glide.gifdecoder.GifDecoder
    public void resetFrameIndex() {
        this.framePointer = -1;
    }

    @Override // com.bumptech.glide.gifdecoder.GifDecoder
    public int getLoopCount() {
        if (this.header.loopCount == -1) {
            return 1;
        }
        return this.header.loopCount;
    }

    @Override // com.bumptech.glide.gifdecoder.GifDecoder
    public int getNetscapeLoopCount() {
        return this.header.loopCount;
    }

    @Override // com.bumptech.glide.gifdecoder.GifDecoder
    public int getTotalIterationCount() {
        if (this.header.loopCount == -1) {
            return 1;
        }
        if (this.header.loopCount == 0) {
            return 0;
        }
        return this.header.loopCount + 1;
    }

    @Override // com.bumptech.glide.gifdecoder.GifDecoder
    public int getByteSize() {
        return this.rawData.limit() + this.mainPixels.length + (this.mainScratch.length * 4);
    }

    @Override // com.bumptech.glide.gifdecoder.GifDecoder
    public synchronized Bitmap getNextFrame() {
        if (this.header.frameCount <= 0 || this.framePointer < 0) {
            String str = TAG;
            if (Log.isLoggable(str, 3)) {
                Log.d(str, "Unable to decode frame, frameCount=" + this.header.frameCount + ", framePointer=" + this.framePointer);
            }
            this.status = 1;
        }
        int i = this.status;
        if (i != 1 && i != 2) {
            this.status = 0;
            GifFrame gifFrame = this.header.frames.get(this.framePointer);
            int i2 = this.framePointer - 1;
            GifFrame gifFrame2 = i2 >= 0 ? this.header.frames.get(i2) : null;
            int[] iArr = gifFrame.lct != null ? gifFrame.lct : this.header.gct;
            this.act = iArr;
            if (iArr == null) {
                String str2 = TAG;
                if (Log.isLoggable(str2, 3)) {
                    Log.d(str2, "No valid color table found for frame #" + this.framePointer);
                }
                this.status = 1;
                return null;
            }
            if (gifFrame.transparency) {
                int[] iArr2 = this.act;
                System.arraycopy(iArr2, 0, this.pct, 0, iArr2.length);
                int[] iArr3 = this.pct;
                this.act = iArr3;
                iArr3[gifFrame.transIndex] = 0;
            }
            return setPixels(gifFrame, gifFrame2);
        }
        String str3 = TAG;
        if (Log.isLoggable(str3, 3)) {
            Log.d(str3, "Unable to decode frame, status=" + this.status);
        }
        return null;
    }

    @Override // com.bumptech.glide.gifdecoder.GifDecoder
    public int read(InputStream inputStream, int i) {
        if (inputStream != null) {
            try {
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(i > 0 ? i + 4096 : 16384);
                byte[] bArr = new byte[16384];
                while (true) {
                    int read = inputStream.read(bArr, 0, 16384);
                    if (read == -1) {
                        break;
                    }
                    byteArrayOutputStream.write(bArr, 0, read);
                }
                byteArrayOutputStream.flush();
                read(byteArrayOutputStream.toByteArray());
            } catch (IOException e) {
                Log.w(TAG, "Error reading data from stream", e);
            }
        } else {
            this.status = 2;
        }
        if (inputStream != null) {
            try {
                inputStream.close();
            } catch (IOException e2) {
                Log.w(TAG, "Error closing stream", e2);
            }
        }
        return this.status;
    }

    @Override // com.bumptech.glide.gifdecoder.GifDecoder
    public void clear() {
        this.header = null;
        byte[] bArr = this.mainPixels;
        if (bArr != null) {
            this.bitmapProvider.release(bArr);
        }
        int[] iArr = this.mainScratch;
        if (iArr != null) {
            this.bitmapProvider.release(iArr);
        }
        Bitmap bitmap = this.previousImage;
        if (bitmap != null) {
            this.bitmapProvider.release(bitmap);
        }
        this.previousImage = null;
        this.rawData = null;
        this.isFirstFrameTransparent = false;
        byte[] bArr2 = this.block;
        if (bArr2 != null) {
            this.bitmapProvider.release(bArr2);
        }
        byte[] bArr3 = this.workBuffer;
        if (bArr3 != null) {
            this.bitmapProvider.release(bArr3);
        }
    }

    @Override // com.bumptech.glide.gifdecoder.GifDecoder
    public synchronized void setData(GifHeader gifHeader, byte[] bArr) {
        setData(gifHeader, ByteBuffer.wrap(bArr));
    }

    @Override // com.bumptech.glide.gifdecoder.GifDecoder
    public synchronized void setData(GifHeader gifHeader, ByteBuffer byteBuffer) {
        setData(gifHeader, byteBuffer, 1);
    }

    @Override // com.bumptech.glide.gifdecoder.GifDecoder
    public synchronized void setData(GifHeader gifHeader, ByteBuffer byteBuffer, int i) {
        if (i <= 0) {
            throw new IllegalArgumentException("Sample size must be >=0, not: " + i);
        }
        int highestOneBit = Integer.highestOneBit(i);
        this.status = 0;
        this.header = gifHeader;
        this.isFirstFrameTransparent = false;
        this.framePointer = -1;
        ByteBuffer asReadOnlyBuffer = byteBuffer.asReadOnlyBuffer();
        this.rawData = asReadOnlyBuffer;
        asReadOnlyBuffer.position(0);
        this.rawData.order(ByteOrder.LITTLE_ENDIAN);
        this.savePrevious = false;
        Iterator<GifFrame> it = gifHeader.frames.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            } else if (it.next().dispose == 3) {
                this.savePrevious = true;
                break;
            }
        }
        this.sampleSize = highestOneBit;
        this.downsampledWidth = gifHeader.width / highestOneBit;
        this.downsampledHeight = gifHeader.height / highestOneBit;
        this.mainPixels = this.bitmapProvider.obtainByteArray(gifHeader.width * gifHeader.height);
        this.mainScratch = this.bitmapProvider.obtainIntArray(this.downsampledWidth * this.downsampledHeight);
    }

    private GifHeaderParser getHeaderParser() {
        if (this.parser == null) {
            this.parser = new GifHeaderParser();
        }
        return this.parser;
    }

    @Override // com.bumptech.glide.gifdecoder.GifDecoder
    public synchronized int read(byte[] bArr) {
        GifHeader parseHeader = getHeaderParser().setData(bArr).parseHeader();
        this.header = parseHeader;
        if (bArr != null) {
            setData(parseHeader, bArr);
        }
        return this.status;
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x002d, code lost:
    
        if (r17.header.bgIndex == r18.transIndex) goto L21;
     */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0053  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private android.graphics.Bitmap setPixels(com.bumptech.glide.gifdecoder.GifFrame r18, com.bumptech.glide.gifdecoder.GifFrame r19) {
        /*
            Method dump skipped, instructions count: 336
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.gifdecoder.StandardGifDecoder.setPixels(com.bumptech.glide.gifdecoder.GifFrame, com.bumptech.glide.gifdecoder.GifFrame):android.graphics.Bitmap");
    }

    private int averageColorsNear(int i, int i2, int i3) {
        int i4 = 0;
        int i5 = 0;
        int i6 = 0;
        int i7 = 0;
        int i8 = 0;
        for (int i9 = i; i9 < this.sampleSize + i; i9++) {
            byte[] bArr = this.mainPixels;
            if (i9 >= bArr.length || i9 >= i2) {
                break;
            }
            int i10 = this.act[bArr[i9] & UByte.MAX_VALUE];
            if (i10 != 0) {
                i4 += (i10 >> 24) & 255;
                i5 += (i10 >> 16) & 255;
                i6 += (i10 >> 8) & 255;
                i7 += i10 & 255;
                i8++;
            }
        }
        int i11 = i + i3;
        for (int i12 = i11; i12 < this.sampleSize + i11; i12++) {
            byte[] bArr2 = this.mainPixels;
            if (i12 >= bArr2.length || i12 >= i2) {
                break;
            }
            int i13 = this.act[bArr2[i12] & UByte.MAX_VALUE];
            if (i13 != 0) {
                i4 += (i13 >> 24) & 255;
                i5 += (i13 >> 16) & 255;
                i6 += (i13 >> 8) & 255;
                i7 += i13 & 255;
                i8++;
            }
        }
        if (i8 == 0) {
            return 0;
        }
        return ((i4 / i8) << 24) | ((i5 / i8) << 16) | ((i6 / i8) << 8) | (i7 / i8);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v10 */
    /* JADX WARN: Type inference failed for: r2v13, types: [short] */
    /* JADX WARN: Type inference failed for: r2v16 */
    /* JADX WARN: Type inference failed for: r2v21 */
    /* JADX WARN: Type inference failed for: r2v9 */
    private void decodeBitmapData(GifFrame gifFrame) {
        int i;
        int i2;
        short s;
        this.workBufferSize = 0;
        this.workBufferPosition = 0;
        if (gifFrame != null) {
            this.rawData.position(gifFrame.bufferFrameStart);
        }
        int i3 = gifFrame == null ? this.header.width * this.header.height : gifFrame.ih * gifFrame.iw;
        byte[] bArr = this.mainPixels;
        if (bArr == null || bArr.length < i3) {
            this.mainPixels = this.bitmapProvider.obtainByteArray(i3);
        }
        if (this.prefix == null) {
            this.prefix = new short[4096];
        }
        if (this.suffix == null) {
            this.suffix = new byte[4096];
        }
        if (this.pixelStack == null) {
            this.pixelStack = new byte[FragmentTransaction.TRANSIT_FRAGMENT_OPEN];
        }
        int readByte = readByte();
        int i4 = 1;
        int i5 = 1 << readByte;
        int i6 = i5 + 1;
        int i7 = i5 + 2;
        int i8 = readByte + 1;
        int i9 = (1 << i8) - 1;
        for (int i10 = 0; i10 < i5; i10++) {
            this.prefix[i10] = 0;
            this.suffix[i10] = (byte) i10;
        }
        int i11 = -1;
        int i12 = 0;
        int i13 = 0;
        int i14 = 0;
        int i15 = 0;
        int i16 = 0;
        int i17 = 0;
        int i18 = 0;
        int i19 = 0;
        int i20 = i8;
        int i21 = i7;
        int i22 = i9;
        int i23 = -1;
        while (true) {
            if (i12 >= i3) {
                break;
            }
            if (i13 == 0) {
                i13 = readBlock();
                if (i13 <= 0) {
                    this.status = 3;
                    break;
                }
                i14 = 0;
            }
            i16 += (this.block[i14] & UByte.MAX_VALUE) << i15;
            i15 += 8;
            i14 += i4;
            i13 += i11;
            int i24 = i21;
            int i25 = i20;
            int i26 = i23;
            int i27 = i18;
            while (i15 >= i25) {
                int i28 = i16 & i22;
                i16 >>= i25;
                i15 -= i25;
                if (i28 != i5) {
                    if (i28 > i24) {
                        i = i8;
                        this.status = 3;
                    } else {
                        i = i8;
                        if (i28 != i6) {
                            if (i26 == -1) {
                                this.pixelStack[i19] = this.suffix[i28 == true ? 1 : 0];
                                i26 = i28 == true ? 1 : 0;
                                i27 = i26;
                                i19++;
                                i8 = i;
                            } else {
                                if (i28 >= i24) {
                                    byte[] bArr2 = this.pixelStack;
                                    i2 = i28 == true ? 1 : 0;
                                    bArr2[i19] = (byte) i27;
                                    s = i26;
                                    i19++;
                                } else {
                                    i2 = i28 == true ? 1 : 0;
                                    s = i28;
                                }
                                while (s >= i5) {
                                    this.pixelStack[i19] = this.suffix[s];
                                    s = this.prefix[s];
                                    i19++;
                                    i5 = i5;
                                }
                                int i29 = i5;
                                byte[] bArr3 = this.suffix;
                                int i30 = bArr3[s] & UByte.MAX_VALUE;
                                int i31 = i19 + 1;
                                int i32 = i6;
                                byte b = (byte) i30;
                                this.pixelStack[i19] = b;
                                if (i24 < 4096) {
                                    this.prefix[i24] = (short) i26;
                                    bArr3[i24] = b;
                                    i24++;
                                    if ((i24 & i22) == 0 && i24 < 4096) {
                                        i25++;
                                        i22 += i24;
                                    }
                                }
                                i19 = i31;
                                while (i19 > 0) {
                                    i19--;
                                    this.mainPixels[i17] = this.pixelStack[i19];
                                    i12++;
                                    i17++;
                                }
                                i8 = i;
                                i5 = i29;
                                i26 = i2;
                                i6 = i32;
                                i27 = i30;
                            }
                        }
                    }
                    i21 = i24;
                    i20 = i25;
                    i23 = i26;
                    i8 = i;
                    i18 = i27;
                    break;
                }
                i25 = i8;
                i24 = i7;
                i22 = i9;
                i26 = -1;
            }
            i18 = i27;
            i21 = i24;
            i20 = i25;
            i23 = i26;
            i4 = 1;
            i11 = -1;
        }
        for (int i33 = i17; i33 < i3; i33++) {
            this.mainPixels[i33] = 0;
        }
    }

    private void readChunkIfNeeded() {
        if (this.workBufferSize > this.workBufferPosition) {
            return;
        }
        if (this.workBuffer == null) {
            this.workBuffer = this.bitmapProvider.obtainByteArray(16384);
        }
        this.workBufferPosition = 0;
        int min = Math.min(this.rawData.remaining(), 16384);
        this.workBufferSize = min;
        this.rawData.get(this.workBuffer, 0, min);
    }

    private int readByte() {
        try {
            readChunkIfNeeded();
            byte[] bArr = this.workBuffer;
            int i = this.workBufferPosition;
            this.workBufferPosition = i + 1;
            return bArr[i] & UByte.MAX_VALUE;
        } catch (Exception unused) {
            this.status = 1;
            return 0;
        }
    }

    private int readBlock() {
        int readByte = readByte();
        if (readByte > 0) {
            try {
                if (this.block == null) {
                    this.block = this.bitmapProvider.obtainByteArray(255);
                }
                int i = this.workBufferSize;
                int i2 = this.workBufferPosition;
                int i3 = i - i2;
                if (i3 >= readByte) {
                    System.arraycopy(this.workBuffer, i2, this.block, 0, readByte);
                    this.workBufferPosition += readByte;
                } else if (this.rawData.remaining() + i3 >= readByte) {
                    System.arraycopy(this.workBuffer, this.workBufferPosition, this.block, 0, i3);
                    this.workBufferPosition = this.workBufferSize;
                    readChunkIfNeeded();
                    int i4 = readByte - i3;
                    System.arraycopy(this.workBuffer, 0, this.block, i3, i4);
                    this.workBufferPosition += i4;
                } else {
                    this.status = 1;
                }
            } catch (Exception e) {
                Log.w(TAG, "Error Reading Block", e);
                this.status = 1;
            }
        }
        return readByte;
    }

    private Bitmap getNextBitmap() {
        Bitmap obtain = this.bitmapProvider.obtain(this.downsampledWidth, this.downsampledHeight, this.isFirstFrameTransparent ? Bitmap.Config.ARGB_8888 : Bitmap.Config.RGB_565);
        obtain.setHasAlpha(true);
        return obtain;
    }
}
