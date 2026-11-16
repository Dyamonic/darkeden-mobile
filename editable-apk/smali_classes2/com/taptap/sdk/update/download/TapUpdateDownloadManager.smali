.class public final Lcom/taptap/sdk/update/download/TapUpdateDownloadManager;
.super Ljava/lang/Object;
.source "TapUpdateDownloadManager.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\t\u001a\u00020\nJ\u000e\u0010\u000b\u001a\u00020\n2\u0006\u0010\u000c\u001a\u00020\rJ\u0012\u0010\u000e\u001a\u00020\u00082\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0002J,\u0010\u0011\u001a\u00020\n2\u0006\u0010\u000c\u001a\u00020\r2\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u00062\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u00062\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0015J\u0010\u0010\u0016\u001a\u00020\u00062\u0006\u0010\u000c\u001a\u00020\rH\u0002J\u001e\u0010\u0017\u001a\u00020\n2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0018\u001a\u00020\u0008J\u0010\u0010\u0019\u001a\u00020\n2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\rJ\u0006\u0010\u001a\u001a\u00020\nR\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/taptap/sdk/update/download/TapUpdateDownloadManager;",
        "",
        "()V",
        "currentDownloadTask",
        "Lcom/taptap/sdk/update/download/DownloadTask;",
        "defaultSaveRootPath",
        "",
        "prepared",
        "",
        "cancelDownload",
        "",
        "clearCache",
        "context",
        "Landroid/content/Context;",
        "deleteFiles",
        "file",
        "Ljava/io/File;",
        "download",
        "url",
        "fileName",
        "listener",
        "Lcom/taptap/sdk/update/download/TapUpdateDownloadListener;",
        "getDefaultSaveRootPath",
        "installAPK",
        "isManualClick",
        "prepareDownload",
        "restartTask",
        "tap-update_release"
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
.field public static final INSTANCE:Lcom/taptap/sdk/update/download/TapUpdateDownloadManager;

.field private static currentDownloadTask:Lcom/taptap/sdk/update/download/DownloadTask;

.field private static defaultSaveRootPath:Ljava/lang/String;

