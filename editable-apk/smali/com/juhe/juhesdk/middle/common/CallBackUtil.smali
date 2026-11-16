.class public abstract Lcom/juhe/juhesdk/middle/common/CallBackUtil;
.super Ljava/lang/Object;
.source "CallBackUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/juhe/juhesdk/middle/common/CallBackUtil$CallBackFile;,
        Lcom/juhe/juhesdk/middle/common/CallBackUtil$CallBackBitmap;,
        Lcom/juhe/juhesdk/middle/common/CallBackUtil$CallBackString;,
        Lcom/juhe/juhesdk/middle/common/CallBackUtil$CallBackDefault;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static mMainHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 22
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/juhe/juhesdk/middle/common/CallBackUtil;->mMainHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 0

    .line 21
    invoke-static {p0}, Lcom/juhe/juhesdk/middle/common/CallBackUtil;->getRetString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getRetString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "is"
        }
    .end annotation

    .line 239
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    const-string v2, "utf-8"

    invoke-direct {v1, p0, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 240
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 242
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 243
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 245
    :cond_0
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 246
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static final input2byte(Ljava/io/InputStream;)[B
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inStream"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 156
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x64

    new-array v2, v1, [B

    :goto_0
    const/4 v3, 0x0

    .line 159
    invoke-virtual {p0, v2, v3, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    if-lez v4, :cond_0

    .line 160
    invoke-virtual {v0, v2, v3, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 162
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method onError(Lcom/juhe/juhesdk/middle/common/RealResponse;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "response"
        }
    .end annotation

    .line 30
    iget-object v0, p1, Lcom/juhe/juhesdk/middle/common/RealResponse;->inputStream:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 31
    iget-object v0, p1, Lcom/juhe/juhesdk/middle/common/RealResponse;->inputStream:Ljava/io/InputStream;

    invoke-static {v0}, Lcom/juhe/juhesdk/middle/common/CallBackUtil;->getRetString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 32
    :cond_0
    iget-object v0, p1, Lcom/juhe/juhesdk/middle/common/RealResponse;->errorStream:Ljava/io/InputStream;

    if-eqz v0, :cond_1

    .line 33
    iget-object v0, p1, Lcom/juhe/juhesdk/middle/common/RealResponse;->errorStream:Ljava/io/InputStream;

    invoke-static {v0}, Lcom/juhe/juhesdk/middle/common/CallBackUtil;->getRetString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 34
    :cond_1
    iget-object v0, p1, Lcom/juhe/juhesdk/middle/common/RealResponse;->exception:Ljava/lang/Exception;

    if-eqz v0, :cond_2

    .line 35
    iget-object v0, p1, Lcom/juhe/juhesdk/middle/common/RealResponse;->exception:Ljava/lang/Exception;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string v0, ""

    .line 39
    :goto_0
    sget-object v1, Lcom/juhe/juhesdk/middle/common/CallBackUtil;->mMainHandler:Landroid/os/Handler;

    new-instance v2, Lcom/juhe/juhesdk/middle/common/CallBackUtil$1;

    invoke-direct {v2, p0, p1, v0}, Lcom/juhe/juhesdk/middle/common/CallBackUtil$1;-><init>(Lcom/juhe/juhesdk/middle/common/CallBackUtil;Lcom/juhe/juhesdk/middle/common/RealResponse;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public abstract onFailure(ILjava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "code",
            "errorMessage"
        }
    .end annotation
.end method

.method public abstract onParseResponse(Lcom/juhe/juhesdk/middle/common/RealResponse;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "response"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/juhe/juhesdk/middle/common/RealResponse;",
            ")TT;"
        }
    .end annotation
.end method

.method public onProgress(FJ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "progress",
            "total"
        }
    .end annotation

    return-void
.end method

.method public abstract onResponse(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "response"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method onSeccess(Lcom/juhe/juhesdk/middle/common/RealResponse;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "response"
        }
    .end annotation

    .line 47
    invoke-virtual {p0, p1}, Lcom/juhe/juhesdk/middle/common/CallBackUtil;->onParseResponse(Lcom/juhe/juhesdk/middle/common/RealResponse;)Ljava/lang/Object;

    move-result-object p1

    .line 48
    sget-object v0, Lcom/juhe/juhesdk/middle/common/CallBackUtil;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/juhe/juhesdk/middle/common/CallBackUtil$2;

    invoke-direct {v1, p0, p1}, Lcom/juhe/juhesdk/middle/common/CallBackUtil$2;-><init>(Lcom/juhe/juhesdk/middle/common/CallBackUtil;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
