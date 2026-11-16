package com.taptap.sdk.moment.legacy.utils;

import android.app.Activity;
import android.content.ContentValues;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.os.Environment;
import android.provider.MediaStore;
import com.taptap.sdk.kit.internal.utils.localize.TapLocalizeUtil;
import com.taptap.sdk.moment.R;
import com.taptap.sdk.moment.legacy.utils.permission.PermissionConfig;
import com.taptap.sdk.moment.legacy.utils.permission.RequestPermissionCallback;
import com.taptap.sdk.moment.legacy.utils.permission.TdsPermission;
import com.taptap.sdk.moment.legacy.widget.dialog.BottomSheet;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.List;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class LongClickHandler {
    private static final int SAVE_IMAGE = 1;
    private ClickEventLifecycleCallback mCallback;
    private JSONObject mData;

    /* loaded from: classes.dex */
    public interface ClickEventLifecycleCallback {
        void onFinally(boolean z);
    }

    private LongClickHandler(JSONObject jSONObject, ClickEventLifecycleCallback clickEventLifecycleCallback) {
        this.mData = jSONObject;
        this.mCallback = clickEventLifecycleCallback;
    }

    public static LongClickHandler newInstance(JSONObject jSONObject, ClickEventLifecycleCallback clickEventLifecycleCallback) {
        return new LongClickHandler(jSONObject, clickEventLifecycleCallback);
    }

    public void handler(Activity activity) {
        JSONObject jSONObject = this.mData;
        if (jSONObject != null && jSONObject.optInt("type") == 1) {
            saveImageToMedia(activity);
        }
    }

    public void saveImageToMedia(final Activity activity) {
        BottomSheet.newInstance(new BottomSheet.OnItemClickListener() { // from class: com.taptap.sdk.moment.legacy.utils.LongClickHandler.1
            @Override // com.taptap.sdk.moment.legacy.widget.dialog.BottomSheet.OnItemClickListener
            public void onClick(int i, String str) {
                if (i == 0) {
                    if (Build.VERSION.SDK_INT >= 29) {
                        LongClickHandler.this.notifyMediaRefresh(activity);
                    } else {
                        TdsPermission.with(activity).permission("android.permission.WRITE_EXTERNAL_STORAGE", "android.permission.READ_EXTERNAL_STORAGE").forwardSetting(new PermissionConfig(TapLocalizeUtil.getLocalizedString(R.string.moment_permission_intent_title), TapLocalizeUtil.getLocalizedString(R.string.moment_permission_intent_reason), TapLocalizeUtil.getLocalizedString(R.string.moment_permission_intent_confirm), TapLocalizeUtil.getLocalizedString(R.string.moment_permission_tip_title), TapLocalizeUtil.getLocalizedString(R.string.moment_permission_tip_reason), TapLocalizeUtil.getLocalizedString(R.string.moment_dialog_cancel), TapLocalizeUtil.getLocalizedString(R.string.moment_permission_tip_confirm))).request(new RequestPermissionCallback() { // from class: com.taptap.sdk.moment.legacy.utils.LongClickHandler.1.1
                            @Override // com.taptap.sdk.moment.legacy.utils.permission.RequestPermissionCallback
                            public void onResult(boolean z, List<String> list, List<String> list2) {
                                if (!z) {
                                    if (LongClickHandler.this.mCallback != null) {
                                        LongClickHandler.this.mCallback.onFinally(false);
                                        return;
                                    }
                                    return;
                                }
                                LongClickHandler.this.notifyMediaRefresh(activity);
                            }
                        });
                    }
                }
            }
        }, TapLocalizeUtil.getLocalizedString(R.string.moment_save_image)).show(activity.getFragmentManager(), BottomSheet.TAG);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyMediaRefresh(final Activity activity) {
        NetSaveImageHelper.download(activity, this.mData.optString("data"), new SaveImageCallback() { // from class: com.taptap.sdk.moment.legacy.utils.LongClickHandler.2
            @Override // com.taptap.sdk.moment.legacy.utils.SaveImageCallback
            public void callback(boolean z, File file) {
                int read;
                if (activity != null && z && file.exists()) {
                    ContentValues contentValues = new ContentValues();
                    if (Build.VERSION.SDK_INT >= 29) {
                        contentValues.put("relative_path", Environment.DIRECTORY_PICTURES);
                        Uri insert = activity.getContentResolver().insert(MediaStore.Images.Media.EXTERNAL_CONTENT_URI, contentValues);
                        if (insert == null) {
                            return;
                        }
                        try {
                            OutputStream openOutputStream = activity.getContentResolver().openOutputStream(insert);
                            FileInputStream fileInputStream = new FileInputStream(file);
                            byte[] bArr = new byte[1024];
                            do {
                                read = fileInputStream.read(bArr);
                                if (read != -1) {
                                    openOutputStream.write(bArr, 0, read);
                                    openOutputStream.flush();
                                }
                            } while (read != -1);
                            fileInputStream.close();
                            openOutputStream.close();
                        } catch (IOException e) {
                            e.printStackTrace();
                        }
                    } else {
                        contentValues.put("_data", file.getAbsolutePath());
                        if (Build.VERSION.SDK_INT >= 24) {
                            activity.sendBroadcast(new Intent("android.intent.action.MEDIA_SCANNER_SCAN_FILE", Uri.fromFile(file)));
                        } else {
                            activity.sendBroadcast(new Intent("com.android.camera.NEW_PICTURE", activity.getContentResolver().insert(MediaStore.Images.Media.EXTERNAL_CONTENT_URI, contentValues)));
                        }
                    }
                    if (LongClickHandler.this.mCallback != null) {
                        LongClickHandler.this.mCallback.onFinally(true);
                    }
                }
            }
        });
    }
}
