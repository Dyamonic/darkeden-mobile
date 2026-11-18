.class final Lcom/juhe/juhesdk/sdk/JuheSDK$2;
.super Ljava/lang/Object;
.source "JuheSDK.java"

# interfaces
.implements Lcom/juhe/juhesdk/web/WebAPICallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/juhe/juhesdk/sdk/JuheSDK;->init(Landroid/app/Activity;Lcom/juhe/juhesdk/sdk/IFlashCallback;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "val$activity"
        }
    .end annotation

    .line 116
    iput-object p1, p0, Lcom/juhe/juhesdk/sdk/JuheSDK$2;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "code",
            "var1"
        }
    .end annotation

    return-void
.end method

.method public onSuccess(Lorg/json/JSONObject;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "res"
        }
    .end annotation

    const-string v0, "content"

    :try_start_0
    const-string v1, "data"

    .line 121
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v1, "need"

    .line 122
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "url"

    .line 127
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    .line 129
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 130
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 132
    :cond_1
    new-instance p1, Lcom/juhe/juhesdk/middle/view/CheckUpdateView;

    iget-object v0, p0, Lcom/juhe/juhesdk/sdk/JuheSDK$2;->val$activity:Landroid/app/Activity;

    new-instance v4, Lcom/juhe/juhesdk/sdk/JuheSDK$2$1;

    invoke-direct {v4, p0}, Lcom/juhe/juhesdk/sdk/JuheSDK$2$1;-><init>(Lcom/juhe/juhesdk/sdk/JuheSDK$2;)V

    invoke-direct {p1, v0, v4}, Lcom/juhe/juhesdk/middle/view/CheckUpdateView;-><init>(Landroid/content/Context;Lcom/juhe/juhesdk/sdk/CheckUpdateCallback;)V

    .line 137
    invoke-virtual {p1, v1}, Lcom/juhe/juhesdk/middle/view/CheckUpdateView;->setNeedUpdate(I)V

    .line 138
    invoke-virtual {p1, v2}, Lcom/juhe/juhesdk/middle/view/CheckUpdateView;->setDownLoadUrl(Ljava/lang/String;)V

    .line 139
    invoke-virtual {p1, v3}, Lcom/juhe/juhesdk/middle/view/CheckUpdateView;->setUpdateContent(Ljava/lang/String;)V

    .line 140
    invoke-virtual {p1}, Lcom/juhe/juhesdk/middle/view/CheckUpdateView;->show()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 144
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method
