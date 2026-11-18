.class Lcom/yofi/sdk/imp/middle/manager/BitmapManager$2;
.super Ljava/lang/Object;
.source "BitmapManager.java"

# interfaces
.implements Ljava/lang/Runnable;


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

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$height:I

.field final synthetic val$url:Ljava/lang/String;

.field final synthetic val$width:I


# direct methods
.method constructor <init>(Lcom/yofi/sdk/imp/middle/manager/BitmapManager;Ljava/lang/String;IILandroid/os/Handler;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$handler",
            "val$height",
            "val$width",
            "val$url"
        }
    .end annotation

    .line 89
    iput-object p1, p0, Lcom/yofi/sdk/imp/middle/manager/BitmapManager$2;->this$0:Lcom/yofi/sdk/imp/middle/manager/BitmapManager;

    iput-object p2, p0, Lcom/yofi/sdk/imp/middle/manager/BitmapManager$2;->val$url:Ljava/lang/String;

    iput p3, p0, Lcom/yofi/sdk/imp/middle/manager/BitmapManager$2;->val$width:I

    iput p4, p0, Lcom/yofi/sdk/imp/middle/manager/BitmapManager$2;->val$height:I

    iput-object p5, p0, Lcom/yofi/sdk/imp/middle/manager/BitmapManager$2;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 91
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 92
    iget-object v1, p0, Lcom/yofi/sdk/imp/middle/manager/BitmapManager$2;->this$0:Lcom/yofi/sdk/imp/middle/manager/BitmapManager;

    iget-object v2, p0, Lcom/yofi/sdk/imp/middle/manager/BitmapManager$2;->val$url:Ljava/lang/String;

    iget v3, p0, Lcom/yofi/sdk/imp/middle/manager/BitmapManager$2;->val$width:I

    iget v4, p0, Lcom/yofi/sdk/imp/middle/manager/BitmapManager$2;->val$height:I

    invoke-static {v1, v2, v3, v4}, Lcom/yofi/sdk/imp/middle/manager/BitmapManager;->access$100(Lcom/yofi/sdk/imp/middle/manager/BitmapManager;Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 93
    iget-object v1, p0, Lcom/yofi/sdk/imp/middle/manager/BitmapManager$2;->val$handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
