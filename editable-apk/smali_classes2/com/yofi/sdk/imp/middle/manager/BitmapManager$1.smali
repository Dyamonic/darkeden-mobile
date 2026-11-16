.class Lcom/yofi/sdk/imp/middle/manager/BitmapManager$1;
.super Landroid/os/Handler;
.source "BitmapManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yofi/sdk/imp/middle/manager/BitmapManager;->queueJob(Ljava/lang/String;Landroid/widget/ImageView;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yofi/sdk/imp/middle/manager/BitmapManager;

.field final synthetic val$imageView:Landroid/widget/ImageView;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/yofi/sdk/imp/middle/manager/BitmapManager;Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$url",
            "val$imageView"
        }
    .end annotation

    .line 76
    iput-object p1, p0, Lcom/yofi/sdk/imp/middle/manager/BitmapManager$1;->this$0:Lcom/yofi/sdk/imp/middle/manager/BitmapManager;

    iput-object p2, p0, Lcom/yofi/sdk/imp/middle/manager/BitmapManager$1;->val$imageView:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/yofi/sdk/imp/middle/manager/BitmapManager$1;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    .line 78
    invoke-static {}, Lcom/yofi/sdk/imp/middle/manager/BitmapManager;->access$000()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/yofi/sdk/imp/middle/manager/BitmapManager$1;->val$imageView:Landroid/widget/ImageView;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 79
    iget-object v1, p0, Lcom/yofi/sdk/imp/middle/manager/BitmapManager$1;->val$url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/manager/BitmapManager$1;->val$imageView:Landroid/widget/ImageView;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 82
    :try_start_0
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/manager/BitmapManager$1;->val$imageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/yofi/sdk/imp/middle/manager/BitmapManager$1;->val$url:Ljava/lang/String;

    invoke-static {v1}, Lcom/yofi/sdk/utils/FileUtils;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-static {v0, v1, p1}, Lcom/yofi/sdk/utils/ImageUtils;->saveImage(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 84
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
