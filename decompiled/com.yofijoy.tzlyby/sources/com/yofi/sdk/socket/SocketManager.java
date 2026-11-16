package com.yofi.sdk.socket;

import android.os.Handler;
import android.os.Message;
import android.util.Log;
import com.google.protobuf.InvalidProtocolBufferException;
import com.logic.proto.ChatProto;
import com.logic.proto.ProtoMessage;
import com.yofi.sdk.imp.middle.data.Chat;
import com.yofi.sdk.imp.middle.data.User;
import java.net.URI;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Timer;
import java.util.TimerTask;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import org.java_websocket.client.WebSocketClient;
import org.java_websocket.exceptions.WebsocketNotConnectedException;
import org.java_websocket.handshake.ServerHandshake;

/* loaded from: classes2.dex */
public class SocketManager {
    private static SocketManager sharedSocketManager;
    ExecutorService mExecutorService;
    Handler mHandler;
    String mIp;
    int mPort;
    Timer mTimer;
    User mUser;
    WebSocketClient mWebSocketClient;
    String mWsUrl;
    int socketManagerStatus;
    long mLastCheckTime = 0;
    long mReconnectTime = 0;

    public static SocketManager getInstance() {
        if (sharedSocketManager == null) {
            sharedSocketManager = new SocketManager();
        }
        return sharedSocketManager;
    }

    public int getSocketManagerStatus() {
        return this.socketManagerStatus;
    }

    public void setSocketManagerStatus(int socketManagerStatus) {
        this.socketManagerStatus = socketManagerStatus;
    }

    public void init(String url, Handler handler, User user) {
        clear();
        this.mWsUrl = url;
        this.mUser = user;
        this.mHandler = handler;
        ExecutorService newSingleThreadExecutor = Executors.newSingleThreadExecutor();
        this.mExecutorService = newSingleThreadExecutor;
        newSingleThreadExecutor.execute(new Runnable() { // from class: com.yofi.sdk.socket.SocketManager.1
            @Override // java.lang.Runnable
            public void run() {
                URI create = URI.create(SocketManager.this.mWsUrl);
                SocketManager.this.mWebSocketClient = new WebSocketClient(create) { // from class: com.yofi.sdk.socket.SocketManager.1.1
                    @Override // org.java_websocket.client.WebSocketClient
                    public void onMessage(String message) {
                    }

                    @Override // org.java_websocket.client.WebSocketClient
                    public void onOpen(ServerHandshake data) {
                        SocketManager.this.mReconnectTime = 0L;
                        SocketManager.this.socketManagerStatus = 0;
                        if (SocketManager.this.mTimer != null) {
                            SocketManager.this.mTimer.cancel();
                            SocketManager.this.mTimer = null;
                        }
                        SocketManager.this.enterChat(SocketManager.this.mUser);
                    }

                    @Override // org.java_websocket.client.WebSocketClient
                    public void onMessage(ByteBuffer blob) {
                        SocketManager.this.socketManagerStatus = 0;
                        int i = blob.getInt(0);
                        int i2 = blob.getInt(4);
                        int i3 = blob.getInt(8);
                        int i4 = blob.getInt(12);
                        for (int i5 = 0; i5 < 16; i5++) {
                            blob.get();
                        }
                        int i6 = i - 16;
                        byte[] bArr = new byte[i6];
                        blob.get(bArr, 0, i6);
                        ProtoMessage protoMessage = new ProtoMessage(i, i2, i3, i4, bArr);
                        try {
                            switch (protoMessage.getCmd()) {
                                case ID_S2C_KEEP_ALIVE_VALUE:
                                    SocketManager.this.handleS2CKeepAlive(protoMessage);
                                    break;
                                case ID_S2C_ENTER_CHAT_VALUE:
                                    SocketManager.this.handleS2CEnterChat(protoMessage);
                                    break;
                                case ID_S2C_CHAT_VALUE:
                                    SocketManager.this.handleS2CChat(protoMessage);
                                    break;
                                case ID_S2C_NOTIFY_CHAT_VALUE:
                                    SocketManager.this.handleS2CNotifyChat(protoMessage);
                                    break;
                                case ID_S2C_GET_CHAT_LIST_VALUE:
                                    SocketManager.this.handleS2CChatList(protoMessage);
                                    break;
                            }
                        } catch (Exception e) {
                            Log.e("yofisdk", e.toString());
                        }
                    }

                    @Override // org.java_websocket.client.WebSocketClient
                    public void onClose(int code, String reason, boolean remote) {
                        SocketManager.this.socketManagerStatus = 1;
                        if (code == 1000 || SocketManager.this.mTimer != null) {
                            return;
                        }
                        SocketManager.this.reConnect();
                    }

                    @Override // org.java_websocket.client.WebSocketClient
                    public void onError(Exception ex) {
                        SocketManager.this.socketManagerStatus = 1;
                        if (SocketManager.this.mTimer == null) {
                            SocketManager.this.reConnect();
                        }
                    }
                };
                try {
                    SocketManager.this.mWebSocketClient.connectBlocking();
                } catch (Exception e) {
                    Log.e("yofisdk", e.toString());
                }
            }
        });
    }

