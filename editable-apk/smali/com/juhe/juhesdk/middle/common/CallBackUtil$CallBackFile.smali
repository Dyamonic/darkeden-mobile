.class public abstract Lcom/juhe/juhesdk/middle/common/CallBackUtil$CallBackFile;
.super Lcom/juhe/juhesdk/middle/common/CallBackUtil;
.source "CallBackUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/juhe/juhesdk/middle/common/CallBackUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "CallBackFile"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/juhe/juhesdk/middle/common/CallBackUtil<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field private final mDestFileDir:Ljava/lang/String;

.field private final mdestFileName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "destFileDir",
            "destFileName"
        }
    .end annotation

    .line 179
    invoke-direct {p0}, Lcom/juhe/juhesdk/middle/common/CallBackUtil;-><init>()V

    .line 180
    iput-object p1, p0, Lcom/juhe/juhesdk/middle/common/CallBackUtil$CallBackFile;->mDestFileDir:Ljava/lang/String;

    .line 181
    iput-object p2, p0, Lcom/juhe/juhesdk/middle/common/CallBackUtil$CallBackFile;->mdestFileName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onParseResponse(Lcom/juhe/juhesdk/middle/common/RealResponse;)Ljava/io/File;
    .locals 17
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "response"
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v0, p1

    const/16 v1, 0x2000

    new-array v8, v1, [B

    .line 191
    :try_start_0
    iget-object v10, v0, Lcom/juhe/juhesdk/middle/common/RealResponse;->inputStream:Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 192
    :try_start_1
    iget-wide v11, v0, Lcom/juhe/juhesdk/middle/common/RealResponse;->contentLength:J

    const-wide/16 v0, 0x0

    .line 196
    new-instance v2, Ljava/io/File;

    iget-object v3, v7, Lcom/juhe/juhesdk/middle/common/CallBackUtil$CallBackFile;->mDestFileDir:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 197
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 198
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 200
    :cond_0
    new-instance v13, Ljava/io/File;

    iget-object v3, v7, Lcom/juhe/juhesdk/middle/common/CallBackUtil$CallBackFile;->mdestFileName:Ljava/lang/String;

    invoke-direct {v13, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 201
    new-instance v14, Ljava/io/FileOutputStream;

    invoke-direct {v14, v13}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 202
    :goto_0
    :try_start_2
    invoke-virtual {v10, v8}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    int-to-long v3, v2

    add-long v15, v0, v3

    const/4 v0, 0x0

    .line 204
    invoke-virtual {v14, v8, v0, v2}, Ljava/io/FileOutputStream;->write([BII)V

    .line 206
    sget-object v0, Lcom/juhe/juhesdk/middle/common/CallBackUtil$CallBackFile;->mMainHandler:Landroid/os/Handler;

    new-instance v5, Lcom/juhe/juhesdk/middle/common/CallBackUtil$CallBackFile$1;

    move-object v1, v5

    move-object/from16 v2, p0

    move-wide v3, v15

    move-object v9, v5

    move-wide v5, v11

    invoke-direct/range {v1 .. v6}, Lcom/juhe/juhesdk/middle/common/CallBackUtil$CallBackFile$1;-><init>(Lcom/juhe/juhesdk/middle/common/CallBackUtil$CallBackFile;JJ)V

    invoke-virtual {v0, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-wide v0, v15

    goto :goto_0

    .line 213
    :cond_1
    invoke-virtual {v14}, Ljava/io/FileOutputStream;->flush()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 221
    :try_start_3
    invoke-virtual {v14}, Ljava/io/FileOutputStream;->close()V

    if-eqz v10, :cond_2

    .line 222
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 226
    :catch_0
    :cond_2
    :try_start_4
    invoke-virtual {v14}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    return-object v13

    :catch_2
    move-exception v0

    goto :goto_2

    :catchall_0
    move-exception v0

    const/4 v9, 0x0

    goto :goto_3

    :catch_3
    move-exception v0

    goto :goto_1

    :catchall_1
    move-exception v0

    const/4 v9, 0x0

    const/4 v10, 0x0

    goto :goto_3

    :catch_4
    move-exception v0

    const/4 v10, 0x0

    :goto_1
    const/4 v14, 0x0

    .line 218
    :goto_2
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 221
    :try_start_6
    invoke-virtual {v14}, Ljava/io/FileOutputStream;->close()V

    if-eqz v10, :cond_3

    .line 222
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    :catch_5
    :cond_3
    if-eqz v14, :cond_4

    .line 226
    :try_start_7
    invoke-virtual {v14}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    :catch_6
    :cond_4
    const/4 v1, 0x0

    return-object v1

    :catchall_2
    move-exception v0

    move-object v9, v14

    .line 221
    :goto_3
    :try_start_8
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V

    if-eqz v10, :cond_5

    .line 222
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    :catch_7
    :cond_5
    if-eqz v9, :cond_6

    .line 226
    :try_start_9
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8

    .line 230
    :catch_8
    :cond_6
    throw v0
.end method

.method public bridge synthetic onParseResponse(Lcom/juhe/juhesdk/middle/common/RealResponse;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "response"
        }
    .end annotation

    .line 169
    invoke-virtual {p0, p1}, Lcom/juhe/juhesdk/middle/common/CallBackUtil$CallBackFile;->onParseResponse(Lcom/juhe/juhesdk/middle/common/RealResponse;)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method
