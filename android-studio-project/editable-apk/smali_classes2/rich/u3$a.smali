.class public Lrich/u3$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lrich/q$b;


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

    iput-object p2, p0, Lrich/u3$a;->a:Lcom/rich/oauth/callback/TokenResultCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Lorg/json/JSONObject;

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, Lrich/u3$a;->a:Lcom/rich/oauth/callback/TokenResultCallback;

    const v0, 0xd904

    const-string v1, "token\u6362\u53d6token\u8fd4\u56de\u7684json\u4e3anull"

    :goto_0
    invoke-static {v0, v1}, Lcom/rich/oauth/util/JsonBuildUtil;->getJsonString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/rich/oauth/callback/TokenResultCallback;->getTokenFailure(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    const-string v0, "status"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "msg"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "token"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez v0, :cond_1

    iget-object v0, p0, Lrich/u3$a;->a:Lcom/rich/oauth/callback/TokenResultCallback;

    invoke-interface {v0, p1}, Lcom/rich/oauth/callback/TokenResultCallback;->getTokenSuccess(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lrich/u3$a;->a:Lcom/rich/oauth/callback/TokenResultCallback;

    goto :goto_0

    :goto_1
    return-void
.end method
