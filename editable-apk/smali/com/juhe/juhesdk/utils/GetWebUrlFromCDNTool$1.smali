.class Lcom/juhe/juhesdk/utils/GetWebUrlFromCDNTool$1;
.super Ljava/lang/Object;
.source "GetWebUrlFromCDNTool.java"

# interfaces
.implements Lcom/juhe/juhesdk/sdk/IFlashCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/juhe/juhesdk/utils/GetWebUrlFromCDNTool;->beginFetch()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/juhe/juhesdk/utils/GetWebUrlFromCDNTool;


# direct methods
.method constructor <init>(Lcom/juhe/juhesdk/utils/GetWebUrlFromCDNTool;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 25
    iput-object p1, p0, Lcom/juhe/juhesdk/utils/GetWebUrlFromCDNTool$1;->this$0:Lcom/juhe/juhesdk/utils/GetWebUrlFromCDNTool;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(ILjava/lang/String;)V
    .locals 0
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

    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "var1"
        }
    .end annotation

    return-void
.end method
