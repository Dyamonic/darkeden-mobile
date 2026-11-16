.class Lcom/juhe/juhesdk/notchlib/impl/AndroidPNotchScreen$1;
.super Ljava/lang/Object;
.source "AndroidPNotchScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/juhe/juhesdk/notchlib/impl/AndroidPNotchScreen;->getNotchRect(Landroid/app/Activity;Lcom/juhe/juhesdk/notchlib/INotchScreen$NotchSizeCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/juhe/juhesdk/notchlib/impl/AndroidPNotchScreen;

.field final synthetic val$callback:Lcom/juhe/juhesdk/notchlib/INotchScreen$NotchSizeCallback;

.field final synthetic val$contentView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/juhe/juhesdk/notchlib/impl/AndroidPNotchScreen;Landroid/view/View;Lcom/juhe/juhesdk/notchlib/INotchScreen$NotchSizeCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$callback",
            "val$contentView"
        }
    .end annotation

    .line 83
    iput-object p1, p0, Lcom/juhe/juhesdk/notchlib/impl/AndroidPNotchScreen$1;->this$0:Lcom/juhe/juhesdk/notchlib/impl/AndroidPNotchScreen;

    iput-object p2, p0, Lcom/juhe/juhesdk/notchlib/impl/AndroidPNotchScreen$1;->val$contentView:Landroid/view/View;

    iput-object p3, p0, Lcom/juhe/juhesdk/notchlib/impl/AndroidPNotchScreen$1;->val$callback:Lcom/juhe/juhesdk/notchlib/INotchScreen$NotchSizeCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 86
    iget-object v0, p0, Lcom/juhe/juhesdk/notchlib/impl/AndroidPNotchScreen$1;->val$contentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 88
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 90
    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getBoundingRects()Ljava/util/List;

    move-result-object v0

    .line 91
    iget-object v1, p0, Lcom/juhe/juhesdk/notchlib/impl/AndroidPNotchScreen$1;->val$callback:Lcom/juhe/juhesdk/notchlib/INotchScreen$NotchSizeCallback;

    invoke-interface {v1, v0}, Lcom/juhe/juhesdk/notchlib/INotchScreen$NotchSizeCallback;->onResult(Ljava/util/List;)V

    return-void

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/juhe/juhesdk/notchlib/impl/AndroidPNotchScreen$1;->val$callback:Lcom/juhe/juhesdk/notchlib/INotchScreen$NotchSizeCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/juhe/juhesdk/notchlib/INotchScreen$NotchSizeCallback;->onResult(Ljava/util/List;)V

    return-void
.end method
