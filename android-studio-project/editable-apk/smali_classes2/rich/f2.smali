.class public Lrich/f2;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static a:Ljava/lang/String; = null

.field public static b:Ljava/lang/String; = null

.field public static c:J = 0x0L

.field public static d:I = -0x1


# direct methods
.method public static a()J
    .locals 9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-object v2, Lrich/f2;->a:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-wide/16 v3, 0x2710

    const-wide/16 v5, 0x0

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lrich/f2;->b:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v7, Lrich/f2;->c:J

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v7, "PhoneScripUtils"

    invoke-static {v7, v2}, Lrich/c2;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget-wide v7, Lrich/f2;->c:J

    :goto_0
    sub-long/2addr v7, v0

    sub-long/2addr v7, v3

    goto :goto_1

    :cond_0
    const-string v2, "phonescripcache"

    const-string v7, ""

    invoke-static {v2, v7}, Lrich/b0;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v7, "phonescripstarttime"

    invoke-static {v7, v5, v6}, Lrich/b0;->a(Ljava/lang/String;J)J

    move-result-wide v7

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    move-wide v7, v5

    :goto_1
    const-wide/16 v0, 0x3e8

    div-long/2addr v7, v0

    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    sget-object v0, Lrich/f2;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "phonescripcache"

    const-string v1, ""

    invoke-static {v0, v1}, Lrich/b0;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    const-string p0, "PhoneScripUtils"

    const-string v0, "null"

    invoke-static {p0, v0}, Lrich/c2;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    :cond_0
    const-wide/16 v4, 0x0

    const-string v2, "phonescripstarttime"

    invoke-static {v2, v4, v5}, Lrich/b0;->a(Ljava/lang/String;J)J

    move-result-wide v4

    sput-wide v4, Lrich/f2;->c:J

    const-string v2, "pre_sim_key"

    invoke-static {v2, v1}, Lrich/b0;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lrich/f2;->b:Ljava/lang/String;

    const/4 v1, -0x1

    const-string v2, "phonescripversion"

    invoke-static {v2, v1}, Lrich/b0;->a(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lrich/f2;->d:I

    .line 1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p0}, Lrich/b2;->a(Landroid/content/Context;)[B

    move-result-object p0

    if-eqz p0, :cond_1

    sget-object v1, Lrich/b2;->a:[B

    invoke-static {p0, v0, v1}, Lrich/b0;->b([BLjava/lang/String;[B)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_1
    invoke-static {}, Lrich/b2;->a()V

    .line 2
    :cond_2
    :goto_0
    sput-object v3, Lrich/f2;->a:Ljava/lang/String;

    return-object v3

    :cond_3
    sget-object p0, Lrich/f2;->a:Ljava/lang/String;

    return-object p0
.end method

.method public static a(ZZ)V
    .locals 3

    invoke-static {}, Lrich/b0;->a()Lrich/i2;

    move-result-object v0

    .line 3
    iget-object v1, v0, Lrich/i2;->a:Landroid/content/SharedPreferences$Editor;

    const-string v2, "phonescripstarttime"

    invoke-static {v2}, Lrich/b0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-object v1, v0, Lrich/i2;->a:Landroid/content/SharedPreferences$Editor;

    const-string v2, "phonescripcache"

    invoke-static {v2}, Lrich/b0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-object v1, v0, Lrich/i2;->a:Landroid/content/SharedPreferences$Editor;

    const-string v2, "pre_sim_key"

    invoke-static {v2}, Lrich/b0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-object v1, v0, Lrich/i2;->a:Landroid/content/SharedPreferences$Editor;

    const-string v2, "phonescripversion"

    invoke-static {v2}, Lrich/b0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, v0, Lrich/i2;->a:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, v0, Lrich/i2;->a:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :goto_0
    if-eqz p0, :cond_1

    const/4 p0, 0x0

    .line 6
    sput-object p0, Lrich/f2;->a:Ljava/lang/String;

    sput-object p0, Lrich/f2;->b:Ljava/lang/String;

    const-wide/16 p0, 0x0

    sput-wide p0, Lrich/f2;->c:J

    const/4 p0, -0x1

    sput p0, Lrich/f2;->d:I

    :cond_1
    return-void
.end method

.method public static a(J)Z
    .locals 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "PhoneScripUtils"

    invoke-static {v4, v2}, Lrich/c2;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lrich/c2;->b(Ljava/lang/String;Ljava/lang/String;)V

    sub-long/2addr p0, v0

    const-wide/16 v0, 0x2710

    cmp-long p0, p0, v0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static a(Lrich/l0;)Z
    .locals 7

    const-string v0, "scripKey"

    const-string v1, ""

    .line 7
    invoke-virtual {p0, v0, v1}, Lrich/l0;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 8
    sget-object v2, Lrich/f2;->b:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lrich/f2;->b:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v2, "pre_sim_key"

    invoke-static {v2, v1}, Lrich/b0;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lrich/f2;->b:Ljava/lang/String;

    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v3, :cond_1

    move v0, v6

    goto :goto_1

    :cond_1
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v5

    goto :goto_1

    :cond_2
    move v0, v4

    .line 9
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "imsiState"

    invoke-virtual {p0, v3, v2}, Lrich/l0;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "simState = "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "PhoneScripUtils"

    invoke-static {v2, p0}, Lrich/c2;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_3

    return v6

    :cond_3
    sget p0, Lrich/f2;->d:I

    const/4 v3, -0x1

    if-ne p0, v3, :cond_4

    const-string p0, "phonescripversion"

    invoke-static {p0, v3}, Lrich/b0;->a(Ljava/lang/String;I)I

    move-result p0

    sput p0, Lrich/f2;->d:I

    :cond_4
    sget p0, Lrich/f2;->d:I

    if-eq p0, v5, :cond_5

    invoke-static {v5, v6}, Lrich/f2;->a(ZZ)V

    invoke-static {}, Lrich/b2;->a()V

    const-string p0, "phoneScriptVersion change"

    invoke-static {v2, p0}, Lrich/c2;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v6

    :cond_5
    if-ne v0, v4, :cond_6

    invoke-static {v5, v6}, Lrich/f2;->a(ZZ)V

    return v6

    .line 10
    :cond_6
    sget-object p0, Lrich/f2;->a:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_7

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lrich/f2;->b:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v0, Lrich/f2;->c:J

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lrich/c2;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget-wide v0, Lrich/f2;->c:J

    invoke-static {v0, v1}, Lrich/f2;->a(J)Z

    move-result v5

    goto :goto_2

    :cond_7
    const-string p0, "phonescripcache"

    invoke-static {p0, v1}, Lrich/b0;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-wide/16 v0, 0x0

    const-string v2, "phonescripstarttime"

    invoke-static {v2, v0, v1}, Lrich/b0;->a(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_8

    invoke-static {v0, v1}, Lrich/f2;->a(J)Z

    move-result p0

    if-eqz p0, :cond_8

    goto :goto_2

    :cond_8
    move v5, v6

    :goto_2
    return v5
.end method
