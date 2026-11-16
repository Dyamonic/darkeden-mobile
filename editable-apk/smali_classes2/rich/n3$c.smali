.class public Lrich/n3$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lrich/q0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrich/n3;->a(Landroid/content/Context;Lcom/rich/oauth/callback/ModelCallback;Lrich/f3$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/rich/oauth/callback/ModelCallback;


# direct methods
.method public constructor <init>(Lrich/n3;Lcom/rich/oauth/callback/ModelCallback;)V
    .locals 0

    iput-object p2, p0, Lrich/n3$c;->a:Lcom/rich/oauth/callback/ModelCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILorg/json/JSONObject;)V
    .locals 3

    const/4 p1, 0x0

    if-eqz p2, :cond_6

    const-string v0, "resultCode"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "operatorType"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u79fb\u52a8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const-string v2, "\u8054\u901a"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 p1, 0x3

    goto :goto_0

    :cond_1
    const-string v2, "\u7535\u4fe1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 p1, 0x1

    :cond_2
    :goto_0
    const v1, 0x19258

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lrich/n3$c;->a:Lcom/rich/oauth/callback/ModelCallback;

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p2, p1}, Lcom/rich/oauth/callback/ModelCallback;->onPreLoginSuccessResult(Ljava/lang/String;I)V

    goto :goto_2

    :cond_3
    const v1, 0x30d45

    if-ne v0, v1, :cond_4

    iget-object p2, p0, Lrich/n3$c;->a:Lcom/rich/oauth/callback/ModelCallback;

    const-string v1, "\u7528\u6237\u672a\u6388\u6743\uff08READ_PHONE_STATE\uff09"

    goto :goto_1

    :cond_4
    const v1, 0x30d56

    if-ne v0, v1, :cond_5

    iget-object p2, p0, Lrich/n3$c;->a:Lcom/rich/oauth/callback/ModelCallback;

    const-string v1, "\u65e0\u7f51\u7edc"

    goto :goto_1

    :cond_5
    const-string v1, "desc"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lrich/n3$c;->a:Lcom/rich/oauth/callback/ModelCallback;

    invoke-static {v0, p2}, Lcom/rich/oauth/util/JsonBuildUtil;->getJsonString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v1, p2, p1}, Lcom/rich/oauth/callback/ModelCallback;->onPreLoginFailuresResult(Ljava/lang/String;I)V

    goto :goto_2

    :cond_6
    iget-object p2, p0, Lrich/n3$c;->a:Lcom/rich/oauth/callback/ModelCallback;

    const v0, 0xd900

    const-string v1, "\u79fb\u52a8\u9884\u767b\u9646\u63a5\u53e3json\u4e3a\u7a7a"

    :goto_1
    invoke-static {v0, v1}, Lcom/rich/oauth/util/JsonBuildUtil;->getJsonString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0, p1}, Lcom/rich/oauth/callback/ModelCallback;->onPreLoginFailuresResult(Ljava/lang/String;I)V

    :goto_2
    return-void
.end method
