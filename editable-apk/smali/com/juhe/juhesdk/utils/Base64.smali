.class public final Lcom/juhe/juhesdk/utils/Base64;
.super Ljava/lang/Object;
.source "Base64.java"


# static fields
.field private static PAD:C = '='

.field private static base64Alphabet:[B

.field private static lookUpBase64Alphabet:[C


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/16 v0, 0x80

    new-array v1, v0, [B

    .line 6
    sput-object v1, Lcom/juhe/juhesdk/utils/Base64;->base64Alphabet:[B

    const/16 v1, 0x40

    new-array v1, v1, [C

    .line 7
    sput-object v1, Lcom/juhe/juhesdk/utils/Base64;->lookUpBase64Alphabet:[C

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    .line 13
    sget-object v3, Lcom/juhe/juhesdk/utils/Base64;->base64Alphabet:[B

    const/4 v4, -0x1

    aput-byte v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/16 v0, 0x5a

    :goto_1
    const/16 v2, 0x41

    if-lt v0, v2, :cond_1

    .line 17
    sget-object v2, Lcom/juhe/juhesdk/utils/Base64;->base64Alphabet:[B

    add-int/lit8 v3, v0, -0x41

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_1
    const/16 v0, 0x7a

    :goto_2
    const/16 v2, 0x1a

    const/16 v3, 0x61

    if-lt v0, v3, :cond_2

    .line 21
    sget-object v3, Lcom/juhe/juhesdk/utils/Base64;->base64Alphabet:[B

    add-int/lit8 v4, v0, -0x61

    add-int/2addr v4, v2

    int-to-byte v2, v4

    aput-byte v2, v3, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_2
    const/16 v0, 0x39

    :goto_3
    const/16 v3, 0x34

    const/16 v4, 0x30

    if-lt v0, v4, :cond_3

    .line 25
    sget-object v4, Lcom/juhe/juhesdk/utils/Base64;->base64Alphabet:[B

    add-int/lit8 v5, v0, -0x30

    add-int/2addr v5, v3

    int-to-byte v3, v5

    aput-byte v3, v4, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 28
    :cond_3
    sget-object v0, Lcom/juhe/juhesdk/utils/Base64;->base64Alphabet:[B

    const/16 v4, 0x2b

    const/16 v5, 0x3e

    aput-byte v5, v0, v4

    const/16 v6, 0x2f

    const/16 v7, 0x3f

    .line 29
    aput-byte v7, v0, v6

    move v0, v1

    :goto_4
    const/16 v8, 0x19

    if-gt v0, v8, :cond_4

    .line 32
    sget-object v8, Lcom/juhe/juhesdk/utils/Base64;->lookUpBase64Alphabet:[C

    add-int/lit8 v9, v0, 0x41

    int-to-char v9, v9

    aput-char v9, v8, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_4
    move v0, v1

    :goto_5
    const/16 v8, 0x33

    if-gt v2, v8, :cond_5

    .line 39
    sget-object v8, Lcom/juhe/juhesdk/utils/Base64;->lookUpBase64Alphabet:[C

    add-int/lit8 v9, v0, 0x61

    int-to-char v9, v9

    aput-char v9, v8, v2

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_5
    :goto_6
    const/16 v0, 0x3d

    if-gt v3, v0, :cond_6

    .line 46
    sget-object v0, Lcom/juhe/juhesdk/utils/Base64;->lookUpBase64Alphabet:[C

    add-int/lit8 v2, v1, 0x30

    int-to-char v2, v2

    aput-char v2, v0, v3

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 50
    :cond_6
    sget-object v0, Lcom/juhe/juhesdk/utils/Base64;->lookUpBase64Alphabet:[C

    aput-char v4, v0, v5

    .line 51
    aput-char v6, v0, v7

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode(Ljava/lang/String;)[B
    .locals 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "encoded"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 132
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    .line 133
    invoke-static {p0}, Lcom/juhe/juhesdk/utils/Base64;->removeWhiteSpace([C)I

    move-result v1

    .line 134
    rem-int/lit8 v2, v1, 0x4

    if-eqz v2, :cond_1

    return-object v0

    .line 137
    :cond_1
    div-int/lit8 v1, v1, 0x4

    const/4 v2, 0x0

    if-nez v1, :cond_2

    new-array p0, v2, [B

    return-object p0

    :cond_2
    mul-int/lit8 v3, v1, 0x3

    .line 154
    new-array v3, v3, [B

    move v4, v2

    move v5, v4

    move v6, v5

    :goto_0
    add-int/lit8 v7, v1, -0x1

    if-ge v4, v7, :cond_5

    add-int/lit8 v7, v5, 0x1

    .line 155
    aget-char v5, p0, v5

    invoke-static {v5}, Lcom/juhe/juhesdk/utils/Base64;->isData(C)Z

    move-result v8

    if-eqz v8, :cond_4

    add-int/lit8 v8, v7, 0x1

    aget-char v7, p0, v7

    invoke-static {v7}, Lcom/juhe/juhesdk/utils/Base64;->isData(C)Z

    move-result v9

    if-eqz v9, :cond_4

    add-int/lit8 v9, v8, 0x1

    aget-char v8, p0, v8

    invoke-static {v8}, Lcom/juhe/juhesdk/utils/Base64;->isData(C)Z

    move-result v10

    if-eqz v10, :cond_4

    add-int/lit8 v10, v9, 0x1

    aget-char v9, p0, v9

    invoke-static {v9}, Lcom/juhe/juhesdk/utils/Base64;->isData(C)Z

    move-result v11

    if-nez v11, :cond_3

    goto :goto_1

    .line 159
    :cond_3
    sget-object v11, Lcom/juhe/juhesdk/utils/Base64;->base64Alphabet:[B

    aget-byte v5, v11, v5

    .line 160
    aget-byte v7, v11, v7

    .line 161
    aget-byte v8, v11, v8

    .line 162
    aget-byte v9, v11, v9

    add-int/lit8 v11, v6, 0x1

    shl-int/lit8 v5, v5, 0x2

    shr-int/lit8 v12, v7, 0x4

    or-int/2addr v5, v12

    int-to-byte v5, v5

    .line 163
    aput-byte v5, v3, v6

    add-int/lit8 v5, v11, 0x1

    and-int/lit8 v6, v7, 0xf

    shl-int/lit8 v6, v6, 0x4

    shr-int/lit8 v7, v8, 0x2

    and-int/lit8 v7, v7, 0xf

    or-int/2addr v6, v7

    int-to-byte v6, v6

    .line 164
    aput-byte v6, v3, v11

    add-int/lit8 v6, v5, 0x1

    shl-int/lit8 v7, v8, 0x6

    or-int/2addr v7, v9

    int-to-byte v7, v7

    .line 165
    aput-byte v7, v3, v5

    add-int/lit8 v4, v4, 0x1

    move v5, v10

    goto :goto_0

    :cond_4
    :goto_1
    return-object v0

    :cond_5
    add-int/lit8 v1, v5, 0x1

    .line 168
    aget-char v5, p0, v5

    invoke-static {v5}, Lcom/juhe/juhesdk/utils/Base64;->isData(C)Z

    move-result v7

    if-eqz v7, :cond_a

    add-int/lit8 v7, v1, 0x1

    aget-char v1, p0, v1

    invoke-static {v1}, Lcom/juhe/juhesdk/utils/Base64;->isData(C)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 169
    sget-object v8, Lcom/juhe/juhesdk/utils/Base64;->base64Alphabet:[B

    aget-byte v5, v8, v5

    .line 170
    aget-byte v1, v8, v1

    add-int/lit8 v8, v7, 0x1

    .line 171
    aget-char v7, p0, v7

    .line 172
    aget-char p0, p0, v8

    .line 173
    invoke-static {v7}, Lcom/juhe/juhesdk/utils/Base64;->isData(C)Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-static {p0}, Lcom/juhe/juhesdk/utils/Base64;->isData(C)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 174
    sget-object v0, Lcom/juhe/juhesdk/utils/Base64;->base64Alphabet:[B

    aget-byte v2, v0, v7

    .line 175
    aget-byte p0, v0, p0

    add-int/lit8 v0, v6, 0x1

    shl-int/lit8 v4, v5, 0x2

    shr-int/lit8 v5, v1, 0x4

    or-int/2addr v4, v5

    int-to-byte v4, v4

    .line 176
    aput-byte v4, v3, v6

    add-int/lit8 v4, v0, 0x1

    and-int/lit8 v1, v1, 0xf

    shl-int/lit8 v1, v1, 0x4

    shr-int/lit8 v5, v2, 0x2

    and-int/lit8 v5, v5, 0xf

    or-int/2addr v1, v5

    int-to-byte v1, v1

    .line 177
    aput-byte v1, v3, v0

    shl-int/lit8 v0, v2, 0x6

    or-int/2addr p0, v0

    int-to-byte p0, p0

    .line 178
    aput-byte p0, v3, v4

    return-object v3

    .line 182
    :cond_6
    invoke-static {v7}, Lcom/juhe/juhesdk/utils/Base64;->isPad(C)Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-static {p0}, Lcom/juhe/juhesdk/utils/Base64;->isPad(C)Z

    move-result v8

    if-eqz v8, :cond_8

    and-int/lit8 p0, v1, 0xf

    if-eqz p0, :cond_7

    return-object v0

    :cond_7
    mul-int/lit8 v4, v4, 0x3

    add-int/lit8 p0, v4, 0x1

    .line 186
    new-array p0, p0, [B

    .line 187
    invoke-static {v3, v2, p0, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    shl-int/lit8 v0, v5, 0x2

    shr-int/lit8 v1, v1, 0x4

    or-int/2addr v0, v1

    int-to-byte v0, v0

    .line 188
    aput-byte v0, p0, v6

    return-object p0

    .line 191
    :cond_8
    invoke-static {v7}, Lcom/juhe/juhesdk/utils/Base64;->isPad(C)Z

    move-result v8

    if-nez v8, :cond_a

    invoke-static {p0}, Lcom/juhe/juhesdk/utils/Base64;->isPad(C)Z

    move-result p0

    if-eqz p0, :cond_a

    .line 192
    sget-object p0, Lcom/juhe/juhesdk/utils/Base64;->base64Alphabet:[B

    aget-byte p0, p0, v7

    and-int/lit8 v7, p0, 0x3

    if-eqz v7, :cond_9

    return-object v0

    :cond_9
    mul-int/lit8 v4, v4, 0x3

    add-int/lit8 v0, v4, 0x2

    .line 196
    new-array v0, v0, [B

    .line 197
    invoke-static {v3, v2, v0, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v2, v6, 0x1

    shl-int/lit8 v3, v5, 0x2

    shr-int/lit8 v4, v1, 0x4

    or-int/2addr v3, v4

    int-to-byte v3, v3

    .line 198
    aput-byte v3, v0, v6

    and-int/lit8 v1, v1, 0xf

    shl-int/lit8 v1, v1, 0x4

    shr-int/lit8 p0, p0, 0x2

    and-int/lit8 p0, p0, 0xf

    or-int/2addr p0, v1

    int-to-byte p0, p0

    .line 199
    aput-byte p0, v0, v2

    :cond_a
    return-object v0
.end method

.method public static encode([B)Ljava/lang/String;
    .locals 15
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "binaryData"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 70
    :cond_0
    array-length v0, p0

    const/16 v1, 0x8

    mul-int/2addr v0, v1

    if-nez v0, :cond_1

    const-string p0, ""

    return-object p0

    .line 74
    :cond_1
    rem-int/lit8 v2, v0, 0x18

    .line 75
    div-int/lit8 v0, v0, 0x18

    if-eqz v2, :cond_2

    add-int/lit8 v3, v0, 0x1

    goto :goto_0

    :cond_2
    move v3, v0

    :goto_0
    mul-int/lit8 v3, v3, 0x4

    .line 77
    new-array v3, v3, [C

    const/4 v4, 0x0

    move v5, v4

    move v6, v5

    :goto_1
    if-ge v4, v0, :cond_6

    add-int/lit8 v7, v5, 0x1

    .line 87
    aget-byte v5, p0, v5

    add-int/lit8 v8, v7, 0x1

    .line 88
    aget-byte v7, p0, v7

    add-int/lit8 v9, v8, 0x1

    .line 89
    aget-byte v8, p0, v8

    and-int/lit8 v10, v7, 0xf

    int-to-byte v10, v10

    and-int/lit8 v11, v5, 0x3

    int-to-byte v11, v11

    and-int/lit8 v12, v5, -0x80

    shr-int/lit8 v5, v5, 0x2

    if-nez v12, :cond_3

    goto :goto_2

    :cond_3
    xor-int/lit16 v5, v5, 0xc0

    :goto_2
    int-to-byte v5, v5

    and-int/lit8 v12, v7, -0x80

    shr-int/lit8 v7, v7, 0x4

    if-nez v12, :cond_4

    goto :goto_3

    :cond_4
    xor-int/lit16 v7, v7, 0xf0

    :goto_3
    int-to-byte v7, v7

    and-int/lit8 v12, v8, -0x80

    if-nez v12, :cond_5

    shr-int/lit8 v12, v8, 0x6

    goto :goto_4

    :cond_5
    shr-int/lit8 v12, v8, 0x6

    xor-int/lit16 v12, v12, 0xfc

    :goto_4
    int-to-byte v12, v12

    add-int/lit8 v13, v6, 0x1

    .line 95
    sget-object v14, Lcom/juhe/juhesdk/utils/Base64;->lookUpBase64Alphabet:[C

    aget-char v5, v14, v5

    aput-char v5, v3, v6

    add-int/lit8 v5, v13, 0x1

    shl-int/lit8 v6, v11, 0x4

    or-int/2addr v6, v7

    .line 96
    aget-char v6, v14, v6

    aput-char v6, v3, v13

    add-int/lit8 v6, v5, 0x1

    shl-int/lit8 v7, v10, 0x2

    or-int/2addr v7, v12

    .line 97
    aget-char v7, v14, v7

    aput-char v7, v3, v5

    add-int/lit8 v5, v6, 0x1

    and-int/lit8 v7, v8, 0x3f

    .line 98
    aget-char v7, v14, v7

    aput-char v7, v3, v6

    add-int/lit8 v4, v4, 0x1

    move v6, v5

    move v5, v9

    goto :goto_1

    :cond_6
    if-ne v2, v1, :cond_8

    .line 103
    aget-byte p0, p0, v5

    and-int/lit8 v0, p0, 0x3

    int-to-byte v0, v0

    and-int/lit8 v1, p0, -0x80

    shr-int/lit8 p0, p0, 0x2

    if-nez v1, :cond_7

    goto :goto_5

    :cond_7
    xor-int/lit16 p0, p0, 0xc0

    :goto_5
    int-to-byte p0, p0

    add-int/lit8 v1, v6, 0x1

    .line 106
    sget-object v2, Lcom/juhe/juhesdk/utils/Base64;->lookUpBase64Alphabet:[C

    aget-char p0, v2, p0

    aput-char p0, v3, v6

    add-int/lit8 p0, v1, 0x1

    shl-int/lit8 v0, v0, 0x4

    .line 107
    aget-char v0, v2, v0

    aput-char v0, v3, v1

    add-int/lit8 v0, p0, 0x1

    .line 108
    sget-char v1, Lcom/juhe/juhesdk/utils/Base64;->PAD:C

    aput-char v1, v3, p0

    .line 109
    aput-char v1, v3, v0

    goto :goto_8

    :cond_8
    const/16 v0, 0x10

    if-ne v2, v0, :cond_b

    .line 111
    aget-byte v0, p0, v5

    add-int/lit8 v5, v5, 0x1

    .line 112
    aget-byte p0, p0, v5

    and-int/lit8 v1, p0, 0xf

    int-to-byte v1, v1

    and-int/lit8 v2, v0, 0x3

    int-to-byte v2, v2

    and-int/lit8 v4, v0, -0x80

    shr-int/lit8 v0, v0, 0x2

    if-nez v4, :cond_9

    goto :goto_6

    :cond_9
    xor-int/lit16 v0, v0, 0xc0

    :goto_6
    int-to-byte v0, v0

    and-int/lit8 v4, p0, -0x80

    shr-int/lit8 p0, p0, 0x4

    if-nez v4, :cond_a

    goto :goto_7

    :cond_a
    xor-int/lit16 p0, p0, 0xf0

    :goto_7
    int-to-byte p0, p0

    add-int/lit8 v4, v6, 0x1

    .line 117
    sget-object v5, Lcom/juhe/juhesdk/utils/Base64;->lookUpBase64Alphabet:[C

    aget-char v0, v5, v0

    aput-char v0, v3, v6

    add-int/lit8 v0, v4, 0x1

    shl-int/lit8 v2, v2, 0x4

    or-int/2addr p0, v2

    .line 118
    aget-char p0, v5, p0

    aput-char p0, v3, v4

    add-int/lit8 p0, v0, 0x1

    shl-int/lit8 v1, v1, 0x2

    .line 119
    aget-char v1, v5, v1

    aput-char v1, v3, v0

    .line 120
    sget-char v0, Lcom/juhe/juhesdk/utils/Base64;->PAD:C

    aput-char v0, v3, p0

    .line 123
    :cond_b
    :goto_8
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v3}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method

.method private static isData(C)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "octect"
        }
    .end annotation

    const/16 v0, 0x80

    if-ge p0, v0, :cond_0

    .line 63
    sget-object v0, Lcom/juhe/juhesdk/utils/Base64;->base64Alphabet:[B

    aget-byte p0, v0, p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isPad(C)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "octect"
        }
    .end annotation

    .line 59
    sget-char v0, Lcom/juhe/juhesdk/utils/Base64;->PAD:C

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isWhiteSpace(C)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "octect"
        }
    .end annotation

    const/16 v0, 0x20

    if-eq p0, v0, :cond_1

    const/16 v0, 0xd

    if-eq p0, v0, :cond_1

    const/16 v0, 0xa

    if-eq p0, v0, :cond_1

    const/16 v0, 0x9

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static removeWhiteSpace([C)I
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 219
    :cond_0
    array-length v1, p0

    move v2, v0

    :goto_0
    if-ge v0, v1, :cond_2

    .line 222
    aget-char v3, p0, v0

    invoke-static {v3}, Lcom/juhe/juhesdk/utils/Base64;->isWhiteSpace(C)Z

    move-result v3

    if-nez v3, :cond_1

    add-int/lit8 v3, v2, 0x1

    .line 223
    aget-char v4, p0, v0

    aput-char v4, p0, v2

    move v2, v3

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method
