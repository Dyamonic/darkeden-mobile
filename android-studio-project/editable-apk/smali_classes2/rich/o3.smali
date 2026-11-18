.class public Lrich/o3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lrich/q$b;


# instance fields
.field public final synthetic a:Lcom/rich/oauth/callback/InitResultCallback;

.field public final synthetic b:Lrich/q3;


# direct methods
.method public constructor <init>(Lrich/q3;Lcom/rich/oauth/callback/InitResultCallback;)V
    .locals 0

    iput-object p1, p0, Lrich/o3;->b:Lrich/q3;

    iput-object p2, p0, Lrich/o3;->a:Lcom/rich/oauth/callback/InitResultCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 9

    check-cast p1, Lorg/json/JSONObject;

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, Lrich/o3;->a:Lcom/rich/oauth/callback/InitResultCallback;

    const v0, 0xd905

    const-string v1, "\u521d\u59cb\u5316\u63a5\u53e3obj\u4e3anull"

    invoke-static {v0, v1}, Lcom/rich/oauth/util/JsonBuildUtil;->getJsonString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/rich/oauth/callback/InitResultCallback;->initFailure(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_0
    new-instance v0, Lrich/f3;

    invoke-direct {v0}, Lrich/f3;-><init>()V

    const-string v1, "status"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2
    iput-object v2, v0, Lrich/f3;->a:Ljava/lang/String;

    const-string v2, "msg"

    .line 3
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4
    iput-object v3, v0, Lrich/f3;->b:Ljava/lang/String;

    const-string v3, "info"

    .line 5
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 6
    iput-object v4, v0, Lrich/f3;->c:Ljava/util/List;

    if-eqz v3, :cond_1

    const/4 v5, 0x0

    .line 7
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_1

    new-instance v6, Lrich/f3$a;

    invoke-direct {v6}, Lrich/f3$a;-><init>()V

    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    const-string v8, "appId"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 8
    iput-object v8, v6, Lrich/f3$a;->a:Ljava/lang/String;

    const-string v8, "appSecret"

    .line 9
    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 10
    iput-object v8, v6, Lrich/f3$a;->b:Ljava/lang/String;

    const-string v8, "serviceType"

    .line 11
    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    .line 12
    iput v8, v6, Lrich/f3$a;->c:I

    const-string v8, "rsaKey"

    .line 13
    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 14
    iput-object v7, v6, Lrich/f3$a;->d:Ljava/lang/String;

    .line 15
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 16
    :cond_1
    iget-object v3, v0, Lrich/f3;->a:Ljava/lang/String;

    const-string v4, "0"

    .line 17
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "RichAuth"

    if-eqz v3, :cond_2

    iget-object p1, p0, Lrich/o3;->b:Lrich/q3;

    .line 18
    invoke-virtual {p1, v0}, Lrich/q3;->a(Lrich/f3;)V

    .line 19
    iget-object p1, p0, Lrich/o3;->a:Lcom/rich/oauth/callback/InitResultCallback;

    invoke-interface {p1, v0}, Lcom/rich/oauth/callback/InitResultCallback;->initResultSuccess(Lrich/f3;)V

    const-string p1, "callback.initResultSuccess(initBean)"

    :goto_1
    invoke-static {v4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_2
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lrich/o3;->a:Lcom/rich/oauth/callback/InitResultCallback;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/rich/oauth/util/JsonBuildUtil;->getJsonString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Lcom/rich/oauth/callback/InitResultCallback;->initFailure(Ljava/lang/String;)V

    const-string p1, "!TextUtils.isEmpty(status)"

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lrich/o3;->a:Lcom/rich/oauth/callback/InitResultCallback;

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const v1, 0xc360

    invoke-static {v1, p1}, Lcom/rich/oauth/util/JsonBuildUtil;->getJsonString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/rich/oauth/callback/InitResultCallback;->initFailure(Ljava/lang/String;)V

    const-string p1, "JsonBuildUtil.getJsonString(50016"

    goto :goto_1

    :goto_2
    return-void
.end method
