.class public Lrich/r3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lrich/q$b;


# instance fields
.field public final synthetic a:Lcom/rich/oauth/callback/PhoneNumberCertificationCallback;


# direct methods
.method public constructor <init>(Lrich/t3;Lcom/rich/oauth/callback/PhoneNumberCertificationCallback;)V
    .locals 0

    iput-object p2, p0, Lrich/r3;->a:Lcom/rich/oauth/callback/PhoneNumberCertificationCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Lorg/json/JSONObject;

    .line 1
    iget-object v0, p0, Lrich/r3;->a:Lcom/rich/oauth/callback/PhoneNumberCertificationCallback;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/rich/oauth/callback/PhoneNumberCertificationCallback;->onPhoneNumberCertificationSuccess(Ljava/lang/String;)V

    return-void
.end method
