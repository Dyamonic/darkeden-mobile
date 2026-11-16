.class Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$RequestInfo;
.super Ljava/lang/Object;
.source "JavaScriptBridgeWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RequestInfo"
.end annotation


# instance fields
.field headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;

.field url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 111
    iput-object p1, p0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$RequestInfo;->this$0:Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    iput-object p2, p0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$RequestInfo;->url:Ljava/lang/String;

    .line 113
    iput-object p3, p0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$RequestInfo;->headers:Ljava/util/Map;

    return-void
.end method
