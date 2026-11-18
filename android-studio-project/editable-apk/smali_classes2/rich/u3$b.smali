.class public Lrich/u3$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lrich/q$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrich/u3;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/rich/oauth/callback/TokenResultCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/rich/oauth/callback/TokenResultCallback;


# direct methods
.method public constructor <init>(Lrich/u3;Lcom/rich/oauth/callback/TokenResultCallback;)V
    .locals 0

    iput-object p2, p0, Lrich/u3$b;->a:Lcom/rich/oauth/callback/TokenResultCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lrich/u;)V
    .locals 2

    iget-object p1, p1, Lrich/u;->a:Lrich/k;

    if-nez p1, :cond_0

    iget-object p1, p0, Lrich/u3$b;->a:Lcom/rich/oauth/callback/TokenResultCallback;

    const v0, 0x13c72

    const-string v1, "\u65e0\u7f51\u7edc\uff0ctoken\u6362\u53d6\u5931\u8d25\uff0c\u8bf7\u6253\u5f00\u7f51\u7edc\uff0c\u5e76\u7a0d\u540e\u8fdb\u884c\u767b\u5f55"

    invoke-static {v0, v1}, Lcom/rich/oauth/util/JsonBuildUtil;->getJsonString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/rich/oauth/callback/TokenResultCallback;->getTokenFailure(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object p1, p1, Lrich/k;->b:[B

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "status"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "msg"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lrich/u3$b;->a:Lcom/rich/oauth/callback/TokenResultCallback;

    invoke-static {v0, p1}, Lcom/rich/oauth/util/JsonBuildUtil;->getJsonString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Lcom/rich/oauth/callback/TokenResultCallback;->getTokenFailure(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method
