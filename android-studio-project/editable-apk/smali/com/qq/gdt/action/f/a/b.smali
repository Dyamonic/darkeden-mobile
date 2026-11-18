.class public abstract Lcom/qq/gdt/action/f/a/b;
.super Lcom/qq/gdt/action/f/a/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/qq/gdt/action/f/a/a<",
        "Lcom/qq/gdt/action/f/a;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/qq/gdt/action/f/a/a;-><init>(Z)V

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

    invoke-virtual {p0, p1}, Lcom/qq/gdt/action/f/a/b;->c(Lcom/qq/gdt/action/f/b/i;)Lcom/qq/gdt/action/f/a;

    move-result-object p1

    return-object p1
.end method

.method public c(Lcom/qq/gdt/action/f/b/i;)Lcom/qq/gdt/action/f/a;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Lcom/qq/gdt/action/f/a;

    const/4 v1, -0x1

    const-string v2, "Unknown message"

    invoke-direct {v0, v1, v2}, Lcom/qq/gdt/action/f/a;-><init>(ILjava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/qq/gdt/action/f/b/i;->e()Lcom/qq/gdt/action/f/b/j;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/qq/gdt/action/f/b/j;->b()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "ret"

    invoke-virtual {v3, p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/qq/gdt/action/f/a;->a(I)V

    const-string p1, "msg"

    invoke-virtual {v3, p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/qq/gdt/action/f/a;->a(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method
