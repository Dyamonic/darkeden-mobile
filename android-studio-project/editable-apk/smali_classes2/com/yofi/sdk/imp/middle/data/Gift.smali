.class public Lcom/yofi/sdk/imp/middle/data/Gift;
.super Ljava/lang/Object;
.source "Gift.java"


# instance fields
.field private content:Ljava/lang/String;

.field private gameName:Ljava/lang/String;

.field private giftId:Ljava/lang/String;

.field private giftName:Ljava/lang/String;

.field private icon:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 6
    iput-object v0, p0, Lcom/yofi/sdk/imp/middle/data/Gift;->giftId:Ljava/lang/String;

    .line 7
    iput-object v0, p0, Lcom/yofi/sdk/imp/middle/data/Gift;->giftName:Ljava/lang/String;

    .line 8
    iput-object v0, p0, Lcom/yofi/sdk/imp/middle/data/Gift;->content:Ljava/lang/String;

    .line 9
    iput-object v0, p0, Lcom/yofi/sdk/imp/middle/data/Gift;->gameName:Ljava/lang/String;

    .line 10
    iput-object v0, p0, Lcom/yofi/sdk/imp/middle/data/Gift;->icon:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/data/Gift;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getGameName()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/data/Gift;->gameName:Ljava/lang/String;

    return-object v0
.end method

.method public getGiftId()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/data/Gift;->giftId:Ljava/lang/String;

    return-object v0
.end method

.method public getGiftName()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/data/Gift;->giftName:Ljava/lang/String;

    return-object v0
.end method

.method public getIcon()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/data/Gift;->icon:Ljava/lang/String;

    return-object v0
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "content"
        }
    .end annotation

    .line 34
    iput-object p1, p0, Lcom/yofi/sdk/imp/middle/data/Gift;->content:Ljava/lang/String;

    return-void
.end method

.method public setGameName(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameName"
        }
    .end annotation

    .line 42
    iput-object p1, p0, Lcom/yofi/sdk/imp/middle/data/Gift;->gameName:Ljava/lang/String;

    return-void
.end method

.method public setGiftId(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "giftId"
        }
    .end annotation

    .line 18
    iput-object p1, p0, Lcom/yofi/sdk/imp/middle/data/Gift;->giftId:Ljava/lang/String;

    return-void
.end method

.method public setGiftName(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "giftName"
        }
    .end annotation

    .line 26
    iput-object p1, p0, Lcom/yofi/sdk/imp/middle/data/Gift;->giftName:Ljava/lang/String;

    return-void
.end method

.method public setIcon(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "icon"
        }
    .end annotation

    .line 50
    iput-object p1, p0, Lcom/yofi/sdk/imp/middle/data/Gift;->icon:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Gift [giftId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yofi/sdk/imp/middle/data/Gift;->giftId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", giftName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yofi/sdk/imp/middle/data/Gift;->giftName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", content="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yofi/sdk/imp/middle/data/Gift;->content:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", gameName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yofi/sdk/imp/middle/data/Gift;->gameName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", icon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yofi/sdk/imp/middle/data/Gift;->icon:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
