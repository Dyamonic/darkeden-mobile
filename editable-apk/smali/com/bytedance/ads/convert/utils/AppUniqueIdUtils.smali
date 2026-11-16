.class public Lcom/bytedance/ads/convert/utils/AppUniqueIdUtils;
.super Ljava/lang/Object;


# static fields
.field private static final NULL:Ljava/lang/String; = "NULL"

.field private static cache:Lcom/bytedance/ads/convert/hume/readapk/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/ads/convert/hume/readapk/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAppUniqueId(Landroid/content/Context;Lcom/bytedance/applog/IAppLogInstance;)Lcom/bytedance/ads/convert/hume/readapk/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/bytedance/applog/IAppLogInstance;",
            ")",
            "Lcom/bytedance/ads/convert/hume/readapk/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/bytedance/ads/convert/utils/AppUniqueIdUtils;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/bytedance/ads/convert/utils/AppUniqueIdUtils;->cache:Lcom/bytedance/ads/convert/hume/readapk/Pair;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit v0

    return-object v1

    :cond_0
    :try_start_1
    const-string v1, "sp_name_app_unique_id"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "app_unique_id"

    const-string v3, "NULL"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "NULL"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string p0, "app_unique_id_source"

    const-string p1, "NULL"

    invoke-interface {v1, p0, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v2}, Lcom/bytedance/ads/convert/hume/readapk/Pair;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/bytedance/ads/convert/hume/readapk/Pair;

    move-result-object p0

    sput-object p0, Lcom/bytedance/ads/convert/utils/AppUniqueIdUtils;->cache:Lcom/bytedance/ads/convert/hume/readapk/Pair;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object p0

    :cond_1
    const-string v2, ""

    if-eqz p1, :cond_2

    :try_start_2
    invoke-interface {p1}, Lcom/bytedance/applog/IAppLogInstance;->getDid()Ljava/lang/String;

    move-result-object v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catch_0
    :cond_2
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    const-string p0, "device_id"

    invoke-static {p0, v2}, Lcom/bytedance/ads/convert/hume/readapk/Pair;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/bytedance/ads/convert/hume/readapk/Pair;

    move-result-object p0

    :goto_0
    sput-object p0, Lcom/bytedance/ads/convert/utils/AppUniqueIdUtils;->cache:Lcom/bytedance/ads/convert/hume/readapk/Pair;

    goto :goto_1

    :cond_3
    invoke-static {p0}, Lcom/bytedance/ads/convert/utils/AndroidIdUtils;->getAndroidId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4

    const-string p1, "android_id"

    invoke-static {p1, p0}, Lcom/bytedance/ads/convert/hume/readapk/Pair;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/bytedance/ads/convert/hume/readapk/Pair;

    move-result-object p0

    goto :goto_0

    :cond_4
    const-string p0, "random_id"

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/bytedance/ads/convert/hume/readapk/Pair;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/bytedance/ads/convert/hume/readapk/Pair;

    move-result-object p0

    goto :goto_0

    :goto_1
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string p1, "app_unique_id_source"

    sget-object v1, Lcom/bytedance/ads/convert/utils/AppUniqueIdUtils;->cache:Lcom/bytedance/ads/convert/hume/readapk/Pair;

    invoke-virtual {v1}, Lcom/bytedance/ads/convert/hume/readapk/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string p1, "app_unique_id"

    sget-object v1, Lcom/bytedance/ads/convert/utils/AppUniqueIdUtils;->cache:Lcom/bytedance/ads/convert/hume/readapk/Pair;

    invoke-virtual {v1}, Lcom/bytedance/ads/convert/hume/readapk/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    sget-object p0, Lcom/bytedance/ads/convert/utils/AppUniqueIdUtils;->cache:Lcom/bytedance/ads/convert/hume/readapk/Pair;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static getCache()Lcom/bytedance/ads/convert/hume/readapk/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bytedance/ads/convert/hume/readapk/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/bytedance/ads/convert/utils/AppUniqueIdUtils;->cache:Lcom/bytedance/ads/convert/hume/readapk/Pair;

    if-nez v0, :cond_0

    const-string v0, "NULL"

    invoke-static {v0, v0}, Lcom/bytedance/ads/convert/hume/readapk/Pair;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/bytedance/ads/convert/hume/readapk/Pair;

    move-result-object v0

    :cond_0
    return-object v0
.end method
