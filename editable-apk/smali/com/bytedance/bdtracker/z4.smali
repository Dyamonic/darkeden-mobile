.class public Lcom/bytedance/bdtracker/z4;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/bdtracker/z4$a;
    }
.end annotation


# static fields
.field public static a:J

.field public static b:Lcom/bytedance/bdtracker/z4$a;

.field public static c:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/bytedance/bdtracker/z4$a;->b:Lcom/bytedance/bdtracker/z4$a;

    sput-object v0, Lcom/bytedance/bdtracker/z4;->b:Lcom/bytedance/bdtracker/z4$a;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/bytedance/bdtracker/z4$a;
    .locals 2

    :try_start_0
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v1, v0, :cond_1

    sget-object p0, Lcom/bytedance/bdtracker/z4$a;->g:Lcom/bytedance/bdtracker/z4$a;

    return-object p0

    :cond_1
    if-nez v0, :cond_5

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    if-nez p0, :cond_2

    sget-object p0, Lcom/bytedance/bdtracker/z4$a;->c:Lcom/bytedance/bdtracker/z4$a;

    return-object p0

    :cond_2
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result p0

    const/4 v0, 0x3

    if-eq p0, v0, :cond_4

    const/16 v0, 0x14

    if-eq p0, v0, :cond_3

    const/4 v0, 0x5

    if-eq p0, v0, :cond_4

    const/4 v0, 0x6

    if-eq p0, v0, :cond_4

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    sget-object p0, Lcom/bytedance/bdtracker/z4$a;->d:Lcom/bytedance/bdtracker/z4$a;

    return-object p0

    :pswitch_0
    sget-object p0, Lcom/bytedance/bdtracker/z4$a;->h:Lcom/bytedance/bdtracker/z4$a;

    return-object p0

    :cond_3
    sget-object p0, Lcom/bytedance/bdtracker/z4$a;->i:Lcom/bytedance/bdtracker/z4$a;

    return-object p0

    :cond_4
    :pswitch_1
    sget-object p0, Lcom/bytedance/bdtracker/z4$a;->f:Lcom/bytedance/bdtracker/z4$a;

    return-object p0

    :cond_5
    sget-object p0, Lcom/bytedance/bdtracker/z4$a;->d:Lcom/bytedance/bdtracker/z4$a;

    return-object p0

    :cond_6
    :goto_0
    sget-object p0, Lcom/bytedance/bdtracker/z4$a;->c:Lcom/bytedance/bdtracker/z4$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    sget-object p0, Lcom/bytedance/bdtracker/z4$a;->d:Lcom/bytedance/bdtracker/z4$a;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xc
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static a(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Lcom/bytedance/bdtracker/z4;->b(Landroid/content/Context;Z)Lcom/bytedance/bdtracker/z4$a;

    move-result-object p0

    .line 1
    sget-object p1, Lcom/bytedance/bdtracker/z4$a;->g:Lcom/bytedance/bdtracker/z4$a;

    if-ne p0, p1, :cond_0

    const-string p0, "wifi"

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/bytedance/bdtracker/z4$a;->j:Lcom/bytedance/bdtracker/z4$a;

    if-ne p0, p1, :cond_1

    const-string p0, "wifi24ghz"

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/bytedance/bdtracker/z4$a;->k:Lcom/bytedance/bdtracker/z4$a;

    if-ne p0, p1, :cond_2

    const-string p0, "wifi5ghz"

    goto :goto_0

    :cond_2
    sget-object p1, Lcom/bytedance/bdtracker/z4$a;->e:Lcom/bytedance/bdtracker/z4$a;

    if-ne p0, p1, :cond_3

    const-string p0, "2g"

    goto :goto_0

    :cond_3
    sget-object p1, Lcom/bytedance/bdtracker/z4$a;->f:Lcom/bytedance/bdtracker/z4$a;

    if-ne p0, p1, :cond_4

    const-string p0, "3g"

    goto :goto_0

    :cond_4
    sget-object p1, Lcom/bytedance/bdtracker/z4$a;->l:Lcom/bytedance/bdtracker/z4$a;

    if-ne p0, p1, :cond_5

    const-string p0, "3gh"

    goto :goto_0

    :cond_5
    sget-object p1, Lcom/bytedance/bdtracker/z4$a;->m:Lcom/bytedance/bdtracker/z4$a;

    if-ne p0, p1, :cond_6

    const-string p0, "3ghp"

    goto :goto_0

    :cond_6
    sget-object p1, Lcom/bytedance/bdtracker/z4$a;->h:Lcom/bytedance/bdtracker/z4$a;

    if-ne p0, p1, :cond_7

    const-string p0, "4g"

    goto :goto_0

    :cond_7
    sget-object p1, Lcom/bytedance/bdtracker/z4$a;->i:Lcom/bytedance/bdtracker/z4$a;

    if-ne p0, p1, :cond_8

    const-string p0, "5g"

    goto :goto_0

    :cond_8
    sget-object p1, Lcom/bytedance/bdtracker/z4$a;->d:Lcom/bytedance/bdtracker/z4$a;

    if-ne p0, p1, :cond_9

    const-string p0, "mobile"

    goto :goto_0

    :cond_9
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method public static b(Landroid/content/Context;Z)Lcom/bytedance/bdtracker/z4$a;
    .locals 5

    .line 1
    sget-boolean v0, Lcom/bytedance/bdtracker/z4;->c:Z

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :try_start_0
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/bytedance/bdtracker/i3;

    invoke-direct {v3}, Lcom/bytedance/bdtracker/i3;-><init>()V

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_1
    invoke-static {}, Lcom/bytedance/applog/log/LoggerImpl;->global()Lcom/bytedance/applog/log/IAppLogLogger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "registerReceiver failed, because: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v2, v1, v3}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_0
    sput-boolean v0, Lcom/bytedance/bdtracker/z4;->c:Z

    goto :goto_1

    :catchall_1
    move-exception p0

    sput-boolean v0, Lcom/bytedance/bdtracker/z4;->c:Z

    throw p0

    .line 2
    :cond_0
    :goto_1
    sget-object v0, Lcom/bytedance/bdtracker/z4;->b:Lcom/bytedance/bdtracker/z4$a;

    sget-object v1, Lcom/bytedance/bdtracker/z4$a;->b:Lcom/bytedance/bdtracker/z4$a;

    if-ne v0, v1, :cond_1

    invoke-static {p0}, Lcom/bytedance/bdtracker/z4;->a(Landroid/content/Context;)Lcom/bytedance/bdtracker/z4$a;

    move-result-object v0

    sput-object v0, Lcom/bytedance/bdtracker/z4;->b:Lcom/bytedance/bdtracker/z4$a;

    :cond_1
    if-eqz p1, :cond_2

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/bytedance/bdtracker/z4;->a:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7d0

    cmp-long p1, v0, v2

    if-lez p1, :cond_2

    invoke-static {p0}, Lcom/bytedance/bdtracker/z4;->a(Landroid/content/Context;)Lcom/bytedance/bdtracker/z4$a;

    move-result-object p0

    sput-object p0, Lcom/bytedance/bdtracker/z4;->b:Lcom/bytedance/bdtracker/z4$a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    sput-wide p0, Lcom/bytedance/bdtracker/z4;->a:J

    .line 4
    :cond_2
    sget-object p0, Lcom/bytedance/bdtracker/z4;->b:Lcom/bytedance/bdtracker/z4$a;

    return-object p0
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :catchall_0
    :cond_0
    return v0
.end method
