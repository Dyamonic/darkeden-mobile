.class public Lrich/j0;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrich/j0$b;
    }
.end annotation


# static fields
.field public static e:Lrich/j0;


# instance fields
.field public a:Lrich/h0;

.field public final b:Lrich/h0;

.field public volatile c:Z

.field public d:Lrich/j0$b;


# direct methods
.method public constructor <init>(Z)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lrich/j0;->c:Z

    .line 1
    new-instance v0, Lrich/h0;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lrich/h0;-><init>(Lrich/h0$a;)V

    .line 2
    iput-object v0, p0, Lrich/j0;->b:Lrich/h0;

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lrich/j0;->c()Lrich/h0;

    move-result-object p1

    iput-object p1, p0, Lrich/j0;->a:Lrich/h0;

    goto :goto_0

    :cond_0
    iput-object v0, p0, Lrich/j0;->a:Lrich/h0;

    :goto_0
    return-void
.end method

.method public static a(Z)Lrich/j0;
    .locals 2

    sget-object v0, Lrich/j0;->e:Lrich/j0;

    if-nez v0, :cond_1

    const-class v0, Lrich/j0;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lrich/j0;->e:Lrich/j0;

    if-nez v1, :cond_0

    new-instance v1, Lrich/j0;

    invoke-direct {v1, p0}, Lrich/j0;-><init>(Z)V

    sput-object v1, Lrich/j0;->e:Lrich/j0;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    sget-object p0, Lrich/j0;->e:Lrich/j0;

    return-object p0
.end method

