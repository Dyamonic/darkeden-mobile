.class Lcom/yofi/sdk/imp/middle/view/ChatView$MyAdapter;
.super Landroid/widget/BaseAdapter;
.source "ChatView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yofi/sdk/imp/middle/view/ChatView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yofi/sdk/imp/middle/view/ChatView;


# direct methods
.method private constructor <init>(Lcom/yofi/sdk/imp/middle/view/ChatView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 715
    iput-object p1, p0, Lcom/yofi/sdk/imp/middle/view/ChatView$MyAdapter;->this$0:Lcom/yofi/sdk/imp/middle/view/ChatView;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/yofi/sdk/imp/middle/view/ChatView;Lcom/yofi/sdk/imp/middle/view/ChatView$1;)V
    .locals 0

    .line 715
    invoke-direct {p0, p1}, Lcom/yofi/sdk/imp/middle/view/ChatView$MyAdapter;-><init>(Lcom/yofi/sdk/imp/middle/view/ChatView;)V

    return-void
.end method

.method private getClickableHtml(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "html"
        }
    .end annotation

    .line 932
    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    .line 933
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 934
    invoke-interface {p1}, Landroid/text/Spanned;->length()I

    move-result p1

    const-class v1, Landroid/text/style/URLSpan;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, p1, v1}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/text/style/URLSpan;

    .line 935
    array-length v1, p1

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    .line 936
    invoke-direct {p0, v0, v3}, Lcom/yofi/sdk/imp/middle/view/ChatView$MyAdapter;->setLinkClickable(Landroid/text/SpannableStringBuilder;Landroid/text/style/URLSpan;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private setLinkClickable(Landroid/text/SpannableStringBuilder;Landroid/text/style/URLSpan;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "clickableHtmlBuilder",
            "urlSpan"
        }
    .end annotation

    .line 903
    invoke-virtual {p1, p2}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    .line 904
    invoke-virtual {p1, p2}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v1

    .line 905
    invoke-virtual {p1, p2}, Landroid/text/SpannableStringBuilder;->getSpanFlags(Ljava/lang/Object;)I

    .line 906
    new-instance v2, Lcom/yofi/sdk/imp/middle/view/ChatView$MyAdapter$5;

    invoke-direct {v2, p0, p2}, Lcom/yofi/sdk/imp/middle/view/ChatView$MyAdapter$5;-><init>(Lcom/yofi/sdk/imp/middle/view/ChatView$MyAdapter;Landroid/text/style/URLSpan;)V

    const/16 p2, 0x21

    .line 928
    invoke-virtual {p1, v2, v0, v1, p2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 719
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/view/ChatView$MyAdapter;->this$0:Lcom/yofi/sdk/imp/middle/view/ChatView;

    invoke-static {v0}, Lcom/yofi/sdk/imp/middle/view/ChatView;->access$200(Lcom/yofi/sdk/imp/middle/view/ChatView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/yofi/sdk/imp/middle/data/Message;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 724
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/view/ChatView$MyAdapter;->this$0:Lcom/yofi/sdk/imp/middle/view/ChatView;

    invoke-static {v0}, Lcom/yofi/sdk/imp/middle/view/ChatView;->access$200(Lcom/yofi/sdk/imp/middle/view/ChatView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/yofi/sdk/imp/middle/data/Message;

    return-object p1
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "position"
        }
    .end annotation

    .line 715
    invoke-virtual {p0, p1}, Lcom/yofi/sdk/imp/middle/view/ChatView$MyAdapter;->getItem(I)Lcom/yofi/sdk/imp/middle/data/Message;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0,
            0x0
        }
        names = {
            "position",
            "convertView",
            "parent"
        }
    .end annotation

    .line 736
    iget-object p3, p0, Lcom/yofi/sdk/imp/middle/view/ChatView$MyAdapter;->this$0:Lcom/yofi/sdk/imp/middle/view/ChatView;

    invoke-static {p3}, Lcom/yofi/sdk/imp/middle/view/ChatView;->access$200(Lcom/yofi/sdk/imp/middle/view/ChatView;)Ljava/util/List;

    move-result-object p3

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/yofi/sdk/imp/middle/data/Message;

    if-nez p2, :cond_0

    .line 738
    new-instance p2, Lcom/yofi/sdk/imp/middle/view/ChatView$ViewHolder;

    const/4 p3, 0x0

    invoke-direct {p2, p3}, Lcom/yofi/sdk/imp/middle/view/ChatView$ViewHolder;-><init>(Lcom/yofi/sdk/imp/middle/view/ChatView$1;)V

    .line 739
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/view/ChatView$MyAdapter;->this$0:Lcom/yofi/sdk/imp/middle/view/ChatView;

    invoke-static {v0}, Lcom/yofi/sdk/imp/middle/view/ChatView;->access$500(Lcom/yofi/sdk/imp/middle/view/ChatView;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/yofi/sdk/imp/middle/view/ChatView$MyAdapter;->this$0:Lcom/yofi/sdk/imp/middle/view/ChatView;

    invoke-static {v1}, Lcom/yofi/sdk/imp/middle/view/ChatView;->access$500(Lcom/yofi/sdk/imp/middle/view/ChatView;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/yofi/sdk/imp/middle/view/ChatView$MyAdapter;->this$0:Lcom/yofi/sdk/imp/middle/view/ChatView;

    invoke-static {v2}, Lcom/yofi/sdk/imp/middle/view/ChatView;->access$500(Lcom/yofi/sdk/imp/middle/view/ChatView;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "yofi_item"

    const-string v4, "layout"

    invoke-virtual {v1, v3, v4, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1, p3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    .line 740
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/view/ChatView$MyAdapter;->this$0:Lcom/yofi/sdk/imp/middle/view/ChatView;

    invoke-static {v0}, Lcom/yofi/sdk/imp/middle/view/ChatView;->access$500(Lcom/yofi/sdk/imp/middle/view/ChatView;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/yofi/sdk/imp/middle/view/ChatView$MyAdapter;->this$0:Lcom/yofi/sdk/imp/middle/view/ChatView;

    invoke-static {v1}, Lcom/yofi/sdk/imp/middle/view/ChatView;->access$500(Lcom/yofi/sdk/imp/middle/view/ChatView;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "tv_receive"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/yofi/sdk/imp/middle/view/ChatView$ViewHolder;->tvReceive:Landroid/widget/TextView;

    .line 741
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/view/ChatView$MyAdapter;->this$0:Lcom/yofi/sdk/imp/middle/view/ChatView;

    invoke-static {v0}, Lcom/yofi/sdk/imp/middle/view/ChatView;->access$500(Lcom/yofi/sdk/imp/middle/view/ChatView;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/yofi/sdk/imp/middle/view/ChatView$MyAdapter;->this$0:Lcom/yofi/sdk/imp/middle/view/ChatView;

    invoke-static {v1}, Lcom/yofi/sdk/imp/middle/view/ChatView;->access$500(Lcom/yofi/sdk/imp/middle/view/ChatView;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "tv_send"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/yofi/sdk/imp/middle/view/ChatView$ViewHolder;->tvSend:Landroid/widget/TextView;

    .line 742
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/view/ChatView$MyAdapter;->this$0:Lcom/yofi/sdk/imp/middle/view/ChatView;

    invoke-static {v0}, Lcom/yofi/sdk/imp/middle/view/ChatView;->access$500(Lcom/yofi/sdk/imp/middle/view/ChatView;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/yofi/sdk/imp/middle/view/ChatView$MyAdapter;->this$0:Lcom/yofi/sdk/imp/middle/view/ChatView;

    invoke-static {v1}, Lcom/yofi/sdk/imp/middle/view/ChatView;->access$500(Lcom/yofi/sdk/imp/middle/view/ChatView;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "tv_receive_time"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/yofi/sdk/imp/middle/view/ChatView$ViewHolder;->tvReceiveTime:Landroid/widget/TextView;

    .line 743
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/view/ChatView$MyAdapter;->this$0:Lcom/yofi/sdk/imp/middle/view/ChatView;

    invoke-static {v0}, Lcom/yofi/sdk/imp/middle/view/ChatView;->access$500(Lcom/yofi/sdk/imp/middle/view/ChatView;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/yofi/sdk/imp/middle/view/ChatView$MyAdapter;->this$0:Lcom/yofi/sdk/imp/middle/view/ChatView;

    invoke-static {v1}, Lcom/yofi/sdk/imp/middle/view/ChatView;->access$500(Lcom/yofi/sdk/imp/middle/view/ChatView;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "tv_send_time"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/yofi/sdk/imp/middle/view/ChatView$ViewHolder;->tvSendTime:Landroid/widget/TextView;

    .line 744
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/view/ChatView$MyAdapter;->this$0:Lcom/yofi/sdk/imp/middle/view/ChatView;

    invoke-static {v0}, Lcom/yofi/sdk/imp/middle/view/ChatView;->access$500(Lcom/yofi/sdk/imp/middle/view/ChatView;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/yofi/sdk/imp/middle/view/ChatView$MyAdapter;->this$0:Lcom/yofi/sdk/imp/middle/view/ChatView;

    invoke-static {v1}, Lcom/yofi/sdk/imp/middle/view/ChatView;->access$500(Lcom/yofi/sdk/imp/middle/view/ChatView;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "iv_send"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p2, Lcom/yofi/sdk/imp/middle/view/ChatView$ViewHolder;->ivSend:Landroid/widget/ImageView;

    .line 745
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/view/ChatView$MyAdapter;->this$0:Lcom/yofi/sdk/imp/middle/view/ChatView;

    invoke-static {v0}, Lcom/yofi/sdk/imp/middle/view/ChatView;->access$500(Lcom/yofi/sdk/imp/middle/view/ChatView;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/yofi/sdk/imp/middle/view/ChatView$MyAdapter;->this$0:Lcom/yofi/sdk/imp/middle/view/ChatView;

    invoke-static {v1}, Lcom/yofi/sdk/imp/middle/view/ChatView;->access$500(Lcom/yofi/sdk/imp/middle/view/ChatView;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "iv_receive"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p2, Lcom/yofi/sdk/imp/middle/view/ChatView$ViewHolder;->ivReceive:Landroid/widget/ImageView;

    .line 746
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/view/ChatView$MyAdapter;->this$0:Lcom/yofi/sdk/imp/middle/view/ChatView;

    invoke-static {v0}, Lcom/yofi/sdk/imp/middle/view/ChatView;->access$500(Lcom/yofi/sdk/imp/middle/view/ChatView;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/yofi/sdk/imp/middle/view/ChatView$MyAdapter;->this$0:Lcom/yofi/sdk/imp/middle/view/ChatView;

    invoke-static {v1}, Lcom/yofi/sdk/imp/middle/view/ChatView;->access$500(Lcom/yofi/sdk/imp/middle/view/ChatView;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "iv_content_end"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p2, Lcom/yofi/sdk/imp/middle/view/ChatView$ViewHolder;->ivContentEnd:Landroid/widget/ImageView;

    .line 747
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/view/ChatView$MyAdapter;->this$0:Lcom/yofi/sdk/imp/middle/view/ChatView;

    invoke-static {v0}, Lcom/yofi/sdk/imp/middle/view/ChatView;->access$500(Lcom/yofi/sdk/imp/middle/view/ChatView;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/yofi/sdk/imp/middle/view/ChatView$MyAdapter;->this$0:Lcom/yofi/sdk/imp/middle/view/ChatView;

    invoke-static {v1}, Lcom/yofi/sdk/imp/middle/view/ChatView;->access$500(Lcom/yofi/sdk/imp/middle/view/ChatView;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "msg_failed"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p2, Lcom/yofi/sdk/imp/middle/view/ChatView$ViewHolder;->ivMsgFailed:Landroid/widget/ImageView;

    .line 748
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/view/ChatView$MyAdapter;->this$0:Lcom/yofi/sdk/imp/middle/view/ChatView;

    invoke-static {v0}, Lcom/yofi/sdk/imp/middle/view/ChatView;->access$500(Lcom/yofi/sdk/imp/middle/view/ChatView;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/yofi/sdk/imp/middle/view/ChatView$MyAdapter;->this$0:Lcom/yofi/sdk/imp/middle/view/ChatView;

    invoke-static {v1}, Lcom/yofi/sdk/imp/middle/view/ChatView;->access$500(Lcom/yofi/sdk/imp/middle/view/ChatView;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "tv_server_role"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/yofi/sdk/imp/middle/view/ChatView$ViewHolder;->tvServerRole:Landroid/widget/TextView;

    .line 749
    invoke-virtual {p3, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 752
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/yofi/sdk/imp/middle/view/ChatView$ViewHolder;

    move-object v9, p3

    move-object p3, p2

    move-object p2, v9

    .line 755
    :goto_0
    iget-object v0, p2, Lcom/yofi/sdk/imp/middle/view/ChatView$ViewHolder;->ivReceive:Landroid/widget/ImageView;

    new-instance v1, Lcom/yofi/sdk/imp/middle/view/ChatView$MyAdapter$1;

    invoke-direct {v1, p0, p1}, Lcom/yofi/sdk/imp/middle/view/ChatView$MyAdapter$1;-><init>(Lcom/yofi/sdk/imp/middle/view/ChatView$MyAdapter;Lcom/yofi/sdk/imp/middle/data/Message;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 765
    iget-object v0, p2, Lcom/yofi/sdk/imp/middle/view/ChatView$ViewHolder;->ivSend:Landroid/widget/ImageView;

    new-instance v1, Lcom/yofi/sdk/imp/middle/view/ChatView$MyAdapter$2;

    invoke-direct {v1, p0, p1}, Lcom/yofi/sdk/imp/middle/view/ChatView$MyAdapter$2;-><init>(Lcom/yofi/sdk/imp/middle/view/ChatView$MyAdapter;Lcom/yofi/sdk/imp/middle/data/Message;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 775
    iget-object v0, p2, Lcom/yofi/sdk/imp/middle/view/ChatView$ViewHolder;->ivMsgFailed:Landroid/widget/ImageView;

    new-instance v1, Lcom/yofi/sdk/imp/middle/view/ChatView$MyAdapter$3;

    invoke-direct {v1, p0}, Lcom/yofi/sdk/imp/middle/view/ChatView$MyAdapter$3;-><init>(Lcom/yofi/sdk/imp/middle/view/ChatView$MyAdapter;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 784
    invoke-virtual {p1}, Lcom/yofi/sdk/imp/middle/data/Message;->getMsgType()I

    move-result v0

    sget-object v1, Lcom/yofi/sdk/imp/middle/common/Constants$MESSAGE_TYPE;->END:Lcom/yofi/sdk/imp/middle/common/Constants$MESSAGE_TYPE;

    invoke-virtual {v1}, Lcom/yofi/sdk/imp/middle/common/Constants$MESSAGE_TYPE;->getValue()I

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-ne v0, v1, :cond_2

    .line 785
    invoke-virtual {p1}, Lcom/yofi/sdk/imp/middle/data/Message;->getContent()Ljava/lang/String;

    move-result-object v0

    .line 786
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 787
    invoke-virtual {v1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 788
    new-instance v4, Lcom/yofi/sdk/imp/middle/view/ChatView$MyAdapter$4;

    invoke-direct {v4, p0, p1}, Lcom/yofi/sdk/imp/middle/view/ChatView$MyAdapter$4;-><init>(Lcom/yofi/sdk/imp/middle/view/ChatView$MyAdapter;Lcom/yofi/sdk/imp/middle/data/Message;)V

    .line 801
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 802
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v5, 0x21

    invoke-virtual {v1, v4, p1, v0, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 804
    :cond_1
    iget-object p1, p2, Lcom/yofi/sdk/imp/middle/view/ChatView$ViewHolder;->tvReceive:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 805
    iget-object p1, p2, Lcom/yofi/sdk/imp/middle/view/ChatView$ViewHolder;->tvReceive:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 806
    iget-object p1, p2, Lcom/yofi/sdk/imp/middle/view/ChatView$ViewHolder;->tvReceive:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 807
    iget-object p1, p2, Lcom/yofi/sdk/imp/middle/view/ChatView$ViewHolder;->tvReceive:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 808
    iget-object p1, p2, Lcom/yofi/sdk/imp/middle/view/ChatView$ViewHolder;->tvReceiveTime:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 809
    iget-object p1, p2, Lcom/yofi/sdk/imp/middle/view/ChatView$ViewHolder;->tvSendTime:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 810
    iget-object p1, p2, Lcom/yofi/sdk/imp/middle/view/ChatView$ViewHolder;->tvSend:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 811
    iget-object p1, p2, Lcom/yofi/sdk/imp/middle/view/ChatView$ViewHolder;->ivSend:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 812
    iget-object p1, p2, Lcom/yofi/sdk/imp/middle/view/ChatView$ViewHolder;->ivContentEnd:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 813
    iget-object p1, p2, Lcom/yofi/sdk/imp/middle/view/ChatView$ViewHolder;->ivMsgFailed:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 814
    iget-object p1, p2, Lcom/yofi/sdk/imp/middle/view/ChatView$ViewHolder;->tvServerRole:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 815
    iget-object p1, p2, Lcom/yofi/sdk/imp/middle/view/ChatView$ViewHolder;->ivReceive:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1

    .line 817
    :cond_2
    invoke-virtual {p1}, Lcom/yofi/sdk/imp/middle/data/Message;->getType()I

    move-result v0

    sget-object v1, Lcom/yofi/sdk/imp/middle/common/Constants$MESSAGE_TYPE;->SEND:Lcom/yofi/sdk/imp/middle/common/Constants$MESSAGE_TYPE;

    invoke-virtual {v1}, Lcom/yofi/sdk/imp/middle/common/Constants$MESSAGE_TYPE;->getValue()I

    move-result v1

    const/16 v4, 0xfa

    const/16 v5, 0x190

    const/16 v6, 0xb

    const/4 v7, 0x1

    if-ne v0, v1, :cond_7

    .line 818
    iget-object v0, p2, Lcom/yofi/sdk/imp/middle/view/ChatView$ViewHolder;->tvReceive:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 819
    iget-object v0, p2, Lcom/yofi/sdk/imp/middle/view/ChatView$ViewHolder;->tvReceiveTime:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 820
    iget-object v0, p2, Lcom/yofi/sdk/imp/middle/view/ChatView$ViewHolder;->ivReceive:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 821
    iget-object v0, p2, Lcom/yofi/sdk/imp/middle/view/ChatView$ViewHolder;->tvSendTime:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 822
    iget-object v0, p2, Lcom/yofi/sdk/imp/middle/view/ChatView$ViewHolder;->tvServerRole:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 823
    iget-object v0, p2, Lcom/yofi/sdk/imp/middle/view/ChatView$ViewHolder;->tvSendTime:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/yofi/sdk/imp/middle/data/Message;->getFormatCreateTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 824
    iget-object v0, p2, Lcom/yofi/sdk/imp/middle/view/ChatView$ViewHolder;->tvServerRole:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/yofi/sdk/imp/middle/view/ChatView$MyAdapter;->this$0:Lcom/yofi/sdk/imp/middle/view/ChatView;

    invoke-static {v8}, Lcom/yofi/sdk/imp/middle/view/ChatView;->access$1300(Lcom/yofi/sdk/imp/middle/view/ChatView;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/yofi/sdk/imp/middle/view/ChatView$MyAdapter;->this$0:Lcom/yofi/sdk/imp/middle/view/ChatView;

    invoke-static {v8}, Lcom/yofi/sdk/imp/middle/view/ChatView;->access$1500(Lcom/yofi/sdk/imp/middle/view/ChatView;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 825
    iget-object v0, p2, Lcom/yofi/sdk/imp/middle/view/ChatView$ViewHolder;->tvSend:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 826
    iget-object v0, p2, Lcom/yofi/sdk/imp/middle/view/ChatView$ViewHolder;->ivSend:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 827
    iget-object v0, p2, Lcom/yofi/sdk/imp/middle/view/ChatView$ViewHolder;->ivContentEnd:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 828
    iget-object v0, p2, Lcom/yofi/sdk/imp/middle/view/ChatView$ViewHolder;->ivMsgFailed:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 829
    invoke-virtual {p1}, Lcom/yofi/sdk/imp/middle/data/Message;->getMsgType()I

    move-result v0

    sget-object v1, Lcom/yofi/sdk/imp/middle/common/Constants$MESSAGE_CONTENT_TYPE;->TEXT:Lcom/yofi/sdk/imp/middle/common/Constants$MESSAGE_CONTENT_TYPE;

    invoke-virtual {v1}, Lcom/yofi/sdk/imp/middle/common/Constants$MESSAGE_CONTENT_TYPE;->getValue()I

    move-result v1

    if-ne v0, v1, :cond_4

    .line 830
    iget-object v0, p2, Lcom/yofi/sdk/imp/middle/view/ChatView$ViewHolder;->tvSend:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 833
    iget-object v0, p2, Lcom/yofi/sdk/imp/middle/view/ChatView$ViewHolder;->tvSend:Landroid/widget/TextView;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAutoLinkMask(I)V

    .line 834
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v6, :cond_3

    .line 835
    iget-object v0, p2, Lcom/yofi/sdk/imp/middle/view/ChatView$ViewHolder;->tvSend:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setTextIsSelectable(Z)V

    .line 837
    :cond_3
    iget-object v0, p2, Lcom/yofi/sdk/imp/middle/view/ChatView$ViewHolder;->tvSend:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/yofi/sdk/imp/middle/data/Message;->getContent()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/yofi/sdk/imp/middle/view/ChatView$MyAdapter;->getClickableHtml(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 838
    iget-object p1, p2, Lcom/yofi/sdk/imp/middle/view/ChatView$ViewHolder;->tvSend:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    goto/16 :goto_1

    .line 843
    :cond_4
    iget-object v0, p2, Lcom/yofi/sdk/imp/middle/view/ChatView$ViewHolder;->ivSend:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 844
    invoke-virtual {p1}, Lcom/yofi/sdk/imp/middle/data/Message;->getData()[B

    move-result-object v0

    invoke-virtual {p1}, Lcom/yofi/sdk/imp/middle/data/Message;->getData()[B

    move-result-object p1

    array-length p1, p1

    invoke-static {v0, v2, p1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_5

    const-string v0, "YofiChatview"

    const-string v1, "\u5c55\u793a\u56fe\u7247\u83b7\u53d6bitmap\u6210\u529f "

    .line 846
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 848
    :cond_5
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/yofi/sdk/imp/middle/view/ChatView$MyAdapter;->this$0:Lcom/yofi/sdk/imp/middle/view/ChatView;

    invoke-static {v1}, Lcom/yofi/sdk/imp/middle/view/ChatView;->access$500(Lcom/yofi/sdk/imp/middle/view/ChatView;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 849
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt p1, v1, :cond_6

    .line 850
    iget-object p1, p2, Lcom/yofi/sdk/imp/middle/view/ChatView$ViewHolder;->ivSend:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 853
    :cond_6
    iget-object p1, p2, Lcom/yofi/sdk/imp/middle/view/ChatView$ViewHolder;->ivSend:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 854
    iput v5, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 855
    iput v4, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 856
    iget-object p2, p2, Lcom/yofi/sdk/imp/middle/view/ChatView$ViewHolder;->ivSend:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1

    .line 858
    :cond_7
    invoke-virtual {p1}, Lcom/yofi/sdk/imp/middle/data/Message;->getType()I

    move-result v0

    sget-object v1, Lcom/yofi/sdk/imp/middle/common/Constants$MESSAGE_TYPE;->RECEIVE:Lcom/yofi/sdk/imp/middle/common/Constants$MESSAGE_TYPE;

    invoke-virtual {v1}, Lcom/yofi/sdk/imp/middle/common/Constants$MESSAGE_TYPE;->getValue()I

    move-result v1

    if-ne v0, v1, :cond_a

    .line 859
    iget-object v0, p2, Lcom/yofi/sdk/imp/middle/view/ChatView$ViewHolder;->tvSend:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 860
    iget-object v0, p2, Lcom/yofi/sdk/imp/middle/view/ChatView$ViewHolder;->tvSendTime:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 861
    iget-object v0, p2, Lcom/yofi/sdk/imp/middle/view/ChatView$ViewHolder;->tvReceiveTime:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 862
    iget-object v0, p2, Lcom/yofi/sdk/imp/middle/view/ChatView$ViewHolder;->tvReceiveTime:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/yofi/sdk/imp/middle/data/Message;->getFormatCreateTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 863
    iget-object v0, p2, Lcom/yofi/sdk/imp/middle/view/ChatView$ViewHolder;->ivSend:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 864
    iget-object v0, p2, Lcom/yofi/sdk/imp/middle/view/ChatView$ViewHolder;->tvReceive:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 865
    iget-object v0, p2, Lcom/yofi/sdk/imp/middle/view/ChatView$ViewHolder;->ivReceive:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 866
    iget-object v0, p2, Lcom/yofi/sdk/imp/middle/view/ChatView$ViewHolder;->ivContentEnd:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 867
    iget-object v0, p2, Lcom/yofi/sdk/imp/middle/view/ChatView$ViewHolder;->ivMsgFailed:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 868
    iget-object v0, p2, Lcom/yofi/sdk/imp/middle/view/ChatView$ViewHolder;->tvServerRole:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 869
    invoke-virtual {p1}, Lcom/yofi/sdk/imp/middle/data/Message;->getMsgType()I

    move-result v0

    sget-object v1, Lcom/yofi/sdk/imp/middle/common/Constants$MESSAGE_CONTENT_TYPE;->TEXT:Lcom/yofi/sdk/imp/middle/common/Constants$MESSAGE_CONTENT_TYPE;

    invoke-virtual {v1}, Lcom/yofi/sdk/imp/middle/common/Constants$MESSAGE_CONTENT_TYPE;->getValue()I

    move-result v1

    if-ne v0, v1, :cond_9

    .line 870
    iget-object v0, p2, Lcom/yofi/sdk/imp/middle/view/ChatView$ViewHolder;->tvReceive:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 873
    iget-object v0, p2, Lcom/yofi/sdk/imp/middle/view/ChatView$ViewHolder;->tvReceive:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setAutoLinkMask(I)V

    .line 874
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v6, :cond_8

    .line 875
    iget-object v0, p2, Lcom/yofi/sdk/imp/middle/view/ChatView$ViewHolder;->tvReceive:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setTextIsSelectable(Z)V

    .line 877
    :cond_8
    iget-object v0, p2, Lcom/yofi/sdk/imp/middle/view/ChatView$ViewHolder;->tvReceive:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/yofi/sdk/imp/middle/data/Message;->getContent()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/yofi/sdk/imp/middle/view/ChatView$MyAdapter;->getClickableHtml(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 878
    iget-object p1, p2, Lcom/yofi/sdk/imp/middle/view/ChatView$ViewHolder;->tvReceive:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    goto :goto_1

    .line 881
    :cond_9
    iget-object v0, p2, Lcom/yofi/sdk/imp/middle/view/ChatView$ViewHolder;->ivReceive:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 882
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/view/ChatView$MyAdapter;->this$0:Lcom/yofi/sdk/imp/middle/view/ChatView;

    invoke-static {v0}, Lcom/yofi/sdk/imp/middle/view/ChatView;->access$500(Lcom/yofi/sdk/imp/middle/view/ChatView;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/app/Activity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/yofi/sdk/imp/middle/data/Message;->getImgUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    iget-object v0, p2, Lcom/yofi/sdk/imp/middle/view/ChatView$ViewHolder;->ivReceive:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 889
    iget-object p1, p2, Lcom/yofi/sdk/imp/middle/view/ChatView$ViewHolder;->ivReceive:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 890
    iput v5, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 891
    iput v4, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 892
    iget-object p2, p2, Lcom/yofi/sdk/imp/middle/view/ChatView$ViewHolder;->ivReceive:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_a
    :goto_1
    return-object p3
.end method
