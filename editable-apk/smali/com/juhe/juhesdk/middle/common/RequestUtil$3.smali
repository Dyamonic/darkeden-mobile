.class Lcom/juhe/juhesdk/middle/common/RequestUtil$3;
.super Ljava/lang/Object;
.source "RequestUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/juhe/juhesdk/middle/common/RequestUtil;->urlHttpUploadFile(Ljava/lang/String;Ljava/io/File;Ljava/util/List;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/juhe/juhesdk/middle/common/CallBackUtil;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/juhe/juhesdk/middle/common/RequestUtil;

.field final synthetic val$callBack:Lcom/juhe/juhesdk/middle/common/CallBackUtil;

.field final synthetic val$file:Ljava/io/File;

.field final synthetic val$fileKey:Ljava/lang/String;

.field final synthetic val$fileList:Ljava/util/List;

.field final synthetic val$fileMap:Ljava/util/Map;

.field final synthetic val$fileType:Ljava/lang/String;

.field final synthetic val$headerMap:Ljava/util/Map;

.field final synthetic val$paramsMap:Ljava/util/Map;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/juhe/juhesdk/middle/common/RequestUtil;Ljava/lang/String;Ljava/io/File;Ljava/util/List;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/juhe/juhesdk/middle/common/CallBackUtil;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$callBack",
            "val$headerMap",
            "val$paramsMap",
            "val$fileType",
            "val$fileKey",
            "val$fileMap",
            "val$fileList",
            "val$file",
            "val$url"
        }
    .end annotation

    .line 89
    iput-object p1, p0, Lcom/juhe/juhesdk/middle/common/RequestUtil$3;->this$0:Lcom/juhe/juhesdk/middle/common/RequestUtil;

    iput-object p2, p0, Lcom/juhe/juhesdk/middle/common/RequestUtil$3;->val$url:Ljava/lang/String;

    iput-object p3, p0, Lcom/juhe/juhesdk/middle/common/RequestUtil$3;->val$file:Ljava/io/File;

    iput-object p4, p0, Lcom/juhe/juhesdk/middle/common/RequestUtil$3;->val$fileList:Ljava/util/List;

    iput-object p5, p0, Lcom/juhe/juhesdk/middle/common/RequestUtil$3;->val$fileMap:Ljava/util/Map;

    iput-object p6, p0, Lcom/juhe/juhesdk/middle/common/RequestUtil$3;->val$fileKey:Ljava/lang/String;

    iput-object p7, p0, Lcom/juhe/juhesdk/middle/common/RequestUtil$3;->val$fileType:Ljava/lang/String;

    iput-object p8, p0, Lcom/juhe/juhesdk/middle/common/RequestUtil$3;->val$paramsMap:Ljava/util/Map;

    iput-object p9, p0, Lcom/juhe/juhesdk/middle/common/RequestUtil$3;->val$headerMap:Ljava/util/Map;

    iput-object p10, p0, Lcom/juhe/juhesdk/middle/common/RequestUtil$3;->val$callBack:Lcom/juhe/juhesdk/middle/common/CallBackUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 93
    new-instance v0, Lcom/juhe/juhesdk/middle/common/RealRequest;

    invoke-direct {v0}, Lcom/juhe/juhesdk/middle/common/RealRequest;-><init>()V

    iget-object v1, p0, Lcom/juhe/juhesdk/middle/common/RequestUtil$3;->val$url:Ljava/lang/String;

    iget-object v2, p0, Lcom/juhe/juhesdk/middle/common/RequestUtil$3;->val$file:Ljava/io/File;

    iget-object v3, p0, Lcom/juhe/juhesdk/middle/common/RequestUtil$3;->val$fileList:Ljava/util/List;

    iget-object v4, p0, Lcom/juhe/juhesdk/middle/common/RequestUtil$3;->val$fileMap:Ljava/util/Map;

    iget-object v5, p0, Lcom/juhe/juhesdk/middle/common/RequestUtil$3;->val$fileKey:Ljava/lang/String;

    iget-object v6, p0, Lcom/juhe/juhesdk/middle/common/RequestUtil$3;->val$fileType:Ljava/lang/String;

    iget-object v7, p0, Lcom/juhe/juhesdk/middle/common/RequestUtil$3;->val$paramsMap:Ljava/util/Map;

    iget-object v8, p0, Lcom/juhe/juhesdk/middle/common/RequestUtil$3;->val$headerMap:Ljava/util/Map;

    iget-object v9, p0, Lcom/juhe/juhesdk/middle/common/RequestUtil$3;->val$callBack:Lcom/juhe/juhesdk/middle/common/CallBackUtil;

    invoke-virtual/range {v0 .. v9}, Lcom/juhe/juhesdk/middle/common/RealRequest;->uploadFile(Ljava/lang/String;Ljava/io/File;Ljava/util/List;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/juhe/juhesdk/middle/common/CallBackUtil;)Lcom/juhe/juhesdk/middle/common/RealResponse;

    move-result-object v0

    .line 94
    iget v1, v0, Lcom/juhe/juhesdk/middle/common/RealResponse;->code:I

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_0

    .line 95
    iget-object v1, p0, Lcom/juhe/juhesdk/middle/common/RequestUtil$3;->val$callBack:Lcom/juhe/juhesdk/middle/common/CallBackUtil;

    invoke-virtual {v1, v0}, Lcom/juhe/juhesdk/middle/common/CallBackUtil;->onSeccess(Lcom/juhe/juhesdk/middle/common/RealResponse;)V

    goto :goto_0

    .line 97
    :cond_0
    iget-object v1, p0, Lcom/juhe/juhesdk/middle/common/RequestUtil$3;->val$callBack:Lcom/juhe/juhesdk/middle/common/CallBackUtil;

    invoke-virtual {v1, v0}, Lcom/juhe/juhesdk/middle/common/CallBackUtil;->onError(Lcom/juhe/juhesdk/middle/common/RealResponse;)V

    :goto_0
    return-void
.end method
