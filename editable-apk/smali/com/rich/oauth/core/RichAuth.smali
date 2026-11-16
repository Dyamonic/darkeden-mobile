.class public Lcom/rich/oauth/core/RichAuth;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/rich/oauth/callback/LoginListener;


# static fields
.field public static volatile s:Lcom/rich/oauth/core/RichAuth;


# instance fields
.field public a:I

.field public b:Lrich/m3;

.field public c:Lrich/p;

.field public d:Lrich/f3;

.field public e:Lrich/f3$a;

.field public f:Ljava/lang/String;

.field public g:Landroid/content/Context;

.field public h:Lcom/rich/oauth/callback/TokenCallback;

.field public i:Lcom/rich/oauth/callback/PreLoginCallback;

.field public j:Lcom/rich/oauth/callback/CertificaioinCallback;

.field public k:Ljava/lang/String;

.field public l:Ljava/lang/String;

.field public m:Z

.field public n:Ljava/lang/String;

.field public o:Lcom/rich/oauth/core/UIConfigBuild;

.field public p:J

.field public q:J

.field public volatile r:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x2

    iput v0, p0, Lcom/rich/oauth/core/RichAuth;->a:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/rich/oauth/core/RichAuth;->m:Z

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/rich/oauth/core/RichAuth;->p:J

    iput-wide v1, p0, Lcom/rich/oauth/core/RichAuth;->q:J

    iput-boolean v0, p0, Lcom/rich/oauth/core/RichAuth;->r:Z

    return-void
.end method

