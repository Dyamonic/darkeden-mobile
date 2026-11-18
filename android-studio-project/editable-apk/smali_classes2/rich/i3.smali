.class public Lrich/i3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/rich/oauth/callback/PhoneNumberCertificationCallback;


# instance fields
.field public final synthetic a:Lcom/rich/oauth/core/RichAuth;


# direct methods
.method public constructor <init>(Lcom/rich/oauth/core/RichAuth;)V
    .locals 0

    iput-object p1, p0, Lrich/i3;->a:Lcom/rich/oauth/core/RichAuth;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPhoneNumberCertificationFailure(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lrich/i3;->a:Lcom/rich/oauth/core/RichAuth;

    .line 1
    iget-object v0, v0, Lcom/rich/oauth/core/RichAuth;->j:Lcom/rich/oauth/callback/CertificaioinCallback;

    .line 2
    invoke-interface {v0, p1}, Lcom/rich/oauth/callback/CertificaioinCallback;->onPhoneNumberCertificationFailure(Ljava/lang/String;)V

    return-void
.end method

.method public onPhoneNumberCertificationSuccess(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lrich/i3;->a:Lcom/rich/oauth/core/RichAuth;

    .line 1
    iget-object v0, v0, Lcom/rich/oauth/core/RichAuth;->j:Lcom/rich/oauth/callback/CertificaioinCallback;

    .line 2
    invoke-interface {v0, p1}, Lcom/rich/oauth/callback/CertificaioinCallback;->onPhoneNumberCertificationSuccess(Ljava/lang/String;)V

    return-void
.end method
