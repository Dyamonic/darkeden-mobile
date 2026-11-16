.class public Lcom/yofi/sdk/imp/middle/data/Message;
.super Ljava/lang/Object;
.source "Message.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/yofi/sdk/imp/middle/data/Message;",
        ">;"
    }
.end annotation


# instance fields
.field private content:Ljava/lang/String;

.field private contentId:J

.field private createTime:J

.field private data:[B

.field private flag:I

.field private id:J

.field private imgUrl:Ljava/lang/String;

.field private msgId:J

.field private msgType:I

.field private path:Ljava/lang/String;

.field private receiverId:J

.field private senderId:J

.field private type:I

.field private uploaded:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIJJJ)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "content",
            "type",
            "msgType",
            "senderId",
            "receiverId",
            "createTime"
        }
    .end annotation

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-static {}, Lcom/yofi/sdk/imp/middle/common/SQLFunction;->getMessageId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/yofi/sdk/imp/middle/data/Message;->id:J

    const-wide/16 v0, 0x0

    .line 29
    iput-wide v0, p0, Lcom/yofi/sdk/imp/middle/data/Message;->contentId:J

    .line 30
    iput-object p1, p0, Lcom/yofi/sdk/imp/middle/data/Message;->content:Ljava/lang/String;

    .line 31
    iput p2, p0, Lcom/yofi/sdk/imp/middle/data/Message;->type:I

    .line 32
    iput p3, p0, Lcom/yofi/sdk/imp/middle/data/Message;->msgType:I

    .line 33
    iput-wide p4, p0, Lcom/yofi/sdk/imp/middle/data/Message;->senderId:J

    .line 34
    iput-wide p6, p0, Lcom/yofi/sdk/imp/middle/data/Message;->receiverId:J

    .line 35
    iput-wide p8, p0, Lcom/yofi/sdk/imp/middle/data/Message;->createTime:J

    const/4 p1, 0x0

    .line 36
    iput p1, p0, Lcom/yofi/sdk/imp/middle/data/Message;->flag:I

    .line 37
    iput-wide v0, p0, Lcom/yofi/sdk/imp/middle/data/Message;->msgId:J

    const-string p2, ""

    .line 38
    iput-object p2, p0, Lcom/yofi/sdk/imp/middle/data/Message;->path:Ljava/lang/String;

    .line 39
    iput p1, p0, Lcom/yofi/sdk/imp/middle/data/Message;->uploaded:I

    .line 40
    iput-object p2, p0, Lcom/yofi/sdk/imp/middle/data/Message;->imgUrl:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIJJJLjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "content",
            "type",
            "msgType",
            "senderId",
            "receiverId",
            "createTime",
            "path",
            "imgUrl"
        }
    .end annotation

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-static {}, Lcom/yofi/sdk/imp/middle/common/SQLFunction;->getMessageId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/yofi/sdk/imp/middle/data/Message;->id:J

    const-wide/16 v0, 0x0

    .line 45
    iput-wide v0, p0, Lcom/yofi/sdk/imp/middle/data/Message;->contentId:J

    .line 46
    iput-object p1, p0, Lcom/yofi/sdk/imp/middle/data/Message;->content:Ljava/lang/String;

    .line 47
    iput p2, p0, Lcom/yofi/sdk/imp/middle/data/Message;->type:I

    .line 48
    iput p3, p0, Lcom/yofi/sdk/imp/middle/data/Message;->msgType:I

    .line 49
    iput-wide p4, p0, Lcom/yofi/sdk/imp/middle/data/Message;->senderId:J

    .line 50
    iput-wide p6, p0, Lcom/yofi/sdk/imp/middle/data/Message;->receiverId:J

    .line 51
    iput-wide p8, p0, Lcom/yofi/sdk/imp/middle/data/Message;->createTime:J

    .line 52
    iput-object p10, p0, Lcom/yofi/sdk/imp/middle/data/Message;->path:Ljava/lang/String;

    const/4 p1, 0x0

    .line 53
    iput p1, p0, Lcom/yofi/sdk/imp/middle/data/Message;->flag:I

    .line 54
    iput-wide v0, p0, Lcom/yofi/sdk/imp/middle/data/Message;->msgId:J

    .line 55
    iput p1, p0, Lcom/yofi/sdk/imp/middle/data/Message;->uploaded:I

    .line 56
    iput-object p11, p0, Lcom/yofi/sdk/imp/middle/data/Message;->imgUrl:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/yofi/sdk/imp/middle/data/Message;)I
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    .line 179
    iget-wide v0, p0, Lcom/yofi/sdk/imp/middle/data/Message;->id:J

    invoke-virtual {p1}, Lcom/yofi/sdk/imp/middle/data/Message;->getId()J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-int p1, v0

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "o"
        }
    .end annotation

    .line 6
    check-cast p1, Lcom/yofi/sdk/imp/middle/data/Message;

    invoke-virtual {p0, p1}, Lcom/yofi/sdk/imp/middle/data/Message;->compareTo(Lcom/yofi/sdk/imp/middle/data/Message;)I

    move-result p1

    return p1
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/data/Message;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getContentId()J
    .locals 2

    .line 68
    iget-wide v0, p0, Lcom/yofi/sdk/imp/middle/data/Message;->contentId:J

    return-wide v0
