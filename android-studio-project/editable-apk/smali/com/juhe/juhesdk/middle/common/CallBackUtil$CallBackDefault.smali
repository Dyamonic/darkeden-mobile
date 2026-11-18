.class public abstract Lcom/juhe/juhesdk/middle/common/CallBackUtil$CallBackDefault;
.super Lcom/juhe/juhesdk/middle/common/CallBackUtil;
.source "CallBackUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/juhe/juhesdk/middle/common/CallBackUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "CallBackDefault"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/juhe/juhesdk/middle/common/CallBackUtil<",
        "Lcom/juhe/juhesdk/middle/common/RealResponse;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 75
    invoke-direct {p0}, Lcom/juhe/juhesdk/middle/common/CallBackUtil;-><init>()V

    return-void
.end method


# virtual methods
.method public onParseResponse(Lcom/juhe/juhesdk/middle/common/RealResponse;)Lcom/juhe/juhesdk/middle/common/RealResponse;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "response"
        }
    .end annotation

    return-object p1
.end method

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

    .line 75
    invoke-virtual {p0, p1}, Lcom/juhe/juhesdk/middle/common/CallBackUtil$CallBackDefault;->onParseResponse(Lcom/juhe/juhesdk/middle/common/RealResponse;)Lcom/juhe/juhesdk/middle/common/RealResponse;

    move-result-object p1

    return-object p1
.end method