    public void reConnect() {
        checkSocketStatus(this.socketManagerStatus);
        Timer timer = new Timer();
        this.mTimer = timer;
        timer.schedule(new TimerTask() { // from class: com.yofi.sdk.socket.SocketManager.2
            @Override // java.util.TimerTask, java.lang.Runnable
            public void run() {
                if (SocketManager.this.mWebSocketClient == null || SocketManager.this.mWebSocketClient.isOpen()) {
                    return;
                }
                try {
                    Log.e("mWebSocketClient", "reConnect");
                    SocketManager.this.mWebSocketClient.reconnectBlocking();
                } catch (Exception e) {
                    Log.e("yofisdk", e.toString());
                }
            }
        }, 0L, 2000L);
    }

    private void sendData(int msgId, byte[] data) {
        ByteBuffer allocate = ByteBuffer.allocate(data.length + 16);
        allocate.putInt(data.length + 16);
        allocate.putInt(msgId);
        allocate.putInt(0);
        allocate.putInt(0);
        allocate.put(data);
        byte[] array = allocate.array();
        WebSocketClient webSocketClient = this.mWebSocketClient;
        if (webSocketClient == null || !webSocketClient.isOpen()) {
            return;
        }
        try {
            this.mWebSocketClient.send(array);
        } catch (WebsocketNotConnectedException unused) {
            Log.e("mWebSocketClient", "WebsocketNotConnectedException");
        }
    }

    public void clear() {
        WebSocketClient webSocketClient = this.mWebSocketClient;
        if (webSocketClient != null) {
            webSocketClient.close();
            this.mWebSocketClient = null;
        }
        ExecutorService executorService = this.mExecutorService;
        if (executorService != null) {
            executorService.shutdown();
            this.mExecutorService = null;
        }
        Timer timer = this.mTimer;
        if (timer != null) {
            timer.cancel();
            this.mTimer = null;
        }
        this.mLastCheckTime = 0L;
        this.mReconnectTime = 0L;
        this.mHandler = null;
    }

    public void enterChat(User user) {
        ChatProto.User.Builder newBuilder = ChatProto.User.newBuilder();
        user.flush(newBuilder);
        ChatProto.C2S_EnterChat.Builder newBuilder2 = ChatProto.C2S_EnterChat.newBuilder();
        newBuilder2.setUser(newBuilder.build());
        sendData(ChatProto.ID.ID_C2S_ENTER_CHAT_VALUE, newBuilder2.build().toByteArray());
    }

    public void leaveChat() {
        sendData(ChatProto.ID.ID_C2S_LEAVE_CHAT_VALUE, ChatProto.C2S_LeaveChat.newBuilder().build().toByteArray());
    }

