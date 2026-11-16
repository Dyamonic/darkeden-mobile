.class public Lcom/taptap/sdk/moment/legacy/utils/NetSaveImageHelper;
.super Ljava/lang/Object;
.source "NetSaveImageHelper.java"


# static fields
.field public static final CONNECTION_TIMEOUT:I = 0x1770

.field private static final MEDIA_DIR:Ljava/lang/String; = "Moment_Media"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;Ljava/lang/String;Lcom/taptap/sdk/moment/legacy/utils/SaveImageCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/taptap/sdk/moment/legacy/exception/NetworkException;
        }
    .end annotation

    .line 24
    invoke-static {p0, p1, p2}, Lcom/taptap/sdk/moment/legacy/utils/NetSaveImageHelper;->saveImageToFile(Landroid/content/Context;Ljava/lang/String;Lcom/taptap/sdk/moment/legacy/utils/SaveImageCallback;)V

    return-void
.end method

.method private static constructorMediaFileDir(Landroid/content/Context;)Ljava/io/File;
    .locals 2

    .line 95
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ""

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 98
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    .line 101
    :goto_0
    new-instance v0, Ljava/io/File;

    const-string v1, "Moment_Media"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_1

    .line 103
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    :cond_1
    return-object v0
.end method

.method private static createDownloadImageUrlConnection(Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/taptap/sdk/moment/legacy/exception/NetworkException;
        }
    .end annotation

    .line 44
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 45
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;

    const/16 v0, 0x1770

    .line 46
    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const/4 v0, 0x1

    .line 47
    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    const/4 v0, 0x0

    .line 48
    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    return-object p0
.end method

