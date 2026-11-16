package com.juhe.juhesdk.middle.common;

import android.text.TextUtils;
import java.io.File;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
class RequestUtil {
    private Thread mThread;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RequestUtil(String method, String url, Map<String, String> paramsMap, Map<String, String> headerMap, CallBackUtil callBack) {
        method.hashCode();
        if (method.equals("GET")) {
            urlHttpGet(url, paramsMap, headerMap, callBack);
        } else if (method.equals("POST")) {
            urlHttpPost(url, paramsMap, null, headerMap, callBack);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public RequestUtil(String url, String jsonStr, Map<String, String> headerMap, CallBackUtil callBack) {
        urlHttpPost(url, null, jsonStr, headerMap, callBack);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public RequestUtil(String url, File file, List<File> fileList, Map<String, File> fileMap, String fileKey, String fileType, Map<String, String> paramsMap, Map<String, String> headerMap, CallBackUtil callBack) {
        urlHttpUploadFile(url, file, fileList, fileMap, fileKey, fileType, paramsMap, headerMap, callBack);
    }

    private void urlHttpGet(final String url, final Map<String, String> paramsMap, final Map<String, String> headerMap, final CallBackUtil callBack) {
        this.mThread = new Thread(new Runnable() { // from class: com.juhe.juhesdk.middle.common.RequestUtil.1
            @Override // java.lang.Runnable
            public void run() {
                RealResponse data = new RealRequest().getData(RequestUtil.this.getUrl(url, paramsMap), headerMap);
                if (data.code == 200) {
                    callBack.onSeccess(data);
                } else {
                    callBack.onError(data);
                }
            }
        });
    }

    private void urlHttpPost(final String url, final Map<String, String> paramsMap, final String jsonStr, final Map<String, String> headerMap, final CallBackUtil callBack) {
        this.mThread = new Thread(new Runnable() { // from class: com.juhe.juhesdk.middle.common.RequestUtil.2
            @Override // java.lang.Runnable
            public void run() {
                RealResponse postData = new RealRequest().postData(url, RequestUtil.this.getPostBody(paramsMap, jsonStr), RequestUtil.this.getPostBodyType(paramsMap, jsonStr), headerMap);
                if (postData.code == 200) {
                    callBack.onSeccess(postData);
                } else {
                    callBack.onError(postData);
                }
            }
        });
    }

    private void urlHttpUploadFile(final String url, final File file, final List<File> fileList, final Map<String, File> fileMap, final String fileKey, final String fileType, final Map<String, String> paramsMap, final Map<String, String> headerMap, final CallBackUtil callBack) {
        this.mThread = new Thread(new Runnable() { // from class: com.juhe.juhesdk.middle.common.RequestUtil.3
            @Override // java.lang.Runnable
            public void run() {
                RealResponse uploadFile = new RealRequest().uploadFile(url, file, fileList, fileMap, fileKey, fileType, paramsMap, headerMap, callBack);
                if (uploadFile.code == 200) {
                    callBack.onSeccess(uploadFile);
                } else {
                    callBack.onError(uploadFile);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String getUrl(String path, Map<String, String> paramsMap) {
        if (paramsMap == null) {
            return path;
        }
        String str = path + "?";
        for (String str2 : paramsMap.keySet()) {
            str = str + str2 + "=" + paramsMap.get(str2) + "&";
        }
        return str.substring(0, str.length() - 1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String getPostBody(Map<String, String> params, String jsonStr) {
        if (params != null) {
            return getPostBodyFormParameMap(params);
        }
        if (TextUtils.isEmpty(jsonStr)) {
            return null;
        }
        return jsonStr;
    }

    private String getPostBodyFormParameMap(Map<String, String> params) {
        StringBuilder sb = new StringBuilder();
        try {
            boolean z = true;
            for (Map.Entry<String, String> entry : params.entrySet()) {
                if (z) {
                    z = false;
                } else {
                    sb.append("&");
                }
                sb.append(URLEncoder.encode(entry.getKey(), "UTF-8"));
                sb.append("=");
                sb.append(URLEncoder.encode(entry.getValue(), "UTF-8"));
            }
            return sb.toString();
        } catch (UnsupportedEncodingException unused) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String getPostBodyType(Map<String, String> paramsMap, String jsonStr) {
        if (paramsMap == null && !TextUtils.isEmpty(jsonStr)) {
            return "application/json;charset=utf-8";
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void execute() {
        Thread thread = this.mThread;
        if (thread != null) {
            thread.start();
        }
    }
}
