.class public Lrich/u3;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/rich/oauth/callback/TokenResultCallback;)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v0, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    if-nez v5, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/rich/oauth/util/TimeUtil;->getTime()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/util/Random;

    invoke-direct {v7}, Ljava/util/Random;-><init>()V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const v9, 0x15f8f

    invoke-virtual {v7, v9}, Ljava/util/Random;->nextInt(I)I

    move-result v10

    const/16 v11, 0x2710

    add-int/2addr v10, v11

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/util/Random;->nextInt(I)I

    move-result v7

    add-int/2addr v7, v11

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/util/TreeMap;

    invoke-direct {v8}, Ljava/util/TreeMap;-><init>()V

    const-string v9, "appId"

    invoke-virtual {v8, v9, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v10, "systemType"

    const-string v12, "2"

    invoke-virtual {v8, v10, v12}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v12, "timeStamp"

    invoke-virtual {v8, v12, v6}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v13, "serviceType"

    invoke-virtual {v8, v13, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v14, "taskId"

    invoke-virtual {v8, v14, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v15, "param"

    invoke-virtual {v8, v15, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v11, "utf-8"

    invoke-static {v8, v2, v11}, Lcom/rich/oauth/util/MD5Utils;->getDigest(Ljava/util/TreeMap;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    invoke-virtual {v11, v9, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 v9, 0x2

    invoke-virtual {v11, v10, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v11, v12, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v11, v13, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v11, v14, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v11, v15, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "sign"

    invoke-virtual {v11, v0, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    new-instance v0, Lrich/e3;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "https://nvs.im.tencent.cn/v5/rapidauth/querytoken?sdkappid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&random="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lrich/u3$a;

    invoke-direct {v3, v1, v5}, Lrich/u3$a;-><init>(Lrich/u3;Lcom/rich/oauth/callback/TokenResultCallback;)V

    new-instance v4, Lrich/u3$b;

    invoke-direct {v4, v1, v5}, Lrich/u3$b;-><init>(Lrich/u3;Lcom/rich/oauth/callback/TokenResultCallback;)V

    invoke-direct {v0, v2, v11, v3, v4}, Lrich/e3;-><init>(Ljava/lang/String;Lorg/json/JSONObject;Lrich/q$b;Lrich/q$a;)V

    new-instance v2, Lrich/e;

    const/4 v3, 0x1

    const/high16 v4, 0x3f800000    # 1.0f

    const/16 v5, 0x2710

    invoke-direct {v2, v5, v3, v4}, Lrich/e;-><init>(IIF)V

    .line 1
    iput-object v2, v0, Lrich/o;->l:Lrich/e;

    .line 2
    invoke-static {}, Lcom/rich/oauth/core/RichAuth;->getInstance()Lcom/rich/oauth/core/RichAuth;

    move-result-object v2

    invoke-virtual {v2}, Lcom/rich/oauth/core/RichAuth;->a()Lrich/p;

    move-result-object v2

    invoke-virtual {v2, v0}, Lrich/p;->a(Lrich/o;)Lrich/o;

    return-void
.end method
