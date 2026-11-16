.class public Lcom/juhe/juhesdk/middle/data/PayInfo;
.super Ljava/lang/Object;
.source "PayInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/juhe/juhesdk/middle/data/PayInfo;",
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

    .line 137
    new-instance v0, Lcom/juhe/juhesdk/middle/data/PayInfo$1;

    invoke-direct {v0}, Lcom/juhe/juhesdk/middle/data/PayInfo$1;-><init>()V

    sput-object v0, Lcom/juhe/juhesdk/middle/data/PayInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
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

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/juhe/juhesdk/middle/data/PayInfo;->cpOrderId:Ljava/lang/String;

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/juhe/juhesdk/middle/data/PayInfo;->amount:Ljava/lang/String;

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/juhe/juhesdk/middle/data/PayInfo;->productId:Ljava/lang/String;

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/juhe/juhesdk/middle/data/PayInfo;->productName:Ljava/lang/String;

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/juhe/juhesdk/middle/data/PayInfo;->serverId:Ljava/lang/String;

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/juhe/juhesdk/middle/data/PayInfo;->serverName:Ljava/lang/String;

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/juhe/juhesdk/middle/data/PayInfo;->roleId:Ljava/lang/String;

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/juhe/juhesdk/middle/data/PayInfo;->roleName:Ljava/lang/String;

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/juhe/juhesdk/middle/data/PayInfo;->roleLevel:I

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/juhe/juhesdk/middle/data/PayInfo;->extraParam:Ljava/lang/String;

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

    .line 47
    iget-object v0, p0, Lcom/juhe/juhesdk/middle/data/PayInfo;->amount:Ljava/lang/String;

    return-object v0
.end method

.method public getCpOrderId()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/juhe/juhesdk/middle/data/PayInfo;->cpOrderId:Ljava/lang/String;

    return-object v0
.end method

.method public getExtraParam()Ljava/lang/String;
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/juhe/juhesdk/middle/data/PayInfo;->extraParam:Ljava/lang/String;

    return-object v0
.end method

.method public getProductId()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/juhe/juhesdk/middle/data/PayInfo;->productId:Ljava/lang/String;

    return-object v0
.end method

.method public getProductName()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/juhe/juhesdk/middle/data/PayInfo;->productName:Ljava/lang/String;

    return-object v0
.end method

.method public getRoleId()Ljava/lang/String;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/juhe/juhesdk/middle/data/PayInfo;->roleId:Ljava/lang/String;

    return-object v0
.end method

.method public getRoleLevel()I
    .locals 1

    .line 103
    iget v0, p0, Lcom/juhe/juhesdk/middle/data/PayInfo;->roleLevel:I

    return v0
.end method

.method public getRoleName()Ljava/lang/String;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/juhe/juhesdk/middle/data/PayInfo;->roleName:Ljava/lang/String;

    return-object v0
.end method

.method public getServerId()Ljava/lang/String;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/juhe/juhesdk/middle/data/PayInfo;->serverId:Ljava/lang/String;

    return-object v0
.end method

.method public getServerName()Ljava/lang/String;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/juhe/juhesdk/middle/data/PayInfo;->serverName:Ljava/lang/String;

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

    .line 51
    iput-object p1, p0, Lcom/juhe/juhesdk/middle/data/PayInfo;->amount:Ljava/lang/String;

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

    .line 43
    iput-object p1, p0, Lcom/juhe/juhesdk/middle/data/PayInfo;->cpOrderId:Ljava/lang/String;

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

    .line 115
    iput-object p1, p0, Lcom/juhe/juhesdk/middle/data/PayInfo;->extraParam:Ljava/lang/String;

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

    .line 59
    iput-object p1, p0, Lcom/juhe/juhesdk/middle/data/PayInfo;->productId:Ljava/lang/String;

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

    .line 67
    iput-object p1, p0, Lcom/juhe/juhesdk/middle/data/PayInfo;->productName:Ljava/lang/String;

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

    .line 91
    iput-object p1, p0, Lcom/juhe/juhesdk/middle/data/PayInfo;->roleId:Ljava/lang/String;

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

    .line 107
    iput p1, p0, Lcom/juhe/juhesdk/middle/data/PayInfo;->roleLevel:I

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

    .line 99
    iput-object p1, p0, Lcom/juhe/juhesdk/middle/data/PayInfo;->roleName:Ljava/lang/String;

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

    .line 75
    iput-object p1, p0, Lcom/juhe/juhesdk/middle/data/PayInfo;->serverId:Ljava/lang/String;

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

    .line 83
    iput-object p1, p0, Lcom/juhe/juhesdk/middle/data/PayInfo;->serverName:Ljava/lang/String;

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

    .line 125
    iget-object p2, p0, Lcom/juhe/juhesdk/middle/data/PayInfo;->cpOrderId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 126
    iget-object p2, p0, Lcom/juhe/juhesdk/middle/data/PayInfo;->amount:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 127
    iget-object p2, p0, Lcom/juhe/juhesdk/middle/data/PayInfo;->productId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 128
    iget-object p2, p0, Lcom/juhe/juhesdk/middle/data/PayInfo;->productName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 129
    iget-object p2, p0, Lcom/juhe/juhesdk/middle/data/PayInfo;->serverId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 130
    iget-object p2, p0, Lcom/juhe/juhesdk/middle/data/PayInfo;->serverName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 131
    iget-object p2, p0, Lcom/juhe/juhesdk/middle/data/PayInfo;->roleId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 132
    iget-object p2, p0, Lcom/juhe/juhesdk/middle/data/PayInfo;->roleName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 133
    iget p2, p0, Lcom/juhe/juhesdk/middle/data/PayInfo;->roleLevel:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 134
    iget-object p2, p0, Lcom/juhe/juhesdk/middle/data/PayInfo;->extraParam:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
