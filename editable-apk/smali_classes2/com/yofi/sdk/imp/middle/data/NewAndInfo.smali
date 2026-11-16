.class public Lcom/yofi/sdk/imp/middle/data/NewAndInfo;
.super Ljava/lang/Object;
.source "NewAndInfo.java"


# instance fields
.field private content:Ljava/lang/String;

.field private createDate:Ljava/lang/String;

.field private detailUrl:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 6
    iput-object v0, p0, Lcom/yofi/sdk/imp/middle/data/NewAndInfo;->id:Ljava/lang/String;

    .line 7
    iput-object v0, p0, Lcom/yofi/sdk/imp/middle/data/NewAndInfo;->title:Ljava/lang/String;

    .line 8
    iput-object v0, p0, Lcom/yofi/sdk/imp/middle/data/NewAndInfo;->createDate:Ljava/lang/String;

    .line 9
    iput-object v0, p0, Lcom/yofi/sdk/imp/middle/data/NewAndInfo;->content:Ljava/lang/String;

    .line 10
    iput-object v0, p0, Lcom/yofi/sdk/imp/middle/data/NewAndInfo;->detailUrl:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/data/NewAndInfo;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getCreateDate()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/data/NewAndInfo;->createDate:Ljava/lang/String;

    return-object v0
.end method

.method public getDetailUrl()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/data/NewAndInfo;->detailUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/data/NewAndInfo;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/data/NewAndInfo;->title:Ljava/lang/String;

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

    .line 42
    iput-object p1, p0, Lcom/yofi/sdk/imp/middle/data/NewAndInfo;->content:Ljava/lang/String;

    return-void
.end method

.method public setCreateDate(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "createDate"
        }
    .end annotation

    .line 34
    iput-object p1, p0, Lcom/yofi/sdk/imp/middle/data/NewAndInfo;->createDate:Ljava/lang/String;

    return-void
.end method

.method public setDetailUrl(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "detailUrl"
        }
    .end annotation

    .line 50
    iput-object p1, p0, Lcom/yofi/sdk/imp/middle/data/NewAndInfo;->detailUrl:Ljava/lang/String;

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

    .line 18
    iput-object p1, p0, Lcom/yofi/sdk/imp/middle/data/NewAndInfo;->id:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "title"
        }
    .end annotation

    .line 26
    iput-object p1, p0, Lcom/yofi/sdk/imp/middle/data/NewAndInfo;->title:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NewAndInfo [id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yofi/sdk/imp/middle/data/NewAndInfo;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yofi/sdk/imp/middle/data/NewAndInfo;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", createDate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yofi/sdk/imp/middle/data/NewAndInfo;->createDate:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", content="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yofi/sdk/imp/middle/data/NewAndInfo;->content:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", detailUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yofi/sdk/imp/middle/data/NewAndInfo;->detailUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
