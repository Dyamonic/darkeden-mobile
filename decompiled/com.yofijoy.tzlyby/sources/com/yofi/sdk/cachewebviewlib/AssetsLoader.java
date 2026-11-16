package com.yofi.sdk.cachewebviewlib;

import android.content.Context;
import android.text.TextUtils;
import java.io.BufferedReader;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.concurrent.CopyOnWriteArraySet;

/* loaded from: classes2.dex */
class AssetsLoader {
    private static volatile AssetsLoader assetsLoader;
    private CopyOnWriteArraySet<String> mAssetResSet;
    private Context mContext;
    private String mDir = "";
    private boolean mCleared = false;
    private boolean mIsSuffixMod = false;
    private int iTag = 0;

    AssetsLoader() {
    }

    public static AssetsLoader getInstance() {
        if (assetsLoader == null) {
            synchronized (AssetsLoader.class) {
                if (assetsLoader == null) {
                    assetsLoader = new AssetsLoader();
                }
            }
        }
        return assetsLoader;
    }

    public AssetsLoader isAssetsSuffixMod(boolean suffixMod) {
        this.mIsSuffixMod = suffixMod;
        return this;
    }

    public AssetsLoader init(Context context) {
        this.mContext = context;
        this.mAssetResSet = new CopyOnWriteArraySet<>();
        this.mCleared = false;
        return this;
    }

    public String getUrlPath(String url) {
        try {
            String path = new URL(url).getPath();
            return (!path.startsWith("/") || path.length() == 1) ? path : path.substring(1);
        } catch (MalformedURLException e) {
            e.printStackTrace();
            return "";
        }
    }

    public InputStream getResByUrl(String url) {
        String urlPath = getUrlPath(url);
        if (TextUtils.isEmpty(urlPath)) {
            return null;
        }
        if (!this.mIsSuffixMod) {
            if (TextUtils.isEmpty(this.mDir)) {
                return getAssetFileStream(urlPath);
            }
            return getAssetFileStream(this.mDir + File.separator + urlPath);
        }
        CopyOnWriteArraySet<String> copyOnWriteArraySet = this.mAssetResSet;
        if (copyOnWriteArraySet != null) {
            Iterator<String> it = copyOnWriteArraySet.iterator();
            while (it.hasNext()) {
                String next = it.next();
                if (urlPath.endsWith(next)) {
                    if (TextUtils.isEmpty(this.mDir)) {
                        return getAssetFileStream(next);
                    }
                    return getAssetFileStream(this.mDir + File.separator + next);
                }
            }
        }
        return null;
    }

    public AssetsLoader setDir(final String dir) {
        this.mDir = dir;
        return this;
    }

    public AssetsLoader initData() {
        if (this.mIsSuffixMod && this.mAssetResSet.size() == 0) {
            new Thread(new Runnable() { // from class: com.yofi.sdk.cachewebviewlib.AssetsLoader.1
                @Override // java.lang.Runnable
                public void run() {
                    AssetsLoader assetsLoader2 = AssetsLoader.this;
                    assetsLoader2.initResourceNoneRecursion(assetsLoader2.mDir);
                }
            }).start();
        }
        return this;
    }

    public void clear() {
        this.mCleared = true;
        CopyOnWriteArraySet<String> copyOnWriteArraySet = this.mAssetResSet;
        if (copyOnWriteArraySet == null || copyOnWriteArraySet.size() <= 0) {
            return;
        }
        this.mAssetResSet.clear();
    }

    public String getFromAssets(String fileName) {
        try {
            InputStreamReader inputStreamReader = new InputStreamReader(this.mContext.getAssets().open(fileName), "ISO_8859_1");
            BufferedReader bufferedReader = new BufferedReader(inputStreamReader);
            StringBuilder sb = new StringBuilder();
            while (true) {
                String readLine = bufferedReader.readLine();
                if (readLine != null) {
                    sb.append(readLine);
                } else {
                    inputStreamReader.close();
                    bufferedReader.close();
                    return sb.toString();
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    private void addAssetsFile(String file) {
        int indexOf;
        String str = this.mDir + File.separator;
        if (!TextUtils.isEmpty(this.mDir) && (indexOf = file.indexOf(str)) >= 0) {
            file = file.substring(indexOf + str.length());
        }
        this.mAssetResSet.add(file);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public AssetsLoader initResourceNoneRecursion(String dir) {
        try {
            LinkedList linkedList = new LinkedList();
            for (String str : this.mContext.getAssets().list(dir)) {
                String str2 = dir + File.separator + str;
                if (this.mContext.getAssets().list(str2).length == 0) {
                    addAssetsFile(str2);
                } else {
                    linkedList.add(str2);
                }
            }
            while (!linkedList.isEmpty() && !this.mCleared) {
                String str3 = (String) linkedList.removeFirst();
                String[] list = this.mContext.getAssets().list(str3);
                if (list.length == 0) {
                    addAssetsFile(str3);
                } else {
                    for (String str4 : list) {
                        if (this.mContext.getAssets().list(str3 + File.separator + str4).length == 0) {
                            addAssetsFile(str3 + File.separator + str4);
                        } else {
                            linkedList.add(str3 + File.separator + str4);
                        }
                    }
                }
            }
        } catch (IOException unused) {
        }
        return this;
    }

    public InputStream getAssetFileStream(String path) {
        try {
            return this.mContext.getAssets().open(path);
        } catch (IOException unused) {
            return null;
        }
    }
}
