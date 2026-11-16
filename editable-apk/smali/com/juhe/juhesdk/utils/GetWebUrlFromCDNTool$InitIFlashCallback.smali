.class Lcom/juhe/juhesdk/utils/GetWebUrlFromCDNTool$InitIFlashCallback;
.super Ljava/lang/Object;
.source "GetWebUrlFromCDNTool.java"

# interfaces
.implements Lcom/juhe/juhesdk/sdk/IFlashCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/juhe/juhesdk/utils/GetWebUrlFromCDNTool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InitIFlashCallback"
.end annotation


# instance fields
.field private cb:Lcom/juhe/juhesdk/sdk/IFlashCallback;

.field private finalServerUrls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/juhe/juhesdk/utils/GetWebUrlFromCDNTool;


# direct methods
.method public constructor <init>(Lcom/juhe/juhesdk/utils/GetWebUrlFromCDNTool;Lcom/juhe/juhesdk/sdk/IFlashCallback;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0
        }
        names = {
            "this$0",
            "cb",
            "finalServerUrls"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/juhe/juhesdk/sdk/IFlashCallback;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 65
    iput-object p1, p0, Lcom/juhe/juhesdk/utils/GetWebUrlFromCDNTool$InitIFlashCallback;->this$0:Lcom/juhe/juhesdk/utils/GetWebUrlFromCDNTool;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p2, p0, Lcom/juhe/juhesdk/utils/GetWebUrlFromCDNTool$InitIFlashCallback;->cb:Lcom/juhe/juhesdk/sdk/IFlashCallback;

    .line 67
    iput-object p3, p0, Lcom/juhe/juhesdk/utils/GetWebUrlFromCDNTool$InitIFlashCallback;->finalServerUrls:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public onFailed(ILjava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "var1",
            "msg"
        }
    .end annotation

    .line 76
    iget-object p2, p0, Lcom/juhe/juhesdk/utils/GetWebUrlFromCDNTool$InitIFlashCallback;->finalServerUrls:Ljava/util/List;

    iget-object v0, p0, Lcom/juhe/juhesdk/utils/GetWebUrlFromCDNTool$InitIFlashCallback;->this$0:Lcom/juhe/juhesdk/utils/GetWebUrlFromCDNTool;

    invoke-static {v0}, Lcom/juhe/juhesdk/utils/GetWebUrlFromCDNTool;->access$000(Lcom/juhe/juhesdk/utils/GetWebUrlFromCDNTool;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p2

    .line 77
    iget-object v0, p0, Lcom/juhe/juhesdk/utils/GetWebUrlFromCDNTool$InitIFlashCallback;->finalServerUrls:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le v0, p2, :cond_0

    .line 78
    iget-object p1, p0, Lcom/juhe/juhesdk/utils/GetWebUrlFromCDNTool$InitIFlashCallback;->this$0:Lcom/juhe/juhesdk/utils/GetWebUrlFromCDNTool;

    iget-object v0, p0, Lcom/juhe/juhesdk/utils/GetWebUrlFromCDNTool$InitIFlashCallback;->finalServerUrls:Ljava/util/List;

    add-int/lit8 p2, p2, 0x1

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/juhe/juhesdk/utils/GetWebUrlFromCDNTool;->access$002(Lcom/juhe/juhesdk/utils/GetWebUrlFromCDNTool;Ljava/lang/String;)Ljava/lang/String;

    .line 79
    iget-object p1, p0, Lcom/juhe/juhesdk/utils/GetWebUrlFromCDNTool$InitIFlashCallback;->this$0:Lcom/juhe/juhesdk/utils/GetWebUrlFromCDNTool;

    invoke-static {p1}, Lcom/juhe/juhesdk/utils/GetWebUrlFromCDNTool;->access$000(Lcom/juhe/juhesdk/utils/GetWebUrlFromCDNTool;)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Lcom/juhe/juhesdk/utils/GetWebUrlFromCDNTool$InitIFlashCallback;

    iget-object v1, p0, Lcom/juhe/juhesdk/utils/GetWebUrlFromCDNTool$InitIFlashCallback;->this$0:Lcom/juhe/juhesdk/utils/GetWebUrlFromCDNTool;

    iget-object v2, p0, Lcom/juhe/juhesdk/utils/GetWebUrlFromCDNTool$InitIFlashCallback;->cb:Lcom/juhe/juhesdk/sdk/IFlashCallback;

    iget-object v3, p0, Lcom/juhe/juhesdk/utils/GetWebUrlFromCDNTool$InitIFlashCallback;->finalServerUrls:Ljava/util/List;

    invoke-direct {v0, v1, v2, v3}, Lcom/juhe/juhesdk/utils/GetWebUrlFromCDNTool$InitIFlashCallback;-><init>(Lcom/juhe/juhesdk/utils/GetWebUrlFromCDNTool;Lcom/juhe/juhesdk/sdk/IFlashCallback;Ljava/util/List;)V

    invoke-static {p1, p2, v0}, Lcom/juhe/juhesdk/utils/GetWebUrlFromCDNTool;->access$100(Lcom/juhe/juhesdk/utils/GetWebUrlFromCDNTool;Ljava/lang/String;Lcom/juhe/juhesdk/sdk/IFlashCallback;)V

    goto :goto_0

    .line 81
    :cond_0
    iget-object p2, p0, Lcom/juhe/juhesdk/utils/GetWebUrlFromCDNTool$InitIFlashCallback;->cb:Lcom/juhe/juhesdk/sdk/IFlashCallback;

    const-string v0, ""

    invoke-interface {p2, p1, v0}, Lcom/juhe/juhesdk/sdk/IFlashCallback;->onFailed(ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "var1"
        }
    .end annotation

    .line 72
    iget-object v0, p0, Lcom/juhe/juhesdk/utils/GetWebUrlFromCDNTool$InitIFlashCallback;->cb:Lcom/juhe/juhesdk/sdk/IFlashCallback;

    invoke-interface {v0, p1}, Lcom/juhe/juhesdk/sdk/IFlashCallback;->onSuccess(Ljava/lang/String;)V

    return-void
.end method
