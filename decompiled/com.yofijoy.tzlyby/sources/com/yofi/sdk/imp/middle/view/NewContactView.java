package com.yofi.sdk.imp.middle.view;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.provider.ContactsContract;
import android.provider.MediaStore;
import android.util.Log;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.widget.Button;
import android.widget.EditText;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.juhe.juhesdk.middle.common.UrlHttpUtil;
import com.taptap.sdk.update.download.core.breakpoint.BreakpointSQLiteKey;
import com.yofi.sdk.activity.VerticalContainerActivity;
import com.yofi.sdk.imp.middle.YoFiSdkImp;
import com.yofi.sdk.imp.middle.common.Constants;
import com.yofi.sdk.imp.middle.common.WebAPI;
import com.yofi.sdk.imp.middle.data.Message;
import com.yofi.sdk.imp.middle.dialog.LoadingDialog;
import com.yofi.sdk.interfaces.IContainerView;
import com.yofi.sdk.notchlib.utils.ScreenUtil;
import com.yofi.sdk.utils.CommonUtils;
import com.yofi.sdk.utils.ToastUtils;
import com.yofi.sdk.web.WebAPICallback;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* loaded from: classes2.dex */
public class NewContactView implements IContainerView {
    private static final int HEIGHT = 272;
    public static final int RESULT_CLOSE = 100;
    private static final int WIDTH = 430;
    private Activity containerActivity;
    private EditText editContent;
    private EditText editMail;
    private EditText editName;
    private String roleId;
    private String roleName;
    private String serverId;
    private int problemType = 1;
    private Map<Integer, Uri> uriMap = new HashMap();
    private Map<Integer, Button> buttonMap = new HashMap();
    private Map<Integer, Button> removeButtonMap = new HashMap();
    private Set<String> pathSet = new HashSet();
    private List<Message> msgList = new ArrayList();

    @Override // com.yofi.sdk.interfaces.IContainerView
    public boolean onBackPressed() {
        return false;
    }

    @Override // com.yofi.sdk.interfaces.IContainerView
    public void onDestory() {
    }

    @Override // com.yofi.sdk.interfaces.IContainerView
    public boolean onKeyDown(int keyCode, KeyEvent event) {
        return false;
    }

    @Override // com.yofi.sdk.interfaces.IContainerView
    public void onPermissionsGranted(int requestCode, List<String> perms) {
    }

    @Override // com.yofi.sdk.interfaces.IContainerView
    public void onResume() {
    }

    @Override // com.yofi.sdk.interfaces.IContainerView
    public boolean onTouchEvent(MotionEvent event) {
        return false;
    }

