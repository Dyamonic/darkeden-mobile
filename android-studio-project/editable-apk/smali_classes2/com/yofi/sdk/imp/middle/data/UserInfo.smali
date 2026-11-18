.class public Lcom/yofi/sdk/imp/middle/data/UserInfo;
.super Ljava/lang/Object;
.source "UserInfo.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/yofi/sdk/imp/middle/data/UserInfo;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public logintime:J

.field public password:Ljava/lang/String;

.field public username:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "username",
            "password",
            "logintime"
        }
    .end annotation

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/yofi/sdk/imp/middle/data/UserInfo;->username:Ljava/lang/String;

    .line 15
    iput-object p2, p0, Lcom/yofi/sdk/imp/middle/data/UserInfo;->password:Ljava/lang/String;

    .line 16
    iput-wide p3, p0, Lcom/yofi/sdk/imp/middle/data/UserInfo;->logintime:J

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/yofi/sdk/imp/middle/data/UserInfo;)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "another"
        }
    .end annotation

    .line 46
    new-instance v0, Ljava/lang/Long;

    invoke-virtual {p1}, Lcom/yofi/sdk/imp/middle/data/UserInfo;->getLogintime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {p0}, Lcom/yofi/sdk/imp/middle/data/UserInfo;->getLogintime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "another"
        }
    .end annotation

    .line 6
    check-cast p1, Lcom/yofi/sdk/imp/middle/data/UserInfo;

    invoke-virtual {p0, p1}, Lcom/yofi/sdk/imp/middle/data/UserInfo;->compareTo(Lcom/yofi/sdk/imp/middle/data/UserInfo;)I

    move-result p1

    return p1
.end method

.method public getLogintime()J
    .locals 2

    .line 36
    iget-wide v0, p0, Lcom/yofi/sdk/imp/middle/data/UserInfo;->logintime:J

    return-wide v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/data/UserInfo;->password:Ljava/lang/String;

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/data/UserInfo;->username:Ljava/lang/String;

    return-object v0
.end method

.method public setLogintime(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "logintime"
        }
    .end annotation

    .line 40
    iput-wide p1, p0, Lcom/yofi/sdk/imp/middle/data/UserInfo;->logintime:J

    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "password"
        }
    .end annotation

    .line 32
    iput-object p1, p0, Lcom/yofi/sdk/imp/middle/data/UserInfo;->password:Ljava/lang/String;

    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "username"
        }
    .end annotation

    .line 24
    iput-object p1, p0, Lcom/yofi/sdk/imp/middle/data/UserInfo;->username:Ljava/lang/String;

    return-void
.end method
