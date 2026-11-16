.class public Lcom/yofi/sdk/utils/AES;
.super Ljava/lang/Object;
.source "AES.java"


# instance fields
.field private InvSbox:[I

.field private Sbox:[I

.field private w:[[[I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x100

    new-array v1, v0, [I

    .line 6
    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/yofi/sdk/utils/AES;->Sbox:[I

    new-array v0, v0, [I

    .line 7
    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/yofi/sdk/utils/AES;->InvSbox:[I

    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 8
    fill-array-data v0, :array_2

    const-class v1, I

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[[I

    iput-object v0, p0, Lcom/yofi/sdk/utils/AES;->w:[[[I

    .line 12
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/yofi/sdk/utils/AES;->KeyExpansion([B)V

    return-void

    nop

    :array_0
    .array-data 4
        0x63
        0x7c
        0x77
        0x7b
        0xf2
        0x6b
        0x6f
        0xc5
        0x30
        0x1
        0x67
        0x2b
        0xfe
        0xd7
        0xab
        0x76
        0xca
        0x82
        0xc9
        0x7d
        0xfa
        0x59
        0x47
        0xf0
        0xad
        0xd4
        0xa2
        0xaf
        0x9c
        0xa4
        0x72
        0xc0
        0xb7
        0xfd
        0x93
        0x26
        0x36
        0x3f
        0xf7
        0xcc
        0x34
        0xa5
        0xe5
        0xf1
        0x71
        0xd8
        0x31
        0x15
        0x4
        0xc7
        0x23
        0xc3
        0x18
        0x96
        0x5
        0x9a
        0x7
        0x12
        0x80
        0xe2
        0xeb
        0x27
        0xb2
        0x75
        0x9
        0x83
        0x2c
        0x1a
        0x1b
        0x6e
        0x5a
        0xa0
        0x52
        0x3b
        0xd6
        0xb3
        0x29
        0xe3
        0x2f
        0x84
        0x53
        0xd1
        0x0
        0xed
        0x20
        0xfc
        0xb1
        0x5b
        0x6a
        0xcb
        0xbe
        0x39
        0x4a
        0x4c
        0x58
        0xcf
        0xd0
        0xef
        0xaa
        0xfb
        0x43
        0x4d
        0x33
        0x85
        0x45
        0xf9
        0x2
        0x7f
        0x50
        0x3c
        0x9f
        0xa8
        0x51
        0xa3
        0x40
        0x8f
        0x92
        0x9d
        0x38
        0xf5
        0xbc
        0xb6
        0xda
        0x21
        0x10
        0xff
        0xf3
        0xd2
        0xcd
        0xc
        0x13
        0xec
        0x5f
        0x97
        0x44
        0x17
        0xc4
        0xa7
        0x7e
        0x3d
        0x64
        0x5d
        0x19
        0x73
        0x60
        0x81
        0x4f
        0xdc
        0x22
        0x2a
        0x90
        0x88
        0x46
        0xee
        0xb8
        0x14
        0xde
        0x5e
        0xb
        0xdb
        0xe0
        0x32
        0x3a
        0xa
        0x49
        0x6
        0x24
        0x5c
        0xc2
        0xd3
        0xac
        0x62
        0x91
        0x95
        0xe4
        0x79
        0xe7
        0xc8
        0x37
        0x6d
        0x8d
        0xd5
        0x4e
        0xa9
        0x6c
        0x56
        0xf4
        0xea
        0x65
        0x7a
        0xae
        0x8
        0xba
        0x78
        0x25
        0x2e
        0x1c
        0xa6
        0xb4
        0xc6
        0xe8
        0xdd
        0x74
        0x1f
        0x4b
        0xbd
        0x8b
        0x8a
        0x70
        0x3e
        0xb5
        0x66
        0x48
        0x3
        0xf6
        0xe
        0x61
        0x35
        0x57
        0xb9
        0x86
        0xc1
        0x1d
        0x9e
        0xe1
        0xf8
        0x98
        0x11
        0x69
        0xd9
        0x8e
        0x94
        0x9b
        0x1e
        0x87
        0xe9
        0xce
        0x55
        0x28
        0xdf
        0x8c
        0xa1
        0x89
        0xd
        0xbf
        0xe6
        0x42
        0x68
        0x41
        0x99
        0x2d
        0xf
        0xb0
        0x54
        0xbb
        0x16
    .end array-data

    :array_1
    .array-data 4
        0x52
        0x9
        0x6a
        0xd5
        0x30
        0x36
        0xa5
        0x38
        0xbf
        0x40
        0xa3
        0x9e
        0x81
        0xf3
        0xd7
        0xfb
        0x7c
        0xe3
        0x39
        0x82
        0x9b
        0x2f
        0xff
        0x87
        0x34
        0x8e
        0x43
        0x44
        0xc4
        0xde
        0xe9
        0xcb
        0x54
        0x7b
        0x94
        0x32
        0xa6
        0xc2
        0x23
        0x3d
        0xee
        0x4c
        0x95
        0xb
        0x42
        0xfa
        0xc3
        0x4e
        0x8
        0x2e
        0xa1
        0x66
        0x28
        0xd9
        0x24
        0xb2
        0x76
        0x5b
        0xa2
        0x49
        0x6d
        0x8b
        0xd1
        0x25
        0x72
        0xf8
        0xf6
        0x64
        0x86
        0x68
        0x98
        0x16
        0xd4
        0xa4
        0x5c
        0xcc
        0x5d
        0x65
        0xb6
        0x92
        0x6c
        0x70
        0x48
        0x50
        0xfd
        0xed
        0xb9
        0xda
        0x5e
        0x15
        0x46
        0x57
        0xa7
        0x8d
        0x9d
        0x84
        0x90
        0xd8
        0xab
        0x0
        0x8c
        0xbc
        0xd3
        0xa
        0xf7
        0xe4
        0x58
        0x5
        0xb8
        0xb3
        0x45
        0x6
        0xd0
        0x2c
        0x1e
        0x8f
        0xca
        0x3f
        0xf
        0x2
        0xc1
        0xaf
        0xbd
        0x3
        0x1
        0x13
        0x8a
        0x6b
        0x3a
        0x91
        0x11
        0x41
        0x4f
        0x67
        0xdc
        0xea
        0x97
        0xf2
        0xcf
        0xce
        0xf0
        0xb4
        0xe6
        0x73
        0x96
        0xac
        0x74
        0x22
        0xe7
        0xad
        0x35
        0x85
        0xe2
        0xf9
        0x37
        0xe8
        0x1c
        0x75
        0xdf
        0x6e
        0x47
        0xf1
        0x1a
        0x71
        0x1d
        0x29
        0xc5
        0x89
        0x6f
        0xb7
        0x62
        0xe
        0xaa
        0x18
        0xbe
        0x1b
        0xfc
        0x56
        0x3e
        0x4b
        0xc6
        0xd2
        0x79
        0x20
        0x9a
        0xdb
        0xc0
        0xfe
        0x78
        0xcd
        0x5a
        0xf4
        0x1f
        0xdd
        0xa8
        0x33
        0x88
        0x7
        0xc7
        0x31
        0xb1
        0x12
        0x10
        0x59
        0x27
        0x80
        0xec
        0x5f
        0x60
        0x51
        0x7f
        0xa9
        0x19
        0xb5
        0x4a
        0xd
        0x2d
        0xe5
        0x7a
        0x9f
        0x93
        0xc9
        0x9c
        0xef
        0xa0
        0xe0
        0x3b
        0x4d
        0xae
        0x2a
        0xf5
        0xb0
        0xc8
        0xeb
        0xbb
        0x3c
        0x83
        0x53
        0x99
        0x61
        0x17
        0x2b
        0x4
        0x7e
        0xba
        0x77
        0xd6
        0x26
        0xe1
        0x69
        0x14
        0x63
        0x55
        0x21
        0xc
        0x7d
    .end array-data

    :array_2
    .array-data 4
        0xb
        0x4
        0x4
    .end array-data
.end method

.method private AddRoundKey([[I[[I)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "state",
            "k"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_1

    move v3, v0

    :goto_1
    if-ge v3, v2, :cond_0

    .line 260
    aget-object v4, p1, v3

    aget v5, v4, v1

    aget-object v6, p2, v3

    aget v6, v6, v1

    xor-int/2addr v5, v6

    aput v5, v4, v1

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private Cipher([I)[I
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    .line 26
    array-length v0, p1

    new-array v0, v0, [I

    const/4 v1, 0x0

    move v2, v1

    .line 28
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_2

    const/16 v3, 0x10

    new-array v4, v3, [I

    move v5, v1

    :goto_1
    if-ge v5, v3, :cond_0

    add-int v6, v2, v5

    .line 32
    aget v6, p1, v6

    aput v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 35
    :cond_0
    invoke-direct {p0, v4}, Lcom/yofi/sdk/utils/AES;->Cipher16([I)[I

    move-result-object v4

    move v5, v1

    :goto_2
    if-ge v5, v3, :cond_1

    add-int v6, v2, v5

    .line 38
    aget v7, v4, v5

    aput v7, v0, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v2, 0x10

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private Cipher16([I)[I
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 191
    fill-array-data v0, :array_0

    const-class v1, I

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x4

    if-ge v2, v3, :cond_1

    move v4, v1

    :goto_1
    if-ge v4, v3, :cond_0

    .line 197
    aget-object v5, v0, v2

    mul-int/lit8 v6, v4, 0x4

    add-int/2addr v6, v2

    aget v6, p1, v6

    aput v6, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 201
    :cond_1
    iget-object p1, p0, Lcom/yofi/sdk/utils/AES;->w:[[[I

    aget-object p1, p1, v1

    invoke-direct {p0, v0, p1}, Lcom/yofi/sdk/utils/AES;->AddRoundKey([[I[[I)V

    const/4 p1, 0x1

    :goto_2
    const/16 v2, 0xa

    if-gt p1, v2, :cond_3

    .line 204
    invoke-direct {p0, v0}, Lcom/yofi/sdk/utils/AES;->SubBytes([[I)V

    .line 205
    invoke-direct {p0, v0}, Lcom/yofi/sdk/utils/AES;->ShiftRows([[I)V

    if-eq p1, v2, :cond_2

    .line 207
    invoke-direct {p0, v0}, Lcom/yofi/sdk/utils/AES;->MixColumns([[I)V

    .line 210
    :cond_2
    iget-object v2, p0, Lcom/yofi/sdk/utils/AES;->w:[[[I

    aget-object v2, v2, p1

    invoke-direct {p0, v0, v2}, Lcom/yofi/sdk/utils/AES;->AddRoundKey([[I[[I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_3
    const/16 p1, 0x10

    new-array p1, p1, [I

    move v2, v1

    :goto_3
    if-ge v2, v3, :cond_5

    move v4, v1

    :goto_4
    if-ge v4, v3, :cond_4

    mul-int/lit8 v5, v4, 0x4

    add-int/2addr v5, v2

    .line 217
    aget-object v6, v0, v2

    aget v6, v6, v4

    aput v6, p1, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_5
    return-object p1

    :array_0
    .array-data 4
        0x4
        0x4
    .end array-data
.end method

.method private FFmul(II)I
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    const/4 v0, 0x4

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput p2, v1, v2

    const/4 p2, 0x1

    move v3, p2

    :goto_0
    if-ge v3, v0, :cond_1

    add-int/lit8 v4, v3, -0x1

    .line 298
    aget v5, v1, v4

    shl-int/2addr v5, p2

    and-int/lit16 v5, v5, 0xff

    aput v5, v1, v3

    .line 299
    aget v4, v1, v4

    and-int/lit16 v4, v4, 0x80

    if-eqz v4, :cond_0

    .line 300
    aget v4, v1, v3

    xor-int/lit8 v4, v4, 0x1b

    aput v4, v1, v3

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move v3, v2

    :goto_1
    if-ge v2, v0, :cond_3

    shr-int v4, p1, v2

    and-int/2addr v4, p2

    if-eqz v4, :cond_2

    .line 306
    aget v4, v1, v2

    xor-int/2addr v3, v4

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    return v3
.end method

.method private InvCipher([I)[I
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    .line 46
    array-length v0, p1

    new-array v0, v0, [I

    const/4 v1, 0x0

    move v2, v1

    .line 48
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_2

    const/16 v3, 0x10

    new-array v4, v3, [I

    move v5, v1

    :goto_1
    if-ge v5, v3, :cond_0

    add-int v6, v2, v5

    .line 52
    aget v6, p1, v6

    aput v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 55
    :cond_0
    invoke-direct {p0, v4}, Lcom/yofi/sdk/utils/AES;->InvCipher16([I)[I

    move-result-object v4

    move v5, v1

    :goto_2
    if-ge v5, v3, :cond_1

    add-int v6, v2, v5

    .line 58
    aget v7, v4, v5

    aput v7, v0, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v2, 0x10

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private InvCipher16([I)[I
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 225
    fill-array-data v0, :array_0

    const-class v1, I

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x4

    if-ge v2, v3, :cond_1

    move v4, v1

    :goto_1
    if-ge v4, v3, :cond_0

    .line 231
    aget-object v5, v0, v2

    mul-int/lit8 v6, v4, 0x4

    add-int/2addr v6, v2

    aget v6, p1, v6

    aput v6, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 235
    :cond_1
    iget-object p1, p0, Lcom/yofi/sdk/utils/AES;->w:[[[I

    const/16 v2, 0xa

    aget-object p1, p1, v2

    invoke-direct {p0, v0, p1}, Lcom/yofi/sdk/utils/AES;->AddRoundKey([[I[[I)V

    const/16 p1, 0x9

    :goto_2
    if-ltz p1, :cond_3

    .line 238
    invoke-direct {p0, v0}, Lcom/yofi/sdk/utils/AES;->InvShiftRows([[I)V

    .line 239
    invoke-direct {p0, v0}, Lcom/yofi/sdk/utils/AES;->InvSubBytes([[I)V

    .line 240
    iget-object v2, p0, Lcom/yofi/sdk/utils/AES;->w:[[[I

    aget-object v2, v2, p1

    invoke-direct {p0, v0, v2}, Lcom/yofi/sdk/utils/AES;->AddRoundKey([[I[[I)V

    if-eqz p1, :cond_2

    .line 242
    invoke-direct {p0, v0}, Lcom/yofi/sdk/utils/AES;->InvMixColumns([[I)V

    :cond_2
    add-int/lit8 p1, p1, -0x1

    goto :goto_2

    :cond_3
    const/16 p1, 0x10

    new-array p1, p1, [I

    move v2, v1

    :goto_3
    if-ge v2, v3, :cond_5

    move v4, v1

    :goto_4
    if-ge v4, v3, :cond_4

    mul-int/lit8 v5, v4, 0x4

    add-int/2addr v5, v2

    .line 250
    aget-object v6, v0, v2

    aget v6, v6, v4

    aput v6, p1, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_5
    return-object p1

    nop

    :array_0
    .array-data 4
        0x4
        0x4
    .end array-data
.end method

.method private InvMixColumns([[I)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    const/4 v0, 0x4

    new-array v1, v0, [I

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_2

    move v4, v2

    :goto_1
    if-ge v4, v0, :cond_0

    .line 360
    aget-object v5, p1, v4

    aget v5, v5, v3

    aput v5, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    move v4, v2

    :goto_2
    if-ge v4, v0, :cond_1

    .line 364
    aget-object v5, p1, v4

    const/16 v6, 0xe

    aget v7, v1, v4

    invoke-direct {p0, v6, v7}, Lcom/yofi/sdk/utils/AES;->FFmul(II)I

    move-result v6

    const/16 v7, 0xb

    add-int/lit8 v8, v4, 0x1

    rem-int/lit8 v9, v8, 0x4

    aget v9, v1, v9

    invoke-direct {p0, v7, v9}, Lcom/yofi/sdk/utils/AES;->FFmul(II)I

    move-result v7

    xor-int/2addr v6, v7

    const/16 v7, 0xd

    add-int/lit8 v9, v4, 0x2

    rem-int/2addr v9, v0

    aget v9, v1, v9

    invoke-direct {p0, v7, v9}, Lcom/yofi/sdk/utils/AES;->FFmul(II)I

    move-result v7

    xor-int/2addr v6, v7

    const/16 v7, 0x9

    add-int/lit8 v4, v4, 0x3

    rem-int/2addr v4, v0

    aget v4, v1, v4

    invoke-direct {p0, v7, v4}, Lcom/yofi/sdk/utils/AES;->FFmul(II)I

    move-result v4

    xor-int/2addr v4, v6

    aput v4, v5, v3

    move v4, v8

    goto :goto_2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private InvShiftRows([[I)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    const/4 v0, 0x4

    new-array v1, v0, [I

    const/4 v2, 0x1

    :goto_0
    if-ge v2, v0, :cond_2

    const/4 v3, 0x0

    move v4, v3

    :goto_1
    if-ge v4, v0, :cond_0

    .line 344
    aget-object v5, p1, v2

    sub-int v6, v4, v2

    add-int/2addr v6, v0

    rem-int/2addr v6, v0

    aget v5, v5, v6

    aput v5, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    :goto_2
    if-ge v3, v0, :cond_1

    .line 348
    aget-object v4, p1, v2

    aget v5, v1, v3

    aput v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private InvSubBytes([[I)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_1

    move v3, v0

    :goto_1
    if-ge v3, v2, :cond_0

    .line 332
    aget-object v4, p1, v1

    iget-object v5, p0, Lcom/yofi/sdk/utils/AES;->InvSbox:[I

    aget-object v6, p1, v1

    aget v6, v6, v3

    aget v5, v5, v6

    aput v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private KeyExpansion([B)V
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    const/16 v0, 0xa

    new-array v1, v0, [I

    .line 66
    fill-array-data v1, :array_0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, 0x4

    if-ge v3, v4, :cond_1

    move v5, v2

    :goto_1
    if-ge v5, v4, :cond_0

    .line 71
    iget-object v6, p0, Lcom/yofi/sdk/utils/AES;->w:[[[I

    aget-object v6, v6, v2

    aget-object v6, v6, v3

    mul-int/lit8 v7, v5, 0x4

    add-int/2addr v7, v3

    aget-byte v7, p1, v7

    aput v7, v6, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    :goto_2
    if-gt p1, v0, :cond_8

    move v3, v2

    :goto_3
    if-ge v3, v4, :cond_7

    new-array v5, v4, [I

    move v6, v2

    :goto_4
    const/4 v7, 0x3

    if-ge v6, v4, :cond_3

    if-eqz v3, :cond_2

    .line 80
    iget-object v7, p0, Lcom/yofi/sdk/utils/AES;->w:[[[I

    aget-object v7, v7, p1

    aget-object v7, v7, v6

    add-int/lit8 v8, v3, -0x1

    aget v7, v7, v8

    goto :goto_5

    :cond_2
    iget-object v8, p0, Lcom/yofi/sdk/utils/AES;->w:[[[I

    add-int/lit8 v9, p1, -0x1

    aget-object v8, v8, v9

    aget-object v8, v8, v6

    aget v7, v8, v7

    :goto_5
    aput v7, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_3
    if-nez v3, :cond_5

    .line 84
    aget v6, v5, v2

    move v8, v2

    :goto_6
    if-ge v8, v7, :cond_4

    .line 87
    iget-object v9, p0, Lcom/yofi/sdk/utils/AES;->Sbox:[I

    add-int/lit8 v10, v8, 0x1

    rem-int/lit8 v11, v10, 0x4

    aget v11, v5, v11

    aget v9, v9, v11

    aput v9, v5, v8

    move v8, v10

    goto :goto_6

    .line 90
    :cond_4
    iget-object v8, p0, Lcom/yofi/sdk/utils/AES;->Sbox:[I

    aget v6, v8, v6

    aput v6, v5, v7

    .line 91
    aget v6, v5, v2

    add-int/lit8 v7, p1, -0x1

    aget v7, v1, v7

    xor-int/2addr v6, v7

    aput v6, v5, v2

    :cond_5
    move v6, v2

    :goto_7
    if-ge v6, v4, :cond_6

    .line 95
    iget-object v7, p0, Lcom/yofi/sdk/utils/AES;->w:[[[I

    aget-object v8, v7, p1

    aget-object v8, v8, v6

    add-int/lit8 v9, p1, -0x1

    aget-object v7, v7, v9

    aget-object v7, v7, v6

    aget v7, v7, v3

    aget v9, v5, v6

    xor-int/2addr v7, v9

    aput v7, v8, v3

    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_7
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_8
    return-void

    :array_0
    .array-data 4
        0x1
        0x2
        0x4
        0x8
        0x10
        0x20
        0x40
        0x80
        0x1b
        0x36
    .end array-data
.end method

.method private MixColumns([[I)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    const/4 v0, 0x4

    new-array v1, v0, [I

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_2

    move v4, v2

    :goto_1
    if-ge v4, v0, :cond_0

    .line 319
    aget-object v5, p1, v4

    aget v5, v5, v3

    aput v5, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    move v4, v2

    :goto_2
    if-ge v4, v0, :cond_1

    .line 323
    aget-object v5, p1, v4

    aget v6, v1, v4

    const/4 v7, 0x2

    invoke-direct {p0, v7, v6}, Lcom/yofi/sdk/utils/AES;->FFmul(II)I

    move-result v6

    add-int/lit8 v7, v4, 0x1

    rem-int/lit8 v8, v7, 0x4

    aget v8, v1, v8

    const/4 v9, 0x3

    invoke-direct {p0, v9, v8}, Lcom/yofi/sdk/utils/AES;->FFmul(II)I

    move-result v8

    xor-int/2addr v6, v8

    add-int/lit8 v8, v4, 0x2

    rem-int/2addr v8, v0

    aget v8, v1, v8

    const/4 v9, 0x1

    invoke-direct {p0, v9, v8}, Lcom/yofi/sdk/utils/AES;->FFmul(II)I

    move-result v8

    xor-int/2addr v6, v8

    add-int/lit8 v4, v4, 0x3

    rem-int/2addr v4, v0

    aget v4, v1, v4

    invoke-direct {p0, v9, v4}, Lcom/yofi/sdk/utils/AES;->FFmul(II)I

    move-result v4

    xor-int/2addr v4, v6

    aput v4, v5, v3

    move v4, v7

    goto :goto_2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private ShiftRows([[I)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    const/4 v0, 0x4

    new-array v1, v0, [I

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_2

    move v4, v2

    :goto_1
    if-ge v4, v0, :cond_0

    .line 281
    aget-object v5, p1, v3

    add-int v6, v4, v3

    rem-int/2addr v6, v0

    aget v5, v5, v6

    aput v5, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    move v4, v2

    :goto_2
    if-ge v4, v0, :cond_1

    .line 285
    aget-object v5, p1, v3

    aget v6, v1, v4

    aput v6, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private SubBytes([[I)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_1

    move v3, v0

    :goto_1
    if-ge v3, v2, :cond_0

    .line 269
    aget-object v4, p1, v1

    iget-object v5, p0, Lcom/yofi/sdk/utils/AES;->Sbox:[I

    aget-object v6, p1, v1

    aget v6, v6, v3

    aget v5, v5, v6

    aput v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private ascillToValue(B)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ch"
        }
    .end annotation

    const/16 v0, 0x30

    if-lt p1, v0, :cond_0

    const/16 v1, 0x39

    if-gt p1, v1, :cond_0

    sub-int/2addr p1, v0

    goto :goto_1

    :cond_0
    const/16 v0, 0x61

    if-lt p1, v0, :cond_1

    const/16 v1, 0x7a

    if-gt p1, v1, :cond_1

    :goto_0
    sub-int/2addr p1, v0

    add-int/lit8 p1, p1, 0xa

    goto :goto_1

    :cond_1
    const/16 v0, 0x41

    if-lt p1, v0, :cond_2

    const/16 v1, 0x5a

    if-gt p1, v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, -0x1

    :goto_1
    return p1
.end method

.method private hexToUChar(Ljava/lang/String;)[I
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    .line 147
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    .line 148
    array-length v0, p1

    div-int/lit8 v0, v0, 0x2

    div-int/lit8 v0, v0, 0x10

    array-length v1, p1

    div-int/lit8 v1, v1, 0x2

    rem-int/lit8 v1, v1, 0x10

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x10

    .line 149
    new-array v1, v0, [I

    move v4, v3

    :goto_1
    if-ge v4, v0, :cond_2

    .line 152
    array-length v5, p1

    div-int/lit8 v5, v5, 0x2

    if-ge v4, v5, :cond_1

    mul-int/lit8 v5, v4, 0x2

    .line 153
    aget-byte v6, p1, v5

    invoke-direct {p0, v6}, Lcom/yofi/sdk/utils/AES;->ascillToValue(B)I

    move-result v6

    add-int/2addr v5, v2

    .line 154
    aget-byte v5, p1, v5

    invoke-direct {p0, v5}, Lcom/yofi/sdk/utils/AES;->ascillToValue(B)I

    move-result v5

    shl-int/lit8 v6, v6, 0x4

    or-int/2addr v5, v6

    .line 155
    aput v5, v1, v4

    goto :goto_2

    .line 157
    :cond_1
    aput v3, v1, v4

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    return-object v1
.end method

.method private strToUChar(Ljava/lang/String;)[I
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    .line 118
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    .line 119
    array-length v0, p1

    div-int/lit8 v0, v0, 0x10

    array-length v1, p1

    rem-int/lit8 v1, v1, 0x10

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x10

    .line 120
    new-array v1, v0, [I

    move v3, v2

    :goto_1
    if-ge v3, v0, :cond_2

    .line 123
    array-length v4, p1

    if-ge v3, v4, :cond_1

    .line 124
    aget-byte v4, p1, v3

    and-int/lit16 v4, v4, 0xff

    aput v4, v1, v3

    goto :goto_2

    .line 126
    :cond_1
    aput v2, v1, v3

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    return-object v1
.end method

.method private ucharToHex([I)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    .line 134
    array-length v0, p1

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 136
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 137
    aget v2, p1, v1

    shr-int/lit8 v2, v2, 0x4

    .line 138
    aget v3, p1, v1

    and-int/lit8 v3, v3, 0xf

    mul-int/lit8 v4, v1, 0x2

    .line 139
    invoke-direct {p0, v2}, Lcom/yofi/sdk/utils/AES;->valueToHexCh(I)B

    move-result v2

    aput-byte v2, v0, v4

    add-int/lit8 v4, v4, 0x1

    .line 140
    invoke-direct {p0, v3}, Lcom/yofi/sdk/utils/AES;->valueToHexCh(I)B

    move-result v2

    aput-byte v2, v0, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 143
    :cond_0
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>([B)V

    return-object p1
.end method

.method private ucharToStr([I)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    .line 104
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    aget v2, p1, v1

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 108
    :cond_0
    new-array v2, v1, [B

    :goto_1
    if-ge v0, v1, :cond_1

    .line 111
    aget v3, p1, v0

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 114
    :cond_1
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v2}, Ljava/lang/String;-><init>([B)V

    return-object p1
.end method

.method private valueToHexCh(I)B
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    if-ltz p1, :cond_0

    const/16 v0, 0x9

    if-gt p1, v0, :cond_0

    add-int/lit8 p1, p1, 0x30

    :goto_0
    int-to-byte p1, p1

    goto :goto_1

    :cond_0
    const/16 v0, 0xa

    if-lt p1, v0, :cond_1

    const/16 v1, 0xf

    if-gt p1, v1, :cond_1

    sub-int/2addr p1, v0

    add-int/lit8 p1, p1, 0x41

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return p1
.end method


# virtual methods
.method public Cipher(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    .line 16
    invoke-direct {p0, p1}, Lcom/yofi/sdk/utils/AES;->strToUChar(Ljava/lang/String;)[I

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/yofi/sdk/utils/AES;->Cipher([I)[I

    move-result-object p1

    .line 17
    invoke-direct {p0, p1}, Lcom/yofi/sdk/utils/AES;->ucharToHex([I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public InvCipher(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    .line 21
    invoke-direct {p0, p1}, Lcom/yofi/sdk/utils/AES;->hexToUChar(Ljava/lang/String;)[I

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/yofi/sdk/utils/AES;->InvCipher([I)[I

    move-result-object p1

    .line 22
    invoke-direct {p0, p1}, Lcom/yofi/sdk/utils/AES;->ucharToStr([I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
