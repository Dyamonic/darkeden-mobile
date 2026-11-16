.class public Lcom/yofi/sdk/imp/middle/data/Content;
.super Ljava/lang/Object;
.source "Content.java"


# instance fields
.field private flag:I

.field private id:J


# direct methods
.method public constructor <init>(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-wide p1, p0, Lcom/yofi/sdk/imp/middle/data/Content;->id:J

    const/4 p1, 0x0

    .line 9
    iput p1, p0, Lcom/yofi/sdk/imp/middle/data/Content;->flag:I

    return-void
.end method


# virtual methods
.method public getFlag()I
    .locals 1

    .line 21
    iget v0, p0, Lcom/yofi/sdk/imp/middle/data/Content;->flag:I

    return v0
.end method

.method public getId()J
    .locals 2

    .line 13
    iget-wide v0, p0, Lcom/yofi/sdk/imp/middle/data/Content;->id:J

    return-wide v0
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

    .line 25
    iput p1, p0, Lcom/yofi/sdk/imp/middle/data/Content;->flag:I

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

    .line 17
    iput-wide p1, p0, Lcom/yofi/sdk/imp/middle/data/Content;->id:J

    return-void
.end method
