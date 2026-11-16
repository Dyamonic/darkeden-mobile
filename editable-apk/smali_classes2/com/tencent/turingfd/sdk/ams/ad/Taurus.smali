.class public Lcom/tencent/turingfd/sdk/ams/ad/Taurus;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const-string v0, "mpdc_"

    .line 1
    invoke-static {v0}, Lcom/tencent/turingfd/sdk/ams/ad/Banana;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/tencent/turingfd/sdk/ams/ad/Carambola;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/turingfd/sdk/ams/ad/Taurus;->a:Ljava/lang/String;

    const-string v0, "mpdc_r_"

    .line 2
    invoke-static {v0}, Lcom/tencent/turingfd/sdk/ams/ad/Banana;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v3, Lcom/tencent/turingfd/sdk/ams/ad/Carambola;->a:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/turingfd/sdk/ams/ad/Taurus;->b:Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 17

    .line 1
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    return-object v2

    .line 4
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v3, 0x40

    .line 7
    :try_start_0
    invoke-virtual {v0, v1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    if-nez v0, :cond_1

    return-object v2

    .line 16
    :cond_1
    iget-object v3, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v3, :cond_7

    .line 17
    iget-object v4, v3, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto/16 :goto_5

    .line 18
    :cond_2
    iget-object v4, v3, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 19
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 22
    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    const-wide/16 v6, -0x1

    .line 27
    :try_start_1
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-wide v8, v6

    .line 34
    :goto_0
    :try_start_2
    invoke-virtual {v5}, Ljava/io/File;->lastModified()J

    move-result-wide v10

    const-wide/16 v12, 0x3e8

    div-long v6, v10, v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 39
    :catchall_1
    iget-object v5, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    const-string v10, ""

    if-nez v5, :cond_3

    move-object v5, v10

    .line 41
    :cond_3
    iget v11, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 44
    iget-wide v12, v0, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    .line 47
    iget-wide v14, v0, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    .line 50
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 52
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v2, 0x0

    move-object/from16 p0, v10

    if-eqz v0, :cond_4

    array-length v10, v0

    if-lez v10, :cond_4

    .line 53
    aget-object v0, v0, v2

    .line 56
    :try_start_3
    new-instance v10, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v0

    invoke-direct {v10, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :try_start_4
    const-string v0, "X.509"

    .line 57
    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 58
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/turingfd/sdk/ams/ad/Norma;->a([B)Ljava/lang/String;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v0

    move-object/from16 v16, v10

    goto :goto_1

    :catchall_3
    move-exception v0

    const/16 v16, 0x0

    .line 64
    :goto_1
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    move-object/from16 v0, p0

    move-object/from16 v10, v16

    .line 63
    :goto_2
    invoke-static {v10}, Lcom/tencent/turingfd/sdk/ams/ad/Auriga;->a(Ljava/io/Closeable;)V

    goto :goto_3

    :catchall_4
    move-exception v0

    move-object v1, v0

    .line 67
    invoke-static/range {v16 .. v16}, Lcom/tencent/turingfd/sdk/ams/ad/Auriga;->a(Ljava/io/Closeable;)V

    .line 68
    throw v1

    :cond_4
    move-object/from16 v0, p0

    .line 71
    :goto_3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 73
    :try_start_6
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v10}, Lcom/tencent/turingfd/sdk/ams/ad/UrsaMinor;->a(Ljava/io/File;)Ljava/util/List;

    move-result-object v4

    .line 74
    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_6

    .line 75
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    if-nez v2, :cond_5

    move-object/from16 v10, p0

    goto :goto_4

    :cond_5
    move-object v10, v2

    :goto_4
    move-object v0, v10

    .line 77
    :catchall_5
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_7
    :goto_5
    move-object v1, v2

    return-object v1

    :catchall_6
    move-object v1, v2

    return-object v1
.end method

.method public static declared-synchronized a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 12

    const-class v0, Lcom/tencent/turingfd/sdk/ams/ad/Taurus;

    monitor-enter v0

    .line 78
    :try_start_0
    invoke-static {p0}, Lcom/tencent/turingfd/sdk/ams/ad/Taurus;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string p0, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_7

    .line 79
    monitor-exit v0

    return-object p0

    .line 80
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_7

    const/4 v3, 0x0

    :try_start_2
    const-string v4, "MD5"

    .line 81
    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v4

    .line 82
    invoke-virtual {v4, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 83
    invoke-virtual {v4}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_7

    goto :goto_0

    :catch_0
    move-object v2, v3

    .line 84
    :goto_0
    :try_start_3
    invoke-static {v2}, Lcom/tencent/turingfd/sdk/ams/ad/Damson;->a([B)Ljava/lang/String;

    move-result-object v2

    const-string v4, "turingfd"

    const/4 v5, 0x0

    .line 85
    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v4

    if-nez v4, :cond_1

    move-object v6, v3

    goto :goto_1

    .line 87
    :cond_1
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v4, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :goto_1
    if-nez v6, :cond_2

    :goto_2
    move-object v4, v3

    goto/16 :goto_5

    .line 88
    :cond_2
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, ""

    goto/16 :goto_5

    .line 89
    :cond_3
    invoke-virtual {v6}, Ljava/io/File;->isFile()Z

    move-result v4

    if-nez v4, :cond_4

    .line 90
    invoke-static {v6}, Lcom/tencent/turingfd/sdk/ams/ad/strictfp;->a(Ljava/io/File;)Z

    const-string v4, ""

    goto :goto_5

    .line 96
    :cond_4
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_7

    .line 99
    :try_start_4
    new-instance v7, Ljava/io/RandomAccessFile;

    const-string v8, "rw"

    invoke-direct {v7, v6, v8}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 100
    :try_start_5
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 101
    :try_start_6
    invoke-virtual {v6}, Ljava/nio/channels/FileChannel;->lock()Ljava/nio/channels/FileLock;

    move-result-object v8
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    const/16 v9, 0x20

    .line 102
    :try_start_7
    invoke-static {v9}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v9

    .line 104
    :goto_3
    invoke-virtual {v6, v9}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v10

    if-lez v10, :cond_5

    .line 105
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v11

    invoke-virtual {v4, v11, v5, v10}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_3

    .line 107
    :cond_5
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v9
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    if-eqz v8, :cond_6

    .line 112
    :try_start_8
    invoke-virtual {v8}, Ljava/nio/channels/FileLock;->isValid()Z

    move-result v10
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_7

    if-eqz v10, :cond_6

    .line 114
    :try_start_9
    invoke-virtual {v8}, Ljava/nio/channels/FileLock;->release()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_7

    .line 118
    :catch_1
    :cond_6
    :try_start_a
    invoke-static {v6}, Lcom/tencent/turingfd/sdk/ams/ad/Auriga;->a(Ljava/io/Closeable;)V

    .line 119
    invoke-static {v7}, Lcom/tencent/turingfd/sdk/ams/ad/Auriga;->a(Ljava/io/Closeable;)V

    .line 120
    invoke-static {v4}, Lcom/tencent/turingfd/sdk/ams/ad/Auriga;->a(Ljava/io/Closeable;)V

    move-object v4, v9

    goto :goto_5

    :catchall_0
    move-object v8, v3

    goto :goto_4

    :catchall_1
    move-object v6, v3

    move-object v8, v6

    goto :goto_4

    :catchall_2
    move-object v6, v3

    move-object v7, v6

    move-object v8, v7

    :catchall_3
    :goto_4
    if-eqz v8, :cond_7

    .line 121
    invoke-virtual {v8}, Ljava/nio/channels/FileLock;->isValid()Z

    move-result v9
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_7

    if-eqz v9, :cond_7

    .line 123
    :try_start_b
    invoke-virtual {v8}, Ljava/nio/channels/FileLock;->release()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    .line 127
    :catch_2
    :cond_7
    :try_start_c
    invoke-static {v6}, Lcom/tencent/turingfd/sdk/ams/ad/Auriga;->a(Ljava/io/Closeable;)V

    .line 128
    invoke-static {v7}, Lcom/tencent/turingfd/sdk/ams/ad/Auriga;->a(Ljava/io/Closeable;)V

    .line 129
    invoke-static {v4}, Lcom/tencent/turingfd/sdk/ams/ad/Auriga;->a(Ljava/io/Closeable;)V

    goto :goto_2

    :goto_5
    if-nez v4, :cond_8

    const-string p0, ""
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_7

    .line 130
    monitor-exit v0

    return-object p0

    .line 133
    :cond_8
    :try_start_d
    invoke-static {v4, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_9

    const-string p0, ""
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    monitor-exit v0

    return-object p0

    :cond_9
    :try_start_e
    const-string v4, "turingfd"

    .line 134
    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p0

    if-nez p0, :cond_a

    move-object v4, v3

    goto :goto_6

    .line 136
    :cond_a
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_7

    :goto_6
    if-nez v4, :cond_b

    goto :goto_9

    .line 137
    :cond_b
    :try_start_f
    new-instance p0, Ljava/io/RandomAccessFile;

    const-string p1, "rw"

    invoke-direct {p0, v4, p1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    .line 138
    :try_start_10
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p1
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    .line 139
    :try_start_11
    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->lock()Ljava/nio/channels/FileLock;

    move-result-object v3

    .line 140
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 141
    array-length v4, v2

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 142
    invoke-virtual {v4, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 143
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 144
    :goto_7
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v5

    if-eqz v5, :cond_c

    .line 145
    invoke-virtual {p1, v4}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    goto :goto_7

    .line 147
    :cond_c
    array-length v2, v2

    int-to-long v4, v2

    invoke-virtual {p1, v4, v5}, Ljava/nio/channels/FileChannel;->truncate(J)Ljava/nio/channels/FileChannel;
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_6

    if-eqz v3, :cond_d

    .line 151
    :try_start_12
    invoke-virtual {v3}, Ljava/nio/channels/FileLock;->isValid()Z

    move-result v2
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_7

    if-eqz v2, :cond_d

    .line 153
    :try_start_13
    invoke-virtual {v3}, Ljava/nio/channels/FileLock;->release()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_3
    .catchall {:try_start_13 .. :try_end_13} :catchall_7

    .line 157
    :catch_3
    :cond_d
    :try_start_14
    invoke-static {p1}, Lcom/tencent/turingfd/sdk/ams/ad/Auriga;->a(Ljava/io/Closeable;)V

    .line 158
    invoke-static {p0}, Lcom/tencent/turingfd/sdk/ams/ad/Auriga;->a(Ljava/io/Closeable;)V

    goto :goto_9

    :catchall_4
    move-object p1, v3

    goto :goto_8

    :catchall_5
    move-object p0, v3

    move-object p1, p0

    :catchall_6
    :goto_8
    if-eqz v3, :cond_e

    .line 159
    invoke-virtual {v3}, Ljava/nio/channels/FileLock;->isValid()Z

    move-result v2
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_7

    if-eqz v2, :cond_e

    .line 161
    :try_start_15
    invoke-virtual {v3}, Ljava/nio/channels/FileLock;->release()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_4
    .catchall {:try_start_15 .. :try_end_15} :catchall_7

    .line 165
    :catch_4
    :cond_e
    :try_start_16
    invoke-static {p1}, Lcom/tencent/turingfd/sdk/ams/ad/Auriga;->a(Ljava/io/Closeable;)V

    .line 166
    invoke-static {p0}, Lcom/tencent/turingfd/sdk/ams/ad/Auriga;->a(Ljava/io/Closeable;)V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_7

    :goto_9
    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception p0

    monitor-exit v0

    throw p0
.end method
