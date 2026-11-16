.class public Lcom/bytedance/ads/convert/hume/readapk/HumeSDK;
.super Ljava/lang/Object;


# static fields
.field private static final APK_INNER_BLOCK_ID:I = 0x71777777

.field private static final APK_OUTER_BLOCK_ID:I = -0x6699999a

.field private static final APK_TRACE_BLOCK_ID:I = 0x71777778

.field public static final TAG:Ljava/lang/String; = "HumeSDK"

.field private static mApkInfos:[Ljava/lang/String;

.field private static volatile mIsInit:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/bytedance/ads/convert/hume/readapk/HumeSDK;->mApkInfos:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getApkPath(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-object v0
.end method

.method public static getChannel(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    sget-boolean v0, Lcom/bytedance/ads/convert/hume/readapk/HumeSDK;->mIsInit:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/bytedance/ads/convert/hume/readapk/HumeSDK;->initApkInfo(Landroid/content/Context;)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/bytedance/ads/convert/hume/readapk/HumeSDK;->mIsInit:Z

    :cond_0
    invoke-static {p0}, Lcom/bytedance/ads/convert/hume/readapk/HumeSDK;->getExtra(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/bytedance/ads/convert/hume/readapk/HumeSDK;->getMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_1

    const-string v0, "hume_channel_id"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_1
    const-string p0, ""

    return-object p0
.end method

.method public static getExtra(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    sget-boolean v0, Lcom/bytedance/ads/convert/hume/readapk/HumeSDK;->mIsInit:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/bytedance/ads/convert/hume/readapk/HumeSDK;->initApkInfo(Landroid/content/Context;)V

    sput-boolean v1, Lcom/bytedance/ads/convert/hume/readapk/HumeSDK;->mIsInit:Z

    :cond_0
    sget-object p0, Lcom/bytedance/ads/convert/hume/readapk/HumeSDK;->mApkInfos:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object p0, p0, v0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    sget-object p0, Lcom/bytedance/ads/convert/hume/readapk/HumeSDK;->mApkInfos:[Ljava/lang/String;

    aget-object p0, p0, v0

    return-object p0

    :cond_1
    sget-object p0, Lcom/bytedance/ads/convert/hume/readapk/HumeSDK;->mApkInfos:[Ljava/lang/String;

    aget-object p0, p0, v1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_2

    sget-object p0, Lcom/bytedance/ads/convert/hume/readapk/HumeSDK;->mApkInfos:[Ljava/lang/String;

    aget-object p0, p0, v1

    return-object p0

    :cond_2
    const-string p0, ""

    return-object p0
.end method

.method private static getMap(Ljava/lang/String;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p0

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_1
    return-object v2

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_1
    return-object v1
.end method

.method private static getTraceInfo(Landroid/content/Context;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-boolean v0, Lcom/bytedance/ads/convert/hume/readapk/HumeSDK;->mIsInit:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/bytedance/ads/convert/hume/readapk/HumeSDK;->initApkInfo(Landroid/content/Context;)V

    const/4 p0, 0x1

    sput-boolean p0, Lcom/bytedance/ads/convert/hume/readapk/HumeSDK;->mIsInit:Z

    :cond_0
    sget-object p0, Lcom/bytedance/ads/convert/hume/readapk/HumeSDK;->mApkInfos:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object p0, p0, v0

    invoke-static {p0}, Lcom/bytedance/ads/convert/hume/readapk/HumeSDK;->getMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    if-nez p0, :cond_1

    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    :cond_1
    return-object p0
.end method

.method private static initApkInfo(Landroid/content/Context;)V
    .locals 6

    invoke-static {p0}, Lcom/bytedance/ads/convert/hume/readapk/HumeSDK;->getApkPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    filled-new-array {v1, v1, v1}, [Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/bytedance/ads/convert/hume/readapk/HumeSDK;->mApkInfos:[Ljava/lang/String;

    return-void

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 p0, 0x3

    new-array v2, p0, [I

    fill-array-data v2, :array_0

    invoke-static {v0, v2}, Lcom/bytedance/ads/convert/hume/readapk/PayloadReader;->getString(Ljava/io/File;[I)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/bytedance/ads/convert/hume/readapk/HumeSDK;->mApkInfos:[Ljava/lang/String;

    :goto_0
    sput-object v2, Lcom/bytedance/ads/convert/hume/readapk/HumeSDK;->mApkInfos:[Ljava/lang/String;

    array-length v3, v2

    const/4 v4, 0x2

    if-lt v3, v4, :cond_3

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v2, Lcom/bytedance/ads/convert/hume/readapk/HumeSDK;->mApkInfos:[Ljava/lang/String;

    const/4 v5, 0x1

    aget-object v2, v2, v5

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {v0}, Lcom/bytedance/ads/convert/hume/readapk/signaturev1/V1SchemeUtil;->readChannel(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/bytedance/ads/convert/hume/readapk/HumeSDK;->mApkInfos:[Ljava/lang/String;

    if-nez v0, :cond_2

    move-object v0, v1

    :cond_2
    aput-object v0, v2, v3

    :cond_3
    sget-object v0, Lcom/bytedance/ads/convert/hume/readapk/HumeSDK;->mApkInfos:[Ljava/lang/String;

    array-length v2, v0

    if-lt v2, p0, :cond_5

    aget-object p0, v0, v4

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_5

    sget-object p0, Lcom/bytedance/ads/convert/hume/readapk/HumeSDK;->mApkInfos:[Ljava/lang/String;

    aget-object p0, p0, v4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    const/4 v0, 0x4

    if-le p0, v0, :cond_4

    sget-object v0, Lcom/bytedance/ads/convert/hume/readapk/HumeSDK;->mApkInfos:[Ljava/lang/String;

    aget-object v1, v0, v4

    sub-int/2addr p0, v4

    invoke-virtual {v1, v4, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v4

    goto :goto_1

    :cond_4
    sget-object p0, Lcom/bytedance/ads/convert/hume/readapk/HumeSDK;->mApkInfos:[Ljava/lang/String;

    aput-object v1, p0, v4

    :cond_5
    :goto_1
    return-void

    nop

    :array_0
    .array-data 4
        -0x6699999a
        0x71777777
        0x71777778
    .end array-data
.end method
