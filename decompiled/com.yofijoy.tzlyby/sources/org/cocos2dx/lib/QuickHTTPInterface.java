package org.cocos2dx.lib;

import android.util.Log;
import cz.msebera.android.httpclient.cookie.ClientCookie;
import cz.msebera.android.httpclient.protocol.HTTP;
import io.reactivex.rxjava3.annotations.SchedulerSupport;
import java.io.DataInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.ProtocolException;
import java.net.URL;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class QuickHTTPInterface {
    static String BOUNDARY = "----------------------------78631b43218d";
    static String NEWLINE = "\r\n";

    static HttpURLConnection createURLConnect(String str) {
        try {
            HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
            httpURLConnection.setRequestProperty("Accept-Encoding", HTTP.IDENTITY_CODING);
            httpURLConnection.setDoInput(true);
            return httpURLConnection;
        } catch (Exception e) {
            Log.e("QuickHTTPInterface", e.toString());
            return null;
        }
    }

    static void setRequestMethod(HttpURLConnection httpURLConnection, String str) {
        try {
            if ("POST".equalsIgnoreCase(str)) {
                httpURLConnection.setDoOutput(true);
            }
            httpURLConnection.setRequestMethod(str);
        } catch (ProtocolException e) {
            Log.e("QuickHTTPInterface", e.toString());
        }
    }

    static void addRequestHeader(HttpURLConnection httpURLConnection, String str, String str2, boolean z) {
        if ("Content-Type".equalsIgnoreCase(str.trim()) && z) {
            str2 = str2 + "; boundary=" + BOUNDARY;
        }
        httpURLConnection.setRequestProperty(str, str2);
    }

    static void setTimeout(HttpURLConnection httpURLConnection, int i) {
        httpURLConnection.setConnectTimeout(i);
        httpURLConnection.setReadTimeout(i);
    }

    static int connect(HttpURLConnection httpURLConnection) {
        try {
            httpURLConnection.connect();
            return 0;
        } catch (IOException e) {
            Log.e("QuickHTTPInterface", e.toString());
            return 1;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x002b, code lost:
    
        r3 = "&" + r3;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    static void postContent(java.net.HttpURLConnection r1, java.lang.String r2, java.lang.String r3, boolean r4) {
        /*
            java.io.DataOutputStream r0 = new java.io.DataOutputStream     // Catch: java.io.IOException -> L49
            java.io.OutputStream r1 = r1.getOutputStream()     // Catch: java.io.IOException -> L49
            r0.<init>(r1)     // Catch: java.io.IOException -> L49
            if (r2 == 0) goto L29
            int r1 = r2.length()     // Catch: java.io.IOException -> L49
            if (r1 != 0) goto L12
            goto L29
        L12:
            java.lang.StringBuilder r1 = new java.lang.StringBuilder     // Catch: java.io.IOException -> L49
            r1.<init>()     // Catch: java.io.IOException -> L49
            java.lang.StringBuilder r1 = r1.append(r2)     // Catch: java.io.IOException -> L49
            java.lang.String r2 = "="
            java.lang.StringBuilder r1 = r1.append(r2)     // Catch: java.io.IOException -> L49
            java.lang.StringBuilder r1 = r1.append(r3)     // Catch: java.io.IOException -> L49
            java.lang.String r3 = r1.toString()     // Catch: java.io.IOException -> L49
        L29:
            if (r4 == 0) goto L3e
            java.lang.StringBuilder r1 = new java.lang.StringBuilder     // Catch: java.io.IOException -> L49
            r1.<init>()     // Catch: java.io.IOException -> L49
            java.lang.String r2 = "&"
            java.lang.StringBuilder r1 = r1.append(r2)     // Catch: java.io.IOException -> L49
            java.lang.StringBuilder r1 = r1.append(r3)     // Catch: java.io.IOException -> L49
            java.lang.String r3 = r1.toString()     // Catch: java.io.IOException -> L49
        L3e:
            byte[] r1 = r3.getBytes()     // Catch: java.io.IOException -> L49
            r0.write(r1)     // Catch: java.io.IOException -> L49
            r0.flush()     // Catch: java.io.IOException -> L49
            goto L53
        L49:
            r1 = move-exception
            java.lang.String r1 = r1.toString()
            java.lang.String r2 = "QuickHTTPInterface"
            android.util.Log.e(r2, r1)
        L53:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.cocos2dx.lib.QuickHTTPInterface.postContent(java.net.HttpURLConnection, java.lang.String, java.lang.String, boolean):void");
    }

    static void postContentByteArray(HttpURLConnection httpURLConnection, byte[] bArr) {
        try {
            OutputStream outputStream = httpURLConnection.getOutputStream();
            outputStream.write(bArr);
            outputStream.flush();
        } catch (IOException e) {
            Log.e("QuickHTTPInterface", e.toString());
        }
    }

    static void postFormContent(HttpURLConnection httpURLConnection, String str, String str2) {
        try {
            OutputStream outputStream = httpURLConnection.getOutputStream();
            outputStream.write(getBoundaryContentHeader(str, str2).getBytes());
            outputStream.flush();
        } catch (IOException e) {
            Log.e("QuickHTTPInterface", e.toString());
        }
    }

    static void postFormFile(HttpURLConnection httpURLConnection, String str, String str2) {
        try {
            FileInputStream fileInputStream = new FileInputStream(str2);
            OutputStream outputStream = httpURLConnection.getOutputStream();
            outputStream.write(getBoundaryFileHeader(str, str2).getBytes());
            byte[] bArr = new byte[1024];
            while (true) {
                int read = fileInputStream.read(bArr);
                if (read != -1) {
                    outputStream.write(bArr, 0, read);
                } else {
                    outputStream.write(NEWLINE.getBytes());
                    outputStream.flush();
                    fileInputStream.close();
                    return;
                }
            }
        } catch (IOException e) {
            Log.e("QuickHTTPInterface", e.toString());
        }
    }

    static void postFormEnd(HttpURLConnection httpURLConnection, boolean z) {
        if ("GET".equalsIgnoreCase(httpURLConnection.getRequestMethod())) {
            return;
        }
        try {
            OutputStream outputStream = httpURLConnection.getOutputStream();
            if (z) {
                outputStream.write(getBoundaryEnd().getBytes());
                outputStream.flush();
            }
            outputStream.close();
        } catch (IOException e) {
            Log.e("QuickHTTPInterface", e.toString());
        }
    }

    static String getBoundaryFileHeader(String str, String str2) {
        return "--" + BOUNDARY + NEWLINE + "Content-Disposition: form-data; name=\"" + str + "\"; filename=\"" + new File(str2).getName() + "\"" + NEWLINE + "Content-Type: application/octet-stream" + NEWLINE + NEWLINE;
    }

    static String getBoundaryContentHeader(String str, String str2) {
        return "--" + BOUNDARY + NEWLINE + "Content-Disposition: form-data; name=\"" + str + "\"" + NEWLINE + NEWLINE + str2 + NEWLINE;
    }

    static String getBoundaryEnd() {
        return "--" + BOUNDARY + "--" + NEWLINE;
    }

    static int getResponedCode(HttpURLConnection httpURLConnection) {
        try {
            return httpURLConnection.getResponseCode();
        } catch (IOException e) {
            Log.e("QuickHTTPInterface", e.toString());
            return 0;
        }
    }

    static String getResponedErr(HttpURLConnection httpURLConnection) {
        try {
            return httpURLConnection.getResponseMessage();
        } catch (IOException e) {
            String iOException = e.toString();
            Log.e("QuickHTTPInterface", iOException);
            return iOException;
        }
    }

    static String getResponedHeader(HttpURLConnection httpURLConnection) {
        Map<String, List<String>> headerFields = httpURLConnection.getHeaderFields();
        JSONObject jSONObject = new JSONObject();
        try {
            for (Map.Entry<String, List<String>> entry : headerFields.entrySet()) {
                String key = entry.getKey();
                if (key == null) {
                    key = "";
                }
                List<String> value = entry.getValue();
                JSONArray jSONArray = new JSONArray();
                Iterator<String> it = value.iterator();
                while (it.hasNext()) {
                    jSONArray.put(it.next());
                }
                jSONObject.put(key, jSONArray);
            }
        } catch (JSONException e) {
            Log.e("QuickHTTPInterface", e.toString());
        }
        return jSONObject.toString();
    }

    static String getResponedHeaderByIdx(HttpURLConnection httpURLConnection, int i) {
        Map<String, List<String>> headerFields = httpURLConnection.getHeaderFields();
        if (headerFields == null) {
            return null;
        }
        int i2 = 0;
        for (Map.Entry<String, List<String>> entry : headerFields.entrySet()) {
            if (i2 == i) {
                String key = entry.getKey();
                if (key == null) {
                    return listToString(entry.getValue(), ",") + "\n";
                }
                return key + ":" + listToString(entry.getValue(), ",") + "\n";
            }
            i2++;
        }
        return null;
    }

    static String getResponedHeaderByKey(HttpURLConnection httpURLConnection, String str) {
        Map<String, List<String>> headerFields;
        if (str == null || (headerFields = httpURLConnection.getHeaderFields()) == null) {
            return null;
        }
        for (Map.Entry<String, List<String>> entry : headerFields.entrySet()) {
            if (str.equalsIgnoreCase(entry.getKey())) {
                if ("set-cookie".equalsIgnoreCase(str)) {
                    return combinCookies(entry.getValue(), httpURLConnection.getURL().getHost());
                }
                return listToString(entry.getValue(), ",");
            }
        }
        return null;
    }

    static int getResponedHeaderByKeyInt(HttpURLConnection httpURLConnection, String str) {
        String headerField = httpURLConnection.getHeaderField(str);
        if (headerField == null) {
            return 0;
        }
        return Integer.parseInt(headerField);
    }

    static int getContentLeng(HttpURLConnection httpURLConnection) {
        return httpURLConnection.getContentLength();
    }

    static byte[] getResponedString(HttpURLConnection httpURLConnection) {
        try {
            DataInputStream dataInputStream = new DataInputStream(httpURLConnection.getInputStream());
            byte[] bArr = new byte[1024];
            int read = dataInputStream.read(bArr);
            if (-1 == read) {
                return new byte[]{0};
            }
            byte[] bArr2 = new byte[read + 1];
            bArr2[0] = 1;
            System.arraycopy(bArr, 0, bArr2, 1, read);
            return bArr2;
        } catch (IOException e) {
            Log.e("QuickHTTPInterface", e.toString());
            return null;
        }
    }

    static void close(HttpURLConnection httpURLConnection) {
        try {
            httpURLConnection.getInputStream().close();
        } catch (IOException e) {
            Log.e("QuickHTTPInterface", e.toString());
        }
    }

    public static String listToString(List<String> list, String str) {
        if (list == null) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        boolean z = false;
        for (String str2 : list) {
            if (z) {
                sb.append(str);
            }
            if (str2 == null) {
                str2 = "";
            }
            sb.append(str2);
            z = true;
        }
        return sb.toString();
    }

    public static String combinCookies(List<String> list, String str) {
        StringBuilder sb = new StringBuilder();
        Iterator<String> it = list.iterator();
        String str2 = null;
        String str3 = null;
        String str4 = null;
        while (it.hasNext()) {
            boolean z = true;
            boolean z2 = false;
            for (String str5 : it.next().split(";")) {
                String[] split = str5.split("=");
                if (z) {
                    if (2 == split.length) {
                        str2 = split[0];
                        str3 = split[1];
                    } else {
                        str2 = "";
                        str3 = str2;
                    }
                    z = false;
                }
                if (ClientCookie.EXPIRES_ATTR.equalsIgnoreCase(split[0].trim())) {
                    str4 = str2Seconds(split[1].trim());
                } else if (ClientCookie.SECURE_ATTR.equalsIgnoreCase(split[0].trim())) {
                    z2 = true;
                } else if (ClientCookie.DOMAIN_ATTR.equalsIgnoreCase(split[0].trim())) {
                    str = split[1];
                }
            }
            if (str == null) {
                str = SchedulerSupport.NONE;
            }
            sb.append(str);
            sb.append('\t');
            sb.append("FALSE\t");
            sb.append("/\t");
            if (z2) {
                sb.append("TRUE\t");
            } else {
                sb.append("FALSE\t");
            }
            sb.append(str4);
            sb.append("\t");
            sb.append(str2);
            sb.append("\t");
            sb.append(str3);
            sb.append('\n');
        }
        return sb.toString();
    }

    private static String str2Seconds(String str) {
        long j;
        Calendar calendar = Calendar.getInstance();
        try {
            calendar.setTime(new SimpleDateFormat("EEE, dd-MMM-yyyy hh:mm:ss zzz", Locale.US).parse(str));
            j = calendar.getTimeInMillis() / 1000;
        } catch (ParseException unused) {
            j = -1;
        }
        return -1 == j ? str : Long.toString(j);
    }
}
