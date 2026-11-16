package com.yofi.sdk.utils;

import android.util.Log;
import com.yofi.sdk.imp.middle.YoFiSdkImp;
import com.yofi.sdk.imp.middle.data.Message;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.Map;
import java.util.UUID;

/* loaded from: classes2.dex */
public class UploadUtil {
    private static final String CHARSET = "utf-8";
    private static final String CONTENT_TYPE = "multipart/form-data";
    private static final String LINE_END = "\r\n";
    private static final String PREFIX = "--";
    private static final String TAG = "UploadUtil";
    public static final int UPLOAD_FILE_NOT_EXISTS_CODE = 2;
    public static final int UPLOAD_SERVER_ERROR_CODE = 3;
    public static final int UPLOAD_SUCCESS_CODE = 1;
    protected static final int WHAT_TO_UPLOAD = 1;
    protected static final int WHAT_UPLOAD_DONE = 2;
    private static UploadUtil uploadUtil;
    private OnUploadProcessListener onUploadProcessListener;
    private static final String BOUNDARY = UUID.randomUUID().toString();
    private static int requestTime = 0;
    private int readTimeOut = 10000;
    private int connectTimeout = 10000;

    /* loaded from: classes2.dex */
    public interface OnUploadProcessListener {
        void initUpload(int fileSize);

        void onUploadDone(int responseCode, String message, Message msg);

        void onUploadProcess(int uploadSize);
    }

    /* loaded from: classes2.dex */
    public interface uploadProcessListener {
    }

    private UploadUtil() {
    }

    public static UploadUtil getInstance() {
        if (uploadUtil == null) {
            uploadUtil = new UploadUtil();
        }
        return uploadUtil;
    }

    public void uploadFile(String filePath, String fileKey, String RequestURL, Map<String, String> param, Message msg) {
        if (filePath == null) {
            sendMessage(2, "文件不存在", msg);
            return;
        }
        try {
            uploadFile(new File(filePath), fileKey, RequestURL, param, msg);
        } catch (Exception e) {
            sendMessage(2, "文件不存在", msg);
            e.printStackTrace();
        }
    }

