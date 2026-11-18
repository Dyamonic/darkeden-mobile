.class public Lcom/juhe/juhesdk/middle/data/JuHeLoginData;
.super Ljava/lang/Object;
.source "JuHeLoginData.java"


# instance fields
.field private accessToken:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
    .end annotation
.end field

.field private channelId:I
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
    .end annotation
.end field

.field private code:I
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
    .end annotation
.end field

.field private msg:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
    .end annotation
.end field

.field private userId:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
    .end annotation
.end field

.field private userName:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAccessToken()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/juhe/juhesdk/middle/data/JuHeLoginData;->accessToken:Ljava/lang/String;

    return-object v0
.end method

.method public getChannelId()I
    .locals 1

    .line 48
    iget v0, p0, Lcom/juhe/juhesdk/middle/data/JuHeLoginData;->channelId:I

    return v0
.end method

.method public getCode()I
    .locals 1

    .line 24
    iget v0, p0, Lcom/juhe/juhesdk/middle/data/JuHeLoginData;->code:I

    return v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/juhe/juhesdk/middle/data/JuHeLoginData;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/juhe/juhesdk/middle/data/JuHeLoginData;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/juhe/juhesdk/middle/data/JuHeLoginData;->userName:Ljava/lang/String;

    return-object v0
.end method

.method public setAccessToken(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "accessToken"
        }
    .end annotation

    .line 44
    iput-object p1, p0, Lcom/juhe/juhesdk/middle/data/JuHeLoginData;->accessToken:Ljava/lang/String;

    return-void
.end method

.method public setChannelId(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "channelId"
        }
    .end annotation

    .line 52
    iput p1, p0, Lcom/juhe/juhesdk/middle/data/JuHeLoginData;->channelId:I

    return-void
.end method

.method public setCode(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "code"
        }
    .end annotation

    .line 28
    iput p1, p0, Lcom/juhe/juhesdk/middle/data/JuHeLoginData;->code:I

    return-void
.end method

.method public setMsg(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    .line 36
    iput-object p1, p0, Lcom/juhe/juhesdk/middle/data/JuHeLoginData;->msg:Ljava/lang/String;

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "userId"
        }
    .end annotation

    .line 20
    iput-object p1, p0, Lcom/juhe/juhesdk/middle/data/JuHeLoginData;->userId:Ljava/lang/String;

    return-void
.end method

.method public setUserName(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "userName"
        }
    .end annotation

    .line 12
    iput-object p1, p0, Lcom/juhe/juhesdk/middle/data/JuHeLoginData;->userName:Ljava/lang/String;

    return-void
.end method
