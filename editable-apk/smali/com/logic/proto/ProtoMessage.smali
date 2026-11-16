.class public Lcom/logic/proto/ProtoMessage;
.super Ljava/lang/Object;
.source "ProtoMessage.java"


# instance fields
.field private bodyData:[B

.field private cmd:I

.field private len:I

.field private sid:I

.field private uid:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IIII[B)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "len",
            "cmd",
            "uid",
            "sid",
            "bodyData"
        }
    .end annotation

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput p1, p0, Lcom/logic/proto/ProtoMessage;->len:I

    .line 15
    iput p2, p0, Lcom/logic/proto/ProtoMessage;->cmd:I

    .line 16
    iput p3, p0, Lcom/logic/proto/ProtoMessage;->uid:I

    .line 17
    iput p4, p0, Lcom/logic/proto/ProtoMessage;->sid:I

    .line 18
    iput-object p5, p0, Lcom/logic/proto/ProtoMessage;->bodyData:[B

    return-void
.end method

.method public constructor <init>(II[B)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "len",
            "cmd",
            "bodyData"
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput p1, p0, Lcom/logic/proto/ProtoMessage;->len:I

    .line 32
    iput p2, p0, Lcom/logic/proto/ProtoMessage;->cmd:I

    .line 33
    iput-object p3, p0, Lcom/logic/proto/ProtoMessage;->bodyData:[B

    return-void
.end method

.method public constructor <init>(II[BLcom/logic/proto/ProtoMessage;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "len",
            "cmd",
            "bodyData",
            "protoMessage"
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput p1, p0, Lcom/logic/proto/ProtoMessage;->len:I

    .line 23
    iput p2, p0, Lcom/logic/proto/ProtoMessage;->cmd:I

    .line 24
    iput-object p3, p0, Lcom/logic/proto/ProtoMessage;->bodyData:[B

    .line 25
    invoke-virtual {p4}, Lcom/logic/proto/ProtoMessage;->getUid()I

    move-result p1

    iput p1, p0, Lcom/logic/proto/ProtoMessage;->uid:I

    .line 26
    invoke-virtual {p4}, Lcom/logic/proto/ProtoMessage;->getSid()I

    move-result p1

    iput p1, p0, Lcom/logic/proto/ProtoMessage;->sid:I

    return-void
.end method


# virtual methods
.method public getBodyData()[B
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/logic/proto/ProtoMessage;->bodyData:[B

    return-object v0
.end method

.method public getCmd()I
    .locals 1

    .line 54
    iget v0, p0, Lcom/logic/proto/ProtoMessage;->cmd:I

    return v0
.end method

.method public getLen()I
    .locals 1

    .line 44
    iget v0, p0, Lcom/logic/proto/ProtoMessage;->len:I

    return v0
.end method

.method public getSid()I
    .locals 1

    .line 74
    iget v0, p0, Lcom/logic/proto/ProtoMessage;->sid:I

    return v0
.end method

.method public getUid()I
    .locals 1

    .line 64
    iget v0, p0, Lcom/logic/proto/ProtoMessage;->uid:I

    return v0
.end method

.method public setBodyData([B)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bodyData"
        }
    .end annotation

    .line 89
    iput-object p1, p0, Lcom/logic/proto/ProtoMessage;->bodyData:[B

    return-void
.end method

.method public setCmd(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cmd"
        }
    .end annotation

    .line 59
    iput p1, p0, Lcom/logic/proto/ProtoMessage;->cmd:I

    return-void
.end method

.method public setLen(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "len"
        }
    .end annotation

    .line 49
    iput p1, p0, Lcom/logic/proto/ProtoMessage;->len:I

    return-void
.end method

.method public setSid(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sid"
        }
    .end annotation

    .line 79
    iput p1, p0, Lcom/logic/proto/ProtoMessage;->sid:I

    return-void
.end method

.method public setUid(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uid"
        }
    .end annotation

    .line 69
    iput p1, p0, Lcom/logic/proto/ProtoMessage;->uid:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Len:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/logic/proto/ProtoMessage;->len:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",cmd:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/logic/proto/ProtoMessage;->cmd:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",uid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/logic/proto/ProtoMessage;->uid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",sid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/logic/proto/ProtoMessage;->sid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
