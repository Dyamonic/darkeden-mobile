package com.yofi.sdk;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.res.AssetManager;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
import android.view.Window;
import android.view.WindowManager;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.yofi.sdk.imp.middle.YoFiSdkImp;
import com.yofi.sdk.imp.middle.YoFiViewBuilder;
import com.yofi.sdk.interfaces.ISDKApi;
import com.yofi.sdk.interfaces.IViewBuilder;
import dalvik.system.DexClassLoader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.math.BigInteger;
import java.net.URL;
import java.net.URLConnection;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.List;

/* loaded from: classes2.dex */
public class SDKLoader {
    private static SDKLoader imp = null;
    private static final String updateUrl = "http://sdk.sp.cc/";
    private ISDKApi sdk = null;
    private IViewBuilder builder = null;

    /* loaded from: classes2.dex */
    public interface Callback {
        void onFailed(int paramInt);

        void onSuccess();
    }

    public void destory() {
    }

    public ISDKApi getSDK() {
        if (this.sdk == null) {
            this.sdk = new YoFiSdkImp();
        }
        return this.sdk;
    }

    public IViewBuilder getViewBuilder() {
        if (this.builder == null) {
            this.builder = new YoFiViewBuilder();
        }
        return this.builder;
    }

    public static SDKLoader instance() {
        if (imp == null) {
            imp = new SDKLoader();
        }
        return imp;
    }

    public boolean prepare(Activity activity) {
        return copyJar(activity);
    }

    private boolean copyJar(Activity activity) {
        AssetManager assets = activity.getAssets();
        try {
            File file = new File(activity.getDir("libs", 0), "pro.jar");
            if (file.exists()) {
                return true;
            }
            FileOutputStream fileOutputStream = new FileOutputStream(file);
            InputStream open = assets.open("pro.jar");
            int available = open.available();
            if (available > 0) {
                byte[] bArr = new byte[available];
                open.read(bArr);
                fileOutputStream.write(bArr);
                open.close();
            }
            fileOutputStream.close();
            Log.i("sdk loader", "copy pro.jar");
            return true;
        } catch (IOException e) {
            e.printStackTrace();
            return false;
        }
    }

