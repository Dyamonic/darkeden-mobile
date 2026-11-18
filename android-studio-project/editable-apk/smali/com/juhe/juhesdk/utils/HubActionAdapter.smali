.class public abstract Lcom/juhe/juhesdk/utils/HubActionAdapter;
.super Ljava/lang/Object;
.source "HubActionAdapter.java"

# interfaces
.implements Lcom/netease/yofun/external/HubAction;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInit(ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "code",
            "msg"
        }
    .end annotation

    return-void
.end method

.method public onIsShowingSdkUi(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isShowing"
        }
    .end annotation

    return-void
.end method

.method public onLogin(ILjava/lang/String;Lcom/netease/yofun/external/data/UserInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "code",
            "msg",
            "info"
        }
    .end annotation

    return-void
.end method

.method public onLogout(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "code"
        }
    .end annotation

    return-void
.end method

.method public onPay(ILjava/lang/String;Lcom/netease/yofun/external/data/PayInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "code",
            "msg",
            "info"
        }
    .end annotation

    return-void
.end method

.method public onQuit(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "realQuit"
        }
    .end annotation

    return-void
.end method

.method public onSplash()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method
