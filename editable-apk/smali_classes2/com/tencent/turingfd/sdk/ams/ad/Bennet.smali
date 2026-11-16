.class public final Lcom/tencent/turingfd/sdk/ams/ad/Bennet;
.super Lcom/tencent/turingfd/sdk/ams/ad/Eridanus;
.source "SourceFile"


# static fields
.field public static k:[B = null

.field public static l:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final synthetic m:Z = true


# instance fields
.field public a:S

.field public b:B

.field public c:I

.field public d:I

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:[B

.field public h:I

.field public i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/tencent/turingfd/sdk/ams/ad/Eridanus;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-short v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/Bennet;->a:S

    .line 4
    iput-byte v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/Bennet;->b:B

    .line 6
    iput v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/Bennet;->c:I

    .line 8
    iput v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/Bennet;->d:I

    const/4 v1, 0x0

    .line 10
    iput-object v1, p0, Lcom/tencent/turingfd/sdk/ams/ad/Bennet;->e:Ljava/lang/String;

    .line 12
    iput-object v1, p0, Lcom/tencent/turingfd/sdk/ams/ad/Bennet;->f:Ljava/lang/String;

    .line 16
    iput v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/Bennet;->h:I

    return-void
.end method


# virtual methods
.method public a(Lcom/tencent/turingfd/sdk/ams/ad/Dorado;)V
    .locals 12

    const/4 v0, 0x4

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 11
    :try_start_0
    iget-short v3, p0, Lcom/tencent/turingfd/sdk/ams/ad/Bennet;->a:S

    const/4 v4, 0x1

    invoke-virtual {p1, v3, v4, v4}, Lcom/tencent/turingfd/sdk/ams/ad/Dorado;->a(SIZ)S

    move-result v3

    iput-short v3, p0, Lcom/tencent/turingfd/sdk/ams/ad/Bennet;->a:S

    .line 12
    iget-byte v3, p0, Lcom/tencent/turingfd/sdk/ams/ad/Bennet;->b:B

    invoke-virtual {p1, v3, v1, v4}, Lcom/tencent/turingfd/sdk/ams/ad/Dorado;->a(BIZ)B

    move-result v3

    iput-byte v3, p0, Lcom/tencent/turingfd/sdk/ams/ad/Bennet;->b:B

    .line 13
    iget v3, p0, Lcom/tencent/turingfd/sdk/ams/ad/Bennet;->c:I

    const/4 v5, 0x3

    invoke-virtual {p1, v3, v5, v4}, Lcom/tencent/turingfd/sdk/ams/ad/Dorado;->a(IIZ)I

    move-result v3

    iput v3, p0, Lcom/tencent/turingfd/sdk/ams/ad/Bennet;->c:I

    .line 14
    iget v3, p0, Lcom/tencent/turingfd/sdk/ams/ad/Bennet;->d:I

    invoke-virtual {p1, v3, v0, v4}, Lcom/tencent/turingfd/sdk/ams/ad/Dorado;->a(IIZ)I

    move-result v3

    iput v3, p0, Lcom/tencent/turingfd/sdk/ams/ad/Bennet;->d:I

    const/4 v3, 0x5

    .line 15
    invoke-virtual {p1, v3, v4}, Lcom/tencent/turingfd/sdk/ams/ad/Dorado;->b(IZ)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/tencent/turingfd/sdk/ams/ad/Bennet;->e:Ljava/lang/String;

    const/4 v3, 0x6

    .line 16
    invoke-virtual {p1, v3, v4}, Lcom/tencent/turingfd/sdk/ams/ad/Dorado;->b(IZ)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/tencent/turingfd/sdk/ams/ad/Bennet;->f:Ljava/lang/String;

    .line 17
    sget-object v3, Lcom/tencent/turingfd/sdk/ams/ad/Bennet;->k:[B

    if-nez v3, :cond_0

    new-array v3, v4, [B

    aput-byte v2, v3, v2

    .line 18
    sput-object v3, Lcom/tencent/turingfd/sdk/ams/ad/Bennet;->k:[B

    :cond_0
    const/4 v3, 0x7

    .line 20
    invoke-virtual {p1, v3, v4}, Lcom/tencent/turingfd/sdk/ams/ad/Dorado;->a(IZ)[B

    move-result-object v3

    iput-object v3, p0, Lcom/tencent/turingfd/sdk/ams/ad/Bennet;->g:[B

    .line 21
    iget v3, p0, Lcom/tencent/turingfd/sdk/ams/ad/Bennet;->h:I

    const/16 v5, 0x8

    invoke-virtual {p1, v3, v5, v4}, Lcom/tencent/turingfd/sdk/ams/ad/Dorado;->a(IIZ)I

    move-result v3

    iput v3, p0, Lcom/tencent/turingfd/sdk/ams/ad/Bennet;->h:I

    .line 22
    sget-object v3, Lcom/tencent/turingfd/sdk/ams/ad/Bennet;->l:Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v5, ""

    if-nez v3, :cond_1

    .line 23
    :try_start_1
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    sput-object v3, Lcom/tencent/turingfd/sdk/ams/ad/Bennet;->l:Ljava/util/Map;

    .line 24
    invoke-interface {v3, v5, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    :cond_1
    sget-object v3, Lcom/tencent/turingfd/sdk/ams/ad/Bennet;->l:Ljava/util/Map;

    const/16 v6, 0x9

    invoke-virtual {p1, v3, v6, v4}, Lcom/tencent/turingfd/sdk/ams/ad/Dorado;->a(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    iput-object v3, p0, Lcom/tencent/turingfd/sdk/ams/ad/Bennet;->i:Ljava/util/Map;

    .line 27
    sget-object v3, Lcom/tencent/turingfd/sdk/ams/ad/Bennet;->l:Ljava/util/Map;

    if-nez v3, :cond_2

    .line 28
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    sput-object v3, Lcom/tencent/turingfd/sdk/ams/ad/Bennet;->l:Ljava/util/Map;

    .line 29
    invoke-interface {v3, v5, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    :cond_2
    sget-object v3, Lcom/tencent/turingfd/sdk/ams/ad/Bennet;->l:Ljava/util/Map;

    const/16 v5, 0xa

    invoke-virtual {p1, v3, v5, v4}, Lcom/tencent/turingfd/sdk/ams/ad/Dorado;->a(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    iput-object p1, p0, Lcom/tencent/turingfd/sdk/ams/ad/Bennet;->j:Ljava/util/Map;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 33
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 34
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "RequestPacket decode error "

    invoke-static {v4}, Lcom/tencent/turingfd/sdk/ams/ad/Banana;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/tencent/turingfd/sdk/ams/ad/Bennet;->g:[B

    if-eqz v5, :cond_4

    .line 35
    array-length v6, v5

    if-eqz v6, :cond_4

    .line 40
    array-length v6, v5

    mul-int/2addr v6, v1

    new-array v1, v6, [C

    move v6, v2

    .line 41
    :goto_0
    array-length v7, v5

    if-ge v6, v7, :cond_3

    .line 43
    aget-byte v7, v5, v6

    mul-int/lit8 v8, v6, 0x2

    add-int/lit8 v9, v8, 0x1

    .line 44
    sget-object v10, Lcom/tencent/turingfd/sdk/ams/ad/Orange;->a:[C

    and-int/lit8 v11, v7, 0xf

    aget-char v11, v10, v11

    aput-char v11, v1, v9

    ushr-int/2addr v7, v0

    int-to-byte v7, v7

    add-int/2addr v8, v2

    and-int/lit8 v7, v7, 0xf

    .line 46
    aget-char v7, v10, v7

    aput-char v7, v1, v8

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 48
    :cond_3
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    .line 49
    :goto_1
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 50
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public a(Lcom/tencent/turingfd/sdk/ams/ad/Draco;)V
    .locals 2

    .line 1
    iget-short v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/Bennet;->a:S

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/tencent/turingfd/sdk/ams/ad/Draco;->a(SI)V

    .line 2
    iget-byte v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/Bennet;->b:B

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/tencent/turingfd/sdk/ams/ad/Draco;->a(BI)V

    .line 3
    iget v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/Bennet;->c:I

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/tencent/turingfd/sdk/ams/ad/Draco;->a(II)V

    .line 4
    iget v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/Bennet;->d:I

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/tencent/turingfd/sdk/ams/ad/Draco;->a(II)V

    .line 5
    iget-object v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/Bennet;->e:Ljava/lang/String;

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Lcom/tencent/turingfd/sdk/ams/ad/Draco;->a(Ljava/lang/String;I)V

    .line 6
    iget-object v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/Bennet;->f:Ljava/lang/String;

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1}, Lcom/tencent/turingfd/sdk/ams/ad/Draco;->a(Ljava/lang/String;I)V

    .line 7
    iget-object v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/Bennet;->g:[B

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1}, Lcom/tencent/turingfd/sdk/ams/ad/Draco;->a([BI)V

    .line 8
    iget v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/Bennet;->h:I

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Lcom/tencent/turingfd/sdk/ams/ad/Draco;->a(II)V

    .line 9
    iget-object v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/Bennet;->i:Ljava/util/Map;

    const/16 v1, 0x9

    invoke-virtual {p1, v0, v1}, Lcom/tencent/turingfd/sdk/ams/ad/Draco;->a(Ljava/util/Map;I)V

    .line 10
    iget-object v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/Bennet;->j:Ljava/util/Map;

    const/16 v1, 0xa

    invoke-virtual {p1, v0, v1}, Lcom/tencent/turingfd/sdk/ams/ad/Draco;->a(Ljava/util/Map;I)V

    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 1

    .line 1
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5
    :catch_0
    sget-boolean v0, Lcom/tencent/turingfd/sdk/ams/ad/Bennet;->m:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    check-cast p1, Lcom/tencent/turingfd/sdk/ams/ad/Bennet;

    .line 2
    iget-short v0, p1, Lcom/tencent/turingfd/sdk/ams/ad/Bennet;->a:S

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v0}, Lcom/tencent/turingfd/sdk/ams/ad/Equuleus;->a(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-byte v0, p1, Lcom/tencent/turingfd/sdk/ams/ad/Bennet;->b:B

    invoke-static {v1, v0}, Lcom/tencent/turingfd/sdk/ams/ad/Equuleus;->a(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/tencent/turingfd/sdk/ams/ad/Bennet;->c:I

    invoke-static {v1, v0}, Lcom/tencent/turingfd/sdk/ams/ad/Equuleus;->a(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/tencent/turingfd/sdk/ams/ad/Bennet;->d:I

    invoke-static {v1, v0}, Lcom/tencent/turingfd/sdk/ams/ad/Equuleus;->a(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/tencent/turingfd/sdk/ams/ad/Bennet;->e:Ljava/lang/String;

    .line 3
    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p1, Lcom/tencent/turingfd/sdk/ams/ad/Bennet;->f:Ljava/lang/String;

    .line 5
    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p1, Lcom/tencent/turingfd/sdk/ams/ad/Bennet;->g:[B

    .line 7
    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8
    iget v0, p1, Lcom/tencent/turingfd/sdk/ams/ad/Bennet;->h:I

    invoke-static {v1, v0}, Lcom/tencent/turingfd/sdk/ams/ad/Equuleus;->a(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/tencent/turingfd/sdk/ams/ad/Bennet;->i:Ljava/util/Map;

    .line 9
    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10
    iget-object p1, p1, Lcom/tencent/turingfd/sdk/ams/ad/Bennet;->j:Ljava/util/Map;

    .line 11
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
