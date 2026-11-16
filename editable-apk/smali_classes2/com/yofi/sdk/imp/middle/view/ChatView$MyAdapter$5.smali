.class Lcom/yofi/sdk/imp/middle/view/ChatView$MyAdapter$5;
.super Landroid/text/style/ClickableSpan;
.source "ChatView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yofi/sdk/imp/middle/view/ChatView$MyAdapter;->setLinkClickable(Landroid/text/SpannableStringBuilder;Landroid/text/style/URLSpan;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/yofi/sdk/imp/middle/view/ChatView$MyAdapter;

.field final synthetic val$urlSpan:Landroid/text/style/URLSpan;


# direct methods
.method constructor <init>(Lcom/yofi/sdk/imp/middle/view/ChatView$MyAdapter;Landroid/text/style/URLSpan;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$1",
            "val$urlSpan"
        }
    .end annotation

    .line 906
    iput-object p1, p0, Lcom/yofi/sdk/imp/middle/view/ChatView$MyAdapter$5;->this$1:Lcom/yofi/sdk/imp/middle/view/ChatView$MyAdapter;

    iput-object p2, p0, Lcom/yofi/sdk/imp/middle/view/ChatView$MyAdapter$5;->val$urlSpan:Landroid/text/style/URLSpan;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 910
    iget-object p1, p0, Lcom/yofi/sdk/imp/middle/view/ChatView$MyAdapter$5;->val$urlSpan:Landroid/text/style/URLSpan;

    invoke-virtual {p1}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object p1

    .line 911
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 913
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 914
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 p1, 0x10000000

    .line 915
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 916
    iget-object p1, p0, Lcom/yofi/sdk/imp/middle/view/ChatView$MyAdapter$5;->this$1:Lcom/yofi/sdk/imp/middle/view/ChatView$MyAdapter;

    iget-object p1, p1, Lcom/yofi/sdk/imp/middle/view/ChatView$MyAdapter;->this$0:Lcom/yofi/sdk/imp/middle/view/ChatView;

    invoke-static {p1}, Lcom/yofi/sdk/imp/middle/view/ChatView;->access$500(Lcom/yofi/sdk/imp/middle/view/ChatView;)Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ds"
        }
    .end annotation

    const-string v0, "#6699FF"

    .line 922
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    const/4 v0, 0x0

    .line 924
    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    return-void
.end method