.method public static download(Landroid/content/Context;Ljava/lang/String;Lcom/taptap/sdk/moment/legacy/utils/SaveImageCallback;)V
    .locals 1

    .line 31
    new-instance v0, Lcom/taptap/sdk/moment/legacy/utils/NetSaveImageHelper$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/taptap/sdk/moment/legacy/utils/NetSaveImageHelper$1;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/taptap/sdk/moment/legacy/utils/SaveImageCallback;)V

    invoke-static {v0}, Lcom/taptap/sdk/moment/legacy/utils/Async;->runOnPool(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static notifyResult(Lcom/taptap/sdk/moment/legacy/utils/SaveImageCallback;ZLjava/io/File;)V
    .locals 1

    .line 85
    new-instance v0, Lcom/taptap/sdk/moment/legacy/utils/NetSaveImageHelper$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/taptap/sdk/moment/legacy/utils/NetSaveImageHelper$2;-><init>(Lcom/taptap/sdk/moment/legacy/utils/SaveImageCallback;ZLjava/io/File;)V

    invoke-static {v0}, Lcom/taptap/sdk/moment/legacy/utils/Async;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static renameFile(Ljava/io/File;Ljava/io/FileInputStream;)Ljava/io/File;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xa

    new-array v1, v0, [B

    const/4 v2, 0x0

    .line 110
    invoke-virtual {p1, v1, v2, v0}, Ljava/io/FileInputStream;->read([BII)I

    .line 111
    new-instance p1, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    const/16 v3, 0x3e8

    .line 112
    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    invoke-static {v1}, Lcom/taptap/sdk/moment/legacy/entity/ImageSuffix;->readType([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 115
    invoke-virtual {p0}, Ljava/io/File;->deleteOnExit()V

    return-object p1
.end method

.method private static saveImageToFile(Landroid/content/Context;Ljava/lang/String;Lcom/taptap/sdk/moment/legacy/utils/SaveImageCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/taptap/sdk/moment/legacy/exception/NetworkException;
        }
    .end annotation

    .line 53
    invoke-static {p1}, Lcom/taptap/sdk/moment/legacy/utils/NetSaveImageHelper;->createDownloadImageUrlConnection(Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 54
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 55
    invoke-static {p0, v0, p1, p2}, Lcom/taptap/sdk/moment/legacy/utils/NetSaveImageHelper;->writeToFile(Landroid/content/Context;Ljava/io/InputStream;Ljava/lang/String;Lcom/taptap/sdk/moment/legacy/utils/SaveImageCallback;)V

    return-void
.end method

.method private static writeToFile(Landroid/content/Context;Ljava/io/InputStream;Ljava/lang/String;Lcom/taptap/sdk/moment/legacy/utils/SaveImageCallback;)V
    .locals 6

    .line 59
    invoke-static {p0}, Lcom/taptap/sdk/moment/legacy/utils/NetSaveImageHelper;->constructorMediaFileDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    const/16 v0, 0x400

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 65
    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-static {p2}, Lcom/taptap/sdk/moment/legacy/utils/Utils;->encodeToBase64(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v3, p0, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 66
    new-instance p0, Ljava/io/FileOutputStream;

    invoke-direct {p0, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 67
    :goto_0
    :try_start_1
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result p2

    const/4 v4, -0x1

    if-eq p2, v4, :cond_0

    .line 68
    invoke-virtual {p0, v0, v1, p2}, Ljava/io/FileOutputStream;->write([BII)V

    .line 69
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->flush()V

    goto :goto_0

    .line 71
    :cond_0
    new-instance p2, Ljava/io/FileInputStream;

    invoke-direct {p2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 72
    :try_start_2
    invoke-static {v3, p2}, Lcom/taptap/sdk/moment/legacy/utils/NetSaveImageHelper;->renameFile(Ljava/io/File;Ljava/io/FileInputStream;)Ljava/io/File;

    move-result-object v0

    .line 73
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    invoke-static {p3, v3, v0}, Lcom/taptap/sdk/moment/legacy/utils/NetSaveImageHelper;->notifyResult(Lcom/taptap/sdk/moment/legacy/utils/SaveImageCallback;ZLjava/io/File;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 78
    invoke-static {p0}, Lcom/taptap/sdk/moment/legacy/utils/Utils;->closeQuietly(Ljava/io/Closeable;)V

    .line 79
    invoke-static {p2}, Lcom/taptap/sdk/moment/legacy/utils/Utils;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_2

    :catchall_0
    move-exception p3

    move-object v2, p0

    move-object v0, p2

    move-object p2, p3

    goto :goto_4

    :catch_0
    move-exception v0

    move-object v5, v0

    move-object v0, p2

    move-object p2, v5

    goto :goto_1

    :catchall_1
    move-exception p2

    move-object v0, v2

    goto :goto_3

    :catch_1
    move-exception p2

    move-object v0, v2

    goto :goto_1

    :catchall_2
    move-exception p2

    move-object v0, v2

    goto :goto_4

    :catch_2
    move-exception p2

    move-object p0, v2

    move-object v0, p0

    .line 75
    :goto_1
    :try_start_3
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 76
    invoke-static {p3, v1, v2}, Lcom/taptap/sdk/moment/legacy/utils/NetSaveImageHelper;->notifyResult(Lcom/taptap/sdk/moment/legacy/utils/SaveImageCallback;ZLjava/io/File;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 78
    invoke-static {p0}, Lcom/taptap/sdk/moment/legacy/utils/Utils;->closeQuietly(Ljava/io/Closeable;)V

    .line 79
    invoke-static {v0}, Lcom/taptap/sdk/moment/legacy/utils/Utils;->closeQuietly(Ljava/io/Closeable;)V

    .line 80
    :goto_2
    invoke-static {p1}, Lcom/taptap/sdk/moment/legacy/utils/Utils;->closeQuietly(Ljava/io/Closeable;)V

    return-void

    :catchall_3
    move-exception p2

    :goto_3
    move-object v2, p0

    .line 78
    :goto_4
    invoke-static {v2}, Lcom/taptap/sdk/moment/legacy/utils/Utils;->closeQuietly(Ljava/io/Closeable;)V

    .line 79
    invoke-static {v0}, Lcom/taptap/sdk/moment/legacy/utils/Utils;->closeQuietly(Ljava/io/Closeable;)V

    .line 80
    invoke-static {p1}, Lcom/taptap/sdk/moment/legacy/utils/Utils;->closeQuietly(Ljava/io/Closeable;)V

    .line 81
    throw p2
.end method
