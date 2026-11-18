.class public Lcom/yofi/sdk/imp/middle/data/PayConfig;
.super Ljava/lang/Object;
.source "PayConfig.java"


# instance fields
.field private className:Ljava/lang/String;

.field private clientFlag:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private isFixMoney:Z

.field public moneyList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private parentId:Ljava/lang/String;

.field private payClass:Ljava/lang/String;

.field private payType:Ljava/lang/String;

.field private selectMoney:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 10
    iput-object v0, p0, Lcom/yofi/sdk/imp/middle/data/PayConfig;->id:Ljava/lang/String;

    .line 11
    iput-object v0, p0, Lcom/yofi/sdk/imp/middle/data/PayConfig;->parentId:Ljava/lang/String;

    .line 12
    iput-object v0, p0, Lcom/yofi/sdk/imp/middle/data/PayConfig;->className:Ljava/lang/String;

    .line 13
    iput-object v0, p0, Lcom/yofi/sdk/imp/middle/data/PayConfig;->payType:Ljava/lang/String;

    .line 14
    iput-object v0, p0, Lcom/yofi/sdk/imp/middle/data/PayConfig;->payClass:Ljava/lang/String;

    .line 15
    iput-object v0, p0, Lcom/yofi/sdk/imp/middle/data/PayConfig;->selectMoney:Ljava/lang/String;

    .line 16
    iput-object v0, p0, Lcom/yofi/sdk/imp/middle/data/PayConfig;->clientFlag:Ljava/lang/String;

    const/4 v0, 0x0

    .line 17
    iput-boolean v0, p0, Lcom/yofi/sdk/imp/middle/data/PayConfig;->isFixMoney:Z

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yofi/sdk/imp/middle/data/PayConfig;->moneyList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getClassName()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/data/PayConfig;->className:Ljava/lang/String;

    return-object v0
.end method

.method public getClientFlag()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/data/PayConfig;->clientFlag:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/data/PayConfig;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getIsFixMoney()Z
    .locals 1

    .line 88
    iget-boolean v0, p0, Lcom/yofi/sdk/imp/middle/data/PayConfig;->isFixMoney:Z

    return v0
.end method

.method public getMoneyList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/data/PayConfig;->moneyList:Ljava/util/List;

    return-object v0
.end method

.method public getParentId()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/data/PayConfig;->parentId:Ljava/lang/String;

    return-object v0
.end method

.method public getPayClass()Ljava/lang/String;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/data/PayConfig;->payClass:Ljava/lang/String;

    return-object v0
.end method

.method public getPayType()Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/data/PayConfig;->payType:Ljava/lang/String;

    return-object v0
.end method

.method public getSelectMoney()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/data/PayConfig;->selectMoney:Ljava/lang/String;

    return-object v0
.end method

.method public setClassName(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "className"
        }
    .end annotation

    .line 68
    iput-object p1, p0, Lcom/yofi/sdk/imp/middle/data/PayConfig;->className:Ljava/lang/String;

    return-void
.end method

.method public setClientFlag(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "clientFlag"
        }
    .end annotation

    .line 40
    iput-object p1, p0, Lcom/yofi/sdk/imp/middle/data/PayConfig;->clientFlag:Ljava/lang/String;

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

    .line 52
    iput-object p1, p0, Lcom/yofi/sdk/imp/middle/data/PayConfig;->id:Ljava/lang/String;

    return-void
.end method

.method public setIsFixMoney(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isFixMoney"
        }
    .end annotation

    .line 92
    iput-boolean p1, p0, Lcom/yofi/sdk/imp/middle/data/PayConfig;->isFixMoney:Z

    return-void
.end method

.method public setParentId(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parentId"
        }
    .end annotation

    .line 60
    iput-object p1, p0, Lcom/yofi/sdk/imp/middle/data/PayConfig;->parentId:Ljava/lang/String;

    return-void
.end method

.method public setPayClass(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "payClass"
        }
    .end annotation

    .line 84
    iput-object p1, p0, Lcom/yofi/sdk/imp/middle/data/PayConfig;->payClass:Ljava/lang/String;

    return-void
.end method

.method public setPayType(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "payType"
        }
    .end annotation

    .line 76
    iput-object p1, p0, Lcom/yofi/sdk/imp/middle/data/PayConfig;->payType:Ljava/lang/String;

    return-void
.end method

.method public setSelectMoney(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "selectMoney"
        }
    .end annotation

    .line 30
    iput-object p1, p0, Lcom/yofi/sdk/imp/middle/data/PayConfig;->selectMoney:Ljava/lang/String;

    .line 31
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ","

    .line 32
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 33
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 34
    iget-object v1, p0, Lcom/yofi/sdk/imp/middle/data/PayConfig;->moneyList:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PayConfig [id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yofi/sdk/imp/middle/data/PayConfig;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", parentId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yofi/sdk/imp/middle/data/PayConfig;->parentId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", className="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yofi/sdk/imp/middle/data/PayConfig;->className:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", payType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yofi/sdk/imp/middle/data/PayConfig;->payType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", payClass="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yofi/sdk/imp/middle/data/PayConfig;->payClass:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", selectMoney="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yofi/sdk/imp/middle/data/PayConfig;->selectMoney:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", clientFlag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yofi/sdk/imp/middle/data/PayConfig;->clientFlag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isFixMoney="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/yofi/sdk/imp/middle/data/PayConfig;->isFixMoney:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", moneyList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yofi/sdk/imp/middle/data/PayConfig;->moneyList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
