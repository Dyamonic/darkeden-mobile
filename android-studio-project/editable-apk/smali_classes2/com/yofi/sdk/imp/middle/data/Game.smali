.class public Lcom/yofi/sdk/imp/middle/data/Game;
.super Ljava/lang/Object;
.source "Game.java"


# instance fields
.field private downloadCount:Ljava/lang/String;

.field private downloadUrl:Ljava/lang/String;

.field private fileSize:Ljava/lang/String;

.field private gameName:Ljava/lang/String;

.field private gameType:Ljava/lang/String;

.field private icon:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private score:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 6
    iput-object v0, p0, Lcom/yofi/sdk/imp/middle/data/Game;->id:Ljava/lang/String;

    .line 7
    iput-object v0, p0, Lcom/yofi/sdk/imp/middle/data/Game;->gameName:Ljava/lang/String;

    .line 8
    iput-object v0, p0, Lcom/yofi/sdk/imp/middle/data/Game;->icon:Ljava/lang/String;

    .line 9
    iput-object v0, p0, Lcom/yofi/sdk/imp/middle/data/Game;->score:Ljava/lang/String;

    .line 10
    iput-object v0, p0, Lcom/yofi/sdk/imp/middle/data/Game;->gameType:Ljava/lang/String;

    .line 11
    iput-object v0, p0, Lcom/yofi/sdk/imp/middle/data/Game;->fileSize:Ljava/lang/String;

    .line 12
    iput-object v0, p0, Lcom/yofi/sdk/imp/middle/data/Game;->downloadUrl:Ljava/lang/String;

    .line 13
    iput-object v0, p0, Lcom/yofi/sdk/imp/middle/data/Game;->downloadCount:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDownloadCount()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/data/Game;->downloadCount:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloadUrl()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/data/Game;->downloadUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getFileSize()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/data/Game;->fileSize:Ljava/lang/String;

    return-object v0
.end method

.method public getGameName()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/data/Game;->gameName:Ljava/lang/String;

    return-object v0
.end method

.method public getGameType()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/data/Game;->gameType:Ljava/lang/String;

    return-object v0
.end method

.method public getIcon()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/data/Game;->icon:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/data/Game;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getScore()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/data/Game;->score:Ljava/lang/String;

    return-object v0
.end method

.method public setDownloadCount(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "downloadCount"
        }
    .end annotation

    .line 61
    iput-object p1, p0, Lcom/yofi/sdk/imp/middle/data/Game;->downloadCount:Ljava/lang/String;

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

    .line 53
    iput-object p1, p0, Lcom/yofi/sdk/imp/middle/data/Game;->downloadUrl:Ljava/lang/String;

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

    .line 77
    iput-object p1, p0, Lcom/yofi/sdk/imp/middle/data/Game;->fileSize:Ljava/lang/String;

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

    .line 29
    iput-object p1, p0, Lcom/yofi/sdk/imp/middle/data/Game;->gameName:Ljava/lang/String;

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

    .line 69
    iput-object p1, p0, Lcom/yofi/sdk/imp/middle/data/Game;->gameType:Ljava/lang/String;

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

    .line 37
    iput-object p1, p0, Lcom/yofi/sdk/imp/middle/data/Game;->icon:Ljava/lang/String;

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

    .line 21
    iput-object p1, p0, Lcom/yofi/sdk/imp/middle/data/Game;->id:Ljava/lang/String;

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

    .line 45
    iput-object p1, p0, Lcom/yofi/sdk/imp/middle/data/Game;->score:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Game [id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yofi/sdk/imp/middle/data/Game;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", gameName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yofi/sdk/imp/middle/data/Game;->gameName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", icon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yofi/sdk/imp/middle/data/Game;->icon:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", score="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yofi/sdk/imp/middle/data/Game;->score:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", gameType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yofi/sdk/imp/middle/data/Game;->gameType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", fileSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yofi/sdk/imp/middle/data/Game;->fileSize:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", downloadUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yofi/sdk/imp/middle/data/Game;->downloadUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", downloadCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yofi/sdk/imp/middle/data/Game;->downloadCount:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
