package com.juhe.juhesdk.middle.data;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public class PayInfo implements Parcelable {
    public static final Parcelable.Creator<PayInfo> CREATOR = new Parcelable.Creator<PayInfo>() { // from class: com.juhe.juhesdk.middle.data.PayInfo.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public PayInfo createFromParcel(Parcel in) {
            return new PayInfo(in);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public PayInfo[] newArray(int size) {
            return new PayInfo[size];
        }
    };
    String amount;
    String cpOrderId;
    String extraParam;
    String productId;
    String productName;
    String roleId;
    int roleLevel;
    String roleName;
    String serverId;
    String serverName;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public PayInfo() {
    }

    public PayInfo(Parcel in) {
        this.cpOrderId = in.readString();
        this.amount = in.readString();
        this.productId = in.readString();
        this.productName = in.readString();
        this.serverId = in.readString();
        this.serverName = in.readString();
        this.roleId = in.readString();
        this.roleName = in.readString();
        this.roleLevel = in.readInt();
        this.extraParam = in.readString();
    }

    public String getCpOrderId() {
        return this.cpOrderId;
    }

    public void setCpOrderId(String cpOrderId) {
        this.cpOrderId = cpOrderId;
    }

    public String getAmount() {
        return this.amount;
    }

    public void setAmount(String amount) {
        this.amount = amount;
    }

    public String getProductId() {
        return this.productId;
    }

    public void setProductId(String productId) {
        this.productId = productId;
    }

    public String getProductName() {
        return this.productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public String getServerId() {
        return this.serverId;
    }

    public void setServerId(String serverId) {
        this.serverId = serverId;
    }

    public String getServerName() {
        return this.serverName;
    }

    public void setServerName(String serverName) {
        this.serverName = serverName;
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

    public int getRoleLevel() {
        return this.roleLevel;
    }

    public void setRoleLevel(int roleLevel) {
        this.roleLevel = roleLevel;
    }

    public String getExtraParam() {
        return this.extraParam;
    }

    public void setExtraParam(String extraParam) {
        this.extraParam = extraParam;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int arg1) {
        parcel.writeString(this.cpOrderId);
        parcel.writeString(this.amount);
        parcel.writeString(this.productId);
        parcel.writeString(this.productName);
        parcel.writeString(this.serverId);
        parcel.writeString(this.serverName);
        parcel.writeString(this.roleId);
        parcel.writeString(this.roleName);
        parcel.writeInt(this.roleLevel);
        parcel.writeString(this.extraParam);
    }
}