    public NewContactView(final VerticalContainerActivity activity, final Bundle bundle) {
        this.containerActivity = activity;
        this.roleName = bundle.getString("roleName");
        this.serverId = bundle.getString("serverId");
        this.roleId = bundle.getString("roleId");
        activity.setContentView(activity.getResources().getIdentifier("yofi_new_contact", "layout", activity.getPackageName()));
        ((TextView) activity.findViewById(activity.getResources().getIdentifier("tv_title", BreakpointSQLiteKey.ID, activity.getPackageName()))).setText(activity.getResources().getString(activity.getResources().getIdentifier("title_contact", "string", activity.getPackageName())));
        ((Button) activity.findViewById(activity.getResources().getIdentifier("btn_back", BreakpointSQLiteKey.ID, activity.getPackageName()))).setOnClickListener(new View.OnClickListener() { // from class: com.yofi.sdk.imp.middle.view.NewContactView.1
            @Override // android.view.View.OnClickListener
            public void onClick(View arg0) {
                activity.finish();
            }
        });
        this.editContent = (EditText) activity.findViewById(activity.getResources().getIdentifier("edit_content", BreakpointSQLiteKey.ID, activity.getPackageName()));
        this.editName = (EditText) activity.findViewById(activity.getResources().getIdentifier("edit_name", BreakpointSQLiteKey.ID, activity.getPackageName()));
        this.editMail = (EditText) activity.findViewById(activity.getResources().getIdentifier("edit_mail", BreakpointSQLiteKey.ID, activity.getPackageName()));
        this.editContent.setHint(activity.getResources().getString(activity.getResources().getIdentifier("send_content", "string", activity.getPackageName())));
        this.editName.setHint(activity.getResources().getString(activity.getResources().getIdentifier("name", "string", activity.getPackageName())));
        this.editMail.setHint(activity.getResources().getString(activity.getResources().getIdentifier("mail", "string", activity.getPackageName())));
        final Button button = (Button) activity.findViewById(activity.getResources().getIdentifier("typeButton", BreakpointSQLiteKey.ID, activity.getPackageName()));
        final String format = String.format(activity.getResources().getString(activity.getResources().getIdentifier("messageType", "string", activity.getPackageName())), new Object[0]);
        button.setText(format + String.format(activity.getResources().getString(activity.getResources().getIdentifier("game", "string", activity.getPackageName())), new Object[0]));
        button.setOnClickListener(new View.OnClickListener() { // from class: com.yofi.sdk.imp.middle.view.NewContactView.2
            @Override // android.view.View.OnClickListener
            public void onClick(View arg0) {
                final String[] strArr = {String.format(activity.getResources().getString(activity.getResources().getIdentifier("game", "string", activity.getPackageName())), new Object[0]), String.format(activity.getResources().getString(activity.getResources().getIdentifier("proposal", "string", activity.getPackageName())), new Object[0]), String.format(activity.getResources().getString(activity.getResources().getIdentifier("account_number", "string", activity.getPackageName())), new Object[0]), String.format(activity.getResources().getString(activity.getResources().getIdentifier("payment", "string", activity.getPackageName())), new Object[0])};
                new AlertDialog.Builder(activity).setTitle(String.format(activity.getResources().getString(activity.getResources().getIdentifier("please_select_question_type", "string", activity.getPackageName())), new Object[0])).setItems(strArr, new DialogInterface.OnClickListener() { // from class: com.yofi.sdk.imp.middle.view.NewContactView.2.2
                    @Override // android.content.DialogInterface.OnClickListener
                    public void onClick(DialogInterface dialog, int which) {
                        NewContactView.this.problemType = which + 1;
                        button.setText(format + strArr[which]);
                    }
                }).setNegativeButton(String.format(activity.getResources().getString(activity.getResources().getIdentifier("cancel", "string", activity.getPackageName())), new Object[0]), new DialogInterface.OnClickListener() { // from class: com.yofi.sdk.imp.middle.view.NewContactView.2.1
                    @Override // android.content.DialogInterface.OnClickListener
                    public void onClick(DialogInterface dialog, int which) {
                    }
                }).create().show();
            }
        });
        ((TextView) activity.findViewById(activity.getResources().getIdentifier("edit_image", BreakpointSQLiteKey.ID, activity.getPackageName()))).setText(activity.getResources().getString(activity.getResources().getIdentifier("add_pic", "string", activity.getPackageName())));
        int i = ScreenUtil.getScreenSize(activity)[0];
        for (final int i2 = 1; i2 <= 3; i2++) {
            Button button2 = (Button) activity.findViewById(activity.getResources().getIdentifier("btn_add_" + i2, BreakpointSQLiteKey.ID, activity.getPackageName()));
            this.buttonMap.put(Integer.valueOf(i2), button2);
            button2.setOnClickListener(new View.OnClickListener() { // from class: com.yofi.sdk.imp.middle.view.NewContactView.3
                @Override // android.view.View.OnClickListener
                public void onClick(View arg0) {
                    Log.d("Panda", "=============new Intent(Intent.ACTION_PICK");
                    Intent intent = new Intent("android.intent.action.PICK", ContactsContract.Contacts.CONTENT_URI);
                    intent.setDataAndType(MediaStore.Images.Media.INTERNAL_CONTENT_URI, UrlHttpUtil.FILE_TYPE_IMAGE);
                    activity.startActivityForResult(intent, i2);
                }
            });
            Button button3 = (Button) activity.findViewById(activity.getResources().getIdentifier("btn_remove_" + i2, BreakpointSQLiteKey.ID, activity.getPackageName()));
            this.removeButtonMap.put(Integer.valueOf(i2), button3);
            button3.setOnClickListener(new View.OnClickListener() { // from class: com.yofi.sdk.imp.middle.view.NewContactView.4
                @Override // android.view.View.OnClickListener
                public void onClick(View arg0) {
                    NewContactView.this.removePic(i2);
                }
            });
        }
        ((Button) activity.findViewById(activity.getResources().getIdentifier("btn_send", BreakpointSQLiteKey.ID, activity.getPackageName()))).setOnClickListener(new View.OnClickListener() { // from class: com.yofi.sdk.imp.middle.view.NewContactView.5
            @Override // android.view.View.OnClickListener
            public void onClick(View arg0) {
                final String trim = NewContactView.this.editContent.getText().toString().trim();
                String trim2 = NewContactView.this.editName.getText().toString().trim();
                String trim3 = NewContactView.this.editMail.getText().toString().trim();
                if (trim.length() == 0) {
                    VerticalContainerActivity verticalContainerActivity = activity;
                    ToastUtils.show(verticalContainerActivity, verticalContainerActivity.getResources().getString(activity.getResources().getIdentifier("content_empty", "string", activity.getPackageName())));
                    return;
                }
                if (trim2.length() > 200) {
                    VerticalContainerActivity verticalContainerActivity2 = activity;
                    ToastUtils.show(verticalContainerActivity2, verticalContainerActivity2.getResources().getString(activity.getResources().getIdentifier("content_length_error", "string", activity.getPackageName())));
                    return;
                }
                if (trim2.length() == 0) {
                    VerticalContainerActivity verticalContainerActivity3 = activity;
                    ToastUtils.show(verticalContainerActivity3, verticalContainerActivity3.getResources().getString(activity.getResources().getIdentifier("name_empty", "string", activity.getPackageName())));
                    return;
                }
                if (trim2.length() > 20) {
                    VerticalContainerActivity verticalContainerActivity4 = activity;
                    ToastUtils.show(verticalContainerActivity4, verticalContainerActivity4.getResources().getString(activity.getResources().getIdentifier("name_length_error", "string", activity.getPackageName())));
                } else {
                    if (trim3.length() > 0 && !CommonUtils.instance().isEmailValid(trim3)) {
                        VerticalContainerActivity verticalContainerActivity5 = activity;
                        ToastUtils.show(verticalContainerActivity5, verticalContainerActivity5.getResources().getString(activity.getResources().getIdentifier("mail_error", "string", activity.getPackageName())));
                        return;
                    }
                    ((InputMethodManager) activity.getSystemService("input_method")).hideSoftInputFromWindow(activity.getWindow().getDecorView().getWindowToken(), 0);
                    VerticalContainerActivity verticalContainerActivity6 = activity;
                    final LoadingDialog loadingDialog = new LoadingDialog(verticalContainerActivity6, verticalContainerActivity6.getResources().getString(activity.getResources().getIdentifier("sending", "string", NewContactView.this.containerActivity.getPackageName())));
                    loadingDialog.show();
                    WebAPI.createMessage(YoFiSdkImp.instance().getAccessToken(), trim, trim2, trim3, NewContactView.this.problemType, NewContactView.this.roleId, NewContactView.this.roleName, NewContactView.this.serverId, new WebAPICallback() { // from class: com.yofi.sdk.imp.middle.view.NewContactView.5.1
                        /* JADX WARN: Removed duplicated region for block: B:15:0x0047  */
                        /* JADX WARN: Removed duplicated region for block: B:32:0x0261  */
                        @Override // com.yofi.sdk.web.WebAPICallback
                        /*
                            Code decompiled incorrectly, please refer to instructions dump.
                            To view partially-correct add '--show-bad-code' argument
                        */
                        public void onSuccess(org.json.JSONObject r35) {
                            /*
                                Method dump skipped, instructions count: 674
                                To view this dump add '--comments-level debug' option
                            */
                            throw new UnsupportedOperationException("Method not decompiled: com.yofi.sdk.imp.middle.view.NewContactView.AnonymousClass5.AnonymousClass1.onSuccess(org.json.JSONObject):void");
                        }

                        @Override // com.yofi.sdk.web.WebAPICallback
                        public void onFailure(int code, String msg) {
                            loadingDialog.dismiss();
                            ToastUtils.show(activity, String.format(activity.getResources().getString(activity.getResources().getIdentifier("error_code_" + code, "string", activity.getPackageName())), new Object[0]));
                        }
                    });
                }
            }
        });
    }

