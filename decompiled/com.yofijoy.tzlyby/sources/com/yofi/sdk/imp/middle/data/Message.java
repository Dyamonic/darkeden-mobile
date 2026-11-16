package com.yofi.sdk.imp.middle.data;

import com.yofi.sdk.imp.middle.common.SQLFunction;
import com.yofi.sdk.utils.CommonUtils;

/* loaded from: classes2.dex */
public class Message implements Comparable<Message> {
    private String content;
    private long contentId;
    private long createTime;
    private byte[] data;
    private int flag;
    private long id;
    private String imgUrl;
    private long msgId;
    private int msgType;
    private String path;
    private long receiverId;
    private long senderId;
    private int type;
    private int uploaded;

    public Message() {
    }

    public Message(String content, int type, int msgType, long senderId, long receiverId, long createTime) {
        this.id = SQLFunction.getMessageId();
        this.contentId = 0L;
        this.content = content;
        this.type = type;
        this.msgType = msgType;
        this.senderId = senderId;
        this.receiverId = receiverId;
        this.createTime = createTime;
        this.flag = 0;
        this.msgId = 0L;
        this.path = "";
        this.uploaded = 0;
        this.imgUrl = "";
    }

    public Message(String content, int type, int msgType, long senderId, long receiverId, long createTime, String path, String imgUrl) {
        this.id = SQLFunction.getMessageId();
        this.contentId = 0L;
        this.content = content;
        this.type = type;
        this.msgType = msgType;
        this.senderId = senderId;
        this.receiverId = receiverId;
        this.createTime = createTime;
        this.path = path;
        this.flag = 0;
        this.msgId = 0L;
        this.uploaded = 0;
        this.imgUrl = imgUrl;
    }

    public long getId() {
        return this.id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public long getContentId() {
        return this.contentId;
    }

    public void setContentId(long contentId) {
        this.contentId = contentId;
    }

    public String getPath() {
        return this.path;
    }

    public void setPath(String path) {
        this.path = path;
    }

    public String getContent() {
        return this.content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public byte[] getData() {
        return this.data;
    }

    public void setData(byte[] data) {
        this.data = data;
    }

    public int getType() {
        return this.type;
    }

    public void setType(int type) {
        this.type = type;
    }

    public int getMsgType() {
        return this.msgType;
    }

    public void setMsgType(int msgType) {
        this.msgType = msgType;
    }

    public long getSenderId() {
        return this.senderId;
    }

    public void setSenderId(long senderId) {
        this.senderId = senderId;
    }

    public long getReceiverId() {
        return this.receiverId;
    }

    public void setReceiverId(long receiverId) {
        this.receiverId = receiverId;
    }

    public long getCreateTime() {
        return this.createTime;
    }

    public void setCreateTime(long createTime) {
        this.createTime = createTime;
    }

    public int getFlag() {
        return this.flag;
    }

    public void setFlag(int flag) {
        this.flag = flag;
    }

    public long getMsgId() {
        return this.msgId;
    }

    public void setMsgId(long msgId) {
        this.msgId = msgId;
    }

    public int getUploaded() {
        return this.uploaded;
    }

    public void setUploaded(int uploaded) {
        this.uploaded = uploaded;
    }

    public String getFormatCreateTime() {
        return CommonUtils.instance().stampToDate(this.createTime * 1000);
    }

    public String getImgUrl() {
        return this.imgUrl;
    }

    public void setImgUrl(String imgUrl) {
        this.imgUrl = imgUrl;
    }

    @Override // java.lang.Comparable
    public int compareTo(Message o) {
        return (int) (this.id - o.getId());
    }
}
