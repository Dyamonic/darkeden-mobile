package com.yofi.sdk.imp.middle.data;

import com.google.protobuf.ByteString;
import com.logic.proto.ChatProto;

/* loaded from: classes2.dex */
public class Chat {
    private String content;
    private Long createTime;
    private int gameId;
    private String imgUrl;
    private int msgType;
    private ByteString pic;
    private Long receiverId;
    private String roleId;
    private String roleName;
    private Long senderId;
    private String senderName;
    private String serverId;
    private String serverName;
    private Integer type;

    public Chat() {
    }

    public Chat(long senderId, long receiverId, int type, String content, String serverId, String roleId, String roleName) {
        this.senderId = Long.valueOf(senderId);
        this.receiverId = Long.valueOf(receiverId);
        this.type = Integer.valueOf(type);
        this.content = content;
        this.serverId = serverId;
        this.roleId = roleId;
        this.roleName = roleName;
    }

    public Chat(long senderId, long receiverId, int type, String content, String serverId, String serverName, String roleId, String roleName, int msgType, String imgUrl, int gameId, long createTime, String senderName) {
        this.senderId = Long.valueOf(senderId);
        this.receiverId = Long.valueOf(receiverId);
        this.type = Integer.valueOf(type);
        this.content = content;
        this.serverId = serverId;
        this.serverName = serverName;
        this.roleId = roleId;
        this.roleName = roleName;
        this.msgType = msgType;
        this.imgUrl = imgUrl;
        this.gameId = gameId;
        this.createTime = Long.valueOf(createTime);
        this.senderName = senderName;
    }

    public Chat(long senderId, long receiverId, int type, String content, ByteString pic, String serverId, String serverName, String roleId, String roleName, int msgType, String imgUrl, int gameId, long createTime, String senderName) {
        this.senderId = Long.valueOf(senderId);
        this.receiverId = Long.valueOf(receiverId);
        this.type = Integer.valueOf(type);
        this.content = content;
        this.pic = pic;
        this.serverId = serverId;
        this.serverName = serverName;
        this.roleId = roleId;
        this.roleName = roleName;
        this.msgType = msgType;
        this.imgUrl = imgUrl;
        this.gameId = gameId;
        this.createTime = Long.valueOf(createTime);
        this.senderName = senderName;
    }

    public Chat(ChatProto.Chat chat) {
        this.senderId = Long.valueOf(chat.getSenderId());
        this.receiverId = Long.valueOf(chat.getReceiverId());
        this.type = Integer.valueOf(chat.getType());
        this.content = chat.getContent();
        if (chat.getPic() != null) {
            this.pic = chat.getPic();
        }
        this.serverId = chat.getServerId();
        if (this.serverName != null) {
            this.serverName = chat.getServerName();
        }
        this.roleId = chat.getRoleId();
        this.roleName = chat.getRoleName();
        this.msgType = chat.getMsgType();
        this.imgUrl = chat.getImgUrl();
        this.gameId = chat.getGameId();
        this.createTime = Long.valueOf(chat.getCreateTime());
        this.senderName = chat.getSenderName();
    }

    public void flush(ChatProto.Chat.Builder builder) {
        builder.setSenderId(this.senderId.longValue());
        builder.setReceiverId(this.receiverId.longValue());
        builder.setType(this.type.intValue());
        builder.setContent(this.content);
        ByteString byteString = this.pic;
        if (byteString != null) {
            builder.setPic(byteString);
        }
        builder.setServerId(this.serverId);
        String str = this.serverName;
        if (str != null) {
            builder.setServerName(str);
        }
        builder.setRoleId(this.roleId);
        builder.setRoleName(this.roleName);
        builder.setMsgType(this.msgType);
        builder.setImgUrl(this.imgUrl);
        builder.setGameId(this.gameId);
        builder.setCreateTime(this.createTime.longValue());
        builder.setSenderName(this.senderName);
    }

    public Long getSenderId() {
        return this.senderId;
    }

    public void setSenderId(Long senderId) {
        this.senderId = senderId;
    }

    public Long getReceiverId() {
        return this.receiverId;
    }

    public void setReceiverId(Long receiverId) {
        this.receiverId = receiverId;
    }

    public Integer getType() {
        return this.type;
    }

    public void setType(Integer type) {
        this.type = type;
    }

    public String getContent() {
        return this.content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public ByteString getPic() {
        return this.pic;
    }

    public void setPic(ByteString pic) {
        this.pic = pic;
    }

    public String getServerId() {
        return this.serverId;
    }

    public void setServerId(String serverId) {
        this.serverId = serverId;
    }

    public String getRoleId() {
        return this.roleId;
    }

    public void setRoleId(String roleId) {
        this.roleId = roleId;
    }

    public String getRoleName() {
        return this.roleName;
    }

    public void setRoleName(String roleName) {
        this.roleName = roleName;
    }

    public int getMsgType() {
        return this.msgType;
    }

    public void setMsgType(int msgType) {
        this.msgType = msgType;
    }

    public String getImgUrl() {
        return this.imgUrl;
    }

    public void setImgUrl(String imgUrl) {
        this.imgUrl = imgUrl;
    }

    public int getGameId() {
        return this.gameId;
    }

    public void setGameId(int gameId) {
        this.gameId = gameId;
    }

    public Long getCreateTime() {
        return this.createTime;
    }

    public void setCreateTime(Long createTime) {
        this.createTime = createTime;
    }

    public String getSenderName() {
        return this.senderName;
    }

    public void setSenderName(String senderName) {
        this.senderName = senderName;
    }

    public String getServerName() {
        return this.serverName;
    }

    public void setServerName(String serverName) {
        this.serverName = serverName;
    }
}
