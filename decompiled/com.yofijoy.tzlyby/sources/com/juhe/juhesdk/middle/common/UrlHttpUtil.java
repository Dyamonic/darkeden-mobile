package com.juhe.juhesdk.middle.common;

import com.juhe.juhesdk.middle.common.CallBackUtil;
import java.io.File;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public class UrlHttpUtil {
    public static final String FILE_TYPE_AUDIO = "audio/*";
    public static final String FILE_TYPE_FILE = "file/*";
    public static final String FILE_TYPE_IMAGE = "image/*";
    public static final String FILE_TYPE_VIDEO = "video/*";
    private static final String METHOD_GET = "GET";
    private static final String METHOD_POST = "POST";

    public static void get(String url, CallBackUtil callBack) {
        get(url, null, null, callBack);
    }

    public static void get(String url, Map<String, String> paramsMap, CallBackUtil callBack) {
        get(url, paramsMap, null, callBack);
    }

    public static void get(String url, Map<String, String> paramsMap, Map<String, String> headerMap, CallBackUtil callBack) {
        new RequestUtil("GET", url, paramsMap, headerMap, callBack).execute();
    }

    public static void post(String url, CallBackUtil callBack) {
        post(url, null, callBack);
    }

    public static void post(String url, Map<String, String> paramsMap, CallBackUtil callBack) {
        post(url, paramsMap, null, callBack);
    }

    public static void post(String url, Map<String, String> paramsMap, Map<String, String> headerMap, CallBackUtil callBack) {
        new RequestUtil("POST", url, paramsMap, headerMap, callBack).execute();
    }

    public static void postJson(String url, String jsonStr, CallBackUtil callBack) {
        postJson(url, jsonStr, null, callBack);
    }

    public static void postJson(String url, String jsonStr, Map<String, String> headerMap, CallBackUtil callBack) {
        new RequestUtil(url, jsonStr, headerMap, callBack).execute();
    }

    public static void uploadFile(String url, File file, String fileKey, String fileType, CallBackUtil callBack) {
        uploadFile(url, file, fileKey, fileType, null, callBack);
    }

    public static void uploadFile(String url, File file, String fileKey, String fileType, Map<String, String> paramsMap, CallBackUtil callBack) {
        uploadFile(url, file, fileKey, fileType, paramsMap, null, callBack);
    }

    public static void uploadFile(String url, File file, String fileKey, String fileType, Map<String, String> paramsMap, Map<String, String> headerMap, CallBackUtil callBack) {
        new RequestUtil(url, file, null, null, fileKey, fileType, paramsMap, headerMap, callBack).execute();
    }

    public static void uploadListFile(String url, List<File> fileList, String fileKey, String fileType, CallBackUtil callBack) {
        uploadListFile(url, fileList, fileKey, fileType, null, callBack);
    }

    public static void uploadListFile(String url, List<File> fileList, String fileKey, String fileType, Map<String, String> paramsMap, CallBackUtil callBack) {
        uploadListFile(url, fileList, fileKey, fileType, paramsMap, null, callBack);
    }

    public static void uploadListFile(String url, List<File> fileList, String fileKey, String fileType, Map<String, String> paramsMap, Map<String, String> headerMap, CallBackUtil callBack) {
        new RequestUtil(url, null, fileList, null, fileKey, fileType, paramsMap, headerMap, callBack).execute();
    }

    public static void uploadMapFile(String url, Map<String, File> fileMap, String fileType, CallBackUtil callBack) {
        uploadMapFile(url, fileMap, fileType, null, callBack);
    }

    public static void uploadMapFile(String url, Map<String, File> fileMap, String fileType, Map<String, String> paramsMap, CallBackUtil callBack) {
        uploadMapFile(url, fileMap, fileType, paramsMap, null, callBack);
    }

    public static void uploadMapFile(String url, Map<String, File> fileMap, String fileType, Map<String, String> paramsMap, Map<String, String> headerMap, CallBackUtil callBack) {
        new RequestUtil(url, null, null, fileMap, null, fileType, paramsMap, headerMap, callBack).execute();
    }

    public static void getBitmap(String url, CallBackUtil.CallBackBitmap callBack) {
        getBitmap(url, null, callBack);
    }

    public static void getBitmap(String url, Map<String, String> paramsMap, CallBackUtil.CallBackBitmap callBack) {
        get(url, paramsMap, null, callBack);
    }

    public static void downloadFile(String url, CallBackUtil.CallBackFile callBack) {
        downloadFile(url, null, callBack);
    }

    public static void downloadFile(String url, Map<String, String> paramsMap, CallBackUtil.CallBackFile callBack) {
        downloadFile(url, paramsMap, null, callBack);
    }

    public static void downloadFile(String url, Map<String, String> paramsMap, Map<String, String> headerMap, CallBackUtil.CallBackFile callBack) {
        get(url, paramsMap, headerMap, callBack);
    }
}
