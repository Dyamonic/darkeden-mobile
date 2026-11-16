.class public Lrich/z1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lrich/p1;


# instance fields
.field public final synthetic a:Lrich/a2;


# direct methods
.method public constructor <init>(Lrich/a2;)V
    .locals 0

    iput-object p1, p0, Lrich/z1;->a:Lrich/a2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 4

    iget-object p2, p0, Lrich/z1;->a:Lrich/a2;

    .line 1
    iget-object p2, p2, Lrich/a2;->a:Lrich/l0;

    .line 2
    invoke-virtual {p2}, Lrich/l0;->b()Lrich/h0;

    move-result-object p2

    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    const-string v0, "103000"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string v0, "logCloseTime"

    const/4 v1, 0x0

    .line 7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "logFailTimes"

    if-nez p1, :cond_1

    .line 3
    iget p1, p2, Lrich/h0;->l:I

    if-eqz p1, :cond_2

    .line 4
    iget p1, p2, Lrich/h0;->k:I

    if-eqz p1, :cond_2

    .line 5
    invoke-static {v3, v1}, Lrich/b0;->a(Ljava/lang/String;I)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    .line 6
    iget p2, p2, Lrich/h0;->k:I

    if-lt p1, p2, :cond_0

    .line 7
    invoke-interface {p3, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p3, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    invoke-interface {p3, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 p1, 0x0

    :goto_0
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p3, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_1
    invoke-static {p3}, Lrich/b0;->a(Ljava/util/Map;)V

    return-void
.end method
