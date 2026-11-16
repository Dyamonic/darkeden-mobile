.class Lcom/taptap/sdk/moment/legacy/widget/dialog/InnerBrowserDialog$8;
.super Ljava/lang/Object;
.source "InnerBrowserDialog.java"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taptap/sdk/moment/legacy/widget/dialog/InnerBrowserDialog;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taptap/sdk/moment/legacy/widget/dialog/InnerBrowserDialog;


# direct methods
.method constructor <init>(Lcom/taptap/sdk/moment/legacy/widget/dialog/InnerBrowserDialog;)V
    .locals 0

    .line 400
    iput-object p1, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/InnerBrowserDialog$8;->this$0:Lcom/taptap/sdk/moment/legacy/widget/dialog/InnerBrowserDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 3

    .line 403
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    .line 404
    invoke-virtual {p2}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 406
    iget-object v1, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/InnerBrowserDialog$8;->this$0:Lcom/taptap/sdk/moment/legacy/widget/dialog/InnerBrowserDialog;

    invoke-static {v1}, Lcom/taptap/sdk/moment/legacy/widget/dialog/InnerBrowserDialog;->access$600(Lcom/taptap/sdk/moment/legacy/widget/dialog/InnerBrowserDialog;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0, v2, v2}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 410
    :cond_0
    invoke-virtual {p1, p2}, Landroid/view/View;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p1

    return-object p1
.end method
