.class public abstract Lcom/qq/gdt/action/f/a/c;
.super Lcom/qq/gdt/action/f/a/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/qq/gdt/action/f/a/a<",
        "Lcom/qq/gdt/action/f/f;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/qq/gdt/action/f/a/c;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/qq/gdt/action/f/a/a;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public synthetic b(Lcom/qq/gdt/action/f/b/i;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/qq/gdt/action/f/a/c;->c(Lcom/qq/gdt/action/f/b/i;)Lcom/qq/gdt/action/f/f;

    move-result-object p1

    return-object p1
.end method

.method public c(Lcom/qq/gdt/action/f/b/i;)Lcom/qq/gdt/action/f/f;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "conf"

    const-string v1, "data"

    new-instance v2, Lcom/qq/gdt/action/f/f;

    const/4 v3, -0x1

    const-string v4, "Unknown message"

    invoke-direct {v2, v3, v4}, Lcom/qq/gdt/action/f/f;-><init>(ILjava/lang/String;)V

    if-eqz p1, :cond_0

    const/4 v3, -0x3

    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/qq/gdt/action/f/b/i;->e()Lcom/qq/gdt/action/f/b/j;

    move-result-object p1

    invoke-virtual {p1}, Lcom/qq/gdt/action/f/b/j;->b()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v4, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "code"

    invoke-virtual {v4, p1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {v2, p1}, Lcom/qq/gdt/action/f/f;->a(I)Lcom/qq/gdt/action/f/f;

    const-string p1, "message"

    const-string v5, "Deserialize message error"

    invoke-virtual {v4, p1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/qq/gdt/action/f/f;->a(Ljava/lang/String;)Lcom/qq/gdt/action/f/f;

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-static {}, Lcom/qq/gdt/action/e;->a()Lcom/qq/gdt/action/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qq/gdt/action/e;->g()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/qq/gdt/action/b;->a(Landroid/content/Context;)Lcom/qq/gdt/action/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/qq/gdt/action/b;->a(Lorg/json/JSONObject;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "Deserialize service response error"

    invoke-static {v0, p1}, Lcom/qq/gdt/action/j/o;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Lcom/qq/gdt/action/f/f;->a(I)Lcom/qq/gdt/action/f/f;

    invoke-virtual {v2, v0}, Lcom/qq/gdt/action/f/f;->a(Ljava/lang/String;)Lcom/qq/gdt/action/f/f;

    :cond_0
    :goto_0
    return-object v2
.end method
