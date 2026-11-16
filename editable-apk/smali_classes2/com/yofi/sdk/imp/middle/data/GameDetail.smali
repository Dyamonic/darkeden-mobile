.class public Lcom/yofi/sdk/imp/middle/data/GameDetail;
.super Ljava/lang/Object;
.source "GameDetail.java"


# instance fields
.field private desc:Ljava/lang/String;

.field private downloadUrl:Ljava/lang/String;

.field private fileSize:Ljava/lang/String;

.field private gameName:Ljava/lang/String;

.field private gameScore:Ljava/lang/String;

.field private gameType:Ljava/lang/String;

.field private icon:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private language:Ljava/lang/String;

.field private score:Ljava/lang/String;

.field private tags:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 6
    iput-object v0, p0, Lcom/yofi/sdk/imp/middle/data/GameDetail;->id:Ljava/lang/String;

    .line 7
    iput-object v0, p0, Lcom/yofi/sdk/imp/middle/data/GameDetail;->gameName:Ljava/lang/String;

    .line 8
    iput-object v0, p0, Lcom/yofi/sdk/imp/middle/data/GameDetail;->icon:Ljava/lang/String;

    .line 9
    iput-object v0, p0, Lcom/yofi/sdk/imp/middle/data/GameDetail;->score:Ljava/lang/String;

    .line 10
    iput-object v0, p0, Lcom/yofi/sdk/imp/middle/data/GameDetail;->gameType:Ljava/lang/String;

    .line 11
    iput-object v0, p0, Lcom/yofi/sdk/imp/middle/data/GameDetail;->tags:Ljava/lang/String;

    .line 12
    iput-object v0, p0, Lcom/yofi/sdk/imp/middle/data/GameDetail;->fileSize:Ljava/lang/String;

    .line 13
    iput-object v0, p0, Lcom/yofi/sdk/imp/middle/data/GameDetail;->language:Ljava/lang/String;

    .line 14
    iput-object v0, p0, Lcom/yofi/sdk/imp/middle/data/GameDetail;->gameScore:Ljava/lang/String;

    .line 15
    iput-object v0, p0, Lcom/yofi/sdk/imp/middle/data/GameDetail;->desc:Ljava/lang/String;

    .line 16
    iput-object v0, p0, Lcom/yofi/sdk/imp/middle/data/GameDetail;->downloadUrl:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDesc()Ljava/lang/String;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/data/GameDetail;->desc:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloadUrl()Ljava/lang/String;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/data/GameDetail;->downloadUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getFileSize()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/data/GameDetail;->fileSize:Ljava/lang/String;

    return-object v0
.end method

.method public getGameName()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/data/GameDetail;->gameName:Ljava/lang/String;

    return-object v0
.end method

.method public getGameScore()Ljava/lang/String;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/data/GameDetail;->gameScore:Ljava/lang/String;

    return-object v0
.end method

.method public getGameType()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/data/GameDetail;->gameType:Ljava/lang/String;

    return-object v0
.end method

.method public getIcon()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/data/GameDetail;->icon:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/data/GameDetail;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/data/GameDetail;->language:Ljava/lang/String;

    return-object v0
.end method

.method public getScore()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/data/GameDetail;->score:Ljava/lang/String;

    return-object v0
.end method

.method public getTags()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/data/GameDetail;->tags:Ljava/lang/String;

    return-object v0
.end method

.method public setDesc(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "desc"
        }
    .end annotation

    .line 96
    iput-object p1, p0, Lcom/yofi/sdk/imp/middle/data/GameDetail;->desc:Ljava/lang/String;

    return-void
.end method

.method public setDownloadUrl(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "downloadUrl"
        }
    .end annotation

    .line 104
    iput-object p1, p0, Lcom/yofi/sdk/imp/middle/data/GameDetail;->downloadUrl:Ljava/lang/String;

    return-void
.end method

.method public setFileSize(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fileSize"
        }
    .end annotation

    .line 72
    iput-object p1, p0, Lcom/yofi/sdk/imp/middle/data/GameDetail;->fileSize:Ljava/lang/String;

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

    .line 32
    iput-object p1, p0, Lcom/yofi/sdk/imp/middle/data/GameDetail;->gameName:Ljava/lang/String;

    return-void
.end method

.method public setGameScore(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameScore"
        }
    .end annotation

    .line 88
    iput-object p1, p0, Lcom/yofi/sdk/imp/middle/data/GameDetail;->gameScore:Ljava/lang/String;

    return-void
.end method

.method public setGameType(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameType"
        }
    .end annotation

    .line 56
    iput-object p1, p0, Lcom/yofi/sdk/imp/middle/data/GameDetail;->gameType:Ljava/lang/String;

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

    .line 40
    iput-object p1, p0, Lcom/yofi/sdk/imp/middle/data/GameDetail;->icon:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    .line 24
    iput-object p1, p0, Lcom/yofi/sdk/imp/middle/data/GameDetail;->id:Ljava/lang/String;

    return-void
.end method

.method public setLanguage(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "language"
        }
    .end annotation

    .line 80
    iput-object p1, p0, Lcom/yofi/sdk/imp/middle/data/GameDetail;->language:Ljava/lang/String;

    return-void
.end method

.method public setScore(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "score"
        }
    .end annotation

    .line 48
    iput-object p1, p0, Lcom/yofi/sdk/imp/middle/data/GameDetail;->score:Ljava/lang/String;

    return-void
.end method

.method public setTags(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tags"
        }
    .end annotation

    .line 64
    iput-object p1, p0, Lcom/yofi/sdk/imp/middle/data/GameDetail;->tags:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GameDetail [id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yofi/sdk/imp/middle/data/GameDetail;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", gameName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yofi/sdk/imp/middle/data/GameDetail;->gameName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", icon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yofi/sdk/imp/middle/data/GameDetail;->icon:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", score="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yofi/sdk/imp/middle/data/GameDetail;->score:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", gameType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yofi/sdk/imp/middle/data/GameDetail;->gameType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", tags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yofi/sdk/imp/middle/data/GameDetail;->tags:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", fileSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yofi/sdk/imp/middle/data/GameDetail;->fileSize:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", language="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yofi/sdk/imp/middle/data/GameDetail;->language:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", gameScore="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yofi/sdk/imp/middle/data/GameDetail;->gameScore:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", desc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yofi/sdk/imp/middle/data/GameDetail;->desc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", downloadUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yofi/sdk/imp/middle/data/GameDetail;->downloadUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
