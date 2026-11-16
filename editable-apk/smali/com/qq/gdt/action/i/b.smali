.class public Lcom/qq/gdt/action/i/b;
.super Ljava/lang/Object;


# direct methods
.method public static a()Lcom/qq/gdt/action/f/f;
    .locals 10

    const-string v0, "conf"

    const-string v1, "Deserialize service response error"

    const-string v2, "data"

    invoke-static {}, Lcom/qq/gdt/action/j/p;->b()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "https://a.gdt.qq.com/getSdkConf"

    goto :goto_0

    :cond_0
    const-string v3, "http://a.gdt.qq.com/getSdkConf"

    :goto_0
    const/4 v4, 0x0

    :try_start_0
    invoke-static {}, Lcom/qq/gdt/action/i/b;->b()Lorg/json/JSONObject;

    move-result-object v5

    invoke-static {}, Lcom/qq/gdt/action/e;->a()Lcom/qq/gdt/action/e;

    move-result-object v6

    invoke-virtual {v6}, Lcom/qq/gdt/action/e;->k()Ljavax/crypto/SecretKey;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "LaunchService#launch \u52a0\u5bc6\u524d\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/qq/gdt/action/j/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v8, v4, [Ljava/lang/Object;

    invoke-static {v7, v8}, Lcom/qq/gdt/action/j/o;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v5, v6}, Lcom/qq/gdt/action/i/b;->a(Lorg/json/JSONObject;Ljavax/crypto/SecretKey;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v6, v2, v5}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "os"

    const-string v7, "Android"

    invoke-virtual {v6, v5, v7}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "sdkv"

    invoke-static {}, Lcom/qq/gdt/action/f;->a()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v5, v7}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "sdkvc"

    invoke-static {}, Lcom/qq/gdt/action/f;->b()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v5, v7}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "LaunchService#launch \u6b63\u5f0f\u8bf7\u6c42\n"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/qq/gdt/action/j/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v7, v4, [Ljava/lang/Object;

    invoke-static {v5, v7}, Lcom/qq/gdt/action/j/o;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/qq/gdt/action/f/b;->d()Lcom/qq/gdt/action/f/e;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/qq/gdt/action/f/e;->a(Ljava/lang/String;)Lcom/qq/gdt/action/f/d;

    move-result-object v5

    check-cast v5, Lcom/qq/gdt/action/f/e;

    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/qq/gdt/action/f/e;->a([B)Lcom/qq/gdt/action/f/e;

    move-result-object v5

    invoke-virtual {v5}, Lcom/qq/gdt/action/f/e;->b()Lcom/qq/gdt/action/f/c;

    move-result-object v5

    invoke-virtual {v5}, Lcom/qq/gdt/action/f/c;->a()Lcom/qq/gdt/action/f/b/i;

    move-result-object v5

    new-instance v6, Lcom/qq/gdt/action/f/f;

    const/4 v7, -0x1

    const-string v8, "Unknown message"

    invoke-direct {v6, v7, v8}, Lcom/qq/gdt/action/f/f;-><init>(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_1

    const/4 v7, -0x3

    :try_start_1
    new-instance v8, Lorg/json/JSONObject;

    invoke-virtual {v5}, Lcom/qq/gdt/action/f/b/i;->e()Lcom/qq/gdt/action/f/b/j;

    move-result-object v5

    invoke-virtual {v5}, Lcom/qq/gdt/action/f/b/j;->b()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v8, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v5, "code"

    invoke-virtual {v8, v5, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v6, v5}, Lcom/qq/gdt/action/f/f;->a(I)Lcom/qq/gdt/action/f/f;

    const-string v5, "message"

    const-string v9, "Deserialize message error"

    invoke-virtual {v8, v5, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/qq/gdt/action/f/f;->a(Ljava/lang/String;)Lcom/qq/gdt/action/f/f;

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {}, Lcom/qq/gdt/action/e;->a()Lcom/qq/gdt/action/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qq/gdt/action/e;->g()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/qq/gdt/action/b;->a(Landroid/content/Context;)Lcom/qq/gdt/action/b;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/qq/gdt/action/b;->a(Lorg/json/JSONObject;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    :try_start_2
    new-array v0, v4, [Ljava/lang/Object;

    invoke-static {v1, v0}, Lcom/qq/gdt/action/j/o;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v6, v7}, Lcom/qq/gdt/action/f/f;->a(I)Lcom/qq/gdt/action/f/f;

    invoke-virtual {v6, v1}, Lcom/qq/gdt/action/f/f;->a(Ljava/lang/String;)Lcom/qq/gdt/action/f/f;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    :goto_1
    return-object v6

    :catchall_0
    move-exception v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v3, v1, v4

    const-string v2, "LaunchService launch(%s) exception"

    invoke-static {v2, v1}, Lcom/qq/gdt/action/j/v;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/qq/gdt/action/j/o;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public static a(Lorg/json/JSONObject;Ljavax/crypto/SecretKey;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-static {p1, p0}, Lcom/qq/gdt/action/j/a;->b(Ljavax/crypto/SecretKey;[B)[B

    move-result-object p0

    invoke-static {p0}, Lcom/qq/gdt/action/j/u;->b([B)[B

    move-result-object v0

    const/16 v1, 0x30

    new-array v1, v1, [B

    const/4 v2, 0x0

    const/16 v3, 0x10

    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-interface {p1}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object p1

    const/16 v0, 0x20

    invoke-static {p1, v2, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v1}, Lcom/qq/gdt/action/j/l;->a([B)[B

    move-result-object p1

    const/4 v0, 0x2

    new-array v1, v0, [B

    fill-array-data v1, :array_0

    array-length v3, p0

    const/16 v4, 0x82

    add-int/2addr v3, v4

    new-array v3, v3, [B

    invoke-static {v1, v2, v3, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v1, 0x80

    invoke-static {p1, v2, v3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p1, p0

    invoke-static {p0, v2, v3, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v3}, Lcom/qq/gdt/action/j/i;->a([B)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :array_0
    .array-data 1
        0x0t
        0x1t
    .end array-data
.end method

.method private static b()Lorg/json/JSONObject;
    .locals 3

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "did"

    invoke-static {}, Lcom/qq/gdt/action/e;->a()Lcom/qq/gdt/action/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qq/gdt/action/e;->q()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "sdkv"

    invoke-static {}, Lcom/qq/gdt/action/f;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "asid"

    invoke-static {}, Lcom/qq/gdt/action/e;->a()Lcom/qq/gdt/action/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qq/gdt/action/e;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "conf_version"

    invoke-static {}, Lcom/qq/gdt/action/e;->a()Lcom/qq/gdt/action/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qq/gdt/action/e;->g()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/qq/gdt/action/b;->a(Landroid/content/Context;)Lcom/qq/gdt/action/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qq/gdt/action/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "Json Exception while build init req"

    invoke-static {v2, v1}, Lcom/qq/gdt/action/j/o;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-object v0
.end method
