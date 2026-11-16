.class public Lcom/tencent/turingfd/sdk/ams/ad/Octans;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/tencent/turingfd/sdk/ams/ad/Date;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tencent/turingfd/sdk/ams/ad/Date<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/tencent/turingfd/sdk/ams/ad/Date;

    invoke-direct {v0}, Lcom/tencent/turingfd/sdk/ams/ad/Date;-><init>()V

    sput-object v0, Lcom/tencent/turingfd/sdk/ams/ad/Octans;->a:Lcom/tencent/turingfd/sdk/ams/ad/Date;

    return-void
.end method

.method public static a(Landroid/content/Context;)I
    .locals 5

    .line 8
    invoke-static {p0}, Lcom/tencent/turingfd/sdk/ams/ad/Octans;->e(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0, v1}, Lcom/tencent/turingfd/sdk/ams/ad/this;->a(IZI)I

    move-result v0

    .line 9
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v3, 0x1

    const/16 v4, 0x11

    if-lt v2, v4, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "development_settings_enabled"

    invoke-static {v2, v4, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-lez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v1

    .line 10
    :goto_0
    invoke-static {v0, v2, v3}, Lcom/tencent/turingfd/sdk/ams/ad/this;->a(IZI)I

    move-result v0

    const/4 v2, 0x2

    .line 11
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/2addr p0, v2

    if-lez p0, :cond_1

    move v1, v3

    .line 12
    :catchall_0
    :cond_1
    invoke-static {v0, v1, v2}, Lcom/tencent/turingfd/sdk/ams/ad/this;->a(IZI)I

    move-result p0

    .line 13
    invoke-static {}, Landroid/os/Debug;->isDebuggerConnected()Z

    move-result v0

    const/4 v1, 0x3

    invoke-static {p0, v0, v1}, Lcom/tencent/turingfd/sdk/ams/ad/this;->a(IZI)I

    move-result p0

    return p0
.end method

.method public static a()Ljava/lang/String;
    .locals 4

    .line 1
    invoke-static {}, Lcom/tencent/turingfd/sdk/ams/ad/Chamaeleon;->a()Ljava/util/List;

    move-result-object v0

    .line 2
    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/turingfd/sdk/ams/ad/throws;

    .line 3
    iget-object v2, v1, Lcom/tencent/turingfd/sdk/ams/ad/throws;->a:Ljava/lang/String;

    sget-object v3, Lcom/tencent/turingfd/sdk/ams/ad/Foxnut;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    iget-object v0, v1, Lcom/tencent/turingfd/sdk/ams/ad/throws;->b:Ljava/lang/String;

    return-object v0

    :cond_1
    const-string v0, ""

    return-object v0
.end method

.method public static b(Landroid/content/Context;)I
    .locals 6

    .line 1
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 4
    :try_start_0
    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    const/4 p0, 0x0

    if-nez v1, :cond_0

    return p0

    :cond_0
    const-string v0, "status"

    const/4 v2, -0x1

    .line 11
    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-eq v0, v4, :cond_2

    const/4 v5, 0x5

    if-ne v0, v5, :cond_1

    goto :goto_0

    :cond_1
    move v0, p0

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v3

    :goto_1
    if-nez v0, :cond_3

    return v3

    :cond_3
    const-string v0, "plugged"

    .line 19
    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v4, :cond_4

    const/4 p0, 0x3

    return p0

    :cond_4
    if-ne v0, v3, :cond_5

    return v4

    :cond_5
    return p0
.end method

.method public static b()Ljava/lang/String;
    .locals 4

    .line 20
    invoke-static {}, Lcom/tencent/turingfd/sdk/ams/ad/Chamaeleon;->a()Ljava/util/List;

    move-result-object v0

    .line 21
    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/turingfd/sdk/ams/ad/throws;

    .line 22
    iget-object v2, v1, Lcom/tencent/turingfd/sdk/ams/ad/throws;->a:Ljava/lang/String;

    sget-object v3, Lcom/tencent/turingfd/sdk/ams/ad/Foxnut;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 23
    iget-object v0, v1, Lcom/tencent/turingfd/sdk/ams/ad/throws;->b:Ljava/lang/String;

    return-object v0

    :cond_1
    const-string v0, ""

    return-object v0
.end method

.method public static c()Ljava/lang/String;
    .locals 5

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    :try_start_0
    const-class v1, Lcom/tencent/turingfd/sdk/ams/ad/case;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 46
    :try_start_1
    sget-object v2, Lcom/tencent/turingfd/sdk/ams/ad/case;->a:Landroid/content/Context;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v1

    .line 47
    invoke-static {v2}, Lcom/tencent/turingfd/sdk/ams/ad/Lynx;->a(Landroid/content/Context;)Lcom/tencent/turingfd/sdk/ams/ad/Hydra;

    move-result-object v1

    const/4 v2, 0x0

    .line 48
    :goto_0
    iget-object v3, v1, Lcom/tencent/turingfd/sdk/ams/ad/Hydra;->a:Lcom/tencent/turingfd/sdk/ams/ad/LeoMinor;

    invoke-interface {v3}, Lcom/tencent/turingfd/sdk/ams/ad/LeoMinor;->a()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 49
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_0

    const-string v3, ","

    .line 50
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    :cond_0
    iget-object v3, v1, Lcom/tencent/turingfd/sdk/ams/ad/Hydra;->a:Lcom/tencent/turingfd/sdk/ams/ad/LeoMinor;

    invoke-interface {v3, v2}, Lcom/tencent/turingfd/sdk/ams/ad/LeoMinor;->a(I)Ljava/util/Locale;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_1

    .line 52
    :cond_1
    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "-"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 57
    :catchall_1
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    .line 1
    sget-object v0, Lcom/tencent/turingfd/sdk/ams/ad/Octans;->a:Lcom/tencent/turingfd/sdk/ams/ad/Date;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-virtual {v0}, Lcom/tencent/turingfd/sdk/ams/ad/Date;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 5
    monitor-exit v0

    return-object v1

    .line 7
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v2, "phone"

    .line 9
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 12
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_2

    .line 15
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v3

    const-string v4, ","

    .line 18
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v4, 0x1

    if-le v3, v4, :cond_2

    const/16 v4, 0x1a

    if-lt v2, v4, :cond_2

    const-string v2, ","

    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_2

    if-lez v2, :cond_1

    const-string v4, ";"

    .line 26
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    :cond_1
    invoke-virtual {p0, v2}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 36
    :cond_2
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 37
    sget-object v1, Lcom/tencent/turingfd/sdk/ams/ad/Octans;->a:Lcom/tencent/turingfd/sdk/ams/ad/Date;

    goto :goto_1

    .line 38
    :catchall_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 39
    sget-object v1, Lcom/tencent/turingfd/sdk/ams/ad/Octans;->a:Lcom/tencent/turingfd/sdk/ams/ad/Date;

    :goto_1
    const-wide/16 v2, 0x0

    .line 37
    invoke-virtual {v1, p0, v2, v3}, Lcom/tencent/turingfd/sdk/ams/ad/Date;->a(Ljava/lang/Object;J)V

    .line 41
    monitor-exit v0

    return-object p0

    :catchall_1
    move-exception p0

    .line 42
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method public static d(Landroid/content/Context;)I
    .locals 5

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x18

    if-lt v0, v2, :cond_0

    return v1

    .line 5
    :cond_0
    sget-object v0, Lcom/tencent/turingfd/sdk/ams/ad/finally;->n0:[I

    invoke-static {v0}, Lcom/tencent/turingfd/sdk/ams/ad/finally;->a([I)Ljava/lang/String;

    move-result-object v0

    .line 6
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/turingfd/sdk/ams/ad/strictfp;->a:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 11
    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 12
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 18
    invoke-static {v3}, Lcom/tencent/turingfd/sdk/ams/ad/strictfp;->a(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-object v0, v3

    :catchall_1
    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/tencent/turingfd/sdk/ams/ad/strictfp;->a(Ljava/io/Closeable;)V

    :cond_1
    const-string v0, ""

    .line 19
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    return v1

    :cond_2
    const-string v2, "CONFIGURED"

    .line 23
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x3

    if-eqz v2, :cond_5

    const/4 v0, 0x1

    .line 26
    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v2, "adb_enabled"

    invoke-static {p0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-lez p0, :cond_3

    move v1, v0

    :catchall_2
    :cond_3
    if-eqz v1, :cond_4

    return v0

    :cond_4
    return v3

    :cond_5
    const-string p0, "DISCONNECTED"

    .line 34
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    const/4 p0, 0x2

    return p0

    :cond_6
    const-string p0, "CONNECTED"

    .line 36
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    return v3

    :cond_7
    return v1
.end method

.method public static e(Landroid/content/Context;)Z
    .locals 4

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v1, "adb_enabled"

    const/4 v2, 0x0

    const/16 v3, 0x11

    if-lt v0, v3, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-lez p0, :cond_1

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-lez p0, :cond_1

    :goto_0
    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method public static f(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    .line 1
    sget-object v0, Lcom/tencent/turingfd/sdk/ams/ad/Avocado;->a:Ljava/util/Map;

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    invoke-static {p0, v1}, Lcom/tencent/turingfd/sdk/ams/ad/UrsaMinor;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 10
    new-instance v2, Lcom/tencent/turingfd/sdk/ams/ad/throws;

    invoke-direct {v2}, Lcom/tencent/turingfd/sdk/ams/ad/throws;-><init>()V

    .line 11
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/tencent/turingfd/sdk/ams/ad/Foxnut;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/tencent/turingfd/sdk/ams/ad/Foxnut;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/tencent/turingfd/sdk/ams/ad/throws;->a:Ljava/lang/String;

    .line 12
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v2, Lcom/tencent/turingfd/sdk/ams/ad/throws;->b:Ljava/lang/String;

    .line 14
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    .line 16
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/tencent/turingfd/sdk/ams/ad/throws;

    iget-object p0, p0, Lcom/tencent/turingfd/sdk/ams/ad/throws;->b:Ljava/lang/String;

    return-object p0

    :cond_1
    const-string p0, ""

    return-object p0
.end method
