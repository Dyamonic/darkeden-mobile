.class Lcom/yofi/sdk/cachewebviewlib/AssetsLoader;
.super Ljava/lang/Object;
.source "AssetsLoader.java"


# static fields
.field private static volatile assetsLoader:Lcom/yofi/sdk/cachewebviewlib/AssetsLoader;


# instance fields
.field private iTag:I

.field private mAssetResSet:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCleared:Z

.field private mContext:Landroid/content/Context;

.field private mDir:Ljava/lang/String;

.field private mIsSuffixMod:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 25
    iput-object v0, p0, Lcom/yofi/sdk/cachewebviewlib/AssetsLoader;->mDir:Ljava/lang/String;

    const/4 v0, 0x0

    .line 26
    iput-boolean v0, p0, Lcom/yofi/sdk/cachewebviewlib/AssetsLoader;->mCleared:Z

    .line 27
    iput-boolean v0, p0, Lcom/yofi/sdk/cachewebviewlib/AssetsLoader;->mIsSuffixMod:Z

    .line 28
    iput v0, p0, Lcom/yofi/sdk/cachewebviewlib/AssetsLoader;->iTag:I

    return-void
.end method

.method static synthetic access$000(Lcom/yofi/sdk/cachewebviewlib/AssetsLoader;)Ljava/lang/String;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/yofi/sdk/cachewebviewlib/AssetsLoader;->mDir:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/yofi/sdk/cachewebviewlib/AssetsLoader;Ljava/lang/String;)Lcom/yofi/sdk/cachewebviewlib/AssetsLoader;
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/yofi/sdk/cachewebviewlib/AssetsLoader;->initResourceNoneRecursion(Ljava/lang/String;)Lcom/yofi/sdk/cachewebviewlib/AssetsLoader;

    move-result-object p0

    return-object p0
.end method

