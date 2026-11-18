.class public Lcom/yofi/sdk/cachewebviewlib/config/CacheExtensionConfig;
.super Ljava/lang/Object;
.source "CacheExtensionConfig.java"


# static fields
.field private static NO_CACH:Ljava/util/HashSet;

.field private static STATIC:Ljava/util/HashSet;


# instance fields
.field private no_cache:Ljava/util/HashSet;

.field private statics:Ljava/util/HashSet;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    new-instance v0, Lcom/yofi/sdk/cachewebviewlib/config/CacheExtensionConfig$1;

    invoke-direct {v0}, Lcom/yofi/sdk/cachewebviewlib/config/CacheExtensionConfig$1;-><init>()V

    sput-object v0, Lcom/yofi/sdk/cachewebviewlib/config/CacheExtensionConfig;->STATIC:Ljava/util/HashSet;

    .line 42
    new-instance v0, Lcom/yofi/sdk/cachewebviewlib/config/CacheExtensionConfig$2;

    invoke-direct {v0}, Lcom/yofi/sdk/cachewebviewlib/config/CacheExtensionConfig$2;-><init>()V

    sput-object v0, Lcom/yofi/sdk/cachewebviewlib/config/CacheExtensionConfig;->NO_CACH:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/util/HashSet;

    sget-object v1, Lcom/yofi/sdk/cachewebviewlib/config/CacheExtensionConfig;->STATIC:Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/yofi/sdk/cachewebviewlib/config/CacheExtensionConfig;->statics:Ljava/util/HashSet;

    .line 56
    new-instance v0, Ljava/util/HashSet;

    sget-object v1, Lcom/yofi/sdk/cachewebviewlib/config/CacheExtensionConfig;->NO_CACH:Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/yofi/sdk/cachewebviewlib/config/CacheExtensionConfig;->no_cache:Ljava/util/HashSet;

    return-void
.end method

.method private static add(Ljava/util/HashSet;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "set",
            "extension"
        }
    .end annotation

    .line 68
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "."

    const-string v1, ""

    .line 71
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static addGlobalExtension(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "extension"
        }
    .end annotation

    .line 59
    sget-object v0, Lcom/yofi/sdk/cachewebviewlib/config/CacheExtensionConfig;->STATIC:Ljava/util/HashSet;

    invoke-static {v0, p0}, Lcom/yofi/sdk/cachewebviewlib/config/CacheExtensionConfig;->add(Ljava/util/HashSet;Ljava/lang/String;)V

    return-void
.end method

.method private static remove(Ljava/util/HashSet;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "set",
            "extension"
        }
    .end annotation

    .line 75
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "."

    const-string v1, ""

    .line 78
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public static removeGlobalExtension(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "extension"
        }
    .end annotation

    .line 63
    sget-object v0, Lcom/yofi/sdk/cachewebviewlib/config/CacheExtensionConfig;->STATIC:Ljava/util/HashSet;

    invoke-static {v0, p0}, Lcom/yofi/sdk/cachewebviewlib/config/CacheExtensionConfig;->remove(Ljava/util/HashSet;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public addExtension(Ljava/lang/String;)Lcom/yofi/sdk/cachewebviewlib/config/CacheExtensionConfig;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "extension"
        }
    .end annotation

    .line 106
    iget-object v0, p0, Lcom/yofi/sdk/cachewebviewlib/config/CacheExtensionConfig;->statics:Ljava/util/HashSet;

    invoke-static {v0, p1}, Lcom/yofi/sdk/cachewebviewlib/config/CacheExtensionConfig;->add(Ljava/util/HashSet;Ljava/lang/String;)V

    return-object p0
.end method

.method public canCache(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "extension"
        }
    .end annotation

    .line 93
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 96
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 97
    sget-object v0, Lcom/yofi/sdk/cachewebviewlib/config/CacheExtensionConfig;->STATIC:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    return p1

    .line 100
    :cond_1
    iget-object v0, p0, Lcom/yofi/sdk/cachewebviewlib/config/CacheExtensionConfig;->statics:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public clearAll()V
    .locals 0

    .line 127
    invoke-virtual {p0}, Lcom/yofi/sdk/cachewebviewlib/config/CacheExtensionConfig;->clearDiskExtension()V

    return-void
.end method

.method public clearDiskExtension()V
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/yofi/sdk/cachewebviewlib/config/CacheExtensionConfig;->statics:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    return-void
.end method

.method public isHtml(Ljava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "extension"
        }
    .end annotation

    .line 117
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 120
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, "html"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 121
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string v0, "htm"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public isMedia(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "extension"
        }
    .end annotation

    .line 82
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 85
    :cond_0
    sget-object v0, Lcom/yofi/sdk/cachewebviewlib/config/CacheExtensionConfig;->NO_CACH:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    return p1

    .line 88
    :cond_1
    iget-object v0, p0, Lcom/yofi/sdk/cachewebviewlib/config/CacheExtensionConfig;->no_cache:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public removeExtension(Ljava/lang/String;)Lcom/yofi/sdk/cachewebviewlib/config/CacheExtensionConfig;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "extension"
        }
    .end annotation

    .line 111
    iget-object v0, p0, Lcom/yofi/sdk/cachewebviewlib/config/CacheExtensionConfig;->statics:Ljava/util/HashSet;

    invoke-static {v0, p1}, Lcom/yofi/sdk/cachewebviewlib/config/CacheExtensionConfig;->remove(Ljava/util/HashSet;Ljava/lang/String;)V

    return-object p0
.end method
