.class public Lrich/v0;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrich/v0$a;
    }
.end annotation


# static fields
.field public static b:Lrich/v0;

.field public static c:J


# instance fields
.field public a:Lrich/v0$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lrich/v0;->a:Lrich/v0$a;

    return-void
.end method

.method public static a()Lrich/v0;
    .locals 1

    sget-object v0, Lrich/v0;->b:Lrich/v0;

    if-nez v0, :cond_0

    new-instance v0, Lrich/v0;

    invoke-direct {v0}, Lrich/v0;-><init>()V

    sput-object v0, Lrich/v0;->b:Lrich/v0;

    :cond_0
    sget-object v0, Lrich/v0;->b:Lrich/v0;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;Z)V
    .locals 11

    const-string v0, "sim_id"

    const-string v1, "_id"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, Lrich/v0;->c:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x1388

    cmp-long v4, v2, v4

    if-gez v4, :cond_0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    return-void

    :cond_0
    new-instance v2, Lrich/v0$a;

    invoke-direct {v2}, Lrich/v0$a;-><init>()V

    iput-object v2, p0, Lrich/v0;->a:Lrich/v0$a;

    if-nez p2, :cond_1

    return-void

    .line 1
    :cond_1
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x16

    const/4 v3, -0x1

    const-string v4, "UMCTelephonyManagement"

    if-lt p2, v2, :cond_6

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object p2

    if-eqz p2, :cond_7

    :try_start_0
    iget-object v2, p0, Lrich/v0;->a:Lrich/v0$a;

    .line 2
    iget v2, v2, Lrich/v0$a;->a:I

    if-ne v2, v3, :cond_2

    .line 3
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x18

    if-lt v2, v5, :cond_2

    iget-object v2, p0, Lrich/v0;->a:Lrich/v0$a;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v5

    .line 4
    iput v5, v2, Lrich/v0$a;->b:I

    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "android 7.0\u53ca\u4ee5\u4e0a\u624b\u673agetDefaultDataSubscriptionId\u9002\u914d\u6210\u529f: dataSubId = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lrich/v0;->a:Lrich/v0$a;

    .line 6
    iget v5, v5, Lrich/v0$a;->b:I

    .line 7
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lrich/c2;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    const-string v2, "android 7.0\u53ca\u4ee5\u4e0a\u624b\u673agetDefaultDataSubscriptionId\u9002\u914d\u5931\u8d25"

    invoke-static {v4, v2}, Lrich/c2;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const-string v6, "getDefaultDataSubId"

    :try_start_2
    new-array v7, v2, [Ljava/lang/Class;

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    new-array v6, v2, [Ljava/lang/Object;

    invoke-virtual {v5, p2, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    instance-of v6, v5, Ljava/lang/Integer;

    if-nez v6, :cond_3

    instance-of v6, v5, Ljava/lang/Long;

    if-eqz v6, :cond_4

    :cond_3
    iget-object v6, p0, Lrich/v0;->a:Lrich/v0$a;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 8
    iput v5, v6, Lrich/v0$a;->b:I

    .line 9
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "android 7.0\u4ee5\u4e0b\u624b\u673agetDefaultDataSubId\u9002\u914d\u6210\u529f: dataSubId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lrich/v0;->a:Lrich/v0$a;

    .line 10
    iget v6, v6, Lrich/v0$a;->b:I

    .line 11
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lrich/c2;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    const-string v5, "readDefaultDataSubId-->getDefaultDataSubId \u53cd\u5c04\u51fa\u9519"

    invoke-static {v4, v5}, Lrich/c2;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :try_start_3
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    const-string v6, "getDefaultDataSubscriptionId"

    :try_start_4
    new-array v7, v2, [Ljava/lang/Class;

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v5, p2, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    instance-of v2, p2, Ljava/lang/Integer;

    if-nez v2, :cond_5

    instance-of v2, p2, Ljava/lang/Long;

    if-eqz v2, :cond_7

    :cond_5
    iget-object v2, p0, Lrich/v0;->a:Lrich/v0$a;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 12
    iput p2, v2, Lrich/v0$a;->b:I

    .line 13
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u53cd\u5c04getDefaultDataSubscriptionId\u9002\u914d\u6210\u529f: dataSubId = "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lrich/v0;->a:Lrich/v0$a;

    .line 14
    iget v2, v2, Lrich/v0$a;->b:I

    .line 15
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v4, p2}, Lrich/c2;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    :catch_2
    const-string p2, "getDefaultDataSubscriptionId-->getDefaultDataSubscriptionId \u53cd\u5c04\u51fa\u9519"

    invoke-static {v4, p2}, Lrich/c2;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    iget-object p2, p0, Lrich/v0;->a:Lrich/v0$a;

    .line 16
    iput v3, p2, Lrich/v0$a;->a:I

    .line 17
    :cond_7
    :goto_0
    sget-object p2, Lrich/j2;->e:Ljava/lang/String;

    const-string v2, "brand"

    invoke-static {v2, p2}, Lrich/c2;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "HUAWEI"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_11

    .line 18
    sget-boolean p2, Lrich/j2;->d:Z

    if-eqz p2, :cond_11

    const-string p2, "\u534e\u4e3a\u624b\u673a\u517c\u5bb9\u6027\u5904\u7406"

    .line 19
    invoke-static {v4, p2}, Lrich/c2;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lrich/v0;->a:Lrich/v0$a;

    .line 20
    iget p2, p2, Lrich/v0$a;->b:I

    if-eqz p2, :cond_8

    const/4 v2, 0x1

    if-ne p2, v2, :cond_a

    .line 21
    :cond_8
    iget-object p2, p0, Lrich/v0;->a:Lrich/v0$a;

    .line 22
    iget v2, p2, Lrich/v0$a;->a:I

    if-ne v2, v3, :cond_9

    .line 23
    iget v2, p2, Lrich/v0$a;->b:I

    .line 24
    iput v2, p2, Lrich/v0$a;->a:I

    .line 25
    :cond_9
    iget-object p2, p0, Lrich/v0;->a:Lrich/v0$a;

    .line 26
    iput v3, p2, Lrich/v0$a;->b:I

    .line 27
    :cond_a
    iget-object p2, p0, Lrich/v0;->a:Lrich/v0$a;

    .line 28
    iget v2, p2, Lrich/v0$a;->a:I

    if-ne v2, v3, :cond_b

    .line 29
    iget p2, p2, Lrich/v0$a;->b:I

    if-eq p2, v3, :cond_11

    .line 30
    :cond_b
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt p2, v2, :cond_11

    const-string p2, "readSimInfoDbStart"

    .line 31
    invoke-static {v4, p2}, Lrich/c2;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "content://telephony/siminfo"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    const/4 p2, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    :try_start_5
    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v7
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const-string v8, "sim_id>=?"

    :try_start_6
    const-string p1, "0"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    if-eqz p2, :cond_e

    :cond_c
    :goto_1
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-eqz p1, :cond_e

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p2, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iget-object v5, p0, Lrich/v0;->a:Lrich/v0$a;

    .line 32
    iget v5, v5, Lrich/v0$a;->a:I

    if-ne v5, v3, :cond_d

    .line 33
    iget-object v5, p0, Lrich/v0;->a:Lrich/v0$a;

    .line 34
    iget v5, v5, Lrich/v0$a;->b:I

    if-eq v5, v3, :cond_d

    .line 35
    iget-object v5, p0, Lrich/v0;->a:Lrich/v0$a;

    .line 36
    iget v5, v5, Lrich/v0$a;->b:I

    if-ne v5, v2, :cond_d

    .line 37
    iget-object v5, p0, Lrich/v0;->a:Lrich/v0$a;

    .line 38
    iput p1, v5, Lrich/v0$a;->a:I

    .line 39
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u901a\u8fc7\u8bfb\u53d6sim db\u83b7\u53d6\u6570\u636e\u6d41\u91cf\u5361\u7684\u5361\u69fd\u503c\uff1a"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lrich/c2;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    iget-object v5, p0, Lrich/v0;->a:Lrich/v0$a;

    .line 40
    iget v5, v5, Lrich/v0$a;->a:I

    if-ne v5, p1, :cond_c

    .line 41
    iget-object p1, p0, Lrich/v0;->a:Lrich/v0$a;

    .line 42
    iput v2, p1, Lrich/v0$a;->b:I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    :cond_e
    if-eqz p2, :cond_f

    goto :goto_2

    :catch_3
    :try_start_7
    const-string p1, "readSimInfoDb error"

    .line 43
    invoke-static {v4, p1}, Lrich/c2;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz p2, :cond_f

    :goto_2
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    :cond_f
    const-string p1, "readSimInfoDbEnd"

    invoke-static {v4, p1}, Lrich/c2;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :catchall_0
    move-exception p1

    if-eqz p2, :cond_10

    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    :cond_10
    throw p1

    .line 44
    :cond_11
    :goto_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    sput-wide p1, Lrich/v0;->c:J

    return-void
.end method
