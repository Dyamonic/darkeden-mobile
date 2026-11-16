.class public Lrich/s3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lrich/q$a;


# instance fields
.field public final synthetic a:Lcom/rich/oauth/callback/PhoneNumberCertificationCallback;


# direct methods
.method public constructor <init>(Lrich/t3;Lcom/rich/oauth/callback/PhoneNumberCertificationCallback;)V
    .locals 0

    iput-object p2, p0, Lrich/s3;->a:Lcom/rich/oauth/callback/PhoneNumberCertificationCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lrich/u;)V
    .locals 2

    iget-object p1, p1, Lrich/u;->a:Lrich/k;

    if-nez p1, :cond_0

    iget-object p1, p0, Lrich/s3;->a:Lcom/rich/oauth/callback/PhoneNumberCertificationCallback;

    const v0, 0xd906

    const-string v1, "\u6570\u636e\u89e3\u6790\u5f02\u5e38"

    invoke-static {v0, v1}, Lcom/rich/oauth/util/JsonBuildUtil;->getJsonString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/rich/oauth/callback/PhoneNumberCertificationCallback;->onPhoneNumberCertificationFailure(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lrich/s3;->a:Lcom/rich/oauth/callback/PhoneNumberCertificationCallback;

    new-instance v1, Ljava/lang/String;

    iget-object p1, p1, Lrich/k;->b:[B

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([B)V

    invoke-interface {v0, v1}, Lcom/rich/oauth/callback/PhoneNumberCertificationCallback;->onPhoneNumberCertificationFailure(Ljava/lang/String;)V

    return-void
.end method