.method public static synthetic a(Lcom/rich/oauth/core/RichAuth;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/rich/oauth/core/RichAuth;->r:Z

    return p1
.end method

.method public static getInstance()Lcom/rich/oauth/core/RichAuth;
    .locals 2

    sget-object v0, Lcom/rich/oauth/core/RichAuth;->s:Lcom/rich/oauth/core/RichAuth;

    if-nez v0, :cond_1

    const-class v0, Lcom/rich/oauth/core/RichAuth;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/rich/oauth/core/RichAuth;->s:Lcom/rich/oauth/core/RichAuth;

    if-nez v1, :cond_0

    new-instance v1, Lcom/rich/oauth/core/RichAuth;

    invoke-direct {v1}, Lcom/rich/oauth/core/RichAuth;-><init>()V

    sput-object v1, Lcom/rich/oauth/core/RichAuth;->s:Lcom/rich/oauth/core/RichAuth;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/rich/oauth/core/RichAuth;->s:Lcom/rich/oauth/core/RichAuth;

    return-object v0
.end method


# virtual methods
.method public a()Lrich/p;
    .locals 1

    iget-object v0, p0, Lcom/rich/oauth/core/RichAuth;->c:Lrich/p;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/rich/oauth/core/RichAuth;->g:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lrich/b0;->d(Landroid/content/Context;)Lrich/p;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final a(Lcom/rich/oauth/callback/InitCallback;)V
    .locals 12

    iget-boolean v0, p0, Lcom/rich/oauth/core/RichAuth;->r:Z

    if-nez v0, :cond_4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/rich/oauth/core/RichAuth;->r:Z

    new-instance v1, Lrich/q3;

    iget-object v2, p0, Lcom/rich/oauth/core/RichAuth;->g:Landroid/content/Context;

    invoke-direct {v1, v2}, Lrich/q3;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/rich/oauth/core/RichAuth;->f:Ljava/lang/String;

    new-instance v3, Lcom/rich/oauth/core/RichAuth$a;

    invoke-direct {v3, p0, p1}, Lcom/rich/oauth/core/RichAuth$a;-><init>(Lcom/rich/oauth/core/RichAuth;Lcom/rich/oauth/callback/InitCallback;)V

    .line 1
    new-instance p1, Ljava/util/Random;

    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const v5, 0x15f8f

    invoke-virtual {p1, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    add-int/lit16 v6, v6, 0x2710

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    add-int/lit16 p1, p1, 0x2710

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/rich/oauth/util/TimeUtil;->getTime()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    :try_start_0
    iget-object v6, v1, Lrich/q3;->a:Landroid/content/Context;

    invoke-static {v6}, Lcom/rich/oauth/util/PackageUtil;->getSignMd5(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_0

    const v6, 0xc365

    const-string v7, "context\u4e3a\u7a7a\uff0c\u521d\u59cb\u5316\u5931\u8d25"

    invoke-static {v6, v7}, Lcom/rich/oauth/util/JsonBuildUtil;->getJsonString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Lcom/rich/oauth/callback/InitResultCallback;->initFailure(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_5

    :catch_0
    move-exception v6

    invoke-virtual {v6}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v6

    invoke-virtual {v6}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    :cond_0
    :goto_0
    iget-object v6, v1, Lrich/q3;->a:Landroid/content/Context;

    invoke-static {v6}, Lcom/rich/oauth/util/PackageUtil;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v8, 0x0

    move v9, v8

    :goto_1
    array-length v10, v5

    if-ge v9, v10, :cond_3

    array-length v10, v5

    sub-int/2addr v10, v0

    if-ne v9, v10, :cond_1

    aget-char v10, v5, v9

    :goto_2
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_1
    and-int/lit8 v10, v9, 0x1

    if-eqz v10, :cond_2

    aget-char v10, v5, v9

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v10, ":"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_2
    aget-char v10, v5, v9

    goto :goto_2

    :goto_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "|"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    new-instance v5, Ljava/util/TreeMap;

    invoke-direct {v5}, Ljava/util/TreeMap;-><init>()V

    const-string v6, "appId"

    invoke-virtual {v5, v6, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v9, "expandparam"

    invoke-virtual {v5, v9, v7}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "systemType"

    const-string v10, "2"

    invoke-virtual {v5, v7, v10}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v10, "timeStamp"

    invoke-virtual {v5, v10, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v11, "utf-8"

    invoke-static {v5, v2, v11}, Lcom/rich/oauth/util/MD5Utils;->getDigest(Ljava/util/TreeMap;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V

    :try_start_1
    invoke-virtual {v11, v6, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 v6, 0x2

    invoke-virtual {v11, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v11, v10, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v9, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "sign"

    invoke-virtual {v11, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_4

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_4
    new-instance v0, Lrich/e3;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "https://nvs.im.tencent.cn/v5/rapidauth/initialize?sdkappid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&random="

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Lrich/o3;

    invoke-direct {v2, v1, v3}, Lrich/o3;-><init>(Lrich/q3;Lcom/rich/oauth/callback/InitResultCallback;)V

    new-instance v4, Lrich/p3;

    invoke-direct {v4, v1, v3}, Lrich/p3;-><init>(Lrich/q3;Lcom/rich/oauth/callback/InitResultCallback;)V

    invoke-direct {v0, p1, v11, v2, v4}, Lrich/e3;-><init>(Ljava/lang/String;Lorg/json/JSONObject;Lrich/q$b;Lrich/q$a;)V

    new-instance p1, Lrich/e;

    const/16 v1, 0x3a98

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {p1, v1, v8, v2}, Lrich/e;-><init>(IIF)V

    .line 2
    iput-object p1, v0, Lrich/o;->l:Lrich/e;

    .line 3
    invoke-static {}, Lcom/rich/oauth/core/RichAuth;->getInstance()Lcom/rich/oauth/core/RichAuth;

    move-result-object p1

    invoke-virtual {p1}, Lcom/rich/oauth/core/RichAuth;->a()Lrich/p;

    move-result-object p1

    invoke-virtual {p1, v0}, Lrich/p;->a(Lrich/o;)Lrich/o;

    :cond_4
    :goto_5
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/rich/oauth/callback/CertifiTokenCallback;)V
    .locals 6

    new-instance v0, Lrich/u3;

    invoke-direct {v0}, Lrich/u3;-><init>()V

    iget-object v4, p0, Lcom/rich/oauth/core/RichAuth;->n:Ljava/lang/String;

    new-instance v5, Lrich/h3;

    invoke-direct {v5, p0, p4}, Lrich/h3;-><init>(Lcom/rich/oauth/core/RichAuth;Lcom/rich/oauth/callback/CertifiTokenCallback;)V

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lrich/u3;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/rich/oauth/callback/TokenResultCallback;)V

    return-void
.end method

.method public final b()V
    .locals 1

    new-instance v0, Lcom/rich/oauth/core/RichAuth$b;

    invoke-direct {v0, p0}, Lcom/rich/oauth/core/RichAuth$b;-><init>(Lcom/rich/oauth/core/RichAuth;)V

    invoke-virtual {p0, v0}, Lcom/rich/oauth/core/RichAuth;->a(Lcom/rich/oauth/callback/InitCallback;)V

    return-void
.end method

.method public certificationNumber(Landroid/content/Context;Ljava/lang/String;Lcom/rich/oauth/callback/CertificaioinCallback;)V
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/rich/oauth/core/RichAuth;->q:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x5dc

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    return-void

    :cond_0
    iput-wide v0, p0, Lcom/rich/oauth/core/RichAuth;->q:J

    iput-object p3, p0, Lcom/rich/oauth/core/RichAuth;->j:Lcom/rich/oauth/callback/CertificaioinCallback;

    iput-object p2, p0, Lcom/rich/oauth/core/RichAuth;->l:Ljava/lang/String;

    iget p2, p0, Lcom/rich/oauth/core/RichAuth;->a:I

    const/4 p3, -0x2

    const-string v0, "\u9884\u767b\u5f55\uff0c\u521d\u59cb\u5316\u672a\u5b8c\u6210\uff0c\u8bf7\u7a0d\u5019"

    const v1, 0xc351

    if-ne p2, p3, :cond_1

    invoke-virtual {p0}, Lcom/rich/oauth/core/RichAuth;->b()V

    iget-object p1, p0, Lcom/rich/oauth/core/RichAuth;->j:Lcom/rich/oauth/callback/CertificaioinCallback;

    invoke-static {v1, v0}, Lcom/rich/oauth/util/JsonBuildUtil;->getJsonString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/rich/oauth/callback/CertificaioinCallback;->onPhoneNumberCertificationFailure(Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 p3, -0x1

    if-ne p2, p3, :cond_2

    invoke-virtual {p0}, Lcom/rich/oauth/core/RichAuth;->b()V

    iget-object p1, p0, Lcom/rich/oauth/core/RichAuth;->j:Lcom/rich/oauth/callback/CertificaioinCallback;

    iget-object p2, p0, Lcom/rich/oauth/core/RichAuth;->k:Ljava/lang/String;

    invoke-interface {p1, p2}, Lcom/rich/oauth/callback/CertificaioinCallback;->onPhoneNumberCertificationFailure(Ljava/lang/String;)V

    return-void

    :cond_2
    iget-object p2, p0, Lcom/rich/oauth/core/RichAuth;->d:Lrich/f3;

    if-nez p2, :cond_3

    invoke-virtual {p0}, Lcom/rich/oauth/core/RichAuth;->b()V

    iget-object p1, p0, Lcom/rich/oauth/core/RichAuth;->j:Lcom/rich/oauth/callback/CertificaioinCallback;

    const p2, 0xc352

    const-string p3, "\u521d\u59cb\u5316\u8fd0\u8425\u5546\u53c2\u6570\u4e3a\u7a7a"

    invoke-static {p2, p3}, Lcom/rich/oauth/util/JsonBuildUtil;->getJsonString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/rich/oauth/callback/CertificaioinCallback;->onPhoneNumberCertificationFailure(Ljava/lang/String;)V

    return-void

    .line 1
    :cond_3
    iget-object p2, p2, Lrich/f3;->c:Ljava/util/List;

    if-eqz p2, :cond_d

    .line 2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-nez p2, :cond_4

    goto/16 :goto_5

    :cond_4
    invoke-static {p1}, Lrich/p0;->b(Landroid/content/Context;)Lrich/p0;

    move-result-object p2

    invoke-virtual {p2, p1}, Lrich/t0;->a(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object p2

    const-string p3, "operatorType"

    invoke-virtual {p2, p3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string v2, "networkType"

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v2, "1"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "2"

    if-eqz v3, :cond_5

    :goto_0
    iput-object v4, p0, Lcom/rich/oauth/core/RichAuth;->n:Ljava/lang/String;

    goto :goto_1

    :cond_5
    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "3"

    if-eqz v3, :cond_6

    goto :goto_0

    :cond_6
    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    iput-object v2, p0, Lcom/rich/oauth/core/RichAuth;->n:Ljava/lang/String;

    :cond_7
    :goto_1
    const-string v2, "0"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const-string v3, "\u4e0d\u80fd\u8bc6\u522b\u8fd0\u8425\u5546\uff0c\u79fb\u52a8\u7f51\u7edc\u672a\u5f00\u542f"

    const v4, 0x13c7c

    if-eqz p2, :cond_8

    iget-object p1, p0, Lcom/rich/oauth/core/RichAuth;->i:Lcom/rich/oauth/callback/PreLoginCallback;

    invoke-static {v4, v3}, Lcom/rich/oauth/util/JsonBuildUtil;->getJsonString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/rich/oauth/callback/PreLoginCallback;->onPreLoginFailure(Ljava/lang/String;)V

    return-void

    :cond_8
    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 p3, 0x2

    if-eqz p2, :cond_9

    const/4 p2, 0x0

    iput p2, p0, Lcom/rich/oauth/core/RichAuth;->a:I

    goto :goto_2

    :cond_9
    iput p3, p0, Lcom/rich/oauth/core/RichAuth;->a:I

    :goto_2
    iget p2, p0, Lcom/rich/oauth/core/RichAuth;->a:I

    if-eqz p2, :cond_c

    if-eq p2, p3, :cond_a

    goto :goto_3

    :cond_a
    iget-object p2, p0, Lcom/rich/oauth/core/RichAuth;->e:Lrich/f3$a;

    if-nez p2, :cond_b

    iget-object p1, p0, Lcom/rich/oauth/core/RichAuth;->j:Lcom/rich/oauth/callback/CertificaioinCallback;

    invoke-static {v1, v0}, Lcom/rich/oauth/util/JsonBuildUtil;->getJsonString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/rich/oauth/callback/CertificaioinCallback;->onPhoneNumberCertificationFailure(Ljava/lang/String;)V

    return-void

    :cond_b
    iget-object p3, p0, Lcom/rich/oauth/core/RichAuth;->b:Lrich/m3;

    .line 3
    iget-object p3, p3, Lrich/m3;->a:Lrich/l3;

    invoke-virtual {p3, p1, p2}, Lrich/l3;->a(Landroid/content/Context;Lrich/f3$a;)V

    goto :goto_4

    .line 2
    :cond_c
    :goto_3
    iget-object p1, p0, Lcom/rich/oauth/core/RichAuth;->j:Lcom/rich/oauth/callback/CertificaioinCallback;

    invoke-static {v4, v3}, Lcom/rich/oauth/util/JsonBuildUtil;->getJsonString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/rich/oauth/callback/CertificaioinCallback;->onPhoneNumberCertificationFailure(Ljava/lang/String;)V

    :goto_4
    return-void

    .line 4
    :cond_d
    :goto_5
    invoke-virtual {p0}, Lcom/rich/oauth/core/RichAuth;->b()V

    iget-object p1, p0, Lcom/rich/oauth/core/RichAuth;->j:Lcom/rich/oauth/callback/CertificaioinCallback;

    const p2, 0xc353

    const-string p3, "\u521d\u59cb\u5316\u8fd4\u56de\u7684\u53c2\u6570\u4e3a\u7a7a"

    invoke-static {p2, p3}, Lcom/rich/oauth/util/JsonBuildUtil;->getJsonString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/rich/oauth/callback/CertificaioinCallback;->onPhoneNumberCertificationFailure(Ljava/lang/String;)V

    return-void
.end method

.method public closeOauthPage()V
    .locals 3

    invoke-static {}, Lrich/n3;->a()Lrich/n3;

    move-result-object v0

    .line 1
    iget-object v1, v0, Lrich/n3;->a:Lrich/p0;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lrich/p0;->d()V

    iget-object v1, v0, Lrich/n3;->a:Lrich/p0;

    .line 2
    iput-object v2, v1, Lrich/p0;->h:Lrich/o2;

    .line 3
    :cond_0
    iput-object v2, v0, Lrich/n3;->c:Lcom/rich/oauth/core/UIConfigBuild;

    .line 4
    iput-object v2, p0, Lcom/rich/oauth/core/RichAuth;->h:Lcom/rich/oauth/callback/TokenCallback;

    iput-object v2, p0, Lcom/rich/oauth/core/RichAuth;->o:Lcom/rich/oauth/core/UIConfigBuild;

    return-void
.end method

.method public delscrip(Landroid/content/Context;)V
    .locals 0

    invoke-static {p1}, Lrich/p0;->b(Landroid/content/Context;)Lrich/p0;

    move-result-object p1

    invoke-virtual {p1}, Lrich/t0;->b()V

    return-void
.end method

.method public getNetworkType(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Lrich/p0;->b(Landroid/content/Context;)Lrich/p0;

    move-result-object v0

    invoke-virtual {v0, p1}, Lrich/t0;->a(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "operatorType"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "networkType"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getOperatorType(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    invoke-static {p1}, Lrich/p0;->b(Landroid/content/Context;)Lrich/p0;

    move-result-object v0

    invoke-virtual {v0, p1}, Lrich/t0;->a(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "operatortype"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "networktype"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    return-object v0
.end method

.method public init(Landroid/content/Context;Ljava/lang/String;Lcom/rich/oauth/callback/InitCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/rich/oauth/core/RichAuth;->g:Landroid/content/Context;

    iput-object p2, p0, Lcom/rich/oauth/core/RichAuth;->f:Ljava/lang/String;

    new-instance p2, Lrich/m3;

    invoke-direct {p2, p0}, Lrich/m3;-><init>(Lcom/rich/oauth/callback/LoginListener;)V

    iput-object p2, p0, Lcom/rich/oauth/core/RichAuth;->b:Lrich/m3;

    iget-object p2, p0, Lcom/rich/oauth/core/RichAuth;->g:Landroid/content/Context;

    invoke-static {p2}, Lrich/b0;->d(Landroid/content/Context;)Lrich/p;

    move-result-object p2

    iput-object p2, p0, Lcom/rich/oauth/core/RichAuth;->c:Lrich/p;

    invoke-virtual {p0, p3}, Lcom/rich/oauth/core/RichAuth;->a(Lcom/rich/oauth/callback/InitCallback;)V

    invoke-static {p1}, Lcom/rich/oauth/util/LogToFile;->init(Landroid/content/Context;)V

    return-void
.end method

.method public login(Landroid/app/Activity;Lcom/rich/oauth/core/UIConfigBuild;Lcom/rich/oauth/callback/TokenCallback;)V
    .locals 2

    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/rich/oauth/core/UIConfigBuild;

    iput-object p2, p0, Lcom/rich/oauth/core/RichAuth;->o:Lcom/rich/oauth/core/UIConfigBuild;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/rich/oauth/util/SharedPreferencesUtil;->setlastRequestTime(Landroid/content/Context;J)Z

    iput-object p3, p0, Lcom/rich/oauth/core/RichAuth;->h:Lcom/rich/oauth/callback/TokenCallback;

    iget-boolean p2, p0, Lcom/rich/oauth/core/RichAuth;->m:Z

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/rich/oauth/core/RichAuth;->b:Lrich/m3;

    iget-object p3, p0, Lcom/rich/oauth/core/RichAuth;->e:Lrich/f3$a;

    iget-object v0, p0, Lcom/rich/oauth/core/RichAuth;->o:Lcom/rich/oauth/core/UIConfigBuild;

    .line 1
    iget-object p2, p2, Lrich/m3;->a:Lrich/l3;

    invoke-virtual {p2, p1, p3, v0}, Lrich/l3;->a(Landroid/content/Context;Lrich/f3$a;Lcom/rich/oauth/core/UIConfigBuild;)V

    goto :goto_0

    :cond_0
    const p1, 0xea62

    const-string p2, "\u672a\u9884\u767b\u5f55\uff0c\u8bf7\u5148\u9884\u767b\u5f55"

    .line 2
    invoke-static {p1, p2}, Lcom/rich/oauth/util/JsonBuildUtil;->getJsonString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/rich/oauth/callback/TokenCallback;->onTokenFailureResult(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onAccesscodeFailureListener(Ljava/lang/String;I)V
    .locals 0

    iget-object p2, p0, Lcom/rich/oauth/core/RichAuth;->j:Lcom/rich/oauth/callback/CertificaioinCallback;

    invoke-interface {p2, p1}, Lcom/rich/oauth/callback/CertificaioinCallback;->onPhoneNumberCertificationFailure(Ljava/lang/String;)V

    return-void
.end method

.method public onAccesscodeSuccessListener(Ljava/lang/String;I)V
    .locals 2

    const/4 v0, 0x2

    if-ne v0, p2, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "{\'token\':\'"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'}"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object p2, p0, Lcom/rich/oauth/core/RichAuth;->f:Ljava/lang/String;

    iget-object v0, p0, Lcom/rich/oauth/core/RichAuth;->n:Ljava/lang/String;

    invoke-static {p2, v0}, Lcom/rich/oauth/util/MD5Utils;->getTaskId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/rich/oauth/core/RichAuth$c;

    invoke-direct {v1, p0}, Lcom/rich/oauth/core/RichAuth$c;-><init>(Lcom/rich/oauth/core/RichAuth;)V

    invoke-virtual {p0, p2, p1, v0, v1}, Lcom/rich/oauth/core/RichAuth;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/rich/oauth/callback/CertifiTokenCallback;)V

    return-void
.end method

.method public onLoginFailureListener(Ljava/lang/String;I)V
    .locals 0

    iget-object p2, p0, Lcom/rich/oauth/core/RichAuth;->h:Lcom/rich/oauth/callback/TokenCallback;

    if-eqz p2, :cond_0

    invoke-interface {p2, p1}, Lcom/rich/oauth/callback/TokenCallback;->onTokenFailureResult(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/rich/oauth/core/RichAuth;->o:Lcom/rich/oauth/core/UIConfigBuild;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/rich/oauth/core/UIConfigBuild;->isAutoClosAuthPage()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/rich/oauth/core/RichAuth;->closeOauthPage()V

    :cond_0
    return-void
.end method

.method public onLoginSuccessListener(Ljava/lang/String;I)V
    .locals 6

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/rich/oauth/core/RichAuth;->m:Z

    const/4 v0, 0x2

    if-ne v0, p2, :cond_0

    :try_start_0
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "token"

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "{\'token\':\'"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'}"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lcom/rich/oauth/core/RichAuth;->f:Ljava/lang/String;

    iget-object p1, p0, Lcom/rich/oauth/core/RichAuth;->n:Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/rich/oauth/util/MD5Utils;->getTaskId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1
    new-instance v0, Lrich/u3;

    invoke-direct {v0}, Lrich/u3;-><init>()V

    iget-object v4, p0, Lcom/rich/oauth/core/RichAuth;->n:Ljava/lang/String;

    new-instance v5, Lrich/g3;

    invoke-direct {v5, p0}, Lrich/g3;-><init>(Lcom/rich/oauth/core/RichAuth;)V

    invoke-virtual/range {v0 .. v5}, Lrich/u3;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/rich/oauth/callback/TokenResultCallback;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public onPreLoginFailureListener(Ljava/lang/String;I)V
    .locals 0

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/rich/oauth/core/RichAuth;->m:Z

    iget-object p2, p0, Lcom/rich/oauth/core/RichAuth;->i:Lcom/rich/oauth/callback/PreLoginCallback;

    invoke-interface {p2, p1}, Lcom/rich/oauth/callback/PreLoginCallback;->onPreLoginFailure(Ljava/lang/String;)V

    return-void
.end method

.method public onPreLoginSuccessListener(Ljava/lang/String;I)V
    .locals 0

    iput p2, p0, Lcom/rich/oauth/core/RichAuth;->a:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/rich/oauth/core/RichAuth;->m:Z

    iget-object p1, p0, Lcom/rich/oauth/core/RichAuth;->i:Lcom/rich/oauth/callback/PreLoginCallback;

    invoke-interface {p1}, Lcom/rich/oauth/callback/PreLoginCallback;->onPreLoginSuccess()V

    return-void
.end method

.method public preLogin(Landroid/app/Activity;Lcom/rich/oauth/callback/PreLoginCallback;)V
    .locals 6

    iput-object p2, p0, Lcom/rich/oauth/core/RichAuth;->i:Lcom/rich/oauth/callback/PreLoginCallback;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/rich/oauth/core/RichAuth;->p:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x5dc

    cmp-long p2, v2, v4

    if-gez p2, :cond_0

    iget-object p1, p0, Lcom/rich/oauth/core/RichAuth;->i:Lcom/rich/oauth/callback/PreLoginCallback;

    const p2, 0x7a12c

    const-string v0, "\u9884\u767b\u9646\u9891\u7e41\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5"

    invoke-static {p2, v0}, Lcom/rich/oauth/util/JsonBuildUtil;->getJsonString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/rich/oauth/callback/PreLoginCallback;->onPreLoginFailure(Ljava/lang/String;)V

    return-void

    :cond_0
    iput-wide v0, p0, Lcom/rich/oauth/core/RichAuth;->p:J

    iget p2, p0, Lcom/rich/oauth/core/RichAuth;->a:I

    const/4 v0, -0x2

    if-ne p2, v0, :cond_1

    invoke-virtual {p0}, Lcom/rich/oauth/core/RichAuth;->b()V

    iget-object p1, p0, Lcom/rich/oauth/core/RichAuth;->i:Lcom/rich/oauth/callback/PreLoginCallback;

    const p2, 0xc351

    const-string v0, "\u9884\u767b\u5f55\uff0c\u521d\u59cb\u5316\u672a\u5b8c\u6210\uff0c\u8bf7\u7a0d\u5019"

    invoke-static {p2, v0}, Lcom/rich/oauth/util/JsonBuildUtil;->getJsonString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/rich/oauth/callback/PreLoginCallback;->onPreLoginFailure(Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 v0, -0x1

    if-ne p2, v0, :cond_2

    invoke-virtual {p0}, Lcom/rich/oauth/core/RichAuth;->b()V

    iget-object p1, p0, Lcom/rich/oauth/core/RichAuth;->i:Lcom/rich/oauth/callback/PreLoginCallback;

    iget-object p2, p0, Lcom/rich/oauth/core/RichAuth;->k:Ljava/lang/String;

    invoke-interface {p1, p2}, Lcom/rich/oauth/callback/PreLoginCallback;->onPreLoginFailure(Ljava/lang/String;)V

    return-void

    :cond_2
    iget-object p2, p0, Lcom/rich/oauth/core/RichAuth;->d:Lrich/f3;

    if-nez p2, :cond_3

    invoke-virtual {p0}, Lcom/rich/oauth/core/RichAuth;->b()V

    iget-object p1, p0, Lcom/rich/oauth/core/RichAuth;->i:Lcom/rich/oauth/callback/PreLoginCallback;

    const p2, 0xc352

    const-string v0, "\u521d\u59cb\u5316\u8fd0\u8425\u5546\u53c2\u6570\u4e3a\u7a7a"

    invoke-static {p2, v0}, Lcom/rich/oauth/util/JsonBuildUtil;->getJsonString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/rich/oauth/callback/PreLoginCallback;->onPreLoginFailure(Ljava/lang/String;)V

    return-void

    .line 1
    :cond_3
    iget-object p2, p2, Lrich/f3;->c:Ljava/util/List;

    if-eqz p2, :cond_a

    .line 2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-nez p2, :cond_4

    goto :goto_3

    :cond_4
    invoke-static {p1}, Lrich/p0;->b(Landroid/content/Context;)Lrich/p0;

    move-result-object p2

    invoke-virtual {p2, p1}, Lrich/t0;->a(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object p2

    const-string v0, "operatortype"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "networktype"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "2"

    if-eqz v2, :cond_5

    :goto_0
    iput-object v3, p0, Lcom/rich/oauth/core/RichAuth;->n:Ljava/lang/String;

    goto :goto_1

    :cond_5
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "3"

    if-eqz v2, :cond_6

    goto :goto_0

    :cond_6
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    iput-object v1, p0, Lcom/rich/oauth/core/RichAuth;->n:Ljava/lang/String;

    :cond_7
    :goto_1
    const-string v1, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_8

    goto :goto_2

    :cond_8
    iget-object p2, p0, Lcom/rich/oauth/core/RichAuth;->b:Lrich/m3;

    iget-object v0, p0, Lcom/rich/oauth/core/RichAuth;->e:Lrich/f3$a;

    .line 3
    iget-object p2, p2, Lrich/m3;->a:Lrich/l3;

    invoke-virtual {p2, p1, v0}, Lrich/l3;->b(Landroid/content/Context;Lrich/f3$a;)V

    return-void

    .line 4
    :cond_9
    :goto_2
    iget-object p1, p0, Lcom/rich/oauth/core/RichAuth;->i:Lcom/rich/oauth/callback/PreLoginCallback;

    const p2, 0x13c72

    const-string v0, "\u9884\u767b\u5f55\u5931\u8d25\uff0c\u4e0d\u80fd\u8bc6\u522b\u8fd0\u8425\u5546\uff0c\u79fb\u52a8\u7f51\u7edc\u672a\u5f00\u542f"

    invoke-static {p2, v0}, Lcom/rich/oauth/util/JsonBuildUtil;->getJsonString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/rich/oauth/callback/PreLoginCallback;->onPreLoginFailure(Ljava/lang/String;)V

    return-void

    :cond_a
    :goto_3
    invoke-virtual {p0}, Lcom/rich/oauth/core/RichAuth;->b()V

    iget-object p1, p0, Lcom/rich/oauth/core/RichAuth;->i:Lcom/rich/oauth/callback/PreLoginCallback;

    const p2, 0xc353

    const-string v0, "\u521d\u59cb\u5316\u8fd4\u56de\u7684\u53c2\u6570\u4e3a\u7a7a"

    invoke-static {p2, v0}, Lcom/rich/oauth/util/JsonBuildUtil;->getJsonString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/rich/oauth/callback/PreLoginCallback;->onPreLoginFailure(Ljava/lang/String;)V

    return-void
.end method

.method public setDebugMode(Ljava/lang/Boolean;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 1
    sput-boolean p1, Lrich/c2;->a:Z

    return-void
.end method

.method public setLoginBtn(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/rich/oauth/core/RichAuth;->b:Lrich/m3;

    .line 1
    iget-object v0, v0, Lrich/m3;->a:Lrich/l3;

    invoke-virtual {v0, p1}, Lrich/l3;->a(Ljava/lang/String;)V

    return-void
.end method

.method public setOverTime(Ljava/lang/Integer;)V
    .locals 3

    iget-object v0, p0, Lcom/rich/oauth/core/RichAuth;->g:Landroid/content/Context;

    invoke-static {v0}, Lrich/p0;->b(Landroid/content/Context;)Lrich/p0;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-long v1, p1

    .line 1
    iput-wide v1, v0, Lrich/t0;->c:J

    return-void
.end method
