package com.juhe.juhesdk.middle.common;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Handler;
import android.os.Looper;
import android.widget.ImageView;
import java.io.BufferedReader;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;

/* loaded from: classes.dex */
public abstract class CallBackUtil<T> {
    static Handler mMainHandler = new Handler(Looper.getMainLooper());

    /* loaded from: classes.dex */
    public static abstract class CallBackDefault extends CallBackUtil<RealResponse> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.juhe.juhesdk.middle.common.CallBackUtil
        public RealResponse onParseResponse(RealResponse response) {
            return response;
        }
    }

    public abstract void onFailure(int code, String errorMessage);

    public abstract T onParseResponse(RealResponse response);

    public void onProgress(float progress, long total) {
    }

    public abstract void onResponse(T response);

    /* JADX INFO: Access modifiers changed from: package-private */
    public void onError(final RealResponse response) {
        final String message;
        if (response.inputStream != null) {
            message = getRetString(response.inputStream);
        } else if (response.errorStream != null) {
            message = getRetString(response.errorStream);
        } else {
            message = response.exception != null ? response.exception.getMessage() : "";
        }
        mMainHandler.post(new Runnable() { // from class: com.juhe.juhesdk.middle.common.CallBackUtil.1
            @Override // java.lang.Runnable
            public void run() {
                CallBackUtil.this.onFailure(response.code, message);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void onSeccess(RealResponse response) {
        final T onParseResponse = onParseResponse(response);
        mMainHandler.post(new Runnable() { // from class: com.juhe.juhesdk.middle.common.CallBackUtil.2
            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.lang.Runnable
            public void run() {
                CallBackUtil.this.onResponse(onParseResponse);
            }
        });
    }

    /* loaded from: classes.dex */
    public static abstract class CallBackString extends CallBackUtil<String> {
        @Override // com.juhe.juhesdk.middle.common.CallBackUtil
        public String onParseResponse(RealResponse response) {
            try {
                return CallBackUtil.getRetString(response.inputStream);
            } catch (Exception unused) {
                throw new RuntimeException("failure");
            }
        }
    }

    /* loaded from: classes.dex */
    public static abstract class CallBackBitmap extends CallBackUtil<Bitmap> {
        private int mTargetHeight;
        private int mTargetWidth;

        public CallBackBitmap() {
        }

        public CallBackBitmap(int targetWidth, int targetHeight) {
            this.mTargetWidth = targetWidth;
            this.mTargetHeight = targetHeight;
        }

        public CallBackBitmap(ImageView imageView) {
            int width = imageView.getWidth();
            int height = imageView.getHeight();
            if (width <= 0 || height <= 0) {
                throw new RuntimeException("无法获取ImageView的width或height");
            }
            this.mTargetWidth = width;
            this.mTargetHeight = height;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.juhe.juhesdk.middle.common.CallBackUtil
        public Bitmap onParseResponse(RealResponse response) {
            if (this.mTargetWidth == 0 || this.mTargetHeight == 0) {
                return BitmapFactory.decodeStream(response.inputStream);
            }
            return getZoomBitmap(response.inputStream);
        }

        private Bitmap getZoomBitmap(InputStream inputStream) {
            byte[] bArr;
            try {
                bArr = input2byte(inputStream);
            } catch (IOException e) {
                e.printStackTrace();
                bArr = null;
            }
            BitmapFactory.Options options = new BitmapFactory.Options();
            options.inJustDecodeBounds = true;
            BitmapFactory.decodeByteArray(bArr, 0, bArr.length, options);
            int i = options.outWidth;
            int i2 = options.outHeight;
            int floor = (int) Math.floor(i / this.mTargetWidth);
            int floor2 = (int) Math.floor(i2 / this.mTargetHeight);
            options.inSampleSize = (floor > 1 || floor2 > 1) ? Math.max(floor, floor2) : 1;
            options.inJustDecodeBounds = false;
            Bitmap decodeByteArray = BitmapFactory.decodeByteArray(bArr, 0, bArr.length, options);
            if (decodeByteArray != null) {
                return decodeByteArray;
            }
            throw new RuntimeException("Failed to decode stream.");
        }
    }

    public static final byte[] input2byte(InputStream inStream) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte[] bArr = new byte[100];
        while (true) {
            int read = inStream.read(bArr, 0, 100);
            if (read > 0) {
                byteArrayOutputStream.write(bArr, 0, read);
            } else {
                return byteArrayOutputStream.toByteArray();
            }
        }
    }

    /* loaded from: classes.dex */
    public static abstract class CallBackFile extends CallBackUtil<File> {
        private final String mDestFileDir;
        private final String mdestFileName;

        public CallBackFile(String destFileDir, String destFileName) {
            this.mDestFileDir = destFileDir;
            this.mdestFileName = destFileName;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        /* JADX WARN: Removed duplicated region for block: B:34:0x006f A[Catch: IOException -> 0x0072, TRY_LEAVE, TryCatch #8 {IOException -> 0x0072, blocks: (B:32:0x006a, B:34:0x006f), top: B:31:0x006a }] */
        /* JADX WARN: Removed duplicated region for block: B:37:0x0074 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:43:? A[RETURN, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:51:0x0080 A[Catch: IOException -> 0x0083, TRY_LEAVE, TryCatch #6 {IOException -> 0x0083, blocks: (B:49:0x007b, B:51:0x0080), top: B:48:0x007b }] */
        /* JADX WARN: Removed duplicated region for block: B:54:0x0085 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:60:? A[SYNTHETIC] */
        @Override // com.juhe.juhesdk.middle.common.CallBackUtil
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public java.io.File onParseResponse(com.juhe.juhesdk.middle.common.RealResponse r18) {
            /*
                r17 = this;
                r7 = r17
                r0 = r18
                r1 = 8192(0x2000, float:1.148E-41)
                byte[] r8 = new byte[r1]
                java.io.InputStream r10 = r0.inputStream     // Catch: java.lang.Throwable -> L60 java.lang.Exception -> L64
                long r11 = r0.contentLength     // Catch: java.lang.Throwable -> L5b java.lang.Exception -> L5e
                r0 = 0
                java.io.File r2 = new java.io.File     // Catch: java.lang.Throwable -> L5b java.lang.Exception -> L5e
                java.lang.String r3 = r7.mDestFileDir     // Catch: java.lang.Throwable -> L5b java.lang.Exception -> L5e
                r2.<init>(r3)     // Catch: java.lang.Throwable -> L5b java.lang.Exception -> L5e
                boolean r3 = r2.exists()     // Catch: java.lang.Throwable -> L5b java.lang.Exception -> L5e
                if (r3 != 0) goto L1e
                r2.mkdirs()     // Catch: java.lang.Throwable -> L5b java.lang.Exception -> L5e
            L1e:
                java.io.File r13 = new java.io.File     // Catch: java.lang.Throwable -> L5b java.lang.Exception -> L5e
                java.lang.String r3 = r7.mdestFileName     // Catch: java.lang.Throwable -> L5b java.lang.Exception -> L5e
                r13.<init>(r2, r3)     // Catch: java.lang.Throwable -> L5b java.lang.Exception -> L5e
                java.io.FileOutputStream r14 = new java.io.FileOutputStream     // Catch: java.lang.Throwable -> L5b java.lang.Exception -> L5e
                r14.<init>(r13)     // Catch: java.lang.Throwable -> L5b java.lang.Exception -> L5e
            L2a:
                int r2 = r10.read(r8)     // Catch: java.lang.Exception -> L59 java.lang.Throwable -> L79
                r3 = -1
                if (r2 == r3) goto L4a
                long r3 = (long) r2     // Catch: java.lang.Exception -> L59 java.lang.Throwable -> L79
                long r15 = r0 + r3
                r0 = 0
                r14.write(r8, r0, r2)     // Catch: java.lang.Exception -> L59 java.lang.Throwable -> L79
                android.os.Handler r0 = com.juhe.juhesdk.middle.common.CallBackUtil.CallBackFile.mMainHandler     // Catch: java.lang.Exception -> L59 java.lang.Throwable -> L79
                com.juhe.juhesdk.middle.common.CallBackUtil$CallBackFile$1 r5 = new com.juhe.juhesdk.middle.common.CallBackUtil$CallBackFile$1     // Catch: java.lang.Exception -> L59 java.lang.Throwable -> L79
                r1 = r5
                r2 = r17
                r3 = r15
                r9 = r5
                r5 = r11
                r1.<init>()     // Catch: java.lang.Exception -> L59 java.lang.Throwable -> L79
                r0.post(r9)     // Catch: java.lang.Exception -> L59 java.lang.Throwable -> L79
                r0 = r15
                goto L2a
            L4a:
                r14.flush()     // Catch: java.lang.Exception -> L59 java.lang.Throwable -> L79
                r14.close()     // Catch: java.io.IOException -> L55
                if (r10 == 0) goto L55
                r10.close()     // Catch: java.io.IOException -> L55
            L55:
                r14.close()     // Catch: java.io.IOException -> L58
            L58:
                return r13
            L59:
                r0 = move-exception
                goto L67
            L5b:
                r0 = move-exception
                r9 = 0
                goto L7b
            L5e:
                r0 = move-exception
                goto L66
            L60:
                r0 = move-exception
                r9 = 0
                r10 = 0
                goto L7b
            L64:
                r0 = move-exception
                r10 = 0
            L66:
                r14 = 0
            L67:
                r0.printStackTrace()     // Catch: java.lang.Throwable -> L79
                r14.close()     // Catch: java.io.IOException -> L72
                if (r10 == 0) goto L72
                r10.close()     // Catch: java.io.IOException -> L72
            L72:
                if (r14 == 0) goto L77
                r14.close()     // Catch: java.io.IOException -> L77
            L77:
                r1 = 0
                return r1
            L79:
                r0 = move-exception
                r9 = r14
            L7b:
                r9.close()     // Catch: java.io.IOException -> L83
                if (r10 == 0) goto L83
                r10.close()     // Catch: java.io.IOException -> L83
            L83:
                if (r9 == 0) goto L88
                r9.close()     // Catch: java.io.IOException -> L88
            L88:
                throw r0
            */
            throw new UnsupportedOperationException("Method not decompiled: com.juhe.juhesdk.middle.common.CallBackUtil.CallBackFile.onParseResponse(com.juhe.juhesdk.middle.common.RealResponse):java.io.File");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String getRetString(InputStream is) {
        try {
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(is, "utf-8"));
            StringBuilder sb = new StringBuilder();
            while (true) {
                String readLine = bufferedReader.readLine();
                if (readLine != null) {
                    sb.append(readLine + "\n");
                } else {
                    is.close();
                    return sb.toString();
                }
            }
        } catch (Exception unused) {
            return null;
        }
    }
}
