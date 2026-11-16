.class Lcom/yofi/sdk/utils/UploadUtil$1;
.super Ljava/lang/Object;
.source "UploadUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yofi/sdk/utils/UploadUtil;->uploadFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/yofi/sdk/imp/middle/data/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yofi/sdk/utils/UploadUtil;

.field final synthetic val$RequestURL:Ljava/lang/String;

.field final synthetic val$file:Ljava/io/File;

.field final synthetic val$fileKey:Ljava/lang/String;

.field final synthetic val$msg:Lcom/yofi/sdk/imp/middle/data/Message;

.field final synthetic val$param:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/yofi/sdk/utils/UploadUtil;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/yofi/sdk/imp/middle/data/Message;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$msg",
            "val$param",
            "val$RequestURL",
            "val$fileKey",
            "val$file"
        }
    .end annotation

    .line 116
    iput-object p1, p0, Lcom/yofi/sdk/utils/UploadUtil$1;->this$0:Lcom/yofi/sdk/utils/UploadUtil;

    iput-object p2, p0, Lcom/yofi/sdk/utils/UploadUtil$1;->val$file:Ljava/io/File;

    iput-object p3, p0, Lcom/yofi/sdk/utils/UploadUtil$1;->val$fileKey:Ljava/lang/String;

    iput-object p4, p0, Lcom/yofi/sdk/utils/UploadUtil$1;->val$RequestURL:Ljava/lang/String;

    iput-object p5, p0, Lcom/yofi/sdk/utils/UploadUtil$1;->val$param:Ljava/util/Map;

    iput-object p6, p0, Lcom/yofi/sdk/utils/UploadUtil$1;->val$msg:Lcom/yofi/sdk/imp/middle/data/Message;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 119
    iget-object v0, p0, Lcom/yofi/sdk/utils/UploadUtil$1;->this$0:Lcom/yofi/sdk/utils/UploadUtil;

    iget-object v1, p0, Lcom/yofi/sdk/utils/UploadUtil$1;->val$file:Ljava/io/File;

    iget-object v2, p0, Lcom/yofi/sdk/utils/UploadUtil$1;->val$fileKey:Ljava/lang/String;

    iget-object v3, p0, Lcom/yofi/sdk/utils/UploadUtil$1;->val$RequestURL:Ljava/lang/String;

    iget-object v4, p0, Lcom/yofi/sdk/utils/UploadUtil$1;->val$param:Ljava/util/Map;

    iget-object v5, p0, Lcom/yofi/sdk/utils/UploadUtil$1;->val$msg:Lcom/yofi/sdk/imp/middle/data/Message;

    invoke-static/range {v0 .. v5}, Lcom/yofi/sdk/utils/UploadUtil;->access$000(Lcom/yofi/sdk/utils/UploadUtil;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/yofi/sdk/imp/middle/data/Message;)V

    return-void
.end method
