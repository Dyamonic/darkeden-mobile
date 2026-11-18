.class public Lrich/n3$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lrich/q0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrich/n3;->a(Landroid/content/Context;Lcom/rich/oauth/callback/ModelCallback;Lrich/f3$a;Lcom/rich/oauth/core/UIConfigBuild;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/rich/oauth/callback/ModelCallback;

.field public final synthetic b:Lrich/n3;


# direct methods
.method public constructor <init>(Lrich/n3;Lcom/rich/oauth/callback/ModelCallback;)V
    .locals 0

    iput-object p1, p0, Lrich/n3$a;->b:Lrich/n3;

    iput-object p2, p0, Lrich/n3$a;->a:Lcom/rich/oauth/callback/ModelCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILorg/json/JSONObject;)V
    .locals 2

    const/4 p1, 0x2

    if-nez p2, :cond_0

    iget-object p2, p0, Lrich/n3$a;->a:Lcom/rich/oauth/callback/ModelCallback;

    const v0, 0xd8ff

    const-string v1, "\u79fb\u52a8\u767b\u9646\u63a5\u53e3\u6570\u636e\u8fd4\u56de\u5f02\u5e38"

    invoke-static {v0, v1}, Lcom/rich/oauth/util/JsonBuildUtil;->getJsonString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0, p1}, Lcom/rich/oauth/callback/ModelCallback;->onFailureResult(Ljava/lang/String;I)V

    return-void

    :cond_0
    const-string v0, "resultCode"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    const v1, 0x19258

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lrich/n3$a;->a:Lcom/rich/oauth/callback/ModelCallback;

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p2, p1}, Lcom/rich/oauth/callback/ModelCallback;->onSuccessResult(Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    const v1, 0x30d54

    if-ne v0, v1, :cond_2

    iget-object p1, p0, Lrich/n3$a;->b:Lrich/n3;

    const/4 p2, 0x0

    .line 1
    iput-object p2, p1, Lrich/n3;->b:Lrich/o2$b;

    goto :goto_0

    :cond_2
    const-string v1, "desc"

    .line 2
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lrich/n3$a;->a:Lcom/rich/oauth/callback/ModelCallback;

    invoke-static {v0, p2}, Lcom/rich/oauth/util/JsonBuildUtil;->getJsonString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v1, p2, p1}, Lcom/rich/oauth/callback/ModelCallback;->onFailureResult(Ljava/lang/String;I)V

    :goto_0
    return-void
.end method
