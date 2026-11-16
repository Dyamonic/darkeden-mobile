.class public Lcom/yofi/sdk/imp/middle/data/PayInfo;
.super Ljava/lang/Object;
.source "PayInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/yofi/sdk/imp/middle/data/PayInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field amount:Ljava/lang/String;

.field cpOrderId:Ljava/lang/String;

.field extraParam:Ljava/lang/String;

.field productId:Ljava/lang/String;

.field productName:Ljava/lang/String;

.field roleId:Ljava/lang/String;

.field roleLevel:I

.field roleName:Ljava/lang/String;

.field serverId:Ljava/lang/String;

.field serverName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 136
    new-instance v0, Lcom/yofi/sdk/imp/middle/data/PayInfo$1;

    invoke-direct {v0}, Lcom/yofi/sdk/imp/middle/data/PayInfo$1;-><init>()V

    sput-object v0, Lcom/yofi/sdk/imp/middle/data/PayInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "in"
        }
    .end annotation

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yofi/sdk/imp/middle/data/PayInfo;->cpOrderId:Ljava/lang/String;

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yofi/sdk/imp/middle/data/PayInfo;->amount:Ljava/lang/String;

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yofi/sdk/imp/middle/data/PayInfo;->productId:Ljava/lang/String;

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yofi/sdk/imp/middle/data/PayInfo;->productName:Ljava/lang/String;

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yofi/sdk/imp/middle/data/PayInfo;->serverId:Ljava/lang/String;

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yofi/sdk/imp/middle/data/PayInfo;->serverName:Ljava/lang/String;

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yofi/sdk/imp/middle/data/PayInfo;->roleId:Ljava/lang/String;

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yofi/sdk/imp/middle/data/PayInfo;->roleName:Ljava/lang/String;

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yofi/sdk/imp/middle/data/PayInfo;->roleLevel:I

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/yofi/sdk/imp/middle/data/PayInfo;->extraParam:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAmount()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/data/PayInfo;->amount:Ljava/lang/String;

    return-object v0
.end method

.method public getCpOrderId()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/data/PayInfo;->cpOrderId:Ljava/lang/String;

    return-object v0
.end method

.method public getExtraParam()Ljava/lang/String;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/data/PayInfo;->extraParam:Ljava/lang/String;

    return-object v0
.end method

.method public getProductId()Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/data/PayInfo;->productId:Ljava/lang/String;

    return-object v0
.end method

.method public getProductName()Ljava/lang/String;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/data/PayInfo;->productName:Ljava/lang/String;

    return-object v0
.end method

.method public getRoleId()Ljava/lang/String;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/data/PayInfo;->roleId:Ljava/lang/String;

    return-object v0
.end method

.method public getRoleLevel()I
    .locals 1

    .line 102
    iget v0, p0, Lcom/yofi/sdk/imp/middle/data/PayInfo;->roleLevel:I

    return v0
.end method

.method public getRoleName()Ljava/lang/String;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/data/PayInfo;->roleName:Ljava/lang/String;

    return-object v0
.end method

.method public getServerId()Ljava/lang/String;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/data/PayInfo;->serverId:Ljava/lang/String;

    return-object v0
.end method

.method public getServerName()Ljava/lang/String;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/data/PayInfo;->serverName:Ljava/lang/String;

    return-object v0
.end method

.method public setAmount(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "amount"
        }
    .end annotation

    .line 50
    iput-object p1, p0, Lcom/yofi/sdk/imp/middle/data/PayInfo;->amount:Ljava/lang/String;

    return-void
.end method

.method public setCpOrderId(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cpOrderId"
        }
    .end annotation

    .line 42
    iput-object p1, p0, Lcom/yofi/sdk/imp/middle/data/PayInfo;->cpOrderId:Ljava/lang/String;

    return-void
.end method

.method public setExtraParam(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "extraParam"
        }
    .end annotation

    .line 114
    iput-object p1, p0, Lcom/yofi/sdk/imp/middle/data/PayInfo;->extraParam:Ljava/lang/String;

    return-void
.end method

.method public setProductId(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "productId"
        }
    .end annotation

    .line 58
    iput-object p1, p0, Lcom/yofi/sdk/imp/middle/data/PayInfo;->productId:Ljava/lang/String;

    return-void
.end method

.method public setProductName(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "productName"
        }
    .end annotation

    .line 66
    iput-object p1, p0, Lcom/yofi/sdk/imp/middle/data/PayInfo;->productName:Ljava/lang/String;

    return-void
.end method

.method public setRoleId(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "roleId"
        }
    .end annotation

    .line 90
    iput-object p1, p0, Lcom/yofi/sdk/imp/middle/data/PayInfo;->roleId:Ljava/lang/String;

    return-void
.end method

.method public setRoleLevel(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "roleLevel"
        }
    .end annotation

    .line 106
    iput p1, p0, Lcom/yofi/sdk/imp/middle/data/PayInfo;->roleLevel:I

    return-void
.end method

.method public setRoleName(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "roleName"
        }
    .end annotation

    .line 98
    iput-object p1, p0, Lcom/yofi/sdk/imp/middle/data/PayInfo;->roleName:Ljava/lang/String;

    return-void
.end method

.method public setServerId(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "serverId"
        }
    .end annotation

    .line 74
    iput-object p1, p0, Lcom/yofi/sdk/imp/middle/data/PayInfo;->serverId:Ljava/lang/String;

    return-void
.end method

.method public setServerName(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "serverName"
        }
    .end annotation

    .line 82
    iput-object p1, p0, Lcom/yofi/sdk/imp/middle/data/PayInfo;->serverName:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "parcel",
            "arg1"
        }
    .end annotation

    .line 124
    iget-object p2, p0, Lcom/yofi/sdk/imp/middle/data/PayInfo;->cpOrderId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 125
    iget-object p2, p0, Lcom/yofi/sdk/imp/middle/data/PayInfo;->amount:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 126
    iget-object p2, p0, Lcom/yofi/sdk/imp/middle/data/PayInfo;->productId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 127
    iget-object p2, p0, Lcom/yofi/sdk/imp/middle/data/PayInfo;->productName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 128
    iget-object p2, p0, Lcom/yofi/sdk/imp/middle/data/PayInfo;->serverId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 129
    iget-object p2, p0, Lcom/yofi/sdk/imp/middle/data/PayInfo;->serverName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 130
    iget-object p2, p0, Lcom/yofi/sdk/imp/middle/data/PayInfo;->roleId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 131
    iget-object p2, p0, Lcom/yofi/sdk/imp/middle/data/PayInfo;->roleName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 132
    iget p2, p0, Lcom/yofi/sdk/imp/middle/data/PayInfo;->roleLevel:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 133
    iget-object p2, p0, Lcom/yofi/sdk/imp/middle/data/PayInfo;->extraParam:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