    public void chat(Chat chat) {
        ChatProto.Chat.Builder newBuilder = ChatProto.Chat.newBuilder();
        chat.flush(newBuilder);
        ChatProto.C2S_Chat.Builder newBuilder2 = ChatProto.C2S_Chat.newBuilder();
        newBuilder2.setChat(newBuilder.build());
        sendData(ChatProto.ID.ID_C2S_CHAT_VALUE, newBuilder2.build().toByteArray());
    }

    public void getChatList() {
        sendData(ChatProto.ID.ID_C2S_GET_CHAT_LIST_VALUE, ChatProto.C2S_GetChatList.newBuilder().build().toByteArray());
    }

    public void keepAlive() {
        Log.d("sendkeepAlive", "end");
        sendData(ChatProto.ID.ID_C2S_KEEP_ALIVE_VALUE, ChatProto.C2S_KeepAlive.newBuilder().build().toByteArray());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleS2CEnterChat(ProtoMessage requestMessage) throws InvalidProtocolBufferException {
        Log.i("yofisdk", "s2cEnterChat code:" + ChatProto.S2C_EnterChat.parseFrom(requestMessage.getBodyData()).getCode());
        getChatList();
        keepAlive();
        enterChat(this.socketManagerStatus);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleS2CChat(ProtoMessage requestMessage) throws InvalidProtocolBufferException {
        if (this.mHandler == null) {
            return;
        }
        ChatProto.S2C_Chat parseFrom = ChatProto.S2C_Chat.parseFrom(requestMessage.getBodyData());
        if (parseFrom.getCode() != ChatProto.CODE.CODE_OK) {
            Message message = new Message();
            message.obj = "sendFailed";
            message.what = 1;
            this.mHandler.sendMessage(message);
            return;
        }
        Chat chat = new Chat(parseFrom.getChat());
        Message message2 = new Message();
        message2.obj = chat;
        message2.what = 1;
        this.mHandler.sendMessage(message2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleS2CNotifyChat(ProtoMessage requestMessage) throws InvalidProtocolBufferException {
        if (this.mHandler == null) {
            return;
        }
        Chat chat = new Chat(ChatProto.S2C_NotifyChat.parseFrom(requestMessage.getBodyData()).getChat());
        Message message = new Message();
        message.obj = chat;
        message.what = 2;
        this.mHandler.sendMessage(message);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleS2CChatList(ProtoMessage requestMessage) throws InvalidProtocolBufferException {
        if (this.mHandler == null) {
            return;
        }
        ChatProto.S2C_GetChatList parseFrom = ChatProto.S2C_GetChatList.parseFrom(requestMessage.getBodyData());
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < parseFrom.getChatListCount(); i++) {
            arrayList.add(new Chat(parseFrom.getChatList(i)));
        }
        Message message = new Message();
        message.obj = arrayList;
        message.what = 3;
        this.mHandler.sendMessage(message);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleS2CKeepAlive(ProtoMessage requestMessage) throws InvalidProtocolBufferException {
        if (this.mHandler == null) {
            return;
        }
        ChatProto.S2C_KeepAlive parseFrom = ChatProto.S2C_KeepAlive.parseFrom(requestMessage.getBodyData());
        if (parseFrom.getCode() != ChatProto.CODE.CODE_OK) {
            return;
        }
        parseFrom.getTvSec();
        long tvMsec = parseFrom.getTvMsec();
        Message message = new Message();
        message.obj = Long.valueOf(tvMsec);
        message.what = 4;
        this.mHandler.sendMessage(message);
    }

    private void enterChat(int status) {
        if (this.mHandler == null) {
            return;
        }
        Message message = new Message();
        message.obj = Integer.valueOf(status);
        message.what = 6;
        this.mHandler.sendMessage(message);
    }

    private void checkSocketStatus(int status) {
        if (this.mHandler == null) {
            return;
        }
        Message message = new Message();
        message.obj = Integer.valueOf(status);
        message.what = 5;
        this.mHandler.sendMessage(message);
    }
}
