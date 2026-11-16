.class Lcom/yofi/sdk/cachewebviewlib/AssetsLoader$1;
.super Ljava/lang/Object;
.source "AssetsLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yofi/sdk/cachewebviewlib/AssetsLoader;->initData()Lcom/yofi/sdk/cachewebviewlib/AssetsLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yofi/sdk/cachewebviewlib/AssetsLoader;


# direct methods
.method constructor <init>(Lcom/yofi/sdk/cachewebviewlib/AssetsLoader;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 105
    iput-object p1, p0, Lcom/yofi/sdk/cachewebviewlib/AssetsLoader$1;->this$0:Lcom/yofi/sdk/cachewebviewlib/AssetsLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 108
    iget-object v0, p0, Lcom/yofi/sdk/cachewebviewlib/AssetsLoader$1;->this$0:Lcom/yofi/sdk/cachewebviewlib/AssetsLoader;

    invoke-static {v0}, Lcom/yofi/sdk/cachewebviewlib/AssetsLoader;->access$000(Lcom/yofi/sdk/cachewebviewlib/AssetsLoader;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yofi/sdk/cachewebviewlib/AssetsLoader;->access$100(Lcom/yofi/sdk/cachewebviewlib/AssetsLoader;Ljava/lang/String;)Lcom/yofi/sdk/cachewebviewlib/AssetsLoader;

    return-void
.end method
