.class public final Lcom/taptap/sdk/gid/internal/TapGidStorage;
.super Ljava/lang/Object;
.source "TapGidStorage.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0008\u00c0\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bJ\u0010\u0010\u000c\u001a\u0004\u0018\u00010\u00042\u0006\u0010\n\u001a\u00020\u000bJ\u0010\u0010\r\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u000e\u001a\u00020\u000fJ\u0016\u0010\u0010\u001a\u00020\t2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u0004R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/taptap/sdk/gid/internal/TapGidStorage;",
        "",
        "()V",
        "TAP_DEVICE_ID_SAVED_PARAM",
        "",
        "TAP_GID_SHARE_PREFERENCE",
        "TAP_GID_SP_CACHE_CN",
        "TAP_GID_SP_CACHE_GLOBAL",
        "clearDeprecatedSpGid",
        "",
        "context",
        "Landroid/content/Context;",
        "getDeprecatedSpGid",
        "getGidFromSp",
        "regionType",
        "",
        "saveGidToSp",
        "gid",
        "tap-gid_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/taptap/sdk/gid/internal/TapGidStorage;

.field private static final TAP_DEVICE_ID_SAVED_PARAM:Ljava/lang/String; = "taptap_device_id_saved_param"

.field private static final TAP_GID_SHARE_PREFERENCE:Ljava/lang/String; = "tap_gid_share_preference"

.field private static final TAP_GID_SP_CACHE_CN:Ljava/lang/String; = "taptap_gid_cn_cache"

.field private static final TAP_GID_SP_CACHE_GLOBAL:Ljava/lang/String; = "taptap_gid_global_cache"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/taptap/sdk/gid/internal/TapGidStorage;

    invoke-direct {v0}, Lcom/taptap/sdk/gid/internal/TapGidStorage;-><init>()V

    sput-object v0, Lcom/taptap/sdk/gid/internal/TapGidStorage;->INSTANCE:Lcom/taptap/sdk/gid/internal/TapGidStorage;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final clearDeprecatedSpGid(Landroid/content/Context;)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    const-string v0, "tap_gid_share_preference"

    const/4 v1, 0x0

    .line 58
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 61
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "taptap_device_id_saved_param"

    .line 62
    invoke-interface {p1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 63
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 65
    check-cast p1, Ljava/lang/Throwable;

    const/4 v0, 0x2

    const-string v1, "TapGidStorage"

    const/4 v2, 0x0

    invoke-static {v1, v2, p1, v0, v2}, Lcom/taptap/sdk/kit/internal/TapLogger;->loge$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public final getDeprecatedSpGid(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tap_gid_share_preference"

    const/4 v1, 0x0

    .line 70
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "taptap_device_id_saved_param"

    const/4 v1, 0x0

    .line 71
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final getGidFromSp(I)Ljava/lang/String;
    .locals 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, ""

    if-eqz p1, :cond_1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 45
    :cond_0
    :try_start_0
    sget-object v3, Lcom/taptap/sdk/kit/internal/utils/KVUtil;->INSTANCE:Lcom/taptap/sdk/kit/internal/utils/KVUtil;

    const-string v4, "taptap_gid_global_cache"

    const-string v5, ""

    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lcom/taptap/sdk/kit/internal/utils/KVUtil;->getString$default(Lcom/taptap/sdk/kit/internal/utils/KVUtil;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    move-object v2, p1

    goto :goto_0

    .line 41
    :cond_1
    sget-object v3, Lcom/taptap/sdk/kit/internal/utils/KVUtil;->INSTANCE:Lcom/taptap/sdk/kit/internal/utils/KVUtil;

    const-string v4, "taptap_gid_cn_cache"

    const-string v5, ""

    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lcom/taptap/sdk/kit/internal/utils/KVUtil;->getString$default(Lcom/taptap/sdk/kit/internal/utils/KVUtil;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 49
    check-cast p1, Ljava/lang/Throwable;

    const/4 v3, 0x2

    const-string v4, "TapGidStorage"

    invoke-static {v4, v1, p1, v3, v1}, Lcom/taptap/sdk/kit/internal/TapLogger;->loge$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 51
    :goto_0
    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    move-object v1, v2

    :goto_2
    check-cast v1, Ljava/lang/String;

    return-object v1
.end method

.method public final saveGidToSp(ILjava/lang/String;)V
    .locals 7

    const-string v0, "gid"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 28
    :cond_0
    :try_start_0
    sget-object v1, Lcom/taptap/sdk/kit/internal/utils/KVUtil;->INSTANCE:Lcom/taptap/sdk/kit/internal/utils/KVUtil;

    const-string v2, "taptap_gid_global_cache"

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v3, p2

    invoke-static/range {v1 .. v6}, Lcom/taptap/sdk/kit/internal/utils/KVUtil;->putString$default(Lcom/taptap/sdk/kit/internal/utils/KVUtil;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_0

    .line 24
    :cond_1
    sget-object v0, Lcom/taptap/sdk/kit/internal/utils/KVUtil;->INSTANCE:Lcom/taptap/sdk/kit/internal/utils/KVUtil;

    const-string v1, "taptap_gid_cn_cache"

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Lcom/taptap/sdk/kit/internal/utils/KVUtil;->putString$default(Lcom/taptap/sdk/kit/internal/utils/KVUtil;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 32
    check-cast p1, Ljava/lang/Throwable;

    const/4 p2, 0x2

    const-string v0, "TapGidStorage"

    const/4 v1, 0x0

    invoke-static {v0, v1, p1, p2, v1}, Lcom/taptap/sdk/kit/internal/TapLogger;->loge$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    :goto_0
    return-void
.end method
