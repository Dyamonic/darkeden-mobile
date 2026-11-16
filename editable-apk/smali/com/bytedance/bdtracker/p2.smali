.class public final Lcom/bytedance/bdtracker/p2;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static final a(Lcom/bytedance/bdtracker/m2;JLjava/lang/String;I)V
    .locals 7
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    new-instance v6, Lcom/bytedance/bdtracker/y2;

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    const-string p3, ""

    :goto_0
    move-object v3, p3

    const-wide/16 v4, 0x1

    move-object v0, v6

    move-wide v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/bytedance/bdtracker/y2;-><init>(JLjava/lang/String;J)V

    .line 1
    iput p4, v6, Lcom/bytedance/bdtracker/y2;->a:I

    if-eqz p0, :cond_1

    .line 2
    check-cast p0, Lcom/bytedance/bdtracker/r2;

    invoke-virtual {p0, v6}, Lcom/bytedance/bdtracker/r2;->a(Lcom/bytedance/bdtracker/u2;)V

    :cond_1
    return-void
.end method

.method public static final a(Lcom/bytedance/bdtracker/m2;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "metricsName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x45d20c4

    if-eq v2, v3, :cond_1

    const p2, 0x1018f5f5

    if-eq v2, p2, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, "sdk_init"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    new-instance p1, Lcom/bytedance/bdtracker/e3;

    sub-long/2addr v0, p3

    invoke-direct {p1, v0, v1}, Lcom/bytedance/bdtracker/e3;-><init>(J)V

    goto :goto_1

    :cond_1
    const-string v2, "api_usage"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    new-instance p1, Lcom/bytedance/bdtracker/s2;

    sub-long/2addr v0, p3

    invoke-direct {p1, p2, v0, v1}, Lcom/bytedance/bdtracker/s2;-><init>(Ljava/lang/String;J)V

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_3

    if-eqz p0, :cond_3

    check-cast p0, Lcom/bytedance/bdtracker/r2;

    invoke-virtual {p0, p1}, Lcom/bytedance/bdtracker/r2;->a(Lcom/bytedance/bdtracker/u2;)V

    :cond_3
    return-void
.end method

.method public static final a(Lcom/bytedance/bdtracker/m2;Ljava/lang/Throwable;)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p0, :cond_0

    new-instance v0, Lcom/bytedance/bdtracker/x2;

    invoke-direct {v0, p1}, Lcom/bytedance/bdtracker/x2;-><init>(Ljava/lang/Throwable;)V

    check-cast p0, Lcom/bytedance/bdtracker/r2;

    invoke-virtual {p0, v0}, Lcom/bytedance/bdtracker/r2;->a(Lcom/bytedance/bdtracker/u2;)V

    :cond_0
    return-void
.end method

.method public static final a(Lcom/bytedance/bdtracker/m2;Ljava/net/URL;JILjava/lang/String;)V
    .locals 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "responseMsg"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p0, :cond_6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_0
    move v1, v0

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/simulator/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    :goto_1
    if-nez v1, :cond_6

    .line 4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    new-instance v3, Lcom/bytedance/bdtracker/c3;

    invoke-direct {v3}, Lcom/bytedance/bdtracker/c3;-><init>()V

    sub-long/2addr v1, p2

    .line 5
    iput-wide v1, v3, Lcom/bytedance/bdtracker/c3;->e:J

    const/4 p2, 0x1

    if-nez p1, :cond_2

    goto :goto_2

    .line 6
    :cond_2
    invoke-virtual {p1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    :goto_2
    const-string p3, ""

    goto :goto_3

    :cond_3
    const-string v1, "/"

    invoke-virtual {p3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    array-length v1, p1

    if-lez v1, :cond_4

    array-length p3, p1

    sub-int/2addr p3, p2

    aget-object p3, p1, p3

    .line 7
    :cond_4
    :goto_3
    iput-object p3, v3, Lcom/bytedance/bdtracker/c3;->d:Ljava/lang/String;

    const/16 p1, 0xc8

    if-ne p4, p1, :cond_5

    move v0, p2

    goto :goto_4

    .line 9
    :cond_5
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 10
    iput-object p1, v3, Lcom/bytedance/bdtracker/c3;->b:Ljava/lang/Integer;

    .line 11
    iput-object p5, v3, Lcom/bytedance/bdtracker/c3;->c:Ljava/lang/String;

    .line 8
    :goto_4
    iput v0, v3, Lcom/bytedance/bdtracker/c3;->a:I

    .line 12
    check-cast p0, Lcom/bytedance/bdtracker/r2;

    invoke-virtual {p0, v3}, Lcom/bytedance/bdtracker/r2;->a(Lcom/bytedance/bdtracker/u2;)V

    :cond_6
    return-void
.end method

.method public static final b(Lcom/bytedance/bdtracker/m2;Ljava/lang/Throwable;)V
    .locals 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v1, ""

    :goto_0
    const-string v2, "com.bytedance.applog"

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v1, v2, v0, v3, v4}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "com.bytedance.bdtracker"

    invoke-static {v1, v2, v0, v3, v4}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lcom/bytedance/bdtracker/d3;

    invoke-direct {v0, p1}, Lcom/bytedance/bdtracker/d3;-><init>(Ljava/lang/Throwable;)V

    check-cast p0, Lcom/bytedance/bdtracker/r2;

    invoke-virtual {p0, v0}, Lcom/bytedance/bdtracker/r2;->a(Lcom/bytedance/bdtracker/u2;)V

    :cond_1
    return-void
.end method
