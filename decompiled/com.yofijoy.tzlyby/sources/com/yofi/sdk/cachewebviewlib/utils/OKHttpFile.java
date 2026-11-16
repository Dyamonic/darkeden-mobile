package com.yofi.sdk.cachewebviewlib.utils;

import android.text.TextUtils;
import com.loopj.android.http.AsyncHttpClient;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileReader;
import java.io.InputStream;
import okio.ByteString;
import okio.GzipSource;
import okio.Okio;

/* loaded from: classes2.dex */
public class OKHttpFile {
    private static final int ENTRY_BODY = 1;
    private static final int ENTRY_METADATA = 0;

    public static InputStream getCacheFile(File path, String url) {
        if (TextUtils.isEmpty(url)) {
            return null;
        }
        String hex = ByteString.encodeUtf8(url.toString()).md5().hex();
        String absolutePath = path.getAbsolutePath();
        StringBuilder sb = new StringBuilder();
        sb.append(hex);
        sb.append(".");
        boolean z = false;
        sb.append(0);
        File file = new File(absolutePath, sb.toString());
        File file2 = new File(path.getAbsolutePath(), hex + ".1");
        if (file.exists() && file2.exists()) {
            try {
                BufferedReader bufferedReader = new BufferedReader(new FileReader(file), 1024);
                while (true) {
                    String readLine = bufferedReader.readLine();
                    if (readLine != null) {
                        if (readLine.contains("Content-Encoding") && readLine.contains(AsyncHttpClient.ENCODING_GZIP)) {
                            z = true;
                            break;
                        }
                    } else {
                        break;
                    }
                }
                return !z ? new FileInputStream(file2) : Okio.buffer(new GzipSource(Okio.source(file2))).inputStream();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return null;
    }
}