.field private static prepared:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/taptap/sdk/update/download/TapUpdateDownloadManager;

    invoke-direct {v0}, Lcom/taptap/sdk/update/download/TapUpdateDownloadManager;-><init>()V

    sput-object v0, Lcom/taptap/sdk/update/download/TapUpdateDownloadManager;->INSTANCE:Lcom/taptap/sdk/update/download/TapUpdateDownloadManager;

    const-string v0, ""

    .line 21
    sput-object v0, Lcom/taptap/sdk/update/download/TapUpdateDownloadManager;->defaultSaveRootPath:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final deleteFiles(Ljava/io/File;)Z
    .locals 4

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    .line 207
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 208
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_1

    return v0

    :cond_1
    const/4 v0, 0x0

    .line 209
    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_2

    aget-object v3, v1, v0

    .line 210
    invoke-direct {p0, v3}, Lcom/taptap/sdk/update/download/TapUpdateDownloadManager;->deleteFiles(Ljava/io/File;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 213
    :cond_2
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result p1

    return p1
.end method

.method private final getDefaultSaveRootPath(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 217
    sget-object v0, Lcom/taptap/sdk/update/download/TapUpdateDownloadManager;->defaultSaveRootPath:Ljava/lang/String;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 218
    invoke-virtual {p1}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 220
    invoke-virtual {p1, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    .line 223
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    :cond_1
    if-nez v1, :cond_2

    const-string v1, ""

    :cond_2
    sput-object v1, Lcom/taptap/sdk/update/download/TapUpdateDownloadManager;->defaultSaveRootPath:Ljava/lang/String;

    .line 224
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/taptap/sdk/update/download/TapUpdateDownloadManager;->defaultSaveRootPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "taptap"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "services"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "update"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/taptap/sdk/update/download/TapUpdateDownloadManager;->defaultSaveRootPath:Ljava/lang/String;

    .line 226
    :cond_3
    sget-object p1, Lcom/taptap/sdk/update/download/TapUpdateDownloadManager;->defaultSaveRootPath:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public final cancelDownload()V
    .locals 1

    const/4 v0, 0x0

    .line 162
    sput-object v0, Lcom/taptap/sdk/update/download/TapUpdateDownloadManager;->currentDownloadTask:Lcom/taptap/sdk/update/download/DownloadTask;

    .line 163
    invoke-static {}, Lcom/taptap/sdk/update/download/OkDownload;->with()Lcom/taptap/sdk/update/download/OkDownload;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taptap/sdk/update/download/OkDownload;->downloadDispatcher()Lcom/taptap/sdk/update/download/core/dispatcher/DownloadDispatcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taptap/sdk/update/download/core/dispatcher/DownloadDispatcher;->cancelAll()V

    return-void
.end method

.method public final clearCache(Landroid/content/Context;)V
    .locals 3

    const-string v0, "TapUpdateLog"

    const-string v1, "context"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 192
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {p0, p1}, Lcom/taptap/sdk/update/download/TapUpdateDownloadManager;->getDefaultSaveRootPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 193
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 194
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clearCache "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/taptap/sdk/kit/internal/TapLogger;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    invoke-direct {p0, v1}, Lcom/taptap/sdk/update/download/TapUpdateDownloadManager;->deleteFiles(Ljava/io/File;)Z

    move-result p1

    .line 196
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clearCache result "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/taptap/sdk/kit/internal/TapLogger;->logd(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 199
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clearCache failed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/taptap/sdk/kit/internal/TapLogger;->logd(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public final download(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/taptap/sdk/update/download/TapUpdateDownloadListener;)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    invoke-virtual {p0, p1}, Lcom/taptap/sdk/update/download/TapUpdateDownloadManager;->prepareDownload(Landroid/content/Context;)V

    .line 44
    sget-object v0, Lcom/taptap/sdk/update/download/TapUpdateDownloadManager;->currentDownloadTask:Lcom/taptap/sdk/update/download/DownloadTask;

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    .line 46
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/List;

    .line 48
    invoke-static {}, Lcom/taptap/sdk/kit/internal/utils/PlatformXUA;->getTrackUA()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "XUA"

    .line 49
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    new-instance v1, Lcom/taptap/sdk/update/download/DownloadTask$Builder;

    .line 53
    invoke-direct {p0, p1}, Lcom/taptap/sdk/update/download/TapUpdateDownloadManager;->getDefaultSaveRootPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 51
    invoke-direct {v1, p2, p1, p3}, Lcom/taptap/sdk/update/download/DownloadTask$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x3e8

    .line 56
    invoke-virtual {v1, p1}, Lcom/taptap/sdk/update/download/DownloadTask$Builder;->setMinIntervalMillisCallbackProcess(I)Lcom/taptap/sdk/update/download/DownloadTask$Builder;

    move-result-object p1

    .line 57
    invoke-virtual {p1, v0}, Lcom/taptap/sdk/update/download/DownloadTask$Builder;->setHeaderMapFields(Ljava/util/Map;)Lcom/taptap/sdk/update/download/DownloadTask$Builder;

    move-result-object p1

    .line 58
    invoke-virtual {p1}, Lcom/taptap/sdk/update/download/DownloadTask$Builder;->build()Lcom/taptap/sdk/update/download/DownloadTask;

    move-result-object p1

    const-string p3, "Builder(\n               \u2026\n                .build()"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    invoke-virtual {p1, p2}, Lcom/taptap/sdk/update/download/DownloadTask;->setTag(Ljava/lang/Object;)V

    .line 60
    sput-object p1, Lcom/taptap/sdk/update/download/TapUpdateDownloadManager;->currentDownloadTask:Lcom/taptap/sdk/update/download/DownloadTask;

    .line 61
    new-instance p2, Lcom/taptap/sdk/update/download/TapUpdateDownloadManager$download$1;

    invoke-direct {p2, p4}, Lcom/taptap/sdk/update/download/TapUpdateDownloadManager$download$1;-><init>(Lcom/taptap/sdk/update/download/TapUpdateDownloadListener;)V

    check-cast p2, Lcom/taptap/sdk/update/download/DownloadListener;

    invoke-virtual {p1, p2}, Lcom/taptap/sdk/update/download/DownloadTask;->enqueue(Lcom/taptap/sdk/update/download/DownloadListener;)V

    goto :goto_0

    .line 151
    :cond_0
    invoke-virtual {p0}, Lcom/taptap/sdk/update/download/TapUpdateDownloadManager;->restartTask()V

    :goto_0
    return-void
.end method

.method public final installAPK(Landroid/content/Context;Ljava/io/File;Z)V
    .locals 3

    const-string v0, "TapUpdateLog"

    const-string v1, "context"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "file"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 167
    sget-object v1, Lcom/taptap/sdk/update/internal/UpdateTracker;->INSTANCE:Lcom/taptap/sdk/update/internal/UpdateTracker;

    invoke-virtual {v1, p3}, Lcom/taptap/sdk/update/internal/UpdateTracker;->trackInstall(Z)V

    .line 169
    :try_start_0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "installAPK"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Lcom/taptap/sdk/kit/internal/TapLogger;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    new-instance p3, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {p3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 172
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_0

    const v1, 0x10000001

    .line 173
    invoke-virtual {p3, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 176
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".com.taptap.sdk.update.internal.fileProvider"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 174
    invoke-static {p1, v1, p2}, Lcom/taptap/sdk/update/download/core/file/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p2

    const-string v1, "getUriForFile(\n         \u2026   file\n                )"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/high16 v1, 0x10000000

    .line 180
    invoke-virtual {p3, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 181
    invoke-static {p2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p2

    const-string v1, "fromFile(file)"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    const-string v1, "application/vnd.android.package-archive"

    .line 183
    invoke-virtual {p3, p2, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 184
    invoke-virtual {p1, p3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 186
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "installAPK failed "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x4

    const/4 p3, 0x0

    invoke-static {v0, p1, p3, p2, p3}, Lcom/taptap/sdk/kit/internal/TapLogger;->loge$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    :goto_1
    return-void
.end method

.method public final prepareDownload(Landroid/content/Context;)V
    .locals 1

    .line 26
    sget-boolean v0, Lcom/taptap/sdk/update/download/TapUpdateDownloadManager;->prepared:Z

    if-nez v0, :cond_0

    .line 27
    new-instance v0, Lcom/taptap/sdk/update/download/OkDownload$Builder;

    invoke-direct {v0, p1}, Lcom/taptap/sdk/update/download/OkDownload$Builder;-><init>(Landroid/content/Context;)V

    .line 28
    new-instance p1, Lcom/taptap/sdk/update/download/TapUpdateDownloadStrategy;

    invoke-direct {p1}, Lcom/taptap/sdk/update/download/TapUpdateDownloadStrategy;-><init>()V

    check-cast p1, Lcom/taptap/sdk/update/download/core/download/DownloadStrategy;

    invoke-virtual {v0, p1}, Lcom/taptap/sdk/update/download/OkDownload$Builder;->downloadStrategy(Lcom/taptap/sdk/update/download/core/download/DownloadStrategy;)Lcom/taptap/sdk/update/download/OkDownload$Builder;

    move-result-object p1

    const-string v0, "Builder(context)\n       \u2026UpdateDownloadStrategy())"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    :try_start_0
    invoke-virtual {p1}, Lcom/taptap/sdk/update/download/OkDownload$Builder;->build()Lcom/taptap/sdk/update/download/OkDownload;

    move-result-object p1

    invoke-static {p1}, Lcom/taptap/sdk/update/download/OkDownload;->setSingletonInstance(Lcom/taptap/sdk/update/download/OkDownload;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 p1, 0x1

    .line 33
    sput-boolean p1, Lcom/taptap/sdk/update/download/TapUpdateDownloadManager;->prepared:Z

    :cond_0
    return-void
.end method

.method public final restartTask()V
    .locals 2

    .line 156
    sget-object v0, Lcom/taptap/sdk/update/download/TapUpdateDownloadManager;->currentDownloadTask:Lcom/taptap/sdk/update/download/DownloadTask;

    if-eqz v0, :cond_0

    .line 157
    invoke-static {}, Lcom/taptap/sdk/update/download/OkDownload;->with()Lcom/taptap/sdk/update/download/OkDownload;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taptap/sdk/update/download/OkDownload;->downloadDispatcher()Lcom/taptap/sdk/update/download/core/dispatcher/DownloadDispatcher;

    move-result-object v0

    sget-object v1, Lcom/taptap/sdk/update/download/TapUpdateDownloadManager;->currentDownloadTask:Lcom/taptap/sdk/update/download/DownloadTask;

    invoke-virtual {v0, v1}, Lcom/taptap/sdk/update/download/core/dispatcher/DownloadDispatcher;->enqueue(Lcom/taptap/sdk/update/download/DownloadTask;)V

    :cond_0
    return-void
.end method
