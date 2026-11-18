.class final Lcom/juhe/juhesdk/sdk/JuheSDK$1;
.super Ljava/lang/Object;
.source "JuheSDK.java"

# interfaces
.implements Lcom/juhe/juhesdk/sdk/OnLoginCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/juhe/juhesdk/sdk/JuheSDK;->login(Landroid/app/Activity;Lcom/juhe/juhesdk/sdk/OnLoginCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$cb:Lcom/juhe/juhesdk/sdk/OnLoginCallback;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/juhe/juhesdk/sdk/OnLoginCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "val$cb",
            "val$activity"
        }
    .end annotation

    .line 45
    iput-object p1, p0, Lcom/juhe/juhesdk/sdk/JuheSDK$1;->val$activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/juhe/juhesdk/sdk/JuheSDK$1;->val$cb:Lcom/juhe/juhesdk/sdk/OnLoginCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHaveNewMessages()V
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/juhe/juhesdk/sdk/JuheSDK$1;->val$cb:Lcom/juhe/juhesdk/sdk/OnLoginCallback;

    invoke-interface {v0}, Lcom/juhe/juhesdk/sdk/OnLoginCallback;->onHaveNewMessages()V

    return-void
.end method

.method public onLoginFailed(ILjava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "var1",
            "msg"
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lcom/juhe/juhesdk/sdk/JuheSDK$1;->val$activity:Landroid/app/Activity;

    const/16 v1, 0x190

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/juhe/juhesdk/middle/manager/LittleApiImp;->sdkStage(Landroid/content/Context;IZ)V

    .line 55
    iget-object v0, p0, Lcom/juhe/juhesdk/sdk/JuheSDK$1;->val$cb:Lcom/juhe/juhesdk/sdk/OnLoginCallback;

    invoke-interface {v0, p1, p2}, Lcom/juhe/juhesdk/sdk/OnLoginCallback;->onLoginFailed(ILjava/lang/String;)V

    return-void
.end method

.method public onLoginSuccess(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "var1"
        }
    .end annotation

    .line 48
    iget-object v0, p0, Lcom/juhe/juhesdk/sdk/JuheSDK$1;->val$activity:Landroid/app/Activity;

    const/16 v1, 0x1f4

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/juhe/juhesdk/middle/manager/LittleApiImp;->sdkStage(Landroid/content/Context;IZ)V

    .line 49
    iget-object v0, p0, Lcom/juhe/juhesdk/sdk/JuheSDK$1;->val$cb:Lcom/juhe/juhesdk/sdk/OnLoginCallback;

    invoke-interface {v0, p1}, Lcom/juhe/juhesdk/sdk/OnLoginCallback;->onLoginSuccess(Ljava/lang/String;)V

    return-void
.end method

.method public onLogoutSuccess(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "var1"
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lcom/juhe/juhesdk/sdk/JuheSDK$1;->val$cb:Lcom/juhe/juhesdk/sdk/OnLoginCallback;

    invoke-interface {v0, p1}, Lcom/juhe/juhesdk/sdk/OnLoginCallback;->onLogoutSuccess(Ljava/lang/String;)V

    return-void
.end method