    private boolean loadJar(Activity activity) {
        File dir = activity.getDir("libs", 0);
        File file = new File(dir, "pro.jar");
        if (!file.exists()) {
            return false;
        }
        DexClassLoader dexClassLoader = new DexClassLoader(file.getAbsolutePath(), dir.getAbsolutePath(), null, activity.getClassLoader());
        try {
            if (this.sdk == null) {
                this.sdk = (ISDKApi) dexClassLoader.loadClass("com.yofi.sdk.imp.middle.YoFiSdkImp").newInstance();
            }
            if (this.builder != null) {
                return true;
            }
            this.builder = (IViewBuilder) dexClassLoader.loadClass("com.yofi.sdk.imp.middle.YoFiViewBuilder").newInstance();
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    public boolean initLoad(Activity activity) {
        return loadJar(activity);
    }

    private String calMd5(Activity activity, String file) {
        File file2 = new File(activity.getDir("libs", 0), file);
        if (!file2.exists()) {
            return "0";
        }
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            FileInputStream fileInputStream = new FileInputStream(file2);
            byte[] bArr = new byte[1024];
            while (true) {
                int read = fileInputStream.read(bArr, 0, 1024);
                if (read != -1) {
                    messageDigest.update(bArr, 0, read);
                } else {
                    fileInputStream.close();
                    return new BigInteger(1, messageDigest.digest()).toString(16);
                }
            }
        } catch (FileNotFoundException e) {
            e.printStackTrace();
            return "0";
        } catch (IOException e2) {
            e2.printStackTrace();
            return "0";
        } catch (NoSuchAlgorithmException e3) {
            e3.printStackTrace();
            return "0";
        }
    }

    /* loaded from: classes2.dex */
    public static class DownloadDialog extends Dialog {
        private static final int default_height = 120;
        private static final int default_width = 280;
        private Callback cb;
        private int downloadFileCount;
        private int downloadFileSize;
        private int fileCount;
        private int fileSize;
        private Handler handler;
        private ProgressBar pb;
        private TextView tv;

        /* JADX WARN: Type inference failed for: r2v4, types: [com.yofi.sdk.SDKLoader$DownloadDialog$2] */
        public DownloadDialog(Context context, final List<String> urls, final List<String> paths, Callback cb) {
            super(context);
            this.pb = null;
            this.tv = null;
            this.fileSize = 0;
            this.downloadFileSize = 0;
            this.fileCount = 0;
            this.downloadFileCount = 0;
            this.cb = null;
            this.handler = new Handler() { // from class: com.yofi.sdk.SDKLoader.DownloadDialog.1
                @Override // android.os.Handler
                public void handleMessage(Message msg) {
                    if (!Thread.currentThread().isInterrupted()) {
                        int i = msg.what;
                        if (i != -1) {
                            if (i == 0) {
                                DownloadDialog.this.pb.setMax(DownloadDialog.this.fileSize);
                            } else if (i != 1) {
                                if (i == 2) {
                                    DownloadDialog.this.downloadFileCount++;
                                    DownloadDialog.this.downloadFileSize = 0;
                                    DownloadDialog.this.pb.setProgress(DownloadDialog.this.downloadFileSize);
                                    DownloadDialog.this.tv.setText("正在更新SDK 0% " + DownloadDialog.this.downloadFileCount + "/" + DownloadDialog.this.fileCount);
                                } else if (i == 3) {
                                    DownloadDialog.this.dismiss();
                                    DownloadDialog.this.cb.onSuccess();
                                }
                            }
                            DownloadDialog.this.pb.setProgress(DownloadDialog.this.downloadFileSize);
                            int i2 = DownloadDialog.this.fileSize > 0 ? (DownloadDialog.this.downloadFileSize * 100) / DownloadDialog.this.fileSize : 0;
                            DownloadDialog.this.tv.setText("正在更新SDK " + i2 + "% " + DownloadDialog.this.downloadFileCount + "/" + DownloadDialog.this.fileCount);
                        } else {
                            DownloadDialog.this.cb.onFailed(64526);
                        }
                    }
                    super.handleMessage(msg);
                }
            };
            this.fileCount = urls.size();
            this.cb = cb;
            createDialog();
            new Thread() { // from class: com.yofi.sdk.SDKLoader.DownloadDialog.2
                @Override // java.lang.Thread, java.lang.Runnable
                public void run() {
                    for (int i = 0; i < urls.size(); i++) {
                        DownloadDialog.this.down_file((String) urls.get(i), (String) paths.get(i));
                    }
                    DownloadDialog.this.sendMsg(3);
                }
            }.start();
        }

        private void createDialog() {
            createView();
            Window window = getWindow();
            window.setFlags(4, 4);
            WindowManager.LayoutParams attributes = window.getAttributes();
            float density = getDensity(getContext());
            attributes.y = (int) (10.0f * density);
            attributes.width = (int) (280.0f * density);
            attributes.height = (int) (density * 120.0f);
            attributes.gravity = 17;
            window.setAttributes(attributes);
            window.clearFlags(2);
            setCancelable(false);
        }

        private float getDensity(Context context) {
            return context.getResources().getDisplayMetrics().density;
        }

        private void createView() {
            LinearLayout linearLayout = new LinearLayout(getContext());
            linearLayout.setLayoutParams(new LinearLayout.LayoutParams(-1, -1));
            linearLayout.setOrientation(1);
            linearLayout.setGravity(17);
            this.tv = new TextView(getContext());
            this.tv.setLayoutParams(new LinearLayout.LayoutParams(-2, -2));
            this.tv.setGravity(17);
            this.tv.setText("正在更新SDK 0% " + this.downloadFileCount + "/" + this.fileCount);
            this.tv.setTextSize(20.0f);
            linearLayout.addView(this.tv);
            this.pb = new ProgressBar(getContext(), null, android.R.attr.progressBarStyleHorizontal);
            this.pb.setLayoutParams(new LinearLayout.LayoutParams(-1, -2));
            linearLayout.addView(this.pb);
            setContentView(linearLayout);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void down_file(String url, String path) {
            FileOutputStream fileOutputStream = null;
            try {
                try {
                    URLConnection openConnection = new URL(url).openConnection();
                    openConnection.connect();
                    InputStream inputStream = openConnection.getInputStream();
                    int contentLength = openConnection.getContentLength();
                    this.fileSize = contentLength;
                    if (contentLength <= 0) {
                        throw new RuntimeException("错误的文件长度");
                    }
                    if (inputStream == null) {
                        throw new RuntimeException("stream is null");
                    }
                    FileOutputStream fileOutputStream2 = new FileOutputStream(new File(getContext().getDir("libs", 0), path));
                    try {
                        byte[] bArr = new byte[1024];
                        this.downloadFileSize = 0;
                        sendMsg(0);
                        while (true) {
                            int read = inputStream.read(bArr);
                            if (read == -1) {
                                break;
                            }
                            fileOutputStream2.write(bArr, 0, read);
                            this.downloadFileSize += read;
                            sendMsg(1);
                        }
                        sendMsg(2);
                        try {
                            inputStream.close();
                        } catch (Exception e) {
                            e.printStackTrace();
                            sendMsg(-1);
                        }
                        try {
                            fileOutputStream2.close();
                        } catch (IOException e2) {
                            e2.printStackTrace();
                        }
                    } catch (IOException e3) {
                        e = e3;
                        fileOutputStream = fileOutputStream2;
                        e.printStackTrace();
                        sendMsg(-1);
                        if (fileOutputStream != null) {
                            try {
                                fileOutputStream.close();
                            } catch (IOException e4) {
                                e4.printStackTrace();
                            }
                        }
                    } catch (Throwable th) {
                        th = th;
                        fileOutputStream = fileOutputStream2;
                        if (fileOutputStream != null) {
                            try {
                                fileOutputStream.close();
                            } catch (IOException e5) {
                                e5.printStackTrace();
                            }
                        }
                        throw th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                }
            } catch (IOException e6) {
                e = e6;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void sendMsg(int flag) {
            Message message = new Message();
            message.what = flag;
            this.handler.sendMessage(message);
        }
    }
}
