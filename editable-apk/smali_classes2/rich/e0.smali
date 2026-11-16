.class public Lrich/e0;
.super Lrich/f0;
.source ""


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/json/JSONObject;Lrich/q$b;Lrich/q$a;)V
    .locals 7

    if-nez p2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    move v2, v0

    if-nez p2, :cond_1

    const/4 p2, 0x0

    goto :goto_1

    .line 1
    :cond_1
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_1
    move-object v4, p2

    move-object v1, p0

    move-object v3, p1

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lrich/f0;-><init>(ILjava/lang/String;Ljava/lang/String;Lrich/q$b;Lrich/q$a;)V

    return-void
.end method


# virtual methods
.method public a(Lrich/k;)Lrich/q;
    .locals 4

    :try_start_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Lrich/k;->b:[B

    iget-object v2, p1, Lrich/k;->c:Ljava/util/Map;

    const-string v3, "utf-8"

    invoke-static {v2, v3}, Lrich/b0;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lrich/b0;->a(Lrich/k;)Lrich/c$a;

    move-result-object p1

    .line 1
    new-instance v0, Lrich/q;

    invoke-direct {v0, v1, p1}, Lrich/q;-><init>(Ljava/lang/Object;Lrich/c$a;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 2
    new-instance v0, Lrich/m;

    invoke-direct {v0, p1}, Lrich/m;-><init>(Ljava/lang/Throwable;)V

    .line 3
    new-instance p1, Lrich/q;

    invoke-direct {p1, v0}, Lrich/q;-><init>(Lrich/u;)V

    return-object p1

    :catch_1
    move-exception p1

    .line 4
    new-instance v0, Lrich/m;

    invoke-direct {v0, p1}, Lrich/m;-><init>(Ljava/lang/Throwable;)V

    .line 5
    new-instance p1, Lrich/q;

    invoke-direct {p1, v0}, Lrich/q;-><init>(Lrich/u;)V

    return-object p1
.end method