    public void uploadFile(final File file, final String fileKey, final String RequestURL, final Map<String, String> param, final Message msg) {
        if (file == null || !file.exists()) {
            sendMessage(2, "文件不存在", msg);
            return;
        }
        Log.i(TAG, "请求的URL=" + RequestURL);
        Log.i(TAG, "请求的fileName=" + file.getName());
        Log.i(TAG, "请求的fileKey=" + fileKey);
        new Thread(new Runnable() { // from class: com.yofi.sdk.utils.UploadUtil.1
            @Override // java.lang.Runnable
            public void run() {
                UploadUtil.this.toUploadFile(file, fileKey, RequestURL, param, msg);
            }
        }).start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void toUploadFile(File file, String fileKey, String RequestURL, Map<String, String> param, Message msg) {
        String str;
        String str2;
        int i;
        Map<String, String> map = param;
        String str3 = "上传失败：error=";
        requestTime = 0;
        long currentTimeMillis = System.currentTimeMillis();
        try {
            HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(RequestURL).openConnection();
            httpURLConnection.setReadTimeout(this.readTimeOut);
            httpURLConnection.setConnectTimeout(this.connectTimeout);
            httpURLConnection.setDoInput(true);
            httpURLConnection.setDoOutput(true);
            httpURLConnection.setUseCaches(false);
            httpURLConnection.setRequestMethod("POST");
            httpURLConnection.setRequestProperty("clientId", YoFiSdkImp.instance().getAppId());
            httpURLConnection.setRequestProperty("accessToken", YoFiSdkImp.instance().getAccessToken());
            httpURLConnection.setRequestProperty("Charset", CHARSET);
            httpURLConnection.setRequestProperty("connection", "keep-alive");
            httpURLConnection.setRequestProperty("user-agent", "Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1)");
            httpURLConnection.setRequestProperty("Content-Type", "multipart/form-data;boundary=" + BOUNDARY);
            DataOutputStream dataOutputStream = new DataOutputStream(httpURLConnection.getOutputStream());
            if (map != null && param.size() > 0) {
                for (String str4 : param.keySet()) {
                    StringBuffer stringBuffer = new StringBuffer();
                    String str5 = map.get(str4);
                    stringBuffer.append(PREFIX);
                    str = str3;
                    try {
                        try {
                            stringBuffer.append(BOUNDARY);
                            stringBuffer.append(LINE_END);
                            stringBuffer.append("Content-Disposition: form-data; name=\"");
                            stringBuffer.append(str4);
                            stringBuffer.append("\"");
                            stringBuffer.append(LINE_END);
                            stringBuffer.append(LINE_END);
                            stringBuffer.append(str5);
                            stringBuffer.append(LINE_END);
                            String stringBuffer2 = stringBuffer.toString();
                            Log.i(TAG, str4 + "=" + stringBuffer2 + "##");
                            dataOutputStream.write(stringBuffer2.getBytes());
                            map = param;
                            str3 = str;
                        } catch (MalformedURLException e) {
                            e = e;
                            str2 = str;
                            i = 3;
                            sendMessage(i, str2 + e.getMessage(), msg);
                            e.printStackTrace();
                        }
                    } catch (IOException e2) {
                        e = e2;
                        sendMessage(3, str + e.getMessage(), msg);
                        e.printStackTrace();
                        return;
                    }
                }
            }
            String str6 = str3;
            StringBuffer stringBuffer3 = new StringBuffer();
            stringBuffer3.append(PREFIX);
            stringBuffer3.append(BOUNDARY);
            stringBuffer3.append(LINE_END);
            stringBuffer3.append("Content-Disposition:form-data; name=\"" + fileKey + "\"; filename=\"" + file.getName() + "\"" + LINE_END);
            stringBuffer3.append("Content-Type:image/pjpeg\r\n");
            stringBuffer3.append(LINE_END);
            String stringBuffer4 = stringBuffer3.toString();
            Log.i(TAG, file.getName() + "=" + stringBuffer4 + "##");
            dataOutputStream.write(stringBuffer4.getBytes());
            FileInputStream fileInputStream = new FileInputStream(file);
            this.onUploadProcessListener.initUpload((int) file.length());
            byte[] bArr = new byte[1024];
            int i2 = 0;
            while (true) {
                int read = fileInputStream.read(bArr);
                if (read == -1) {
                    break;
                }
                i2 += read;
                dataOutputStream.write(bArr, 0, read);
                this.onUploadProcessListener.onUploadProcess(i2);
            }
            fileInputStream.close();
            dataOutputStream.write(LINE_END.getBytes());
            dataOutputStream.write((PREFIX + BOUNDARY + PREFIX + LINE_END).getBytes());
            dataOutputStream.flush();
            int responseCode = httpURLConnection.getResponseCode();
            requestTime = (int) ((System.currentTimeMillis() - currentTimeMillis) / 1000);
            Log.e(TAG, "response code:" + responseCode);
            if (responseCode == 200) {
                Log.e(TAG, "request success");
                InputStream inputStream = httpURLConnection.getInputStream();
                StringBuffer stringBuffer5 = new StringBuffer();
                while (true) {
                    int read2 = inputStream.read();
                    if (read2 != -1) {
                        stringBuffer5.append((char) read2);
                    } else {
                        String stringBuffer6 = stringBuffer5.toString();
                        Log.e(TAG, "result : " + stringBuffer6);
                        sendMessage(1, "上传结果：" + stringBuffer6, msg);
                        return;
                    }
                }
            } else {
                Log.e(TAG, "request error");
                try {
                    sendMessage(3, "上传失败：code=" + responseCode, msg);
                } catch (MalformedURLException e3) {
                    e = e3;
                    i = 3;
                    str2 = str6;
                    sendMessage(i, str2 + e.getMessage(), msg);
                    e.printStackTrace();
                }
            }
        } catch (MalformedURLException e4) {
            e = e4;
            str2 = str3;
        } catch (IOException e5) {
            e = e5;
            str = str3;
        }
    }

    private void sendMessage(int responseCode, String responseMessage, Message msg) {
        this.onUploadProcessListener.onUploadDone(responseCode, responseMessage, msg);
    }

    public void setOnUploadProcessListener(OnUploadProcessListener onUploadProcessListener) {
        this.onUploadProcessListener = onUploadProcessListener;
    }

    public int getReadTimeOut() {
        return this.readTimeOut;
    }

    public void setReadTimeOut(int readTimeOut) {
        this.readTimeOut = readTimeOut;
    }

    public int getConnectTimeout() {
        return this.connectTimeout;
    }

    public void setConnectTimeout(int connectTimeout) {
        this.connectTimeout = connectTimeout;
    }

    public static int getRequestTime() {
        return requestTime;
    }
}
