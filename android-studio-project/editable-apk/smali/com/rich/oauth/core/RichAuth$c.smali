.class public Lcom/rich/oauth/core/RichAuth$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/rich/oauth/callback/CertifiTokenCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rich/oauth/core/RichAuth;->onAccesscodeSuccessListener(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/rich/oauth/core/RichAuth;


# direct methods
.method public constructor <init>(Lcom/rich/oauth/core/RichAuth;)V
    .locals 0

    iput-object p1, p0, Lcom/rich/oauth/core/RichAuth$c;->a:Lcom/rich/oauth/core/RichAuth;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetCertifiTokenFailureResult(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/rich/oauth/core/RichAuth$c;->a:Lcom/rich/oauth/core/RichAuth;

    .line 1
    iget-object v0, v0, Lcom/rich/oauth/core/RichAuth;->j:Lcom/rich/oauth/callback/CertificaioinCallback;

    .line 2
    invoke-interface {v0, p1}, Lcom/rich/oauth/callback/CertificaioinCallback;->onPhoneNumberCertificationFailure(Ljava/lang/String;)V

    return-void
.end method

.method public onGetCertifiTokenSuccessResult(Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    iget-object p2, p0, Lcom/rich/oauth/core/RichAuth$c;->a:Lcom/rich/oauth/core/RichAuth;

    .line 1
    new-instance v0, Lrich/t3;

    iget-object v1, p2, Lcom/rich/oauth/core/RichAuth;->g:Landroid/content/Context;

    invoke-direct {v0, v1}, Lrich/t3;-><init>(Landroid/content/Context;)V

    iget-object v1, p2, Lcom/rich/oauth/core/RichAuth;->f:Ljava/lang/String;

    iget-object v2, p2, Lcom/rich/oauth/core/RichAuth;->l:Ljava/lang/String;

    new-instance v3, Lrich/i3;

    invoke-direct {v3, p2}, Lrich/i3;-><init>(Lcom/rich/oauth/core/RichAuth;)V

    .line 2
    invoke-static {}, Lcom/rich/oauth/util/TimeUtil;->getTime()Ljava/lang/String;

    move-result-object p2

    new-instance v4, Ljava/util/TreeMap;

    invoke-direct {v4}, Ljava/util/TreeMap;-><init>()V

    const-string v5, "appId"

    invoke-virtual {v4, v5, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "mobile"

    invoke-virtual {v4, v6, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "timeStamp"

    invoke-virtual {v4, v7, p2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "token"

    invoke-virtual {v4, v8, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "appSecret"

    const-string v10, "utf-8"

    invoke-static {v4, v9, v10}, Lcom/rich/oauth/util/MD5Utils;->getDigest(Ljava/util/TreeMap;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    invoke-virtual {v9, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v9, v7, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v9, v8, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v9, v6, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "sign"

    invoke-virtual {v9, p1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    new-instance p1, Lrich/e3;

    new-instance p2, Lrich/r3;

    invoke-direct {p2, v0, v3}, Lrich/r3;-><init>(Lrich/t3;Lcom/rich/oauth/callback/PhoneNumberCertificationCallback;)V

    new-instance v1, Lrich/s3;

    invoke-direct {v1, v0, v3}, Lrich/s3;-><init>(Lrich/t3;Lcom/rich/oauth/callback/PhoneNumberCertificationCallback;)V

    const-string v0, "https://oauth.baina.com/richinfo_oauth_interface/sdkInterface/v2/verifyMobile"

    invoke-direct {p1, v0, v9, p2, v1}, Lrich/e3;-><init>(Ljava/lang/String;Lorg/json/JSONObject;Lrich/q$b;Lrich/q$a;)V

    new-instance p2, Lrich/e;

    const/16 v0, 0x4e20

    const/4 v1, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {p2, v0, v1, v2}, Lrich/e;-><init>(IIF)V

    .line 3
    iput-object p2, p1, Lrich/o;->l:Lrich/e;

    .line 4
    invoke-static {}, Lcom/rich/oauth/core/RichAuth;->getInstance()Lcom/rich/oauth/core/RichAuth;

    move-result-object p2

    invoke-virtual {p2}, Lcom/rich/oauth/core/RichAuth;->a()Lrich/p;

    move-result-object p2

    invoke-virtual {p2, p1}, Lrich/p;->a(Lrich/o;)Lrich/o;

    return-void
.end method