.end method

.method public getCreateTime()J
    .locals 2

    .line 134
    iget-wide v0, p0, Lcom/yofi/sdk/imp/middle/data/Message;->createTime:J

    return-wide v0
.end method

.method public getData()[B
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/data/Message;->data:[B

    return-object v0
.end method

.method public getFlag()I
    .locals 1

    .line 142
    iget v0, p0, Lcom/yofi/sdk/imp/middle/data/Message;->flag:I

    return v0
.end method

.method public getFormatCreateTime()Ljava/lang/String;
    .locals 5

    .line 166
    invoke-static {}, Lcom/yofi/sdk/utils/CommonUtils;->instance()Lcom/yofi/sdk/utils/CommonUtils;

    move-result-object v0

    iget-wide v1, p0, Lcom/yofi/sdk/imp/middle/data/Message;->createTime:J

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/yofi/sdk/utils/CommonUtils;->stampToDate(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getId()J
    .locals 2

    .line 60
    iget-wide v0, p0, Lcom/yofi/sdk/imp/middle/data/Message;->id:J

    return-wide v0
.end method

.method public getImgUrl()Ljava/lang/String;
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/data/Message;->imgUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getMsgId()J
    .locals 2

    .line 150
    iget-wide v0, p0, Lcom/yofi/sdk/imp/middle/data/Message;->msgId:J

    return-wide v0
.end method

.method public getMsgType()I
    .locals 1

    .line 110
    iget v0, p0, Lcom/yofi/sdk/imp/middle/data/Message;->msgType:I

    return v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/data/Message;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getReceiverId()J
    .locals 2

    .line 126
    iget-wide v0, p0, Lcom/yofi/sdk/imp/middle/data/Message;->receiverId:J

    return-wide v0
.end method

.method public getSenderId()J
    .locals 2

    .line 118
    iget-wide v0, p0, Lcom/yofi/sdk/imp/middle/data/Message;->senderId:J

    return-wide v0
.end method

.method public getType()I
    .locals 1

    .line 102
    iget v0, p0, Lcom/yofi/sdk/imp/middle/data/Message;->type:I

    return v0
.end method

.method public getUploaded()I
    .locals 1

    .line 158
    iget v0, p0, Lcom/yofi/sdk/imp/middle/data/Message;->uploaded:I

    return v0
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

    .line 88
    iput-object p1, p0, Lcom/yofi/sdk/imp/middle/data/Message;->content:Ljava/lang/String;

    return-void
.end method

.method public setContentId(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "contentId"
        }
    .end annotation

    .line 72
    iput-wide p1, p0, Lcom/yofi/sdk/imp/middle/data/Message;->contentId:J

    return-void
.end method

.method public setCreateTime(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "createTime"
        }
    .end annotation

    .line 138
    iput-wide p1, p0, Lcom/yofi/sdk/imp/middle/data/Message;->createTime:J

    return-void
.end method

.method public setData([B)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .line 96
    iput-object p1, p0, Lcom/yofi/sdk/imp/middle/data/Message;->data:[B

    return-void
.end method

.method public setFlag(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "flag"
        }
    .end annotation

    .line 146
    iput p1, p0, Lcom/yofi/sdk/imp/middle/data/Message;->flag:I

    return-void
.end method

.method public setId(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    .line 64
    iput-wide p1, p0, Lcom/yofi/sdk/imp/middle/data/Message;->id:J

    return-void
.end method

.method public setImgUrl(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "imgUrl"
        }
    .end annotation

    .line 174
    iput-object p1, p0, Lcom/yofi/sdk/imp/middle/data/Message;->imgUrl:Ljava/lang/String;

    return-void
.end method

.method public setMsgId(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msgId"
        }
    .end annotation

    .line 154
    iput-wide p1, p0, Lcom/yofi/sdk/imp/middle/data/Message;->msgId:J

    return-void
.end method

.method public setMsgType(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msgType"
        }
    .end annotation

    .line 114
    iput p1, p0, Lcom/yofi/sdk/imp/middle/data/Message;->msgType:I

    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "path"
        }
    .end annotation

    .line 80
    iput-object p1, p0, Lcom/yofi/sdk/imp/middle/data/Message;->path:Ljava/lang/String;

    return-void
.end method

.method public setReceiverId(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "receiverId"
        }
    .end annotation

    .line 130
    iput-wide p1, p0, Lcom/yofi/sdk/imp/middle/data/Message;->receiverId:J

    return-void
.end method

.method public setSenderId(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "senderId"
        }
    .end annotation

    .line 122
    iput-wide p1, p0, Lcom/yofi/sdk/imp/middle/data/Message;->senderId:J

    return-void
.end method

.method public setType(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .line 106
    iput p1, p0, Lcom/yofi/sdk/imp/middle/data/Message;->type:I

    return-void
.end method

.method public setUploaded(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uploaded"
        }
    .end annotation

    .line 162
    iput p1, p0, Lcom/yofi/sdk/imp/middle/data/Message;->uploaded:I

    return-void
.end method
