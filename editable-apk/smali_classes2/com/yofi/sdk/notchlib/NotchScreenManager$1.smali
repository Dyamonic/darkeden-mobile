.class Lcom/yofi/sdk/notchlib/NotchScreenManager$1;
.super Ljava/lang/Object;
.source "NotchScreenManager.java"

# interfaces
.implements Lcom/yofi/sdk/notchlib/INotchScreen$NotchSizeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yofi/sdk/notchlib/NotchScreenManager;->getNotchInfo(Landroid/app/Activity;Lcom/yofi/sdk/notchlib/INotchScreen$NotchScreenCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yofi/sdk/notchlib/NotchScreenManager;

.field final synthetic val$notchScreenCallback:Lcom/yofi/sdk/notchlib/INotchScreen$NotchScreenCallback;

.field final synthetic val$notchScreenInfo:Lcom/yofi/sdk/notchlib/INotchScreen$NotchScreenInfo;


# direct methods
.method constructor <init>(Lcom/yofi/sdk/notchlib/NotchScreenManager;Lcom/yofi/sdk/notchlib/INotchScreen$NotchScreenInfo;Lcom/yofi/sdk/notchlib/INotchScreen$NotchScreenCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$notchScreenCallback",
            "val$notchScreenInfo"
        }
    .end annotation

    .line 37
    iput-object p1, p0, Lcom/yofi/sdk/notchlib/NotchScreenManager$1;->this$0:Lcom/yofi/sdk/notchlib/NotchScreenManager;

    iput-object p2, p0, Lcom/yofi/sdk/notchlib/NotchScreenManager$1;->val$notchScreenInfo:Lcom/yofi/sdk/notchlib/INotchScreen$NotchScreenInfo;

    iput-object p3, p0, Lcom/yofi/sdk/notchlib/NotchScreenManager$1;->val$notchScreenCallback:Lcom/yofi/sdk/notchlib/INotchScreen$NotchScreenCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "notchRects"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 40
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/yofi/sdk/notchlib/NotchScreenManager$1;->val$notchScreenInfo:Lcom/yofi/sdk/notchlib/INotchScreen$NotchScreenInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/yofi/sdk/notchlib/INotchScreen$NotchScreenInfo;->hasNotch:Z

    .line 42
    iget-object v0, p0, Lcom/yofi/sdk/notchlib/NotchScreenManager$1;->val$notchScreenInfo:Lcom/yofi/sdk/notchlib/INotchScreen$NotchScreenInfo;

    iput-object p1, v0, Lcom/yofi/sdk/notchlib/INotchScreen$NotchScreenInfo;->notchRects:Ljava/util/List;

    .line 44
    :cond_0
    iget-object p1, p0, Lcom/yofi/sdk/notchlib/NotchScreenManager$1;->val$notchScreenCallback:Lcom/yofi/sdk/notchlib/INotchScreen$NotchScreenCallback;

    iget-object v0, p0, Lcom/yofi/sdk/notchlib/NotchScreenManager$1;->val$notchScreenInfo:Lcom/yofi/sdk/notchlib/INotchScreen$NotchScreenInfo;

    invoke-interface {p1, v0}, Lcom/yofi/sdk/notchlib/INotchScreen$NotchScreenCallback;->onResult(Lcom/yofi/sdk/notchlib/INotchScreen$NotchScreenInfo;)V

    return-void
.end method
