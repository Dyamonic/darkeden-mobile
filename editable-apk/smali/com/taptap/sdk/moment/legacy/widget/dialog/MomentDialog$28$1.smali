.class Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$28$1;
.super Landroid/webkit/WebViewClient;
.source "MomentDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$28;->onCreateWindow(Landroid/webkit/WebView;ZZLandroid/os/Message;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$28;


# direct methods
.method constructor <init>(Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$28;)V
    .locals 0

    .line 630
    iput-object p1, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$28$1;->this$1:Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$28;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1

    .line 633
    new-instance p1, Landroid/content/Intent;

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {p1, v0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 634
    iget-object p2, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$28$1;->this$1:Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$28;

    iget-object p2, p2, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$28;->this$0:Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;

    invoke-virtual {p2, p1}, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;->startActivity(Landroid/content/Intent;)V

    const/4 p1, 0x1

    return p1
.end method
