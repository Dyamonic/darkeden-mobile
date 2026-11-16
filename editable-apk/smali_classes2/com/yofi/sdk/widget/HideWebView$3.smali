.class Lcom/yofi/sdk/widget/HideWebView$3;
.super Ljava/lang/Object;
.source "HideWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yofi/sdk/widget/HideWebView;->getHeader(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yofi/sdk/widget/HideWebView;

.field final synthetic val$jsMsg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/yofi/sdk/widget/HideWebView;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$jsMsg"
        }
    .end annotation

    .line 190
    iput-object p1, p0, Lcom/yofi/sdk/widget/HideWebView$3;->this$0:Lcom/yofi/sdk/widget/HideWebView;

    iput-object p2, p0, Lcom/yofi/sdk/widget/HideWebView$3;->val$jsMsg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 193
    iget-object v0, p0, Lcom/yofi/sdk/widget/HideWebView$3;->this$0:Lcom/yofi/sdk/widget/HideWebView;

    invoke-static {v0}, Lcom/yofi/sdk/widget/HideWebView;->access$000(Lcom/yofi/sdk/widget/HideWebView;)Landroid/webkit/WebView;

    move-result-object v0

    iget-object v1, p0, Lcom/yofi/sdk/widget/HideWebView$3;->val$jsMsg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method
