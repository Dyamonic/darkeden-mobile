package com.yofi.sdk.imp.middle.view;

import android.R;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Color;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.provider.MediaStore;
import android.text.Html;
import android.text.SpannableStringBuilder;
import android.text.Spanned;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.method.LinkMovementMethod;
import android.text.style.ClickableSpan;
import android.text.style.URLSpan;
import android.util.Log;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.recyclerview.widget.ItemTouchHelper;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import com.bumptech.glide.Glide;
import com.google.protobuf.ByteString;
import com.juhe.juhesdk.middle.common.UrlHttpUtil;
import com.taptap.sdk.core.internal.event.constants.TapEventParamConstants;
import com.taptap.sdk.update.download.core.breakpoint.BreakpointSQLiteKey;
import com.tbruyelle.rxpermissions3.RxPermissions;
import com.yofi.sdk.activity.VerticalContainerActivity;
import com.yofi.sdk.imp.middle.YoFiSdkImp;
import com.yofi.sdk.imp.middle.common.Constants;
import com.yofi.sdk.imp.middle.common.SQLFunction;
import com.yofi.sdk.imp.middle.data.Chat;
import com.yofi.sdk.imp.middle.data.Message;
import com.yofi.sdk.imp.middle.data.User;
import com.yofi.sdk.imp.middle.view.ChatView;
import com.yofi.sdk.interfaces.IContainerView;
import com.yofi.sdk.socket.SocketManager;
import com.yofi.sdk.utils.CommonUtils;
import com.yofi.sdk.utils.ToastUtils;
import com.yofi.sdk.utils.UploadUtil;
import cz.msebera.android.httpclient.HttpStatus;
import cz.msebera.android.httpclient.cookie.ClientCookie;
import io.reactivex.rxjava3.functions.Consumer;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Queue;
import java.util.Timer;
import java.util.TimerTask;
import java.util.concurrent.LinkedBlockingDeque;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class ChatView implements IContainerView, UploadUtil.OnUploadProcessListener {
    private static final String TAG = "YofiChatview";
    private Button btnSelect;
    private Button btnSend;
    private Handler chatHandler;
    private Activity containerActivity;
    private ArrayList<Message> dataList;
    private EditText editContent;
    private int gameId;
    private ProgressBar loading;
    private ListView lvChat;
    private int mListViewHeight;
    private Timer mTimer;
    private TimerTask mTimerTask;
    private Message message;
    private List<Message> msgList;
    private Queue<Message> msgQueue;
    private MyAdapter myAdapter;
    private long receiveId;
    private String roleId;
    private String roleName;
    private String senderName;
    private String serverId;
    private String serverName;
    private long serverTime;
    private int start;
    private SwipeRefreshLayout swipeRefreshLayout;
    private String url;
    private List<Chat> unReadMsgList = new ArrayList();
    private final int REFRESH_NUM = 10;
    private String jgKey = "";

    @Override // com.yofi.sdk.utils.UploadUtil.OnUploadProcessListener
    public void initUpload(int fileSize) {
    }

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

    @Override // com.yofi.sdk.utils.UploadUtil.OnUploadProcessListener
    public void onUploadProcess(int uploadSize) {
    }

    public ChatView(final VerticalContainerActivity activity, final Bundle bundle) {
        this.containerActivity = activity;
        this.chatHandler = new Handler() { // from class: com.yofi.sdk.imp.middle.view.ChatView.1
            @Override // android.os.Handler
            public void handleMessage(android.os.Message msg) {
                Message message;
                int i = msg.what;
                long j = 1000;
                if (i == 2) {
                    Chat chat = (Chat) msg.obj;
                    long currentTimeMillis = System.currentTimeMillis() / 1000;
                    ChatView.this.receiveId = chat.getSenderId().longValue();
                    if (chat.getMsgType() == 1) {
                        Message message2 = new Message(chat.getContent(), Constants.MESSAGE_TYPE.RECEIVE.getValue(), Constants.MESSAGE_CONTENT_TYPE.TEXT.getValue(), 0L, ChatView.this.receiveId, currentTimeMillis);
                        message2.setContentId(SQLFunction.content.getId());
                        ChatView.this.msgList.add(message2);
                        SQLFunction.insertChat(activity, new Object[]{Long.valueOf(message2.getId()), YoFiSdkImp.instance().getUuid(), Long.valueOf(message2.getContentId()), message2.getContent(), message2.getData(), message2.getPath(), Integer.valueOf(message2.getType()), Integer.valueOf(message2.getMsgType()), Long.valueOf(message2.getSenderId()), Long.valueOf(message2.getReceiverId()), Long.valueOf(message2.getCreateTime()), Integer.valueOf(message2.getFlag()), Long.valueOf(message2.getMsgId()), Integer.valueOf(message2.getUploaded())});
                        ChatView.this.adujstListView();
                        ChatView.this.myAdapter.notifyDataSetChanged();
                    } else if (chat.getMsgType() == 2) {
                        Message message3 = new Message("", Constants.MESSAGE_TYPE.RECEIVE.getValue(), Constants.MESSAGE_CONTENT_TYPE.PIC.getValue(), 0L, ChatView.this.receiveId, currentTimeMillis, "", chat.getImgUrl());
                        message3.setContentId(SQLFunction.content.getId());
                        message3.setData(chat.getPic().toByteArray());
                        message3.setFlag(1);
                        ChatView.this.msgList.add(message3);
                        ChatView.this.adujstListView();
                        ChatView.this.myAdapter.notifyDataSetChanged();
                        SQLFunction.insertChat(ChatView.this.containerActivity, new Object[]{Long.valueOf(message3.getId()), YoFiSdkImp.instance().getUuid(), Long.valueOf(message3.getContentId()), message3.getContent(), message3.getData(), message3.getPath(), Integer.valueOf(message3.getType()), Integer.valueOf(message3.getMsgType()), Long.valueOf(message3.getSenderId()), Long.valueOf(message3.getReceiverId()), Long.valueOf(message3.getCreateTime()), Integer.valueOf(message3.getFlag()), Long.valueOf(message3.getMsgId()), Integer.valueOf(message3.getUploaded()), message3.getImgUrl()});
                    } else {
                        Message message4 = new Message(activity.getResources().getString(activity.getResources().getIdentifier("service_btn", "string", activity.getPackageName())), Constants.MESSAGE_TYPE.END.getValue(), Constants.MESSAGE_CONTENT_TYPE.END.getValue(), 0L, ChatView.this.receiveId, chat.getCreateTime().longValue());
                        message4.setContentId(SQLFunction.content.getId());
                        message4.setFlag(1);
                        SQLFunction.insertChat(ChatView.this.containerActivity, new Object[]{Long.valueOf(message4.getId()), YoFiSdkImp.instance().getUuid(), Long.valueOf(message4.getContentId()), message4.getContent(), message4.getData(), message4.getPath(), Integer.valueOf(message4.getType()), Integer.valueOf(message4.getMsgType()), Long.valueOf(message4.getSenderId()), Long.valueOf(message4.getReceiverId()), Long.valueOf(message4.getCreateTime()), Integer.valueOf(message4.getFlag()), Long.valueOf(message4.getMsgId()), Integer.valueOf(message4.getUploaded())});
                        ChatView.this.msgList.add(message4);
                        ChatView.this.adujstListView();
                        ChatView.this.myAdapter.notifyDataSetChanged();
                    }
                    ChatView.this.loading.setVisibility(8);
                    return;
                }
                if (i != 3) {
                    if (i == 4) {
                        ChatView.this.serverTime = ((Long) msg.obj).longValue();
                        return;
                    }
                    if (i == 5) {
                        ((Integer) msg.obj).intValue();
                        ChatView.this.loading.setVisibility(0);
                        return;
                    } else {
                        if (i != 6) {
                            return;
                        }
                        ChatView.this.keepAlive();
                        return;
                    }
                }
                ChatView.this.unReadMsgList = (List) msg.obj;
                int i2 = 0;
                while (i2 < ChatView.this.unReadMsgList.size()) {
                    if (((Chat) ChatView.this.unReadMsgList.get(i2)).getMsgType() != 1) {
                        if (((Chat) ChatView.this.unReadMsgList.get(i2)).getMsgType() == 2) {
                            message = new Message(((Chat) ChatView.this.unReadMsgList.get(i2)).getContent(), Constants.MESSAGE_TYPE.RECEIVE.getValue(), Constants.MESSAGE_CONTENT_TYPE.PIC.getValue(), 0L, ((Chat) ChatView.this.unReadMsgList.get(i2)).getSenderId().longValue(), System.currentTimeMillis() / j, "", ((Chat) ChatView.this.unReadMsgList.get(i2)).getImgUrl());
                        } else {
                            message = new Message(((Chat) ChatView.this.unReadMsgList.get(i2)).getContent(), Constants.MESSAGE_TYPE.RECEIVE.getValue(), Constants.MESSAGE_CONTENT_TYPE.END.getValue(), 0L, ((Chat) ChatView.this.unReadMsgList.get(i2)).getSenderId().longValue(), System.currentTimeMillis() / j, "", ((Chat) ChatView.this.unReadMsgList.get(i2)).getImgUrl());
                        }
                    } else {
                        message = new Message(((Chat) ChatView.this.unReadMsgList.get(i2)).getContent(), Constants.MESSAGE_TYPE.RECEIVE.getValue(), Constants.MESSAGE_CONTENT_TYPE.TEXT.getValue(), 0L, ((Chat) ChatView.this.unReadMsgList.get(i2)).getSenderId().longValue(), System.currentTimeMillis() / j);
                    }
                    message.setContentId(SQLFunction.content.getId());
                    ChatView.this.receiveId = message.getReceiverId();
                    if (message.getMsgType() != Constants.MESSAGE_CONTENT_TYPE.END.getValue()) {
                        ChatView.this.msgList.add(message);
                        ChatView.this.adujstListView();
                        ChatView.this.myAdapter.notifyDataSetChanged();
                    } else {
                        ChatView.this.receiveId = 0L;
                    }
                    SQLFunction.insertChat(activity, new Object[]{Long.valueOf(message.getId()), YoFiSdkImp.instance().getUuid(), Long.valueOf(message.getContentId()), message.getContent(), message.getData(), message.getPath(), Integer.valueOf(message.getType()), Integer.valueOf(message.getMsgType()), Long.valueOf(message.getSenderId()), Long.valueOf(message.getReceiverId()), Long.valueOf(message.getCreateTime()), Integer.valueOf(message.getFlag()), Long.valueOf(message.getMsgId()), Integer.valueOf(message.getUploaded()), message.getImgUrl()});
                    i2++;
                    j = 1000;
                }
                ChatView.this.loading.setVisibility(8);
            }
        };
        this.url = YoFiSdkImp.instance().getSocketUrl() + "?gameId=" + this.gameId + "&accessToken=" + YoFiSdkImp.instance().getAccessToken();
        SocketManager.getInstance().init(this.url, this.chatHandler, new User(Long.valueOf(Long.parseLong(YoFiSdkImp.instance().getUserId())), YoFiSdkImp.instance().getNickname(), YoFiSdkImp.instance().getModel(), YoFiSdkImp.instance().getOS(), CommonUtils.instance().getAppVersionName(this.containerActivity), YoFiSdkImp.instance().getPhoneNum(), Integer.parseInt(YoFiSdkImp.instance().getAppId()), "", "", Constants.SYSTEM_TYPE.ANDROID.getValue(), YoFiSdkImp.instance().getVersion(), 1));
        activity.setContentView(activity.getResources().getIdentifier("yofi_chat", "layout", activity.getPackageName()));
        this.loading = (ProgressBar) activity.findViewById(activity.getResources().getIdentifier("loading", BreakpointSQLiteKey.ID, activity.getPackageName()));
        ((Button) activity.findViewById(activity.getResources().getIdentifier("btn_back", BreakpointSQLiteKey.ID, activity.getPackageName()))).setOnClickListener(new View.OnClickListener() { // from class: com.yofi.sdk.imp.middle.view.ChatView.2
            @Override // android.view.View.OnClickListener
            public void onClick(View arg0) {
                activity.finish();
                if (ChatView.this.mTimer != null) {
                    ChatView.this.mTimer.cancel();
                }
                SocketManager.getInstance().leaveChat();
                SocketManager.getInstance().clear();
            }
        });
        Button button = (Button) activity.findViewById(activity.getResources().getIdentifier("btn_select", BreakpointSQLiteKey.ID, activity.getPackageName()));
        this.btnSelect = button;
        button.setOnClickListener(new AnonymousClass3(activity));
        this.roleName = bundle.getString("roleName");
        this.serverId = bundle.getString("serverId");
        this.roleId = bundle.getString("roleId");
        String string = bundle.getString("serverName");
        this.serverName = string;
        if (string == null) {
            this.serverName = "";
        }
        this.gameId = Integer.parseInt(YoFiSdkImp.instance().getAppId());
        this.senderName = YoFiSdkImp.instance().getNickname();
        this.editContent = (EditText) activity.findViewById(activity.getResources().getIdentifier("edit_content", BreakpointSQLiteKey.ID, activity.getPackageName()));
        ((TextView) activity.findViewById(activity.getResources().getIdentifier("tv_title", BreakpointSQLiteKey.ID, activity.getPackageName()))).setText(activity.getResources().getString(activity.getResources().getIdentifier("title_chat", "string", activity.getPackageName())));
        Button button2 = (Button) activity.findViewById(activity.getResources().getIdentifier("btn_send", BreakpointSQLiteKey.ID, activity.getPackageName()));
        this.btnSend = button2;
        button2.setOnClickListener(new View.OnClickListener() { // from class: com.yofi.sdk.imp.middle.view.ChatView.4
            @Override // android.view.View.OnClickListener
            public void onClick(View arg0) {
                String trim = ChatView.this.editContent.getText().toString().trim();
                if (trim.length() == 0) {
                    VerticalContainerActivity verticalContainerActivity = activity;
                    ToastUtils.show(verticalContainerActivity, verticalContainerActivity.getResources().getString(activity.getResources().getIdentifier("content_empty", "string", activity.getPackageName())));
                    return;
                }
                Message message = new Message(trim, Constants.MESSAGE_TYPE.SEND.getValue(), Constants.MESSAGE_CONTENT_TYPE.TEXT.getValue(), 0L, ChatView.this.receiveId, System.currentTimeMillis() / 1000, "", "");
                message.setContentId(SQLFunction.content.getId());
                ChatView.this.msgList.add(message);
                ChatView.this.adujstListView();
                ChatView.this.myAdapter.notifyDataSetChanged();
                SQLFunction.insertChat(activity, new Object[]{Long.valueOf(message.getId()), YoFiSdkImp.instance().getUuid(), Long.valueOf(message.getContentId()), message.getContent(), message.getData(), message.getPath(), Integer.valueOf(message.getType()), Integer.valueOf(message.getMsgType()), Long.valueOf(message.getSenderId()), Long.valueOf(message.getReceiverId()), Long.valueOf(message.getCreateTime()), Integer.valueOf(message.getFlag()), Long.valueOf(message.getMsgId()), Integer.valueOf(message.getUploaded()), message.getImgUrl()});
                SocketManager.getInstance().chat(new Chat(Long.parseLong(YoFiSdkImp.instance().getUserId()), ChatView.this.receiveId, message.getType(), message.getContent(), ChatView.this.serverId, ChatView.this.serverName, ChatView.this.roleId, ChatView.this.roleName, 1, "", ChatView.this.gameId, 0L, ChatView.this.senderName));
                ChatView.this.editContent.setText("");
            }
        });
        SwipeRefreshLayout swipeRefreshLayout = (SwipeRefreshLayout) activity.findViewById(activity.getResources().getIdentifier("chat_swipe_refresh_layout", BreakpointSQLiteKey.ID, activity.getPackageName()));
        this.swipeRefreshLayout = swipeRefreshLayout;
        swipeRefreshLayout.setOnRefreshListener(new SwipeRefreshLayout.OnRefreshListener() { // from class: com.yofi.sdk.imp.middle.view.ChatView.5
            @Override // androidx.swiperefreshlayout.widget.SwipeRefreshLayout.OnRefreshListener
            public void onRefresh() {
                String uuid = YoFiSdkImp.instance().getUuid();
                ChatView.this.start += 10;
                ChatView chatView = ChatView.this;
                chatView.dataList = SQLFunction.queryChatPage(chatView.containerActivity, uuid, ChatView.this.start, 10);
                if (ChatView.this.dataList.size() == 0) {
                    ChatView.this.swipeRefreshLayout.setRefreshing(false);
                    return;
                }
                Collections.sort(ChatView.this.dataList);
                for (int i = 0; i < ChatView.this.dataList.size(); i++) {
                    ChatView.this.msgList.add(i, ChatView.this.dataList.get(i));
                    ChatView.this.myAdapter.notifyDataSetChanged();
                    ChatView.this.lvChat.smoothScrollToPosition(0);
                    ChatView.this.swipeRefreshLayout.setRefreshing(false);
                }
            }
        });
        this.lvChat = (ListView) activity.findViewById(activity.getResources().getIdentifier("lv_chat", BreakpointSQLiteKey.ID, activity.getPackageName()));
        long currentTimeMillis = System.currentTimeMillis() / 1000;
        this.msgList = new ArrayList();
        this.msgQueue = new LinkedBlockingDeque();
        queryMessage();
        MyAdapter myAdapter = new MyAdapter();
        this.myAdapter = myAdapter;
        this.lvChat.setAdapter((ListAdapter) myAdapter);
        this.btnSend.setClickable(true);
        this.btnSelect.setClickable(true);
        ViewGroup.LayoutParams layoutParams = this.lvChat.getLayoutParams();
        Rect rect = new Rect();
        if (Build.VERSION.SDK_INT >= 13) {
            activity.getWindowManager().getDefaultDisplay().getRectSize(rect);
        }
        int i = rect.bottom - 480;
        this.mListViewHeight = i;
        layoutParams.height = i;
        this.lvChat.setLayoutParams(layoutParams);
        adujstListView();
        UploadUtil.getInstance().setOnUploadProcessListener(this);
        activity.getWindow().getDecorView();
        activity.findViewById(R.id.content);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.yofi.sdk.imp.middle.view.ChatView$3, reason: invalid class name */
    /* loaded from: classes2.dex */
    public class AnonymousClass3 implements View.OnClickListener {
        final /* synthetic */ VerticalContainerActivity val$activity;

        AnonymousClass3(final VerticalContainerActivity val$activity) {
            this.val$activity = val$activity;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View arg0) {
            new RxPermissions(this.val$activity).request("android.permission.READ_EXTERNAL_STORAGE").subscribe(new Consumer() { // from class: com.yofi.sdk.imp.middle.view.-$$Lambda$ChatView$3$7kUGZm5QlPQRkEziIBb9_67AqwA
                @Override // io.reactivex.rxjava3.functions.Consumer
                public final void accept(Object obj) {
                    ChatView.AnonymousClass3.this.lambda$onClick$0$ChatView$3((Boolean) obj);
                }
            });
        }

        public /* synthetic */ void lambda$onClick$0$ChatView$3(Boolean granted) throws Throwable {
            if (granted.booleanValue()) {
                ChatView.this.getImage();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void getImage() {
        Intent intent = new Intent("android.intent.action.PICK", (Uri) null);
        intent.setDataAndType(MediaStore.Images.Media.INTERNAL_CONTENT_URI, UrlHttpUtil.FILE_TYPE_IMAGE);
        this.containerActivity.startActivityForResult(intent, 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void keepAlive() {
        this.mTimer = new Timer();
        TimerTask timerTask = new TimerTask() { // from class: com.yofi.sdk.imp.middle.view.ChatView.6
            @Override // java.util.TimerTask, java.lang.Runnable
            public void run() {
                Log.d("sendkeepAlive", "start");
                if (ChatView.this.serverTime == 0) {
                    return;
                }
                if (System.currentTimeMillis() - ChatView.this.serverTime <= 30000) {
                    ChatView.this.btnSend.setClickable(true);
                    ChatView.this.btnSelect.setClickable(true);
                    SocketManager.getInstance().keepAlive();
                } else {
                    SocketManager.getInstance().setSocketManagerStatus(1);
                    ChatView.this.mTimer.cancel();
                }
            }
        };
        this.mTimerTask = timerTask;
        this.mTimer.schedule(timerTask, 1000L, YoFiSdkImp.instance().getWsHeartbeatIntervalSecond() * 1000);
    }

    private void listResfresh() {
        ((MyAdapter) this.lvChat.getAdapter()).notifyDataSetInvalidated();
    }

    @Override // com.yofi.sdk.interfaces.IContainerView
    public void onResult(int requestCode, int resultCode, Intent data) {
        if (resultCode != -1) {
            if (resultCode == 100) {
                this.containerActivity.finish();
                return;
            } else {
                if (resultCode == 101) {
                    SQLFunction.deleteChat(this.containerActivity, new Object[]{Long.valueOf(this.message.getId())});
                    this.containerActivity.finish();
                    return;
                }
                return;
            }
        }
        try {
            Log.d(TAG, "获取图片返回=" + data.toString() + " resultCode=" + resultCode);
            String[] strArr = {"_data"};
            Cursor query = this.containerActivity.getContentResolver().query(data.getData(), strArr, null, null, null);
            query.moveToFirst();
            String string = query.getString(query.getColumnIndex(strArr[0]));
            query.close();
            Log.d(TAG, "获取图片地址=" + string);
            BitmapFactory.Options options = new BitmapFactory.Options();
            options.inJustDecodeBounds = true;
            BitmapFactory.decodeFile(string, options);
            int min = Math.min(options.outHeight, options.outWidth);
            int i = min > 100 ? (int) (min / 300.0f) : 2;
            options.inJustDecodeBounds = false;
            options.inSampleSize = i;
            Bitmap decodeFile = BitmapFactory.decodeFile(string, options);
            if (decodeFile == null) {
                Log.d(TAG, " BitmapFactory.decodeFile获取失败，已file的形式读取");
                File file = new File(string);
                int length = ((int) file.length()) + 1;
                byte[] bArr = new byte[length];
                try {
                    new FileInputStream(file.getAbsoluteFile()).read(bArr);
                } catch (FileNotFoundException e) {
                    e.printStackTrace();
                    Log.d(TAG, " FileNotFoundException e " + e.toString());
                } catch (IOException e2) {
                    Log.d(TAG, " IOException e " + e2.toString());
                }
                decodeFile = BitmapFactory.decodeByteArray(bArr, 0, length);
            }
            if (decodeFile != null) {
                Log.d(TAG, "获取图片bitmap成功");
            }
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            decodeFile.compress(Bitmap.CompressFormat.PNG, 80, byteArrayOutputStream);
            byte[] byteArray = byteArrayOutputStream.toByteArray();
            if (byteArray != null) {
                Log.d(TAG, "转换成字节成功" + byteArray);
            }
            Message message = new Message("", Constants.MESSAGE_TYPE.SEND.getValue(), Constants.MESSAGE_CONTENT_TYPE.PIC.getValue(), 0L, this.receiveId, System.currentTimeMillis() / 1000);
            message.setContentId(SQLFunction.content.getId());
            message.setData(byteArray);
            message.setPath(string);
            message.setFlag(data.getFlags());
            this.msgList.add(message);
            adujstListView();
            this.myAdapter.notifyDataSetChanged();
            SQLFunction.insertChat(this.containerActivity, new Object[]{Long.valueOf(message.getId()), YoFiSdkImp.instance().getUuid(), Long.valueOf(message.getContentId()), message.getContent(), message.getData(), message.getPath(), Integer.valueOf(message.getType()), Integer.valueOf(message.getMsgType()), Long.valueOf(message.getSenderId()), Long.valueOf(message.getReceiverId()), Long.valueOf(message.getCreateTime()), Integer.valueOf(message.getFlag()), Long.valueOf(message.getMsgId()), Integer.valueOf(message.getUploaded())});
            this.msgQueue.offer(message);
            SocketManager.getInstance().chat(new Chat(Long.parseLong(YoFiSdkImp.instance().getUserId()), this.receiveId, message.getType(), string.substring(string.lastIndexOf("/") + 1), ByteString.copyFrom(byteArray), this.serverId, this.serverName, this.roleId, this.roleName, 2, "", this.gameId, 0L, this.senderName));
        } catch (Exception e3) {
            e3.printStackTrace();
            Log.e(Constants.TAG, "chat view send pic exception:" + e3.toString());
        }
    }

    @Override // com.yofi.sdk.utils.UploadUtil.OnUploadProcessListener
    public void onUploadDone(int responseCode, String msg, Message message) {
        if (responseCode == 1) {
            message.setUploaded(1);
            SQLFunction.update(this.containerActivity, new Object[]{Long.valueOf(message.getContentId()), Integer.valueOf(message.getFlag()), Integer.valueOf(message.getUploaded()), Long.valueOf(message.getId())});
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public class MyAdapter extends BaseAdapter {
        @Override // android.widget.Adapter
        public long getItemId(int position) {
            return position;
        }

        private MyAdapter() {
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return ChatView.this.msgList.size();
        }

        @Override // android.widget.Adapter
        public Message getItem(int position) {
            return (Message) ChatView.this.msgList.get(position);
        }

        @Override // android.widget.Adapter
        public View getView(final int position, View convertView, ViewGroup parent) {
            View view;
            ViewHolder viewHolder;
            final Message message = (Message) ChatView.this.msgList.get(position);
            if (convertView == null) {
                viewHolder = new ViewHolder();
                view = View.inflate(ChatView.this.containerActivity.getApplicationContext(), ChatView.this.containerActivity.getResources().getIdentifier("yofi_item", "layout", ChatView.this.containerActivity.getPackageName()), null);
                viewHolder.tvReceive = (TextView) view.findViewById(ChatView.this.containerActivity.getResources().getIdentifier("tv_receive", BreakpointSQLiteKey.ID, ChatView.this.containerActivity.getPackageName()));
                viewHolder.tvSend = (TextView) view.findViewById(ChatView.this.containerActivity.getResources().getIdentifier("tv_send", BreakpointSQLiteKey.ID, ChatView.this.containerActivity.getPackageName()));
                viewHolder.tvReceiveTime = (TextView) view.findViewById(ChatView.this.containerActivity.getResources().getIdentifier("tv_receive_time", BreakpointSQLiteKey.ID, ChatView.this.containerActivity.getPackageName()));
                viewHolder.tvSendTime = (TextView) view.findViewById(ChatView.this.containerActivity.getResources().getIdentifier("tv_send_time", BreakpointSQLiteKey.ID, ChatView.this.containerActivity.getPackageName()));
                viewHolder.ivSend = (ImageView) view.findViewById(ChatView.this.containerActivity.getResources().getIdentifier("iv_send", BreakpointSQLiteKey.ID, ChatView.this.containerActivity.getPackageName()));
                viewHolder.ivReceive = (ImageView) view.findViewById(ChatView.this.containerActivity.getResources().getIdentifier("iv_receive", BreakpointSQLiteKey.ID, ChatView.this.containerActivity.getPackageName()));
                viewHolder.ivContentEnd = (ImageView) view.findViewById(ChatView.this.containerActivity.getResources().getIdentifier("iv_content_end", BreakpointSQLiteKey.ID, ChatView.this.containerActivity.getPackageName()));
                viewHolder.ivMsgFailed = (ImageView) view.findViewById(ChatView.this.containerActivity.getResources().getIdentifier("msg_failed", BreakpointSQLiteKey.ID, ChatView.this.containerActivity.getPackageName()));
                viewHolder.tvServerRole = (TextView) view.findViewById(ChatView.this.containerActivity.getResources().getIdentifier("tv_server_role", BreakpointSQLiteKey.ID, ChatView.this.containerActivity.getPackageName()));
                view.setTag(viewHolder);
            } else {
                view = convertView;
                viewHolder = (ViewHolder) convertView.getTag();
            }
            viewHolder.ivReceive.setOnClickListener(new View.OnClickListener() { // from class: com.yofi.sdk.imp.middle.view.ChatView.MyAdapter.1
                @Override // android.view.View.OnClickListener
                public void onClick(View v) {
                    if (message.getMsgType() == Constants.MESSAGE_CONTENT_TYPE.PIC.getValue()) {
                        ChatView.this.popPic(message);
                    }
                }
            });
            viewHolder.ivSend.setOnClickListener(new View.OnClickListener() { // from class: com.yofi.sdk.imp.middle.view.ChatView.MyAdapter.2
                @Override // android.view.View.OnClickListener
                public void onClick(View v) {
                    if (message.getMsgType() == Constants.MESSAGE_CONTENT_TYPE.PIC.getValue()) {
                        ChatView.this.popPic(message);
                    }
                }
            });
            viewHolder.ivMsgFailed.setOnClickListener(new View.OnClickListener() { // from class: com.yofi.sdk.imp.middle.view.ChatView.MyAdapter.3
                @Override // android.view.View.OnClickListener
                public void onClick(View v) {
                }
            });
            if (message.getMsgType() == Constants.MESSAGE_TYPE.END.getValue()) {
                String content = message.getContent();
                SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
                spannableStringBuilder.append((CharSequence) content);
                ClickableSpan clickableSpan = new ClickableSpan() { // from class: com.yofi.sdk.imp.middle.view.ChatView.MyAdapter.4
                    @Override // android.text.style.ClickableSpan
                    public void onClick(View widget) {
                        ChatView.this.message = message;
                        Intent intent = new Intent();
                        Bundle bundle = new Bundle();
                        bundle.putInt("FUNCTION_CODE", 22);
                        bundle.putLong("createTime", message.getCreateTime());
                        intent.putExtras(bundle);
                        intent.setClass(ChatView.this.containerActivity, VerticalContainerActivity.class);
                        ChatView.this.containerActivity.startActivityForResult(intent, 0);
                    }
                };
                if (!TextUtils.isEmpty(content)) {
                    spannableStringBuilder.setSpan(clickableSpan, content.length() - 4, content.length(), 33);
                }
                viewHolder.tvReceive.setMovementMethod(LinkMovementMethod.getInstance());
                viewHolder.tvReceive.setText(spannableStringBuilder);
                viewHolder.tvReceive.setVisibility(0);
                viewHolder.tvReceive.setBackgroundResource(0);
                viewHolder.tvReceiveTime.setVisibility(8);
                viewHolder.tvSendTime.setVisibility(8);
                viewHolder.tvSend.setVisibility(8);
                viewHolder.ivSend.setVisibility(8);
                viewHolder.ivContentEnd.setVisibility(8);
                viewHolder.ivMsgFailed.setVisibility(8);
                viewHolder.tvServerRole.setVisibility(8);
                viewHolder.ivReceive.setVisibility(8);
            } else if (message.getType() == Constants.MESSAGE_TYPE.SEND.getValue()) {
                viewHolder.tvReceive.setVisibility(8);
                viewHolder.tvReceiveTime.setVisibility(8);
                viewHolder.ivReceive.setVisibility(8);
                viewHolder.tvSendTime.setVisibility(0);
                viewHolder.tvServerRole.setVisibility(0);
                viewHolder.tvSendTime.setText(message.getFormatCreateTime());
                viewHolder.tvServerRole.setText(ChatView.this.serverName + " " + ChatView.this.roleName);
                viewHolder.tvSend.setVisibility(8);
                viewHolder.ivSend.setVisibility(8);
                viewHolder.ivContentEnd.setVisibility(8);
                viewHolder.ivMsgFailed.setVisibility(8);
                if (message.getMsgType() == Constants.MESSAGE_CONTENT_TYPE.TEXT.getValue()) {
                    viewHolder.tvSend.setVisibility(0);
                    viewHolder.tvSend.setAutoLinkMask(15);
                    if (Build.VERSION.SDK_INT >= 11) {
                        viewHolder.tvSend.setTextIsSelectable(true);
                    }
                    viewHolder.tvSend.setText(getClickableHtml(message.getContent()));
                    viewHolder.tvSend.setMovementMethod(LinkMovementMethod.getInstance());
                } else {
                    viewHolder.ivSend.setVisibility(0);
                    Bitmap decodeByteArray = BitmapFactory.decodeByteArray(message.getData(), 0, message.getData().length);
                    if (decodeByteArray != null) {
                        Log.d(ChatView.TAG, "展示图片获取bitmap成功 ");
                    }
                    BitmapDrawable bitmapDrawable = new BitmapDrawable(ChatView.this.containerActivity.getResources(), decodeByteArray);
                    if (Build.VERSION.SDK_INT >= 16) {
                        viewHolder.ivSend.setBackground(bitmapDrawable);
                    }
                    ViewGroup.LayoutParams layoutParams = viewHolder.ivSend.getLayoutParams();
                    layoutParams.height = HttpStatus.SC_BAD_REQUEST;
                    layoutParams.width = ItemTouchHelper.Callback.DEFAULT_SWIPE_ANIMATION_DURATION;
                    viewHolder.ivSend.setLayoutParams(layoutParams);
                }
            } else if (message.getType() == Constants.MESSAGE_TYPE.RECEIVE.getValue()) {
                viewHolder.tvSend.setVisibility(8);
                viewHolder.tvSendTime.setVisibility(8);
                viewHolder.tvReceiveTime.setVisibility(0);
                viewHolder.tvReceiveTime.setText(message.getFormatCreateTime());
                viewHolder.ivSend.setVisibility(8);
                viewHolder.tvReceive.setVisibility(8);
                viewHolder.ivReceive.setVisibility(8);
                viewHolder.ivContentEnd.setVisibility(8);
                viewHolder.ivMsgFailed.setVisibility(8);
                viewHolder.tvServerRole.setVisibility(8);
                if (message.getMsgType() == Constants.MESSAGE_CONTENT_TYPE.TEXT.getValue()) {
                    viewHolder.tvReceive.setVisibility(0);
                    viewHolder.tvReceive.setAutoLinkMask(1);
                    if (Build.VERSION.SDK_INT >= 11) {
                        viewHolder.tvReceive.setTextIsSelectable(true);
                    }
                    viewHolder.tvReceive.setText(getClickableHtml(message.getContent()));
                    viewHolder.tvReceive.setMovementMethod(LinkMovementMethod.getInstance());
                } else {
                    viewHolder.ivReceive.setVisibility(0);
                    Glide.with(ChatView.this.containerActivity).load(message.getImgUrl()).into(viewHolder.ivReceive);
                    ViewGroup.LayoutParams layoutParams2 = viewHolder.ivReceive.getLayoutParams();
                    layoutParams2.height = HttpStatus.SC_BAD_REQUEST;
                    layoutParams2.width = ItemTouchHelper.Callback.DEFAULT_SWIPE_ANIMATION_DURATION;
                    viewHolder.ivReceive.setLayoutParams(layoutParams2);
                }
            }
            return view;
        }

        private void setLinkClickable(final SpannableStringBuilder clickableHtmlBuilder, final URLSpan urlSpan) {
            int spanStart = clickableHtmlBuilder.getSpanStart(urlSpan);
            int spanEnd = clickableHtmlBuilder.getSpanEnd(urlSpan);
            clickableHtmlBuilder.getSpanFlags(urlSpan);
            clickableHtmlBuilder.setSpan(new ClickableSpan() { // from class: com.yofi.sdk.imp.middle.view.ChatView.MyAdapter.5
                @Override // android.text.style.ClickableSpan
                public void onClick(View view) {
                    String url = urlSpan.getURL();
                    if (TextUtils.isEmpty(url)) {
                        return;
                    }
                    Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(url));
                    intent.setFlags(268435456);
                    ChatView.this.containerActivity.startActivity(intent);
                }

                @Override // android.text.style.ClickableSpan, android.text.style.CharacterStyle
                public void updateDrawState(TextPaint ds) {
                    ds.setColor(Color.parseColor("#6699FF"));
                    ds.setUnderlineText(false);
                }
            }, spanStart, spanEnd, 33);
        }

        private CharSequence getClickableHtml(String html) {
            Spanned fromHtml = Html.fromHtml(html);
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(fromHtml);
            for (URLSpan uRLSpan : (URLSpan[]) spannableStringBuilder.getSpans(0, fromHtml.length(), URLSpan.class)) {
                setLinkClickable(spannableStringBuilder, uRLSpan);
            }
            return spannableStringBuilder;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static class ViewHolder {
        ImageView ivContentEnd;
        ImageView ivMsgFailed;
        ImageView ivReceive;
        ImageView ivSend;
        TextView tvReceive;
        TextView tvReceiveTime;
        TextView tvSend;
        TextView tvSendTime;
        TextView tvServerRole;

        private ViewHolder() {
        }
    }

    private void queryMessage() {
        String uuid = YoFiSdkImp.instance().getUuid();
        this.receiveId = SQLFunction.getReceiveId(this.containerActivity, uuid);
        this.start = 0;
        ArrayList<Message> queryChatPage = SQLFunction.queryChatPage(this.containerActivity, uuid, 0, 10);
        this.dataList = queryChatPage;
        Collections.sort(queryChatPage);
        Iterator<Message> it = this.dataList.iterator();
        while (it.hasNext()) {
            Message next = it.next();
            this.msgList.add(next);
            if (next.getType() == Constants.MESSAGE_TYPE.SEND.getValue() && next.getMsgType() == Constants.MESSAGE_CONTENT_TYPE.PIC.getValue() && next.getUploaded() == 0) {
                this.msgQueue.offer(next);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void popPic(Message msg) {
        Intent intent = new Intent();
        Bundle bundle = new Bundle();
        if (msg.getType() == 0) {
            bundle.putString(ClientCookie.PATH_ATTR, msg.getPath());
        } else {
            bundle.putString(ClientCookie.PATH_ATTR, msg.getImgUrl());
        }
        bundle.putInt("FUNCTION_CODE", 21);
        intent.putExtras(bundle);
        intent.setClass(this.containerActivity, VerticalContainerActivity.class);
        this.containerActivity.startActivity(intent);
        this.containerActivity.overridePendingTransition(0, 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void adujstListView() {
        int i = 0;
        for (int i2 = 0; i2 < this.myAdapter.getCount(); i2++) {
            View view = this.myAdapter.getView(i2, null, this.lvChat);
            view.measure(View.MeasureSpec.makeMeasureSpec(0, 0), View.MeasureSpec.makeMeasureSpec(0, 0));
            i += view.getMeasuredHeight();
        }
        if (i > this.mListViewHeight) {
            this.lvChat.setStackFromBottom(true);
            this.lvChat.setTranscriptMode(2);
        }
    }

    /* loaded from: classes2.dex */
    class CompressTask extends AsyncTask<Integer, Integer, String> {
        Context mContext;
        Message message;

        public CompressTask(Context context, Message msg) {
            this.mContext = context;
            this.message = msg;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public String doInBackground(Integer... integers) {
            String str;
            File file = CommonUtils.instance().getFile(BitmapFactory.decodeFile(this.message.getPath()));
            if (YoFiSdkImp.instance().getIsDebug().booleanValue()) {
                str = Constants.DEBUG_SERVER_URL + "sdk/api/v1/playerCenter/message/send";
            } else {
                str = Constants.SERVER_URL + "sdk/api/v1/playerCenter/message/send";
            }
            String str2 = str;
            long currentTimeMillis = System.currentTimeMillis();
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("accessToken", YoFiSdkImp.instance().getAccessToken());
                jSONObject.put("contentId", String.valueOf(this.message.getContentId()));
                jSONObject.put("msgType", String.valueOf(this.message.getMsgType()));
                jSONObject.put(TapEventParamConstants.PARAM_SUB_TIMESTAMP, String.valueOf(currentTimeMillis));
                jSONObject.put("sign", CommonUtils.instance().getSign(jSONObject));
            } catch (JSONException unused) {
            }
            HashMap hashMap = new HashMap();
            hashMap.put("accessToken", YoFiSdkImp.instance().getAccessToken());
            hashMap.put("contentId", String.valueOf(this.message.getContentId()));
            hashMap.put("msgType", String.valueOf(this.message.getMsgType()));
            hashMap.put(TapEventParamConstants.PARAM_SUB_TIMESTAMP, String.valueOf(currentTimeMillis));
            hashMap.put("sign", CommonUtils.instance().getSign(jSONObject));
            UploadUtil.getInstance().uploadFile(file, "data", str2, hashMap, this.message);
            return null;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public void onPostExecute(String result) {
            super.onPostExecute((CompressTask) result);
        }
    }
}
