.class public Lcom/heytap/openid/sdk/m_d;
.super Ljava/lang/Object;


# static fields
.field public static m_a:Z

.field public static m_b:Z

.field public static m_c:Z


# direct methods
.method public static native m_a(Landroid/content/Context;)Landroid/content/Context;
.end method

.method public static m_a(Landroid/content/Context;I)Ljava/util/HashMap;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lcom/heytap/openid/sdk/m_a;->m_a(I)I

    move-result v0

    const-string v1, ""

    const/16 v2, 0x2710

    if-ne v0, v2, :cond_15

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    and-int/lit8 v2, p1, 0x8

    const/16 v3, 0x8

    const-string v4, "OUID_STATUS"

    if-ne v2, v3, :cond_0

    const-string v2, "OUID"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    and-int/lit8 v2, p1, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    and-int/lit8 v2, p1, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    const-string v2, "AUID"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    and-int/lit8 v2, p1, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_3

    const-string v2, "GUID"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    and-int/lit8 v2, p1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    const-string v2, "APID"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    const/4 v2, 0x4

    and-int/2addr p1, v2

    if-ne p1, v2, :cond_5

    const-string p1, "DUID"

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    sget-boolean p1, Lcom/heytap/openid/sdk/m_d;->m_a:Z

    const-string v2, "IDHelper"

    const/4 v5, 0x0

    if-nez p1, :cond_6

    const-string p1, "1001"

    :goto_0
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v5

    goto :goto_1

    :cond_6
    sget-boolean p1, Lcom/heytap/openid/sdk/m_d;->m_b:Z

    if-nez p1, :cond_7

    sget-boolean p1, Lcom/heytap/openid/sdk/m_d;->m_c:Z

    if-nez p1, :cond_7

    const-string p1, "1002"

    goto :goto_0

    :cond_7
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    if-ne p1, v6, :cond_8

    const-string p1, "1003"

    goto :goto_0

    :cond_8
    :goto_1
    const-string p1, "FALSE"

    if-nez v3, :cond_b

    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-ne v2, v4, :cond_9

    move-object v3, p1

    goto :goto_3

    :cond_9
    move-object v3, v1

    :goto_3
    invoke-virtual {p0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_a
    return-object p0

    :cond_b
    invoke-static {}, Lcom/heytap/openid/sdk/m_b;->m_a()Lcom/heytap/openid/sdk/m_b;

    move-result-object v2

    invoke-static {p0}, Lcom/heytap/openid/sdk/m_d;->m_a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v6, v2, Lcom/heytap/openid/base/m_b;->m_a:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_c

    iget-object v6, v2, Lcom/heytap/openid/base/m_b;->m_a:Ljava/util/Map;

    invoke-static {p0, v6}, Lcom/heytap/openid/sdk/m_a;->m_a(Landroid/content/Context;Ljava/util/Map;)V

    :cond_c
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_d
    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_10

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    iget-object v8, v2, Lcom/heytap/openid/base/m_b;->m_a:Ljava/util/Map;

    invoke-interface {v8, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_f

    iget-object v8, v2, Lcom/heytap/openid/base/m_b;->m_a:Ljava/util/Map;

    invoke-interface {v8, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/heytap/openid/sdk/m_f;

    invoke-virtual {v8, v7}, Lcom/heytap/openid/sdk/m_f;->m_a(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_e

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v10, "1025"

    invoke-static {v10}, Lcom/heytap/openid/sdk/m_h;->m_a(Ljava/lang/String;)V

    sget-object v10, Lcom/heytap/openid/sdk/m_a;->m_a:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v11, Lcom/heytap/openid/base/m_a;

    invoke-direct {v11, v2, p0, v9}, Lcom/heytap/openid/base/m_a;-><init>(Lcom/heytap/openid/base/m_b;Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v10, v11}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_e
    iget-object v8, v8, Lcom/heytap/openid/sdk/m_f;->m_a:Ljava/lang/String;

    goto :goto_5

    :cond_f
    const/4 v8, 0x0

    :goto_5
    if-nez v8, :cond_d

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_10
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_11

    const-string v6, "1026"

    invoke-static {v6}, Lcom/heytap/openid/sdk/m_h;->m_a(Ljava/lang/String;)V

    invoke-virtual {v2, p0, v3, v5}, Lcom/heytap/openid/base/m_b;->m_a(Landroid/content/Context;Ljava/util/List;Z)V

    :cond_11
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_14

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v5, v2, Lcom/heytap/openid/base/m_b;->m_a:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/heytap/openid/sdk/m_f;

    if-nez v5, :cond_13

    if-ne v3, v4, :cond_12

    move-object v5, p1

    goto :goto_7

    :cond_12
    move-object v5, v1

    goto :goto_7

    :cond_13
    iget-object v5, v5, Lcom/heytap/openid/sdk/m_f;->m_a:Ljava/lang/String;

    :goto_7
    invoke-virtual {p0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    :cond_14
    const-string p1, "2025"

    invoke-static {p1}, Lcom/heytap/openid/sdk/m_h;->m_a(Ljava/lang/String;)V

    return-object p0

    :cond_15
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
