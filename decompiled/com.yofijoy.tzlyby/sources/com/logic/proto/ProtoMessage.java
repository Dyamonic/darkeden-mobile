package com.logic.proto;

/* loaded from: classes.dex */
public class ProtoMessage {
    private byte[] bodyData;
    private int cmd;
    private int len;
    private int sid;
    private int uid;

    public ProtoMessage(int len, int cmd, int uid, int sid, byte[] bodyData) {
        this.len = len;
        this.cmd = cmd;
        this.uid = uid;
        this.sid = sid;
        this.bodyData = bodyData;
    }

    public ProtoMessage(int len, int cmd, byte[] bodyData, ProtoMessage protoMessage) {
        this.len = len;
        this.cmd = cmd;
        this.bodyData = bodyData;
        this.uid = protoMessage.getUid();
        this.sid = protoMessage.getSid();
    }

    public ProtoMessage(int len, int cmd, byte[] bodyData) {
        this.len = len;
        this.cmd = cmd;
        this.bodyData = bodyData;
    }

    public ProtoMessage() {
    }

    public int getLen() {
        return this.len;
    }

    public void setLen(int len) {
        this.len = len;
    }

    public int getCmd() {
        return this.cmd;
    }

    public void setCmd(int cmd) {
        this.cmd = cmd;
    }

    public int getUid() {
        return this.uid;
    }

    public void setUid(int uid) {
        this.uid = uid;
    }

    public int getSid() {
        return this.sid;
    }

    public void setSid(int sid) {
        this.sid = sid;
    }

    public byte[] getBodyData() {
        return this.bodyData;
    }

    public void setBodyData(byte[] bodyData) {
        this.bodyData = bodyData;
    }

    public String toString() {
        return "Len:" + this.len + ",cmd:" + this.cmd + ",uid:" + this.uid + ",sid:" + this.sid;
    }
}
