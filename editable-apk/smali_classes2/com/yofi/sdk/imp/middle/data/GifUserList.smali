.class public Lcom/yofi/sdk/imp/middle/data/GifUserList;
.super Ljava/lang/Object;
.source "GifUserList.java"


# instance fields
.field public code:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/data/GifUserList;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/data/GifUserList;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/data/GifUserList;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setCode(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "code"
        }
    .end annotation

    .line 24
    iput-object p1, p0, Lcom/yofi/sdk/imp/middle/data/GifUserList;->code:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .line 32
    iput-object p1, p0, Lcom/yofi/sdk/imp/middle/data/GifUserList;->name:Ljava/lang/String;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "url"
        }
    .end annotation

    .line 16
    iput-object p1, p0, Lcom/yofi/sdk/imp/middle/data/GifUserList;->url:Ljava/lang/String;

    return-void
.end method
