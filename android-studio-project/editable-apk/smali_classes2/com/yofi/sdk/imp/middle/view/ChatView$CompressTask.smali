.class Lcom/yofi/sdk/imp/middle/view/ChatView$CompressTask;
.super Landroid/os/AsyncTask;
.source "ChatView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yofi/sdk/imp/middle/view/ChatView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CompressTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field message:Lcom/yofi/sdk/imp/middle/data/Message;

.field final synthetic this$0:Lcom/yofi/sdk/imp/middle/view/ChatView;


# direct methods
.method public constructor <init>(Lcom/yofi/sdk/imp/middle/view/ChatView;Landroid/content/Context;Lcom/yofi/sdk/imp/middle/data/Message;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            "this$0",
            "context",
            "msg"
        }
    .end annotation

    .line 1011
    iput-object p1, p0, Lcom/yofi/sdk/imp/middle/view/ChatView$CompressTask;->this$0:Lcom/yofi/sdk/imp/middle/view/ChatView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 1012
    iput-object p2, p0, Lcom/yofi/sdk/imp/middle/view/ChatView$CompressTask;->mContext:Landroid/content/Context;

    .line 1013
    iput-object p3, p0, Lcom/yofi/sdk/imp/middle/view/ChatView$CompressTask;->message:Lcom/yofi/sdk/imp/middle/data/Message;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "integers"
        }
    .end annotation

    .line 1006
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/yofi/sdk/imp/middle/view/ChatView$CompressTask;->doInBackground([Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/String;
    .locals 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "integers"
        }
    .end annotation

    const-string p1, "sign"

    const-string v0, "timestamp"

    const-string v1, "msgType"

    const-string v2, "contentId"

    const-string v3, "accessToken"

    .line 1018
    iget-object v4, p0, Lcom/yofi/sdk/imp/middle/view/ChatView$CompressTask;->message:Lcom/yofi/sdk/imp/middle/data/Message;

    invoke-virtual {v4}, Lcom/yofi/sdk/imp/middle/data/Message;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 1019
    invoke-static {}, Lcom/yofi/sdk/utils/CommonUtils;->instance()Lcom/yofi/sdk/utils/CommonUtils;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/yofi/sdk/utils/CommonUtils;->getFile(Landroid/graphics/Bitmap;)Ljava/io/File;

    move-result-object v7

    .line 1021
    invoke-static {}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->instance()Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->getIsDebug()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    const-string v5, "/playerCenter/message/send"

    const-string v6, "v1"

    const-string v8, "sdk/api/"

    if-eqz v4, :cond_0

    .line 1022
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lcom/yofi/sdk/imp/middle/common/Constants;->DEBUG_SERVER_URL:Ljava/lang/String;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 1024
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lcom/yofi/sdk/imp/middle/common/Constants;->SERVER_URL:Ljava/lang/String;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_0
    move-object v9, v4

    .line 1026
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 1027
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 1029
    :try_start_0
    invoke-static {}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->instance()Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    move-result-object v8

    invoke-virtual {v8}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->getAccessToken()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v3, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1030
    iget-object v8, p0, Lcom/yofi/sdk/imp/middle/view/ChatView$CompressTask;->message:Lcom/yofi/sdk/imp/middle/data/Message;

    invoke-virtual {v8}, Lcom/yofi/sdk/imp/middle/data/Message;->getContentId()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v2, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1031
    iget-object v8, p0, Lcom/yofi/sdk/imp/middle/view/ChatView$CompressTask;->message:Lcom/yofi/sdk/imp/middle/data/Message;

    invoke-virtual {v8}, Lcom/yofi/sdk/imp/middle/data/Message;->getMsgType()I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v1, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1032
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v0, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1033
    invoke-static {}, Lcom/yofi/sdk/utils/CommonUtils;->instance()Lcom/yofi/sdk/utils/CommonUtils;

    move-result-object v8

    invoke-virtual {v8, v6}, Lcom/yofi/sdk/utils/CommonUtils;->getSign(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, p1, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1038
    :catch_0
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 1039
    invoke-static {}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->instance()Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    move-result-object v8

    invoke-virtual {v8}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->getAccessToken()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v10, v3, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1040
    iget-object v3, p0, Lcom/yofi/sdk/imp/middle/view/ChatView$CompressTask;->message:Lcom/yofi/sdk/imp/middle/data/Message;

    invoke-virtual {v3}, Lcom/yofi/sdk/imp/middle/data/Message;->getContentId()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v10, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1041
    iget-object v2, p0, Lcom/yofi/sdk/imp/middle/view/ChatView$CompressTask;->message:Lcom/yofi/sdk/imp/middle/data/Message;

    invoke-virtual {v2}, Lcom/yofi/sdk/imp/middle/data/Message;->getMsgType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v10, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1042
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v10, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1043
    invoke-static {}, Lcom/yofi/sdk/utils/CommonUtils;->instance()Lcom/yofi/sdk/utils/CommonUtils;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/yofi/sdk/utils/CommonUtils;->getSign(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v10, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1044
    invoke-static {}, Lcom/yofi/sdk/utils/UploadUtil;->getInstance()Lcom/yofi/sdk/utils/UploadUtil;

    move-result-object v6

    iget-object v11, p0, Lcom/yofi/sdk/imp/middle/view/ChatView$CompressTask;->message:Lcom/yofi/sdk/imp/middle/data/Message;

    const-string v8, "data"

    invoke-virtual/range {v6 .. v11}, Lcom/yofi/sdk/utils/UploadUtil;->uploadFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/yofi/sdk/imp/middle/data/Message;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "result"
        }
    .end annotation

    .line 1006
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/yofi/sdk/imp/middle/view/ChatView$CompressTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    .line 1051
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    return-void
.end method
