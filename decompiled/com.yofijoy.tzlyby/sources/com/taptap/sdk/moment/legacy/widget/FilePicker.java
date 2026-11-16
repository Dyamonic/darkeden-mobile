package com.taptap.sdk.moment.legacy.widget;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.text.TextUtils;
import android.util.Base64;
import android.util.Log;
import android.webkit.WebResourceResponse;
import com.taptap.sdk.moment.legacy.utils.Utils;
import com.taptap.sdk.update.download.core.breakpoint.BreakpointSQLiteKey;
import com.tencent.open.SocialConstants;
import cz.msebera.android.httpclient.cookie.ClientCookie;
import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.net.URLConnection;
import java.net.URLEncoder;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.UUID;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class FilePicker {
    private static final String TAG = "FilePicker";
    private final String PREFIX_RESOURCE = "moment://";
    private JSONObject data;
    private HashMap<String, String> pathMaps;

    public FilePicker(String str) {
        try {
            parseData(new JSONObject(str));
        } catch (JSONException e) {
            e.printStackTrace();
        }
    }

    public JSONObject getData() {
        return this.data;
    }

    private void parseData(JSONObject jSONObject) {
        String str;
        String str2 = "content";
        if (jSONObject == null) {
            return;
        }
        try {
            this.data = new JSONObject();
            if (jSONObject.opt("image_paths") != null) {
                JSONArray jSONArray = jSONObject.getJSONArray("image_paths");
                JSONArray jSONArray2 = new JSONArray();
                int i = 0;
                while (i < jSONArray.length()) {
                    String string = jSONArray.getString(i);
                    JSONObject jSONObject2 = new JSONObject();
                    JSONArray jSONArray3 = jSONArray;
                    String generateId = generateId(string);
                    jSONObject2.put("name", getFileName(string));
                    jSONObject2.put(BreakpointSQLiteKey.ID, generateId);
                    jSONObject2.put("type", getMimeTypeByPath(string));
                    jSONObject2.put(ClientCookie.PATH_ATTR, generatePath(generateId));
                    jSONObject2.put("size", getFileSize(string));
                    jSONArray2.put(jSONObject2);
                    i++;
                    jSONArray = jSONArray3;
                    str2 = str2;
                }
                str = str2;
                this.data.put("images", jSONArray2);
            } else {
                str = "content";
            }
            if (jSONObject.opt("video_paths") != null) {
                JSONArray jSONArray4 = jSONObject.getJSONArray("video_paths");
                JSONArray jSONArray5 = new JSONArray();
                for (int i2 = 0; i2 < jSONArray4.length(); i2++) {
                    String string2 = jSONArray4.getString(i2);
                    JSONObject jSONObject3 = new JSONObject();
                    String generateId2 = generateId(string2);
                    jSONObject3.put("name", getFileName(string2));
                    jSONObject3.put(BreakpointSQLiteKey.ID, generateId2);
                    jSONObject3.put("type", getMimeTypeByPath(string2));
                    jSONObject3.put(ClientCookie.PATH_ATTR, generatePath(generateId2));
                    jSONObject3.put("size", getFileSize(string2));
                    jSONArray5.put(jSONObject3);
                }
                this.data.put("videos", jSONArray5);
            }
            if (jSONObject.opt("title") != null) {
                this.data.put("title", Utils.encodeToBase64(jSONObject.getString("title")));
            }
            if (jSONObject.opt(SocialConstants.PARAM_APP_DESC) != null) {
                this.data.put(SocialConstants.PARAM_APP_DESC, Utils.encodeToBase64(jSONObject.getString(SocialConstants.PARAM_APP_DESC)));
            }
            String str3 = str;
            if (jSONObject.opt(str3) != null) {
                this.data.put(str3, Utils.encodeToBase64(jSONObject.getString(str3)));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private int getFileSize(String str) {
        if (str != null && str.length() != 0) {
            checkNull();
            File file = new File(str);
            try {
                if (file.exists()) {
                    return (int) file.length();
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return 0;
    }

    private String generateId(String str) {
        String upperCase = UUID.randomUUID().toString().replace("-", "").toUpperCase();
        checkNull();
        if (this.pathMaps.get(upperCase) == null) {
            this.pathMaps.put(upperCase, str);
        }
        return upperCase;
    }

    private String getPathById(String str) {
        checkNull();
        if (str == null || str.length() <= 0) {
            return null;
        }
        return this.pathMaps.get(str);
    }

    public String getFileData(String str, int i, int i2) {
        checkNull();
        String pathById = getPathById(str);
        if (pathById == null || pathById.length() == 0) {
            pathById = getPathById(this.pathMaps.keySet().iterator().next());
        }
        File file = new File(pathById);
        int length = (int) file.length();
        if (length < i + i2) {
            i2 = length - i;
        }
        try {
            byte[] bArr = new byte[i2];
            Log.d("TestEncode", " start time = " + System.currentTimeMillis());
            BufferedInputStream bufferedInputStream = new BufferedInputStream(new FileInputStream(file));
            bufferedInputStream.skip((long) i);
            bufferedInputStream.read(bArr, 0, i2);
            bufferedInputStream.close();
            String encodeToString = Base64.encodeToString(bArr, 2);
            Log.d("TestEncode", " end time = " + System.currentTimeMillis());
            Log.d("TestEncode", encodeToString);
            return encodeToString;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    private void checkNull() {
        if (this.pathMaps == null) {
            this.pathMaps = new HashMap<>();
        }
    }

    public static JSONArray getFileValidPathArray(String[] strArr, Context context) {
        if (strArr == null || strArr.length == 0) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (String str : strArr) {
            String fileValidPath = getFileValidPath(str, context);
            if (fileValidPath != null && fileValidPath.length() > 0) {
                arrayList.add(fileValidPath);
            } else {
                Log.e(TAG, "find invalid path = " + str);
            }
        }
        JSONArray jSONArray = new JSONArray();
        for (int i = 0; i < arrayList.size(); i++) {
            jSONArray.put(arrayList.get(i));
        }
        return jSONArray;
    }

    private static String getFileValidPath(String str, Context context) {
        if (!str.startsWith("/")) {
            Uri parse = Uri.parse(str);
            if (parse != null && parse.getScheme() != null) {
                String scheme = parse.getScheme();
                scheme.hashCode();
                if (!scheme.equals("file")) {
                    str = !scheme.equals("content") ? "" : getFileFromContentUri(parse, context);
                } else {
                    str = parse.getPath();
                }
            }
            return null;
        }
        if (str != null && str.length() != 0) {
            File file = new File(str);
            if (file.exists() && file.isFile()) {
                return str;
            }
        }
        return null;
    }

    public static String getMimeTypeByPath(String str) {
        return (str == null || str.length() == 0) ? "" : URLConnection.getFileNameMap().getContentTypeFor(new File(str).getName());
    }

    private static String getFileFromContentUri(Uri uri, Context context) {
        if (uri == null) {
            return null;
        }
        String[] strArr = {"_data", "_display_name"};
        Cursor query = context.getContentResolver().query(uri, strArr, null, null, null);
        if (query != null) {
            if (query.getColumnIndex(strArr[0]) < 0 || query.getColumnIndex(strArr[1]) < 0) {
                if (!query.isClosed()) {
                    query.close();
                }
                return "";
            }
            query.moveToFirst();
            int columnIndex = query.getColumnIndex(strArr[0]);
            String string = columnIndex >= 0 ? query.getString(columnIndex) : null;
            int columnIndex2 = query.getColumnIndex(strArr[1]);
            String string2 = columnIndex2 >= 0 ? query.getString(columnIndex2) : null;
            query.close();
            r0 = TextUtils.isEmpty(string) ? null : new File(string);
            if ((r0 == null || !r0.exists()) && (string = uri.getPath()) != null) {
                r0 = new File(string);
            }
            if (r0 == null || !r0.exists() || r0.length() <= 0 || TextUtils.isEmpty(string)) {
                string = getPathFromInputStreamUri(context, uri, string2);
            }
            if (!TextUtils.isEmpty(string)) {
                r0 = new File(string);
            }
        }
        return r0 != null ? r0.getAbsolutePath() : "";
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v0, types: [android.net.Uri] */
    /* JADX WARN: Type inference failed for: r3v1 */
    /* JADX WARN: Type inference failed for: r3v10 */
    /* JADX WARN: Type inference failed for: r3v11 */
    /* JADX WARN: Type inference failed for: r3v12 */
    /* JADX WARN: Type inference failed for: r3v2 */
    /* JADX WARN: Type inference failed for: r3v4 */
    /* JADX WARN: Type inference failed for: r3v8 */
    /* JADX WARN: Type inference failed for: r3v9 */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:35:0x001e -> B:12:0x003e). Please report as a decompilation issue!!! */
    private static String getPathFromInputStreamUri(Context context, Uri uri, String str) {
        InputStream inputStream;
        String str2 = null;
        str2 = null;
        str2 = null;
        InputStream inputStream2 = null;
        str2 = null;
        try {
            try {
            } catch (Throwable th) {
                th = th;
                inputStream2 = uri;
            }
        } catch (Exception e) {
            e.printStackTrace();
            uri = uri;
        }
        if (uri.getAuthority() != null) {
            try {
                inputStream = context.getContentResolver().openInputStream(uri);
                try {
                    str2 = createTemporalFileFrom(context, inputStream, str).getPath();
                    uri = inputStream;
                    if (inputStream != null) {
                        inputStream.close();
                        uri = inputStream;
                    }
                } catch (Exception e2) {
                    e = e2;
                    e.printStackTrace();
                    uri = inputStream;
                    if (inputStream != null) {
                        inputStream.close();
                        uri = inputStream;
                    }
                    return str2;
                }
            } catch (Exception e3) {
                e = e3;
                inputStream = null;
            } catch (Throwable th2) {
                th = th2;
                if (inputStream2 != null) {
                    try {
                        inputStream2.close();
                    } catch (Exception e4) {
                        e4.printStackTrace();
                    }
                }
                throw th;
            }
        }
        return str2;
    }

    private static File createTemporalFileFrom(Context context, InputStream inputStream, String str) throws IOException {
        if (inputStream == null) {
            return null;
        }
        byte[] bArr = new byte[8192];
        File file = new File(context.getCacheDir(), str);
        if (file.exists()) {
            file.delete();
        }
        FileOutputStream fileOutputStream = new FileOutputStream(file);
        while (true) {
            int read = inputStream.read(bArr);
            if (read != -1) {
                fileOutputStream.write(bArr, 0, read);
            } else {
                fileOutputStream.flush();
                try {
                    fileOutputStream.close();
                    return file;
                } catch (IOException e) {
                    e.printStackTrace();
                    return file;
                }
            }
        }
    }

    public String encodeBase64(String str) {
        if (str == null) {
            return null;
        }
        return Base64.encodeToString(str.getBytes(), 10);
    }

    public WebResourceResponse generateWebResponse(String str) {
        String pathById;
        String mimeTypeByPath;
        try {
            Uri parse = Uri.parse(str);
            if (parse != null && str.contains("moment://") && (pathById = getPathById(parse.getAuthority())) != null && (mimeTypeByPath = getMimeTypeByPath(pathById)) != null && mimeTypeByPath.contains("image")) {
                try {
                    return new WebResourceResponse(mimeTypeByPath, "UTF-8", new FileInputStream(new File(pathById)));
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        return null;
    }

    private String generatePath(String str) {
        return "moment://" + str;
    }

    private String encodeString(String str) {
        if (str != null && str.length() != 0) {
            try {
                return URLEncoder.encode(new String(str.getBytes(StandardCharsets.UTF_8)), "UTF-8");
            } catch (UnsupportedEncodingException e) {
                e.printStackTrace();
            }
        }
        return "";
    }

    private String getFileName(String str) {
        return (str == null || str.length() == 0) ? "" : Utils.encodeToBase64(str.substring(str.lastIndexOf("/") + 1));
    }
}
