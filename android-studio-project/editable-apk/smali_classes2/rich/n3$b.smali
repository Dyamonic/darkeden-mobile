.class public Lrich/n3$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lrich/q0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrich/n3;->b(Landroid/content/Context;Lcom/rich/oauth/callback/ModelCallback;Lrich/f3$a;)V
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

    iput-object p2, p0, Lrich/n3$b;->a:Lcom/rich/oauth/callback/ModelCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILorg/json/JSONObject;)V
    .locals 3

    const-string p1, "resultCode"

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    const-string v0, "token"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    const v2, 0x19258

    if-ne p1, v2, :cond_0

    iget-object p1, p0, Lrich/n3$b;->a:Lcom/rich/oauth/callback/ModelCallback;

    invoke-interface {p1, v0, v1}, Lcom/rich/oauth/callback/ModelCallback;->onGetAccessCodeSuccessResult(Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    const-string v0, "desc"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lrich/n3$b;->a:Lcom/rich/oauth/callback/ModelCallback;

    invoke-static {p1, p2}, Lcom/rich/oauth/util/JsonBuildUtil;->getJsonString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, v1}, Lcom/rich/oauth/callback/ModelCallback;->onGetAccessCodeFailureResult(Ljava/lang/String;I)V

    :goto_0
    return-void
.end method
