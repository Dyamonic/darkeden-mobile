.class public Lcom/tencent/turingfd/sdk/ams/ad/extends;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/turingfd/sdk/ams/ad/extends$do;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/lang/String;

.field public static final c:Ljava/lang/String;

.field public static final d:Ljava/lang/String;

.field public static final e:Ljava/lang/String;

.field public static f:J

.field public static final g:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Lcom/tencent/turingfd/sdk/ams/ad/finally;->b:[I

    invoke-static {v0}, Lcom/tencent/turingfd/sdk/ams/ad/finally;->a([I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/turingfd/sdk/ams/ad/extends;->a:Ljava/lang/String;

    .line 2
    sget-object v0, Lcom/tencent/turingfd/sdk/ams/ad/finally;->c:[I

    invoke-static {v0}, Lcom/tencent/turingfd/sdk/ams/ad/finally;->a([I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/turingfd/sdk/ams/ad/extends;->b:Ljava/lang/String;

    .line 3
    sget-object v0, Lcom/tencent/turingfd/sdk/ams/ad/finally;->d:[I

    invoke-static {v0}, Lcom/tencent/turingfd/sdk/ams/ad/finally;->a([I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/turingfd/sdk/ams/ad/extends;->c:Ljava/lang/String;

    .line 4
    sget-object v0, Lcom/tencent/turingfd/sdk/ams/ad/finally;->e:[I

    invoke-static {v0}, Lcom/tencent/turingfd/sdk/ams/ad/finally;->a([I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/turingfd/sdk/ams/ad/extends;->d:Ljava/lang/String;

    .line 5
    sget-object v0, Lcom/tencent/turingfd/sdk/ams/ad/finally;->f:[I

    invoke-static {v0}, Lcom/tencent/turingfd/sdk/ams/ad/finally;->a([I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/turingfd/sdk/ams/ad/extends;->e:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 10
    sput-wide v0, Lcom/tencent/turingfd/sdk/ams/ad/extends;->f:J

    const-string v0, "^/data/user/\\d+$"

    const-string v1, "^/data/data$"

    .line 12
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/turingfd/sdk/ams/ad/extends;->g:[Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 17

    move-object/from16 v1, p0

    .line 33
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 36
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 37
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    const-string v6, "/data/data/"

    const-string v7, "/"

    const/4 v9, 0x4

    const-string v10, ""

    const/4 v12, 0x0

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Lcom/tencent/turingfd/sdk/ams/ad/extends$do;

    invoke-direct {v0, v12, v10}, Lcom/tencent/turingfd/sdk/ams/ad/extends$do;-><init>(ZLjava/lang/String;)V

    goto/16 :goto_3

    .line 43
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v13

    if-nez v13, :cond_1

    .line 45
    new-instance v0, Lcom/tencent/turingfd/sdk/ams/ad/extends$do;

    invoke-direct {v0, v12, v10}, Lcom/tencent/turingfd/sdk/ams/ad/extends$do;-><init>(ZLjava/lang/String;)V

    goto/16 :goto_3

    .line 49
    :cond_1
    sget-object v14, Lcom/tencent/turingfd/sdk/ams/ad/extends;->g:[Ljava/lang/String;

    array-length v15, v14

    move v11, v12

    :goto_0
    if-ge v11, v15, :cond_3

    aget-object v16, v14, v11

    .line 50
    invoke-static/range {v16 .. v16}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v12

    .line 51
    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v12, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    .line 53
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->find()Z

    move-result v8

    if-eqz v8, :cond_2

    const/4 v8, 0x0

    goto :goto_1

    :cond_2
    add-int/lit8 v11, v11, 0x1

    const/4 v12, 0x0

    goto :goto_0

    :cond_3
    const/4 v8, 0x1

    .line 60
    :goto_1
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 61
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x6

    .line 62
    invoke-virtual {v0, v7, v12}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v12

    .line 63
    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_4

    array-length v13, v12

    if-lt v13, v9, :cond_4

    const/4 v13, 0x3

    aget-object v14, v12, v13

    .line 65
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_4

    .line 66
    aget-object v11, v12, v13

    goto :goto_2

    :cond_4
    const-string v13, "/data/user/"

    .line 67
    invoke-virtual {v0, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    array-length v0, v12

    const/4 v13, 0x5

    if-lt v0, v13, :cond_5

    aget-object v0, v12, v9

    .line 69
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 70
    aget-object v11, v12, v9

    :cond_5
    :goto_2
    if-eqz v8, :cond_6

    .line 75
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 76
    invoke-static {v1, v11}, Lcom/tencent/turingfd/sdk/ams/ad/extends;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 77
    new-instance v11, Lcom/tencent/turingfd/sdk/ams/ad/extends$do;

    invoke-direct {v11, v8, v0}, Lcom/tencent/turingfd/sdk/ams/ad/extends$do;-><init>(ZLjava/lang/String;)V

    move-object v0, v11

    goto :goto_3

    .line 79
    :cond_6
    new-instance v0, Lcom/tencent/turingfd/sdk/ams/ad/extends$do;

    invoke-direct {v0, v8, v10}, Lcom/tencent/turingfd/sdk/ams/ad/extends$do;-><init>(ZLjava/lang/String;)V

    .line 80
    :goto_3
    iget-boolean v8, v0, Lcom/tencent/turingfd/sdk/ams/ad/extends$do;->a:Z

    if-eqz v8, :cond_7

    .line 81
    iget-object v8, v0, Lcom/tencent/turingfd/sdk/ams/ad/extends$do;->b:Ljava/lang/String;

    .line 82
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_7

    const/4 v8, 0x1

    const/4 v11, 0x0

    .line 83
    invoke-static {v11, v8, v11}, Lcom/tencent/turingfd/sdk/ams/ad/this;->a(IZI)I

    move-result v12

    .line 84
    new-instance v8, Lcom/tencent/turingfd/sdk/ams/ad/throws;

    invoke-direct {v8}, Lcom/tencent/turingfd/sdk/ams/ad/throws;-><init>()V

    .line 85
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v13, Lcom/tencent/turingfd/sdk/ams/ad/extends;->a:Ljava/lang/String;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v13, Lcom/tencent/turingfd/sdk/ams/ad/extends;->c:Ljava/lang/String;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v8, Lcom/tencent/turingfd/sdk/ams/ad/throws;->a:Ljava/lang/String;

    .line 86
    iget-object v0, v0, Lcom/tencent/turingfd/sdk/ams/ad/extends$do;->b:Ljava/lang/String;

    .line 87
    iput-object v0, v8, Lcom/tencent/turingfd/sdk/ams/ad/throws;->b:Ljava/lang/String;

    .line 89
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v8, 0x0

    goto :goto_4

    :cond_7
    const/4 v8, 0x0

    .line 91
    invoke-static {v8, v8, v8}, Lcom/tencent/turingfd/sdk/ams/ad/this;->a(IZI)I

    move-result v12

    .line 92
    :goto_4
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    if-nez v11, :cond_8

    .line 94
    new-instance v0, Lcom/tencent/turingfd/sdk/ams/ad/extends$do;

    invoke-direct {v0, v8, v10}, Lcom/tencent/turingfd/sdk/ams/ad/extends$do;-><init>(ZLjava/lang/String;)V

    goto/16 :goto_10

    :cond_8
    const/4 v8, -0x1

    .line 101
    :try_start_0
    new-instance v14, Ljava/io/FileReader;

    const-string v0, "/proc/self/maps"

    invoke-direct {v14, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 102
    :try_start_1
    new-instance v15, Ljava/io/BufferedReader;

    invoke-direct {v15, v14}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 104
    :goto_5
    :try_start_2
    invoke-virtual {v15}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_13

    const/16 v13, 0x2f

    .line 105
    invoke-virtual {v0, v13}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    if-ne v9, v8, :cond_9

    :goto_6
    const/4 v9, 0x4

    goto :goto_5

    .line 107
    :cond_9
    invoke-virtual {v0, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 109
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/16 v8, 0x17

    const-string v13, "/data/app/"

    if-ge v9, v8, :cond_f

    :try_start_3
    const-string v8, "/data/dalvik-cache/"

    .line 110
    invoke-virtual {v0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_a

    goto :goto_7

    :cond_a
    const-string v8, ".apk@classes.dex"

    .line 111
    invoke-virtual {v0, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_b

    goto :goto_7

    :cond_b
    const/16 v8, 0x2f

    .line 113
    invoke-virtual {v0, v8}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v9

    const/4 v8, -0x1

    if-ne v9, v8, :cond_c

    goto :goto_6

    .line 115
    :cond_c
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0xc

    invoke-virtual {v0, v9, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const/16 v8, 0x40

    const/16 v9, 0x2f

    invoke-virtual {v0, v8, v9}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 116
    invoke-virtual {v0, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_d

    goto :goto_7

    .line 118
    :cond_d
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v0, "base.apk"

    .line 119
    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 120
    invoke-virtual {v7}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 122
    invoke-virtual {v7}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    .line 125
    :cond_e
    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    .line 129
    :cond_f
    invoke-virtual {v0, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_11

    :cond_10
    :goto_7
    const/4 v8, -0x1

    goto :goto_6

    :cond_11
    const-string v8, "/base.odex"

    .line 130
    invoke-virtual {v0, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_12

    goto :goto_7

    .line 132
    :cond_12
    invoke-virtual {v0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 133
    array-length v8, v0

    const/4 v9, 0x7

    if-lt v8, v9, :cond_10

    const/4 v8, 0x3

    .line 134
    aget-object v0, v0, v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_8
    move-object v13, v0

    goto :goto_9

    :cond_13
    const/4 v13, 0x0

    .line 142
    :goto_9
    invoke-static {v14}, Lcom/tencent/turingfd/sdk/ams/ad/Auriga;->a(Ljava/io/Closeable;)V

    .line 143
    invoke-static {v15}, Lcom/tencent/turingfd/sdk/ams/ad/Auriga;->a(Ljava/io/Closeable;)V

    goto :goto_c

    :catchall_0
    move-exception v0

    goto :goto_b

    :catchall_1
    move-exception v0

    goto :goto_a

    :catchall_2
    move-exception v0

    const/4 v14, 0x0

    :goto_a
    const/4 v15, 0x0

    .line 144
    :goto_b
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_6

    .line 146
    invoke-static {v14}, Lcom/tencent/turingfd/sdk/ams/ad/Auriga;->a(Ljava/io/Closeable;)V

    .line 147
    invoke-static {v15}, Lcom/tencent/turingfd/sdk/ams/ad/Auriga;->a(Ljava/io/Closeable;)V

    const/4 v13, 0x0

    .line 151
    :goto_c
    invoke-virtual {v11}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 155
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_17

    const-string v7, "-"

    .line 157
    invoke-virtual {v13, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_14

    goto :goto_e

    :cond_14
    const/4 v8, 0x0

    .line 162
    invoke-virtual {v13, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 163
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_15

    goto :goto_e

    .line 167
    :cond_15
    new-instance v8, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v8, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 168
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_16

    invoke-virtual {v8}, Ljava/io/File;->canWrite()Z

    move-result v6

    if-eqz v6, :cond_16

    goto :goto_d

    :cond_16
    move-object v7, v0

    .line 172
    :goto_d
    invoke-static {v0, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v6, 0x1

    xor-int/2addr v0, v6

    move v6, v0

    move-object v0, v7

    goto :goto_f

    :cond_17
    :goto_e
    const/4 v6, 0x0

    :goto_f
    if-eqz v6, :cond_18

    .line 180
    invoke-static {v1, v0}, Lcom/tencent/turingfd/sdk/ams/ad/extends;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 181
    new-instance v7, Lcom/tencent/turingfd/sdk/ams/ad/extends$do;

    invoke-direct {v7, v6, v0}, Lcom/tencent/turingfd/sdk/ams/ad/extends$do;-><init>(ZLjava/lang/String;)V

    move-object v0, v7

    goto :goto_10

    .line 183
    :cond_18
    new-instance v0, Lcom/tencent/turingfd/sdk/ams/ad/extends$do;

    invoke-direct {v0, v6, v10}, Lcom/tencent/turingfd/sdk/ams/ad/extends$do;-><init>(ZLjava/lang/String;)V

    .line 184
    :goto_10
    iget-boolean v6, v0, Lcom/tencent/turingfd/sdk/ams/ad/extends$do;->a:Z

    const/4 v7, 0x1

    .line 185
    invoke-static {v12, v6, v7}, Lcom/tencent/turingfd/sdk/ams/ad/this;->a(IZI)I

    move-result v6

    .line 186
    iget-boolean v7, v0, Lcom/tencent/turingfd/sdk/ams/ad/extends$do;->a:Z

    if-eqz v7, :cond_19

    .line 187
    new-instance v7, Lcom/tencent/turingfd/sdk/ams/ad/throws;

    invoke-direct {v7}, Lcom/tencent/turingfd/sdk/ams/ad/throws;-><init>()V

    .line 188
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lcom/tencent/turingfd/sdk/ams/ad/extends;->a:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v9, Lcom/tencent/turingfd/sdk/ams/ad/extends;->d:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/tencent/turingfd/sdk/ams/ad/throws;->a:Ljava/lang/String;

    .line 189
    iget-object v0, v0, Lcom/tencent/turingfd/sdk/ams/ad/extends$do;->b:Ljava/lang/String;

    .line 190
    iput-object v0, v7, Lcom/tencent/turingfd/sdk/ams/ad/throws;->b:Ljava/lang/String;

    .line 192
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 193
    :cond_19
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x11

    if-ge v0, v7, :cond_1a

    .line 194
    new-instance v0, Lcom/tencent/turingfd/sdk/ams/ad/extends$do;

    const/4 v7, 0x0

    invoke-direct {v0, v7, v10}, Lcom/tencent/turingfd/sdk/ams/ad/extends$do;-><init>(ZLjava/lang/String;)V

    goto/16 :goto_13

    .line 196
    :cond_1a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 200
    sget-object v7, Lcom/tencent/turingfd/sdk/ams/ad/finally;->e1:[B

    invoke-static {v7}, Lcom/tencent/turingfd/sdk/ams/ad/finally;->a([B)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1c

    .line 201
    sget-object v8, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1c

    .line 203
    :try_start_5
    invoke-static/range {p0 .. p0}, Lcom/tencent/turingfd/sdk/ams/ad/extends;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    .line 204
    new-instance v8, Ljava/lang/String;

    const-string v9, "5YiG6Lqr5bqU55So"

    const/4 v11, 0x0

    invoke-static {v9, v11}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/String;-><init>([B)V

    .line 205
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_22

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    if-eqz v7, :cond_22

    .line 207
    :try_start_6
    sget-object v7, Lcom/tencent/turingfd/sdk/ams/ad/finally;->f1:[B

    invoke-static {v7}, Lcom/tencent/turingfd/sdk/ams/ad/finally;->a([B)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1b

    .line 209
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_11

    :cond_1b
    const-string v7, "H"

    .line 211
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_11

    .line 215
    :cond_1c
    sget-object v7, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v8, "xiaomi"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1d

    .line 216
    invoke-static {}, Lcom/tencent/turingfd/sdk/ams/ad/extends;->a()Z

    move-result v7

    if-eqz v7, :cond_22

    const-string v7, "XiaoMi"

    .line 218
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :catchall_3
    :goto_11
    const/4 v8, 0x1

    goto/16 :goto_12

    :cond_1d
    const-string v8, "redmi"

    .line 220
    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1e

    .line 221
    invoke-static {}, Lcom/tencent/turingfd/sdk/ams/ad/extends;->a()Z

    move-result v7

    if-eqz v7, :cond_22

    const-string v7, "Redmi"

    .line 223
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_11

    :cond_1e
    const-string v8, "oppo"

    .line 225
    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1f

    .line 226
    invoke-static {}, Lcom/tencent/turingfd/sdk/ams/ad/extends;->a()Z

    move-result v7

    if-eqz v7, :cond_22

    const-string v7, "OPPO"

    .line 228
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_11

    :cond_1f
    const-string v8, "vivo"

    .line 230
    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_21

    .line 232
    invoke-static {}, Lcom/tencent/turingfd/sdk/ams/ad/extends;->a()Z

    move-result v7

    if-eqz v7, :cond_20

    const-string v7, "VIVO_A"

    .line 234
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_11

    .line 238
    :cond_20
    :try_start_7
    new-instance v7, Ljava/lang/String;

    const-string v8, "/proc/self/mountinfo"

    invoke-static {v8}, Lcom/tencent/turingfd/sdk/ams/ad/strictfp;->a(Ljava/lang/String;)[B

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/String;-><init>([B)V

    .line 239
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "_cloned"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 240
    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    if-eqz v7, :cond_22

    :try_start_8
    const-string v7, "VIVO_B"

    .line 242
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    goto :goto_11

    :cond_21
    const-string v8, "samsung"

    .line 247
    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_22

    .line 248
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v7

    const v9, 0x186a0

    div-int/2addr v7, v9

    const/16 v9, 0x32

    if-le v7, v9, :cond_22

    .line 251
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/16 :goto_11

    :catchall_4
    :cond_22
    const/4 v8, 0x0

    .line 257
    :goto_12
    new-instance v7, Lcom/tencent/turingfd/sdk/ams/ad/extends$do;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v8, v0}, Lcom/tencent/turingfd/sdk/ams/ad/extends$do;-><init>(ZLjava/lang/String;)V

    move-object v0, v7

    .line 258
    :goto_13
    iget-boolean v7, v0, Lcom/tencent/turingfd/sdk/ams/ad/extends$do;->a:Z

    const/4 v8, 0x2

    .line 259
    invoke-static {v6, v7, v8}, Lcom/tencent/turingfd/sdk/ams/ad/this;->a(IZI)I

    move-result v6

    .line 260
    iget-boolean v7, v0, Lcom/tencent/turingfd/sdk/ams/ad/extends$do;->a:Z

    if-eqz v7, :cond_23

    .line 261
    new-instance v7, Lcom/tencent/turingfd/sdk/ams/ad/throws;

    invoke-direct {v7}, Lcom/tencent/turingfd/sdk/ams/ad/throws;-><init>()V

    .line 262
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lcom/tencent/turingfd/sdk/ams/ad/extends;->a:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v9, Lcom/tencent/turingfd/sdk/ams/ad/extends;->e:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/tencent/turingfd/sdk/ams/ad/throws;->a:Ljava/lang/String;

    .line 263
    iget-object v8, v0, Lcom/tencent/turingfd/sdk/ams/ad/extends$do;->b:Ljava/lang/String;

    .line 264
    iput-object v8, v7, Lcom/tencent/turingfd/sdk/ams/ad/throws;->b:Ljava/lang/String;

    .line 266
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 267
    :cond_23
    new-instance v7, Landroid/util/SparseArray;

    invoke-direct {v7}, Landroid/util/SparseArray;-><init>()V

    .line 268
    :try_start_9
    new-instance v7, Landroid/util/SparseArray;

    invoke-direct {v7}, Landroid/util/SparseArray;-><init>()V

    const/16 v8, 0xce

    .line 269
    invoke-static {v7, v1, v8}, Lcom/tencent/turingfd/sdk/ams/ad/TNative$aa;->d90_9F87DFDD2CC93068(Landroid/util/SparseArray;Landroid/content/Context;I)Landroid/util/SparseArray;

    move-result-object v1

    .line 270
    const-class v7, Ljava/lang/String;

    invoke-static {v1, v8, v7}, Lcom/tencent/turingfd/sdk/ams/ad/Pyxis;->a(Landroid/util/SparseArray;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget v7, Lcom/tencent/turingfd/sdk/ams/ad/Damson;->a:I

    if-nez v1, :cond_24

    move-object v1, v10

    .line 272
    :cond_24
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    goto :goto_14

    :catchall_5
    const/4 v11, 0x0

    :goto_14
    if-lez v11, :cond_25

    .line 277
    new-instance v1, Lcom/tencent/turingfd/sdk/ams/ad/extends$do;

    const/4 v7, 0x1

    invoke-direct {v1, v7, v10}, Lcom/tencent/turingfd/sdk/ams/ad/extends$do;-><init>(ZLjava/lang/String;)V

    goto :goto_15

    .line 279
    :cond_25
    new-instance v1, Lcom/tencent/turingfd/sdk/ams/ad/extends$do;

    const/4 v7, 0x0

    invoke-direct {v1, v7, v10}, Lcom/tencent/turingfd/sdk/ams/ad/extends$do;-><init>(ZLjava/lang/String;)V

    .line 280
    :goto_15
    iget-boolean v7, v1, Lcom/tencent/turingfd/sdk/ams/ad/extends$do;->a:Z

    const/4 v8, 0x4

    .line 281
    invoke-static {v6, v7, v8}, Lcom/tencent/turingfd/sdk/ams/ad/this;->a(IZI)I

    move-result v6

    .line 282
    iget-boolean v1, v1, Lcom/tencent/turingfd/sdk/ams/ad/extends$do;->a:Z

    if-eqz v1, :cond_26

    .line 283
    new-instance v1, Lcom/tencent/turingfd/sdk/ams/ad/throws;

    invoke-direct {v1}, Lcom/tencent/turingfd/sdk/ams/ad/throws;-><init>()V

    .line 284
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/tencent/turingfd/sdk/ams/ad/extends;->a:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "dual_e"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Lcom/tencent/turingfd/sdk/ams/ad/throws;->a:Ljava/lang/String;

    .line 285
    iget-object v0, v0, Lcom/tencent/turingfd/sdk/ams/ad/extends$do;->b:Ljava/lang/String;

    .line 286
    iput-object v0, v1, Lcom/tencent/turingfd/sdk/ams/ad/throws;->b:Ljava/lang/String;

    .line 288
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_26
    if-lez v6, :cond_27

    .line 293
    new-instance v0, Lcom/tencent/turingfd/sdk/ams/ad/throws;

    invoke-direct {v0}, Lcom/tencent/turingfd/sdk/ams/ad/throws;-><init>()V

    .line 294
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/tencent/turingfd/sdk/ams/ad/extends;->a:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Lcom/tencent/turingfd/sdk/ams/ad/extends;->b:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/turingfd/sdk/ams/ad/throws;->a:Ljava/lang/String;

    .line 295
    invoke-static {v10, v6}, Lcom/tencent/turingfd/sdk/ams/ad/Cygnus;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/turingfd/sdk/ams/ad/throws;->b:Ljava/lang/String;

    .line 296
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 301
    :cond_27
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v3

    sput-wide v0, Lcom/tencent/turingfd/sdk/ams/ad/extends;->f:J

    .line 302
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/turingfd/sdk/ams/ad/throws;

    .line 303
    iget-object v3, v1, Lcom/tencent/turingfd/sdk/ams/ad/throws;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    .line 304
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    iget-object v1, v1, Lcom/tencent/turingfd/sdk/ams/ad/throws;->b:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    .line 306
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_16

    .line 309
    :cond_28
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catchall_6
    move-exception v0

    move-object v1, v0

    .line 310
    invoke-static {v14}, Lcom/tencent/turingfd/sdk/ams/ad/Auriga;->a(Ljava/io/Closeable;)V

    .line 311
    invoke-static {v15}, Lcom/tencent/turingfd/sdk/ams/ad/Auriga;->a(Ljava/io/Closeable;)V

    .line 312
    throw v1
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const-string v0, ""

    .line 1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_"

    .line 3
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v3, 0x0

    .line 6
    :try_start_0
    invoke-virtual {p0, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    .line 7
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object p0, v0

    .line 11
    :goto_0
    :try_start_1
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/tencent/turingfd/sdk/ams/ad/UrsaMinor;->a(Ljava/io/File;)Ljava/util/List;

    move-result-object p1

    .line 12
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 14
    :catchall_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v3, -0x1

    .line 20
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 21
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 22
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 23
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v3

    .line 26
    :cond_0
    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a()Z
    .locals 2

    .line 32
    :try_start_0
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    const v1, 0x186a0

    div-int/2addr v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v1, 0x3e7

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    return v0

    :catchall_0
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    const-string v0, ""

    :try_start_0
    const-string v1, "android.os.UserManager"

    .line 1
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "USER_SERVICE"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    const/4 v3, 0x1

    .line 3
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 4
    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 6
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string v2, "getUserName"

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Class;

    .line 9
    invoke-virtual {v1, v2, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    if-nez v1, :cond_1

    return-object v0

    .line 11
    :cond_1
    invoke-virtual {v1, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v2, v4, [Ljava/lang/Object;

    .line 12
    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    return-object v0
.end method