.method public static synthetic a(Lrich/j0;Z)Z
    .locals 0

    iput-boolean p1, p0, Lrich/j0;->c:Z

    return p1
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, "&"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    invoke-virtual {v2, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string v2, ""

    :goto_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "="

    invoke-virtual {v2, p1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v2, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    :cond_2
    return-object v2
.end method

.method public a()Lrich/h0;
    .locals 1

    iget-object v0, p0, Lrich/j0;->b:Lrich/h0;

    return-object v0
.end method

.method public final a(Lorg/json/JSONObject;)V
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, "LOGS_CONTROL"

    const-string v3, "M009"

    const-string v4, "M008"

    const-string v5, "M007"

    const-string v6, "CHANGE_HOST"

    const-string v7, "Configlist"

    const-string v8, "UmcConfigHandle"

    const-string v9, "client_valid"

    const-string v10, "0"

    const-string v11, "sso_config_xf"

    invoke-static {v11}, Lrich/b0;->b(Ljava/lang/String;)Lrich/i2;

    move-result-object v11

    :try_start_0
    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    int-to-long v12, v12

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    const-wide/16 v16, 0x3c

    mul-long v12, v12, v16

    mul-long v12, v12, v16

    const-wide/16 v16, 0x3e8

    mul-long v12, v12, v16

    add-long/2addr v12, v14

    .line 4
    iget-object v14, v11, Lrich/i2;->a:Landroid/content/SharedPreferences$Editor;

    invoke-static {v9}, Lrich/b0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v14, v9, v12, v13}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 5
    :cond_0
    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const-string v9, "config_host"

    const-string v12, "https_get_phone_scrip_host"

    const-string v13, "logHost"

    if-eqz v7, :cond_3

    :try_start_1
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v1, v6, v5}, Lrich/j0;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 6
    iget-object v7, v11, Lrich/i2;->a:Landroid/content/SharedPreferences$Editor;

    invoke-static {v13}, Lrich/b0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v7, v13, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 7
    :cond_1
    invoke-virtual {v6, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v1, v6, v4}, Lrich/j0;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 8
    iget-object v5, v11, Lrich/i2;->a:Landroid/content/SharedPreferences$Editor;

    invoke-static {v12}, Lrich/b0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 9
    :cond_2
    invoke-virtual {v6, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v1, v6, v3}, Lrich/j0;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 10
    iget-object v4, v11, Lrich/i2;->a:Landroid/content/SharedPreferences$Editor;

    invoke-static {v9}, Lrich/b0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 11
    :cond_3
    iget-object v3, v11, Lrich/i2;->a:Landroid/content/SharedPreferences$Editor;

    invoke-static {v13}, Lrich/b0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-object v3, v11, Lrich/i2;->a:Landroid/content/SharedPreferences$Editor;

    invoke-static {v12}, Lrich/b0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-object v3, v11, Lrich/i2;->a:Landroid/content/SharedPreferences$Editor;

    invoke-static {v9}, Lrich/b0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_4
    :goto_0
    const-string v3, "CLOSE_FRIEND_WAPKS"

    .line 12
    invoke-virtual {v1, v0, v3, v10, v11}, Lrich/j0;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lrich/i2;)V

    const-string v3, "CLOSE_LOGS_VERSION"

    invoke-virtual {v1, v0, v3, v10, v11}, Lrich/j0;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lrich/i2;)V

    const-string v3, "CLOSE_IPV4_LIST"

    invoke-virtual {v1, v0, v3, v10, v11}, Lrich/j0;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lrich/i2;)V

    const-string v3, "CLOSE_IPV6_LIST"

    invoke-virtual {v1, v0, v3, v10, v11}, Lrich/j0;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lrich/i2;)V

    const-string v3, "CLOSE_M008_SDKVERSION_LIST"

    invoke-virtual {v1, v0, v3, v10, v11}, Lrich/j0;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lrich/i2;)V

    const-string v3, "CLOSE_M008_APPID_LIST"

    invoke-virtual {v1, v0, v3, v10, v11}, Lrich/j0;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lrich/i2;)V

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const-string v4, "pauseTime"

    const-string v5, "maxFailedLogTimes"

    if-eqz v3, :cond_5

    :try_start_2
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "h"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "&"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x2

    if-ne v2, v3, :cond_6

    const/4 v2, 0x0

    aget-object v3, v0, v2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    const/4 v3, 0x1

    aget-object v6, v0, v3

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    if-nez v6, :cond_6

    :try_start_3
    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    aget-object v0, v0, v3

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 13
    iget-object v3, v11, Lrich/i2;->a:Landroid/content/SharedPreferences$Editor;

    invoke-static {v5}, Lrich/b0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    iget-object v2, v11, Lrich/i2;->a:Landroid/content/SharedPreferences$Editor;

    invoke-static {v4}, Lrich/b0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :catch_0
    :try_start_4
    const-string v0, "\u89e3\u6790\u65e5\u5fd7\u4e0a\u62a5\u9650\u5236\u65f6\u95f4\u6b21\u6570\u5f02\u5e38"

    .line 14
    invoke-static {v8, v0}, Lrich/c2;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 15
    :cond_5
    iget-object v0, v11, Lrich/i2;->a:Landroid/content/SharedPreferences$Editor;

    invoke-static {v5}, Lrich/b0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-object v0, v11, Lrich/i2;->a:Landroid/content/SharedPreferences$Editor;

    invoke-static {v4}, Lrich/b0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 16
    :cond_6
    :goto_1
    iget-object v0, v11, Lrich/i2;->a:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    const-string v2, "\u914d\u7f6e\u9879\u5f02\u5e38\uff0c\u914d\u7f6e\u5931\u6548"

    .line 17
    invoke-static {v8, v2}, Lrich/c2;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-void
.end method

.method public final a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lrich/i2;)V
    .locals 2

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "CLOSE_FRIEND_WAPKS"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "CU"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "CT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "CM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 18
    iget-object p3, p4, Lrich/i2;->a:Landroid/content/SharedPreferences$Editor;

    invoke-static {p2}, Lrich/b0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p3, p2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    :cond_2
    :goto_0
    return-void

    .line 19
    :cond_3
    iget-object p1, p4, Lrich/i2;->a:Landroid/content/SharedPreferences$Editor;

    invoke-static {p2}, Lrich/b0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :goto_1
    return-void
