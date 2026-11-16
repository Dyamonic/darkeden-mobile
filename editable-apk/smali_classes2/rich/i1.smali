.class public Lrich/i1;
.super Lrich/j1;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrich/i1$b;,
        Lrich/i1$a;
    }
.end annotation


# instance fields
.field public a:Lrich/i1$b;

.field public b:Lrich/i1$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lrich/j1;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lrich/i1;->a:Lrich/i1$b;

    .line 1
    iget-object v0, v0, Lrich/i1$b;->d:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public b()Lorg/json/JSONObject;
    .locals 5

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "sign"

    :try_start_0
    iget-object v4, p0, Lrich/i1;->a:Lrich/i1$b;

    .line 1
    iget-object v4, v4, Lrich/i1$b;->a:Ljava/lang/String;

    .line 2
    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "msgid"

    :try_start_1
    iget-object v4, p0, Lrich/i1;->a:Lrich/i1$b;

    .line 3
    iget-object v4, v4, Lrich/i1$b;->b:Ljava/lang/String;

    .line 4
    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    const-string v3, "systemtime"

    :try_start_2
    iget-object v4, p0, Lrich/i1;->a:Lrich/i1$b;

    .line 5
    iget-object v4, v4, Lrich/i1$b;->c:Ljava/lang/String;

    .line 6
    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    const-string v3, "appid"

    :try_start_3
    iget-object v4, p0, Lrich/i1;->a:Lrich/i1$b;

    .line 7
    iget-object v4, v4, Lrich/i1$b;->d:Ljava/lang/String;

    .line 8
    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    const-string v3, "version"

    :try_start_4
    iget-object v4, p0, Lrich/i1;->a:Lrich/i1$b;

    .line 9
    iget-object v4, v4, Lrich/i1$b;->e:Ljava/lang/String;

    .line 10
    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "header"

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    const-string v1, "log"

    :try_start_5
    iget-object v3, p0, Lrich/i1;->b:Lrich/i1$a;

    .line 11
    iget-object v3, v3, Lrich/i1$a;->a:Lorg/json/JSONObject;

    .line 12
    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "body"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-object v0
.end method
