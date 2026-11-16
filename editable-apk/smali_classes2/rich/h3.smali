.class public Lrich/h3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/rich/oauth/callback/TokenResultCallback;


# instance fields
.field public final synthetic a:Lcom/rich/oauth/callback/CertifiTokenCallback;


# direct methods
.method public constructor <init>(Lcom/rich/oauth/core/RichAuth;Lcom/rich/oauth/callback/CertifiTokenCallback;)V
    .locals 0

    iput-object p2, p0, Lrich/h3;->a:Lcom/rich/oauth/callback/CertifiTokenCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getTokenFailure(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lrich/h3;->a:Lcom/rich/oauth/callback/CertifiTokenCallback;

    invoke-interface {v0, p1}, Lcom/rich/oauth/callback/CertifiTokenCallback;->onGetCertifiTokenFailureResult(Ljava/lang/String;)V

    return-void
.end method

.method public getTokenSuccess(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lrich/h3;->a:Lcom/rich/oauth/callback/CertifiTokenCallback;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/rich/oauth/callback/CertifiTokenCallback;->onGetCertifiTokenSuccessResult(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