.method private addAssetsFile(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/yofi/sdk/cachewebviewlib/AssetsLoader;->mDir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 145
    iget-object v1, p0, Lcom/yofi/sdk/cachewebviewlib/AssetsLoader;->mDir:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 146
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_0

    .line 148
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/yofi/sdk/cachewebviewlib/AssetsLoader;->mAssetResSet:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static getInstance()Lcom/yofi/sdk/cachewebviewlib/AssetsLoader;
    .locals 2

    .line 31
    sget-object v0, Lcom/yofi/sdk/cachewebviewlib/AssetsLoader;->assetsLoader:Lcom/yofi/sdk/cachewebviewlib/AssetsLoader;

    if-nez v0, :cond_1

    .line 32
    const-class v0, Lcom/yofi/sdk/cachewebviewlib/AssetsLoader;

    monitor-enter v0

    .line 33
    :try_start_0
    sget-object v1, Lcom/yofi/sdk/cachewebviewlib/AssetsLoader;->assetsLoader:Lcom/yofi/sdk/cachewebviewlib/AssetsLoader;

    if-nez v1, :cond_0

    .line 34
    new-instance v1, Lcom/yofi/sdk/cachewebviewlib/AssetsLoader;

    invoke-direct {v1}, Lcom/yofi/sdk/cachewebviewlib/AssetsLoader;-><init>()V

    sput-object v1, Lcom/yofi/sdk/cachewebviewlib/AssetsLoader;->assetsLoader:Lcom/yofi/sdk/cachewebviewlib/AssetsLoader;

    .line 36
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 38
    :cond_1
    :goto_0
    sget-object v0, Lcom/yofi/sdk/cachewebviewlib/AssetsLoader;->assetsLoader:Lcom/yofi/sdk/cachewebviewlib/AssetsLoader;

    return-object v0
.end method

.method private initResourceNoneRecursion(Ljava/lang/String;)Lcom/yofi/sdk/cachewebviewlib/AssetsLoader;
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dir"
        }
    .end annotation

    .line 157
    :try_start_0
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 158
    iget-object v1, p0, Lcom/yofi/sdk/cachewebviewlib/AssetsLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 159
    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v1, v4

    .line 160
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 161
    iget-object v6, p0, Lcom/yofi/sdk/cachewebviewlib/AssetsLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 162
    array-length v6, v6

    if-nez v6, :cond_0

    .line 163
    invoke-direct {p0, v5}, Lcom/yofi/sdk/cachewebviewlib/AssetsLoader;->addAssetsFile(Ljava/lang/String;)V

    goto :goto_1

    .line 165
    :cond_0
    invoke-virtual {v0, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 168
    :cond_1
    :goto_2
    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_5

    .line 169
    iget-boolean p1, p0, Lcom/yofi/sdk/cachewebviewlib/AssetsLoader;->mCleared:Z

    if-eqz p1, :cond_2

    goto :goto_5

    .line 172
    :cond_2
    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 173
    iget-object v1, p0, Lcom/yofi/sdk/cachewebviewlib/AssetsLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 174
    array-length v2, v1

    if-nez v2, :cond_3

    .line 175
    invoke-direct {p0, p1}, Lcom/yofi/sdk/cachewebviewlib/AssetsLoader;->addAssetsFile(Ljava/lang/String;)V

    goto :goto_2

    .line 177
    :cond_3
    array-length v2, v1

    move v4, v3

    :goto_3
    if-ge v4, v2, :cond_1

    aget-object v5, v1, v4

    .line 178
    iget-object v6, p0, Lcom/yofi/sdk/cachewebviewlib/AssetsLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 179
    array-length v6, v6

    if-nez v6, :cond_4

    .line 180
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/yofi/sdk/cachewebviewlib/AssetsLoader;->addAssetsFile(Ljava/lang/String;)V

    goto :goto_4

    .line 182
    :cond_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :catch_0
    :cond_5
    :goto_5
    return-object p0
.end method


# virtual methods
.method public clear()V
    .locals 1

    const/4 v0, 0x1

    .line 116
    iput-boolean v0, p0, Lcom/yofi/sdk/cachewebviewlib/AssetsLoader;->mCleared:Z

    .line 117
    iget-object v0, p0, Lcom/yofi/sdk/cachewebviewlib/AssetsLoader;->mAssetResSet:Ljava/util/concurrent/CopyOnWriteArraySet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/yofi/sdk/cachewebviewlib/AssetsLoader;->mAssetResSet:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->clear()V

    :cond_0
    return-void
.end method

.method public getAssetFileStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "path"
        }
    .end annotation

    .line 194
    :try_start_0
    iget-object v0, p0, Lcom/yofi/sdk/cachewebviewlib/AssetsLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getFromAssets(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fileName"
        }
    .end annotation

    .line 125
    :try_start_0
    new-instance v0, Ljava/io/InputStreamReader;

    iget-object v1, p0, Lcom/yofi/sdk/cachewebviewlib/AssetsLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    const-string v1, "ISO_8859_1"

    invoke-direct {v0, p1, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 126
    new-instance p1, Ljava/io/BufferedReader;

    invoke-direct {p1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 128
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 129
    :goto_0
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 130
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 132
    :cond_0
    invoke-virtual {v0}, Ljava/io/InputStreamReader;->close()V

    .line 133
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V

    .line 134
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 136
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getResByUrl(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "url"
        }
    .end annotation

    .line 71
    invoke-virtual {p0, p1}, Lcom/yofi/sdk/cachewebviewlib/AssetsLoader;->getUrlPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 72
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 75
    :cond_0
    iget-boolean v0, p0, Lcom/yofi/sdk/cachewebviewlib/AssetsLoader;->mIsSuffixMod:Z

    if-nez v0, :cond_2

    .line 76
    iget-object v0, p0, Lcom/yofi/sdk/cachewebviewlib/AssetsLoader;->mDir:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 77
    invoke-virtual {p0, p1}, Lcom/yofi/sdk/cachewebviewlib/AssetsLoader;->getAssetFileStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    return-object p1

    .line 79
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/yofi/sdk/cachewebviewlib/AssetsLoader;->mDir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/yofi/sdk/cachewebviewlib/AssetsLoader;->getAssetFileStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    return-object p1

    .line 82
    :cond_2
    iget-object v0, p0, Lcom/yofi/sdk/cachewebviewlib/AssetsLoader;->mAssetResSet:Ljava/util/concurrent/CopyOnWriteArraySet;

    if-eqz v0, :cond_5

    .line 83
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 84
    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 85
    iget-object p1, p0, Lcom/yofi/sdk/cachewebviewlib/AssetsLoader;->mDir:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 86
    invoke-virtual {p0, v2}, Lcom/yofi/sdk/cachewebviewlib/AssetsLoader;->getAssetFileStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    return-object p1

    .line 88
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/yofi/sdk/cachewebviewlib/AssetsLoader;->mDir:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/yofi/sdk/cachewebviewlib/AssetsLoader;->getAssetFileStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    return-object p1

    :cond_5
    return-object v1
.end method

.method public getUrlPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "url"
        }
    .end annotation

    const-string v0, ""

    .line 56
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 57
    invoke-virtual {v1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string p1, "/"

    .line 58
    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 59
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    return-object v0

    .line 62
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 65
    invoke-virtual {p1}, Ljava/net/MalformedURLException;->printStackTrace()V

    :cond_1
    :goto_0
    return-object v0
.end method

.method public init(Landroid/content/Context;)Lcom/yofi/sdk/cachewebviewlib/AssetsLoader;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 46
    iput-object p1, p0, Lcom/yofi/sdk/cachewebviewlib/AssetsLoader;->mContext:Landroid/content/Context;

    .line 47
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object p1, p0, Lcom/yofi/sdk/cachewebviewlib/AssetsLoader;->mAssetResSet:Ljava/util/concurrent/CopyOnWriteArraySet;

    const/4 p1, 0x0

    .line 49
    iput-boolean p1, p0, Lcom/yofi/sdk/cachewebviewlib/AssetsLoader;->mCleared:Z

    return-object p0
.end method

.method public initData()Lcom/yofi/sdk/cachewebviewlib/AssetsLoader;
    .locals 2

    .line 101
    iget-boolean v0, p0, Lcom/yofi/sdk/cachewebviewlib/AssetsLoader;->mIsSuffixMod:Z

    if-nez v0, :cond_0

    return-object p0

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/yofi/sdk/cachewebviewlib/AssetsLoader;->mAssetResSet:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 105
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/yofi/sdk/cachewebviewlib/AssetsLoader$1;

    invoke-direct {v1, p0}, Lcom/yofi/sdk/cachewebviewlib/AssetsLoader$1;-><init>(Lcom/yofi/sdk/cachewebviewlib/AssetsLoader;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 110
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_1
    return-object p0
.end method

.method public isAssetsSuffixMod(Z)Lcom/yofi/sdk/cachewebviewlib/AssetsLoader;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "suffixMod"
        }
    .end annotation

    .line 42
    iput-boolean p1, p0, Lcom/yofi/sdk/cachewebviewlib/AssetsLoader;->mIsSuffixMod:Z

    return-object p0
.end method

.method public setDir(Ljava/lang/String;)Lcom/yofi/sdk/cachewebviewlib/AssetsLoader;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "dir"
        }
    .end annotation

    .line 96
    iput-object p1, p0, Lcom/yofi/sdk/cachewebviewlib/AssetsLoader;->mDir:Ljava/lang/String;

    return-object p0
.end method