    @Override // com.yofi.sdk.interfaces.IContainerView
    public void onResult(int requestCode, int resultCode, Intent data) {
        if (resultCode == -1) {
            try {
                Uri data2 = data.getData();
                if (this.pathSet.contains(data2.getPath())) {
                    return;
                }
                this.msgList.add(createMessage(data2));
                Button button = this.buttonMap.get(Integer.valueOf(requestCode));
                Button button2 = this.removeButtonMap.get(Integer.valueOf(requestCode));
                button.setBackground(Drawable.createFromStream(this.containerActivity.getContentResolver().openInputStream(data2), "src"));
                RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) button.getLayoutParams();
                layoutParams.width = WIDTH;
                layoutParams.height = -1;
                button.setLayoutParams(layoutParams);
                button.setEnabled(false);
                button2.setVisibility(0);
                this.uriMap.put(Integer.valueOf(requestCode), data2);
                int i = requestCode + 1;
                if (this.buttonMap.containsKey(Integer.valueOf(i))) {
                    Button button3 = this.buttonMap.get(Integer.valueOf(i));
                    button3.setVisibility(0);
                    button3.setEnabled(true);
                }
                this.pathSet.add(data2.getPath());
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void removePic(int index) {
        for (int i = 1; i <= 3; i++) {
            Button button = this.buttonMap.get(Integer.valueOf(i));
            Button button2 = this.removeButtonMap.get(Integer.valueOf(i));
            button.setBackgroundResource(this.containerActivity.getResources().getIdentifier("btn_add", "drawable", this.containerActivity.getPackageName()));
            button.setEnabled(true);
            button.setVisibility(8);
            button2.setVisibility(8);
        }
        this.uriMap.remove(Integer.valueOf(index));
        ArrayList<Uri> arrayList = new ArrayList();
        Iterator<Uri> it = this.uriMap.values().iterator();
        while (it.hasNext()) {
            arrayList.add(it.next());
        }
        this.uriMap.clear();
        this.pathSet.clear();
        this.msgList.clear();
        int i2 = 0;
        for (Uri uri : arrayList) {
            i2++;
            this.uriMap.put(Integer.valueOf(i2), uri);
            this.pathSet.add(uri.getPath());
            Button button3 = this.buttonMap.get(Integer.valueOf(i2));
            Button button4 = this.removeButtonMap.get(Integer.valueOf(i2));
            button3.setVisibility(0);
            try {
                button3.setBackground(Drawable.createFromStream(this.containerActivity.getContentResolver().openInputStream(uri), "src"));
            } catch (Exception e) {
                e.printStackTrace();
            }
            button3.setEnabled(false);
            button4.setVisibility(0);
            this.msgList.add(createMessage(uri));
        }
        int i3 = i2 + 1;
        if (this.buttonMap.containsKey(Integer.valueOf(i3))) {
            this.buttonMap.get(Integer.valueOf(i3)).setVisibility(0);
        }
    }

    private Message createMessage(Uri uri) {
        String[] strArr = {"_data"};
        Cursor query = this.containerActivity.getContentResolver().query(uri, strArr, null, null, null);
        query.moveToFirst();
        String string = query.getString(query.getColumnIndex(strArr[0]));
        query.close();
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeFile(string, options);
        int min = Math.min(options.outHeight, options.outWidth);
        int i = min > 100 ? (int) (min / 100.0f) : 2;
        options.inJustDecodeBounds = false;
        options.inSampleSize = i;
        Bitmap decodeFile = BitmapFactory.decodeFile(string, options);
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        decodeFile.compress(Bitmap.CompressFormat.PNG, 100, byteArrayOutputStream);
        byte[] byteArray = byteArrayOutputStream.toByteArray();
        Message message = new Message("", Constants.MESSAGE_TYPE.SEND.getValue(), Constants.MESSAGE_CONTENT_TYPE.PIC.getValue(), 0L, 0L, System.currentTimeMillis() / 1000);
        message.setData(byteArray);
        message.setPath(string);
        return message;
    }

    private Bitmap getBitmap(Context context, int vectorDrawableId) {
        if (Build.VERSION.SDK_INT > 21) {
            Drawable drawable = context.getDrawable(vectorDrawableId);
            Bitmap createBitmap = Bitmap.createBitmap(drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight(), Bitmap.Config.ARGB_8888);
            Canvas canvas = new Canvas(createBitmap);
            drawable.setBounds(0, 0, canvas.getWidth(), canvas.getHeight());
            drawable.draw(canvas);
            return createBitmap;
        }
        return BitmapFactory.decodeResource(context.getResources(), vectorDrawableId);
    }

    /* JADX WARN: Removed duplicated region for block: B:8:0x0033  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.graphics.Bitmap getimage(java.lang.String r6) {
        /*
            android.graphics.BitmapFactory$Options r0 = new android.graphics.BitmapFactory$Options
            r0.<init>()
            r1 = 1
            r0.inJustDecodeBounds = r1
            android.graphics.BitmapFactory.decodeFile(r6, r0)
            r2 = 0
            r0.inJustDecodeBounds = r2
            int r2 = r0.outWidth
            int r3 = r0.outHeight
            if (r2 <= r3) goto L21
            float r4 = (float) r2
            r5 = 1139802112(0x43f00000, float:480.0)
            int r4 = (r4 > r5 ? 1 : (r4 == r5 ? 0 : -1))
            if (r4 <= 0) goto L21
            int r2 = r0.outWidth
            float r2 = (float) r2
            float r2 = r2 / r5
        L1f:
            int r2 = (int) r2
            goto L30
        L21:
            if (r2 >= r3) goto L2f
            float r2 = (float) r3
            r3 = 1145569280(0x44480000, float:800.0)
            int r2 = (r2 > r3 ? 1 : (r2 == r3 ? 0 : -1))
            if (r2 <= 0) goto L2f
            int r2 = r0.outHeight
            float r2 = (float) r2
            float r2 = r2 / r3
            goto L1f
        L2f:
            r2 = r1
        L30:
            if (r2 > 0) goto L33
            goto L34
        L33:
            r1 = r2
        L34:
            r0.inSampleSize = r1
            android.graphics.Bitmap r6 = android.graphics.BitmapFactory.decodeFile(r6, r0)
            android.graphics.Bitmap r6 = compressImage(r6)
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.yofi.sdk.imp.middle.view.NewContactView.getimage(java.lang.String):android.graphics.Bitmap");
    }

    public static Bitmap compressImage(Bitmap image) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        image.compress(Bitmap.CompressFormat.JPEG, 100, byteArrayOutputStream);
        int i = 100;
        while (byteArrayOutputStream.toByteArray().length / 1024 > 100) {
            byteArrayOutputStream.reset();
            image.compress(Bitmap.CompressFormat.JPEG, i, byteArrayOutputStream);
            i -= 10;
        }
        Bitmap decodeStream = BitmapFactory.decodeStream(new ByteArrayInputStream(byteArrayOutputStream.toByteArray()), null, null);
        if (!image.isRecycled()) {
            image.recycle();
        }
        return decodeStream;
    }
}
