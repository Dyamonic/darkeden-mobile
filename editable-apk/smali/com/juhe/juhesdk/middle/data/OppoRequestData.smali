.class public Lcom/juhe/juhesdk/middle/data/OppoRequestData;
.super Ljava/lang/Object;
.source "OppoRequestData.java"


# instance fields
.field private ssoid:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
    .end annotation
.end field

.field private token:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "token",
            "ssoid"
        }
    .end annotation

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p2, p0, Lcom/juhe/juhesdk/middle/data/OppoRequestData;->ssoid:Ljava/lang/String;

    .line 9
    iput-object p1, p0, Lcom/juhe/juhesdk/middle/data/OppoRequestData;->token:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getSsoid()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/juhe/juhesdk/middle/data/OppoRequestData;->ssoid:Ljava/lang/String;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/juhe/juhesdk/middle/data/OppoRequestData;->token:Ljava/lang/String;

    return-object v0
.end method

.method public setSsoid(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ssoid"
        }
    .end annotation

    .line 25
    iput-object p1, p0, Lcom/juhe/juhesdk/middle/data/OppoRequestData;->ssoid:Ljava/lang/String;

    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "token"
        }
    .end annotation

    .line 17
    iput-object p1, p0, Lcom/juhe/juhesdk/middle/data/OppoRequestData;->token:Ljava/lang/String;

    return-void
.end method