.end method

.method public a(Lrich/l0;)V
    .locals 7

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2
    sget-object v2, Lrich/b0;->a:Landroid/content/Context;

    const-string v3, "sso_config_xf"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "client_valid"

    invoke-static {v3}, Lrich/b0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-wide/16 v5, 0x0

    invoke-interface {v2, v3, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v4, 0x1

    :cond_0
    if-eqz v4, :cond_1

    .line 3
    new-instance v0, Lrich/j0$a;

    invoke-direct {v0, p0, p1}, Lrich/j0$a;-><init>(Lrich/j0;Lrich/l0;)V

    invoke-static {v0}, Lrich/k2;->a(Lrich/k2$a;)V

    :cond_1
    return-void
.end method

.method public b()V
    .locals 2

    const-string v0, "sso_config_xf"

    invoke-static {v0}, Lrich/b0;->b(Ljava/lang/String;)Lrich/i2;

    move-result-object v0

    .line 1
    iget-object v1, v0, Lrich/i2;->a:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 2
    iget-object v0, v0, Lrich/i2;->a:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final c()Lrich/h0;
    .locals 8

    .line 1
    new-instance v0, Lrich/h0;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lrich/h0;-><init>(Lrich/h0$a;)V

    .line 2
    iget-object v2, p0, Lrich/j0;->b:Lrich/h0;

    .line 3
    iget-object v2, v2, Lrich/h0;->a:Ljava/lang/String;

    const-string v3, "sso_config_xf"

    const-string v4, "https_get_phone_scrip_host"

    .line 4
    invoke-static {v3, v4, v1}, Lrich/b0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_0

    :cond_0
    move-object v2, v5

    .line 5
    :goto_0
    iput-object v2, v0, Lrich/h0;->a:Ljava/lang/String;

    .line 6
    iget-object v2, p0, Lrich/j0;->b:Lrich/h0;

    .line 7
    iget-object v2, v2, Lrich/h0;->c:Ljava/lang/String;

    const-string v5, "config_host"

    .line 8
    invoke-static {v3, v5, v1}, Lrich/b0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_1

    :cond_1
    move-object v2, v5

    .line 9
    :goto_1
    iput-object v2, v0, Lrich/h0;->c:Ljava/lang/String;

    .line 10
    iget-object v2, p0, Lrich/j0;->b:Lrich/h0;

    .line 11
    iget-object v2, v2, Lrich/h0;->b:Ljava/lang/String;

    .line 12
    invoke-static {v3, v4, v1}, Lrich/b0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_2

    :cond_2
    move-object v2, v1

    .line 13
    :goto_2
    iput-object v2, v0, Lrich/h0;->b:Ljava/lang/String;

    .line 14
    iget-object v1, p0, Lrich/j0;->b:Lrich/h0;

    .line 15
    iget-object v1, v1, Lrich/h0;->d:Ljava/lang/String;

    const-string v2, "logHost"

    const-string v4, ""

    .line 16
    invoke-static {v3, v2, v4}, Lrich/b0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_3

    :cond_3
    move-object v1, v2

    .line 17
    :goto_3
    iput-object v1, v0, Lrich/h0;->d:Ljava/lang/String;

    .line 18
    iget-object v1, p0, Lrich/j0;->b:Lrich/h0;

    .line 19
    iget-boolean v1, v1, Lrich/h0;->h:Z

    const-string v2, "0"

    const-string v5, "1"

    if-nez v1, :cond_4

    move-object v1, v2

    goto :goto_4

    :cond_4
    move-object v1, v5

    :goto_4
    const-string v6, "CLOSE_IPV4_LIST"

    .line 20
    invoke-static {v3, v6, v1}, Lrich/b0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 21
    invoke-static {v0, v1}, Lrich/h0;->d(Lrich/h0;Z)Z

    .line 22
    iget-object v1, p0, Lrich/j0;->b:Lrich/h0;

    .line 23
    iget-boolean v1, v1, Lrich/h0;->i:Z

    if-nez v1, :cond_5

    move-object v1, v2

    goto :goto_5

    :cond_5
    move-object v1, v5

    :goto_5
    const-string v6, "CLOSE_IPV6_LIST"

    .line 24
    invoke-static {v3, v6, v1}, Lrich/b0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 25
    invoke-static {v0, v1}, Lrich/h0;->e(Lrich/h0;Z)Z

    .line 26
    iget-object v1, p0, Lrich/j0;->b:Lrich/h0;

    .line 27
    iget-boolean v1, v1, Lrich/h0;->e:Z

    const-string v6, "CT"

    if-eqz v1, :cond_6

    move-object v1, v6

    goto :goto_6

    :cond_6
    move-object v1, v4

    :goto_6
    const-string v7, "CLOSE_FRIEND_WAPKS"

    .line 28
    invoke-static {v3, v7, v1}, Lrich/b0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 29
    invoke-static {v0, v1}, Lrich/h0;->a(Lrich/h0;Z)Z

    .line 30
    iget-object v1, p0, Lrich/j0;->b:Lrich/h0;

    .line 31
    iget-boolean v1, v1, Lrich/h0;->f:Z

    const-string v6, "CU"

    if-eqz v1, :cond_7

    move-object v4, v6

    .line 32
    :cond_7
    invoke-static {v3, v7, v4}, Lrich/b0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 33
    invoke-static {v0, v1}, Lrich/h0;->b(Lrich/h0;Z)Z

    .line 34
    iget-object v1, p0, Lrich/j0;->b:Lrich/h0;

    .line 35
    iget-boolean v1, v1, Lrich/h0;->g:Z

    if-nez v1, :cond_8

    move-object v1, v2

    goto :goto_7

    :cond_8
    move-object v1, v5

    :goto_7
    const-string v4, "CLOSE_M008_APPID_LIST"

    .line 36
    invoke-static {v3, v4, v1}, Lrich/b0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v6, 0x0

    if-nez v4, :cond_a

    const-string v4, "CLOSE_M008_SDKVERSION_LIST"

    invoke-static {v3, v4, v1}, Lrich/b0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    goto :goto_8

    :cond_9
    move v1, v6

    goto :goto_9

    :cond_a
    :goto_8
    const/4 v1, 0x1

    .line 37
    :goto_9
    invoke-static {v0, v1}, Lrich/h0;->c(Lrich/h0;Z)Z

    .line 38
    iget-object v1, p0, Lrich/j0;->b:Lrich/h0;

    .line 39
    iget-boolean v1, v1, Lrich/h0;->j:Z

    if-eqz v1, :cond_b

    move-object v2, v5

    :cond_b
    const-string v1, "CLOSE_LOGS_VERSION"

    .line 40
    invoke-static {v3, v1, v2}, Lrich/b0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 41
    invoke-static {v0, v1}, Lrich/h0;->f(Lrich/h0;Z)Z

    .line 42
    iget-object v1, p0, Lrich/j0;->b:Lrich/h0;

    .line 43
    iget v1, v1, Lrich/h0;->k:I

    .line 44
    sget-object v2, Lrich/b0;->a:Landroid/content/Context;

    invoke-virtual {v2, v3, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v4, "maxFailedLogTimes"

    invoke-static {v4}, Lrich/b0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 45
    iput v1, v0, Lrich/h0;->k:I

    .line 46
    iget-object v1, p0, Lrich/j0;->b:Lrich/h0;

    .line 47
    iget v1, v1, Lrich/h0;->l:I

    .line 48
    sget-object v2, Lrich/b0;->a:Landroid/content/Context;

    invoke-virtual {v2, v3, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "pauseTime"

    invoke-static {v3}, Lrich/b0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 49
    iput v1, v0, Lrich/h0;->l:I

    return-object v0
.end method
