.class Lcom/yofi/sdk/widget/HideWebView$5;
.super Ljava/lang/Object;
.source "HideWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yofi/sdk/widget/HideWebView;->onBecameForeground()V
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

    .line 298
    iput-object p1, p0, Lcom/yofi/sdk/widget/HideWebView$5;->this$0:Lcom/yofi/sdk/widget/HideWebView;

    iput-object p2, p0, Lcom/yofi/sdk/widget/HideWebView$5;->val$jsMsg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 301
    iget-object v0, p0, Lcom/yofi/sdk/widget/HideWebView$5;->this$0:Lcom/yofi/sdk/widget/HideWebView;

    invoke-static {v0}, Lcom/yofi/sdk/widget/HideWebView;->access$000(Lcom/yofi/sdk/widget/HideWebView;)Landroid/webkit/WebView;

    move-result-object v0

    iget-object v1, p0, Lcom/yofi/sdk/widget/HideWebView$5;->val$jsMsg:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    return-void
.end method
