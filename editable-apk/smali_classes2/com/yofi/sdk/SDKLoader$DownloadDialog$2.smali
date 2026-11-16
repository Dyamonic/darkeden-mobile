.class Lcom/yofi/sdk/SDKLoader$DownloadDialog$2;
.super Ljava/lang/Thread;
.source "SDKLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yofi/sdk/SDKLoader$DownloadDialog;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/util/List;Lcom/yofi/sdk/SDKLoader$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yofi/sdk/SDKLoader$DownloadDialog;

.field final synthetic val$paths:Ljava/util/List;

.field final synthetic val$urls:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/yofi/sdk/SDKLoader$DownloadDialog;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$paths",
            "val$urls"
        }
    .end annotation

    .line 288
    iput-object p1, p0, Lcom/yofi/sdk/SDKLoader$DownloadDialog$2;->this$0:Lcom/yofi/sdk/SDKLoader$DownloadDialog;

    iput-object p2, p0, Lcom/yofi/sdk/SDKLoader$DownloadDialog$2;->val$urls:Ljava/util/List;

    iput-object p3, p0, Lcom/yofi/sdk/SDKLoader$DownloadDialog$2;->val$paths:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v0, 0x0

    .line 290
    :goto_0
    iget-object v1, p0, Lcom/yofi/sdk/SDKLoader$DownloadDialog$2;->val$urls:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 291
    iget-object v1, p0, Lcom/yofi/sdk/SDKLoader$DownloadDialog$2;->this$0:Lcom/yofi/sdk/SDKLoader$DownloadDialog;

    iget-object v2, p0, Lcom/yofi/sdk/SDKLoader$DownloadDialog$2;->val$urls:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/yofi/sdk/SDKLoader$DownloadDialog$2;->val$paths:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/yofi/sdk/SDKLoader$DownloadDialog;->access$700(Lcom/yofi/sdk/SDKLoader$DownloadDialog;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 293
    :cond_0
    iget-object v0, p0, Lcom/yofi/sdk/SDKLoader$DownloadDialog$2;->this$0:Lcom/yofi/sdk/SDKLoader$DownloadDialog;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/yofi/sdk/SDKLoader$DownloadDialog;->access$800(Lcom/yofi/sdk/SDKLoader$DownloadDialog;I)V

    return-void
.end method
