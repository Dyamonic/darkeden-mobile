.class public Lrich/m1$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lrich/t1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrich/m1;->a(Lrich/o1;Lrich/p1;Lrich/l0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lrich/o1;

.field public final synthetic b:Lrich/l0;

.field public final synthetic c:Lrich/p1;


# direct methods
.method public constructor <init>(Lrich/m1;Lrich/o1;Lrich/l0;Lrich/p1;)V
    .locals 0

    iput-object p2, p0, Lrich/m1$a;->a:Lrich/o1;

    iput-object p3, p0, Lrich/m1$a;->b:Lrich/l0;

    iput-object p4, p0, Lrich/m1$a;->c:Lrich/p1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    iget-object v0, p0, Lrich/m1$a;->a:Lrich/o1;

    .line 1
    iget-object v0, v0, Lrich/o1;->a:Ljava/lang/String;

    const-string v1, "uniConfig"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lrich/m1$a;->b:Lrich/l0;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-object v3, p0, Lrich/m1$a;->a:Lrich/o1;

    .line 3
    iget-wide v3, v3, Lrich/o1;->h:J

    sub-long/2addr v1, v3

    .line 4
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lrich/l2;->c(Lrich/l0;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Lrich/r1;)V
    .locals 3

    iget-object v0, p0, Lrich/m1$a;->a:Lrich/o1;

    invoke-virtual {v0}, Lrich/o1;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lrich/m1$a;->a()V

    iget-object v0, p0, Lrich/m1$a;->b:Lrich/l0;

    .line 5
    iget v1, p1, Lrich/r1;->a:I

    .line 6
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lrich/l2;->b(Lrich/l0;Ljava/lang/String;)V

    .line 7
    iget v0, p1, Lrich/r1;->a:I

    .line 8
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 9
    iget-object v1, p1, Lrich/r1;->b:Ljava/lang/String;

    .line 10
    invoke-static {v0, v1}, Lrich/b0;->a(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p0, Lrich/m1$a;->c:Lrich/p1;

    .line 11
    iget v2, p1, Lrich/r1;->a:I

    .line 12
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 13
    iget-object p1, p1, Lrich/r1;->b:Ljava/lang/String;

    .line 14
    invoke-interface {v1, v2, p1, v0}, Lrich/p1;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    :cond_0
    return-void
.end method

.method public a(Lrich/s1;)V
    .locals 3

    const-string v0, "resultcode"

    iget-object v1, p0, Lrich/m1$a;->a:Lrich/o1;

    invoke-virtual {v1}, Lrich/o1;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    :try_start_0
    invoke-virtual {p0}, Lrich/m1$a;->a()V

    new-instance v1, Lorg/json/JSONObject;

    .line 15
    iget-object p1, p1, Lrich/s1;->c:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_0

    const-string p1, ""

    .line 16
    :cond_0
    :try_start_1
    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string p1, "resultCode"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    iget-object v0, p0, Lrich/m1$a;->b:Lrich/l0;

    invoke-static {v0, p1}, Lrich/l2;->b(Lrich/l0;Ljava/lang/String;)V

    iget-object v0, p0, Lrich/m1$a;->c:Lrich/p1;

    const-string v2, "desc"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, p1, v2, v1}, Lrich/p1;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const p1, 0x18f4f

    invoke-static {p1}, Lrich/r1;->a(I)Lrich/r1;

    move-result-object p1

    invoke-virtual {p0, p1}, Lrich/m1$a;->a(Lrich/r1;)V

    :cond_2
    :goto_1
    return-void
.end method
