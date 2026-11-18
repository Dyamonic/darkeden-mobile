.class public Lrich/m3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lrich/k3;
.implements Lcom/rich/oauth/callback/ModelCallback;


# instance fields
.field public a:Lrich/l3;

.field public b:Lcom/rich/oauth/callback/LoginListener;


# direct methods
.method public constructor <init>(Lcom/rich/oauth/callback/LoginListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrich/m3;->b:Lcom/rich/oauth/callback/LoginListener;

    new-instance p1, Lrich/l3;

    invoke-direct {p1, p0}, Lrich/l3;-><init>(Lcom/rich/oauth/callback/ModelCallback;)V

    iput-object p1, p0, Lrich/m3;->a:Lrich/l3;

    return-void
.end method


# virtual methods
.method public onFailureResult(Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lrich/m3;->b:Lcom/rich/oauth/callback/LoginListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/rich/oauth/callback/LoginListener;->onLoginFailureListener(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public onGetAccessCodeFailureResult(Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lrich/m3;->b:Lcom/rich/oauth/callback/LoginListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/rich/oauth/callback/LoginListener;->onAccesscodeFailureListener(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public onGetAccessCodeSuccessResult(Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lrich/m3;->b:Lcom/rich/oauth/callback/LoginListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/rich/oauth/callback/LoginListener;->onAccesscodeSuccessListener(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public onPreLoginFailuresResult(Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lrich/m3;->b:Lcom/rich/oauth/callback/LoginListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/rich/oauth/callback/LoginListener;->onPreLoginFailureListener(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public onPreLoginSuccessResult(Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lrich/m3;->b:Lcom/rich/oauth/callback/LoginListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/rich/oauth/callback/LoginListener;->onPreLoginSuccessListener(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public onSuccessResult(Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lrich/m3;->b:Lcom/rich/oauth/callback/LoginListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/rich/oauth/callback/LoginListener;->onLoginSuccessListener(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method
