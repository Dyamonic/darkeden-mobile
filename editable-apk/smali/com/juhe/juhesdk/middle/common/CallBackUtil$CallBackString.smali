.class public abstract Lcom/juhe/juhesdk/middle/common/CallBackUtil$CallBackString;
.super Lcom/juhe/juhesdk/middle/common/CallBackUtil;
.source "CallBackUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/juhe/juhesdk/middle/common/CallBackUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "CallBackString"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/juhe/juhesdk/middle/common/CallBackUtil<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 82
    invoke-direct {p0}, Lcom/juhe/juhesdk/middle/common/CallBackUtil;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onParseResponse(Lcom/juhe/juhesdk/middle/common/RealResponse;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "response"
        }
    .end annotation

    .line 82
    invoke-virtual {p0, p1}, Lcom/juhe/juhesdk/middle/common/CallBackUtil$CallBackString;->onParseResponse(Lcom/juhe/juhesdk/middle/common/RealResponse;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public onParseResponse(Lcom/juhe/juhesdk/middle/common/RealResponse;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "response"
        }
    .end annotation

    .line 86
    :try_start_0
    iget-object p1, p1, Lcom/juhe/juhesdk/middle/common/RealResponse;->inputStream:Ljava/io/InputStream;

    invoke-static {p1}, Lcom/juhe/juhesdk/middle/common/CallBackUtil;->access$000(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 88
    :catch_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "failure"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
