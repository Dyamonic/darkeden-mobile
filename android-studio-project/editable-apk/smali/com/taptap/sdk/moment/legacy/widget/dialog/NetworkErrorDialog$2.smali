.class Lcom/taptap/sdk/moment/legacy/widget/dialog/NetworkErrorDialog$2;
.super Ljava/lang/Object;
.source "NetworkErrorDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taptap/sdk/moment/legacy/widget/dialog/NetworkErrorDialog;->initView()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taptap/sdk/moment/legacy/widget/dialog/NetworkErrorDialog;

.field final synthetic val$container:Landroid/widget/LinearLayout;

.field final synthetic val$tip:Landroid/widget/TextView;

.field final synthetic val$ttmGifView:Lcom/taptap/sdk/moment/legacy/widget/TTMGifView;


# direct methods
.method constructor <init>(Lcom/taptap/sdk/moment/legacy/widget/dialog/NetworkErrorDialog;Landroid/widget/TextView;Landroid/widget/LinearLayout;Lcom/taptap/sdk/moment/legacy/widget/TTMGifView;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/NetworkErrorDialog$2;->this$0:Lcom/taptap/sdk/moment/legacy/widget/dialog/NetworkErrorDialog;

    iput-object p2, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/NetworkErrorDialog$2;->val$tip:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/NetworkErrorDialog$2;->val$container:Landroid/widget/LinearLayout;

    iput-object p4, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/NetworkErrorDialog$2;->val$ttmGifView:Lcom/taptap/sdk/moment/legacy/widget/TTMGifView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 126
    iget-object p1, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/NetworkErrorDialog$2;->val$tip:Landroid/widget/TextView;

    new-instance v0, Lcom/taptap/sdk/moment/legacy/widget/dialog/NetworkErrorDialog$2$1;

    invoke-direct {v0, p0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/NetworkErrorDialog$2$1;-><init>(Lcom/taptap/sdk/moment/legacy/widget/dialog/NetworkErrorDialog$2;)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {p1, v0, v1, v2}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
