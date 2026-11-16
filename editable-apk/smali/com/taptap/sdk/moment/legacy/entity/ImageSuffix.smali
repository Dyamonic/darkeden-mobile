.class public Lcom/taptap/sdk/moment/legacy/entity/ImageSuffix;
.super Ljava/lang/Object;
.source "ImageSuffix.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static compare([B[B)Z
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 58
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 59
    aget-byte v2, p1, v1

    .line 60
    aget-byte v3, p0, v1

    if-eq v3, v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private static isBMP([B)Z
    .locals 1

    const-string v0, "BM"

    .line 13
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 14
    invoke-static {p0, v0}, Lcom/taptap/sdk/moment/legacy/entity/ImageSuffix;->compare([B[B)Z

    move-result p0

    return p0
.end method

.method private static isGIF([B)Z
    .locals 1

    const-string v0, "GIF89a"

    .line 28
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 29
    invoke-static {p0, v0}, Lcom/taptap/sdk/moment/legacy/entity/ImageSuffix;->compare([B[B)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const-string v0, "GIF87a"

    .line 32
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 33
    invoke-static {p0, v0}, Lcom/taptap/sdk/moment/legacy/entity/ImageSuffix;->compare([B[B)Z

    move-result p0

    return p0
.end method

.method private static isICON([B)Z
    .locals 1

    const/16 v0, 0x8

    new-array v0, v0, [B

    .line 18
    fill-array-data v0, :array_0

    .line 19
    invoke-static {p0, v0}, Lcom/taptap/sdk/moment/legacy/entity/ImageSuffix;->compare([B[B)Z

    move-result p0

    return p0

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x0t
        0x20t
        0x20t
    .end array-data
.end method

.method private static isJPEGHeader([B)Z
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [B

    .line 44
    fill-array-data v0, :array_0

    .line 46
    invoke-static {p0, v0}, Lcom/taptap/sdk/moment/legacy/entity/ImageSuffix;->compare([B[B)Z

    move-result p0

    return p0

    nop

    :array_0
    .array-data 1
        -0x1t
        -0x28t
    .end array-data
.end method

.method private static isPNG([B)Z
    .locals 1

    const/16 v0, 0x8

    new-array v0, v0, [B

    .line 38
    fill-array-data v0, :array_0

    .line 40
    invoke-static {p0, v0}, Lcom/taptap/sdk/moment/legacy/entity/ImageSuffix;->compare([B[B)Z

    move-result p0

    return p0

    :array_0
    .array-data 1
        -0x77t
        0x50t
        0x4et
        0x47t
        0xdt
        0xat
        0x1at
        0xat
    .end array-data
.end method

.method private static isWEBP([B)Z
    .locals 1

    const-string v0, "RIFF"

    .line 23
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 24
    invoke-static {p0, v0}, Lcom/taptap/sdk/moment/legacy/entity/ImageSuffix;->compare([B[B)Z

    move-result p0

    return p0
.end method

.method public static readType([B)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 73
    invoke-static {p0}, Lcom/taptap/sdk/moment/legacy/entity/ImageSuffix;->isJPEGHeader([B)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, ".jpg"

    return-object p0

    .line 76
    :cond_0
    invoke-static {p0}, Lcom/taptap/sdk/moment/legacy/entity/ImageSuffix;->isPNG([B)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, ".png"

    return-object p0

    .line 79
    :cond_1
    invoke-static {p0}, Lcom/taptap/sdk/moment/legacy/entity/ImageSuffix;->isGIF([B)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p0, ".gif"

    return-object p0

    .line 83
    :cond_2
    invoke-static {p0}, Lcom/taptap/sdk/moment/legacy/entity/ImageSuffix;->isWEBP([B)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p0, ".webp"

    return-object p0

    .line 86
    :cond_3
    invoke-static {p0}, Lcom/taptap/sdk/moment/legacy/entity/ImageSuffix;->isBMP([B)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string p0, ".bmp"

    return-object p0

    .line 89
    :cond_4
    invoke-static {p0}, Lcom/taptap/sdk/moment/legacy/entity/ImageSuffix;->isICON([B)Z

    move-result p0

    if-eqz p0, :cond_5

    const-string p0, ".ico"

    return-object p0

    .line 92
    :cond_5
    new-instance p0, Ljava/io/IOException;

    const-string v0, "the image\'s format is unKnown!"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
