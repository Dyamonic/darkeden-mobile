.class public Lcom/tencent/turingfd/sdk/ams/ad/return;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final j:[Ljava/lang/String;


# instance fields
.field public a:Lcom/tencent/turingfd/sdk/ams/ad/public;

.field public b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public c:[B

.field public d:[Ljava/lang/String;

.field public e:[I

.field public f:I

.field public g:I

.field public h:I

.field public i:I


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    const-string v0, "px"

    const-string v1, "dp"

    const-string v2, "sp"

    const-string v3, "pt"

    const-string v4, "in"

    const-string v5, "mm"

    .line 1
    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/turingfd/sdk/ams/ad/return;->j:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/return;->b:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final a(I)I
    .locals 4

    .line 264
    iget-object v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/return;->c:[B

    add-int/lit8 v1, p1, 0x3

    aget-byte v1, v0, v1

    shl-int/lit8 v1, v1, 0x18

    const/high16 v2, -0x1000000

    and-int/2addr v1, v2

    add-int/lit8 v2, p1, 0x2

    aget-byte v2, v0, v2

    shl-int/lit8 v2, v2, 0x10

    const/high16 v3, 0xff0000

    and-int/2addr v2, v3

    or-int/2addr v1, v2

    add-int/lit8 v2, p1, 0x1

    aget-byte v2, v0, v2

    shl-int/lit8 v2, v2, 0x8

    const v3, 0xff00

    and-int/2addr v2, v3

    or-int/2addr v1, v2

    add-int/lit8 p1, p1, 0x0

    aget-byte p1, v0, p1

    shl-int/lit8 p1, p1, 0x0

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p1, v1

    return p1
.end method

.method public a(Ljava/io/InputStream;)Lorg/w3c/dom/Document;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/xml/parsers/ParserConfigurationException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    new-instance v1, Lcom/tencent/turingfd/sdk/ams/ad/public;

    invoke-direct {v1}, Lcom/tencent/turingfd/sdk/ams/ad/public;-><init>()V

    .line 2
    iput-object v1, v0, Lcom/tencent/turingfd/sdk/ams/ad/return;->a:Lcom/tencent/turingfd/sdk/ams/ad/public;

    .line 5
    invoke-virtual/range {p1 .. p1}, Ljava/io/InputStream;->available()I

    move-result v2

    new-array v2, v2, [B

    iput-object v2, v0, Lcom/tencent/turingfd/sdk/ams/ad/return;->c:[B

    move-object/from16 v3, p1

    .line 6
    invoke-virtual {v3, v2}, Ljava/io/InputStream;->read([B)I

    .line 7
    invoke-virtual/range {p1 .. p1}, Ljava/io/InputStream;->close()V

    .line 8
    :goto_0
    iget v2, v0, Lcom/tencent/turingfd/sdk/ams/ad/return;->i:I

    iget-object v3, v0, Lcom/tencent/turingfd/sdk/ams/ad/return;->c:[B

    array-length v3, v3

    if-ge v2, v3, :cond_18

    .line 9
    invoke-virtual {v0, v2}, Lcom/tencent/turingfd/sdk/ams/ad/return;->a(I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_17

    const v4, 0x80003

    if-eq v2, v4, :cond_16

    const v4, 0x80180

    const/4 v6, 0x0

    if-eq v2, v4, :cond_14

    const v4, 0x1c0001

    const v7, 0xff00

    if-eq v2, v4, :cond_f

    packed-switch v2, :pswitch_data_0

    .line 39
    iget v2, v0, Lcom/tencent/turingfd/sdk/ams/ad/return;->i:I

    add-int/lit8 v2, v2, 0x4

    iput v2, v0, Lcom/tencent/turingfd/sdk/ams/ad/return;->i:I

    goto :goto_0

    .line 40
    :pswitch_0
    iget v2, v0, Lcom/tencent/turingfd/sdk/ams/ad/return;->i:I

    add-int/lit8 v2, v2, 0x10

    invoke-virtual {v0, v2}, Lcom/tencent/turingfd/sdk/ams/ad/return;->a(I)I

    move-result v2

    .line 42
    invoke-virtual {v0, v2}, Lcom/tencent/turingfd/sdk/ams/ad/return;->b(I)Ljava/lang/String;

    move-result-object v2

    .line 43
    iget-object v3, v0, Lcom/tencent/turingfd/sdk/ams/ad/return;->a:Lcom/tencent/turingfd/sdk/ams/ad/public;

    .line 44
    iget-object v4, v3, Lcom/tencent/turingfd/sdk/ams/ad/public;->a:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/w3c/dom/Node;

    iget-object v3, v3, Lcom/tencent/turingfd/sdk/ams/ad/public;->b:Lorg/w3c/dom/Document;

    invoke-interface {v3, v2}, Lorg/w3c/dom/Document;->createCDATASection(Ljava/lang/String;)Lorg/w3c/dom/CDATASection;

    move-result-object v2

    invoke-interface {v4, v2}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 45
    iget v2, v0, Lcom/tencent/turingfd/sdk/ams/ad/return;->i:I

    add-int/lit8 v2, v2, 0x1c

    iput v2, v0, Lcom/tencent/turingfd/sdk/ams/ad/return;->i:I

    goto :goto_0

    .line 46
    :pswitch_1
    iget v2, v0, Lcom/tencent/turingfd/sdk/ams/ad/return;->i:I

    add-int/lit8 v2, v2, 0x10

    invoke-virtual {v0, v2}, Lcom/tencent/turingfd/sdk/ams/ad/return;->a(I)I

    move-result v2

    .line 47
    iget v4, v0, Lcom/tencent/turingfd/sdk/ams/ad/return;->i:I

    add-int/lit8 v4, v4, 0x14

    invoke-virtual {v0, v4}, Lcom/tencent/turingfd/sdk/ams/ad/return;->a(I)I

    move-result v4

    .line 49
    invoke-virtual {v0, v4}, Lcom/tencent/turingfd/sdk/ams/ad/return;->b(I)Ljava/lang/String;

    if-ne v2, v3, :cond_0

    goto :goto_1

    .line 54
    :cond_0
    invoke-virtual {v0, v2}, Lcom/tencent/turingfd/sdk/ams/ad/return;->b(I)Ljava/lang/String;

    .line 57
    :goto_1
    iget-object v2, v0, Lcom/tencent/turingfd/sdk/ams/ad/return;->a:Lcom/tencent/turingfd/sdk/ams/ad/public;

    .line 58
    iget-object v2, v2, Lcom/tencent/turingfd/sdk/ams/ad/public;->a:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 59
    iget v2, v0, Lcom/tencent/turingfd/sdk/ams/ad/return;->i:I

    add-int/lit8 v2, v2, 0x18

    iput v2, v0, Lcom/tencent/turingfd/sdk/ams/ad/return;->i:I

    goto :goto_0

    .line 60
    :pswitch_2
    iget v2, v0, Lcom/tencent/turingfd/sdk/ams/ad/return;->i:I

    add-int/lit8 v2, v2, 0x10

    invoke-virtual {v0, v2}, Lcom/tencent/turingfd/sdk/ams/ad/return;->a(I)I

    move-result v2

    .line 61
    iget v8, v0, Lcom/tencent/turingfd/sdk/ams/ad/return;->i:I

    add-int/lit8 v8, v8, 0x14

    invoke-virtual {v0, v8}, Lcom/tencent/turingfd/sdk/ams/ad/return;->a(I)I

    move-result v8

    .line 62
    iget v9, v0, Lcom/tencent/turingfd/sdk/ams/ad/return;->i:I

    add-int/lit8 v9, v9, 0x1c

    .line 63
    iget-object v10, v0, Lcom/tencent/turingfd/sdk/ams/ad/return;->c:[B

    add-int/lit8 v11, v9, 0x1

    aget-byte v11, v10, v11

    shl-int/lit8 v11, v11, 0x8

    and-int/2addr v7, v11

    add-int/2addr v9, v6

    aget-byte v9, v10, v9

    shl-int/2addr v9, v6

    and-int/lit16 v9, v9, 0xff

    or-int/2addr v7, v9

    .line 64
    invoke-virtual {v0, v8}, Lcom/tencent/turingfd/sdk/ams/ad/return;->b(I)Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x3a

    const-string v10, ""

    if-ne v2, v3, :cond_1

    move-object v11, v8

    move-object v2, v10

    goto :goto_2

    .line 70
    :cond_1
    invoke-virtual {v0, v2}, Lcom/tencent/turingfd/sdk/ams/ad/return;->b(I)Ljava/lang/String;

    move-result-object v2

    .line 71
    iget-object v11, v0, Lcom/tencent/turingfd/sdk/ams/ad/return;->b:Ljava/util/Map;

    invoke-interface {v11, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 72
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, v0, Lcom/tencent/turingfd/sdk/ams/ad/return;->b:Ljava/util/Map;

    invoke-interface {v12, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto :goto_2

    :cond_2
    move-object v11, v8

    .line 79
    :goto_2
    iget v12, v0, Lcom/tencent/turingfd/sdk/ams/ad/return;->i:I

    add-int/lit8 v12, v12, 0x24

    iput v12, v0, Lcom/tencent/turingfd/sdk/ams/ad/return;->i:I

    .line 81
    new-array v12, v7, [Lcom/tencent/turingfd/sdk/ams/ad/else;

    move v13, v6

    :goto_3
    if-ge v13, v7, :cond_7

    .line 82
    iget v14, v0, Lcom/tencent/turingfd/sdk/ams/ad/return;->i:I

    invoke-virtual {v0, v14}, Lcom/tencent/turingfd/sdk/ams/ad/return;->a(I)I

    move-result v14

    .line 83
    iget v15, v0, Lcom/tencent/turingfd/sdk/ams/ad/return;->i:I

    add-int/lit8 v15, v15, 0x4

    invoke-virtual {v0, v15}, Lcom/tencent/turingfd/sdk/ams/ad/return;->a(I)I

    move-result v15

    .line 84
    iget v9, v0, Lcom/tencent/turingfd/sdk/ams/ad/return;->i:I

    add-int/lit8 v9, v9, 0x8

    invoke-virtual {v0, v9}, Lcom/tencent/turingfd/sdk/ams/ad/return;->a(I)I

    move-result v9

    .line 85
    iget v5, v0, Lcom/tencent/turingfd/sdk/ams/ad/return;->i:I

    add-int/lit8 v5, v5, 0xc

    invoke-virtual {v0, v5}, Lcom/tencent/turingfd/sdk/ams/ad/return;->a(I)I

    move-result v5

    .line 86
    iget v6, v0, Lcom/tencent/turingfd/sdk/ams/ad/return;->i:I

    add-int/lit8 v6, v6, 0x10

    invoke-virtual {v0, v6}, Lcom/tencent/turingfd/sdk/ams/ad/return;->a(I)I

    move-result v6

    .line 88
    new-instance v4, Lcom/tencent/turingfd/sdk/ams/ad/else;

    invoke-direct {v4}, Lcom/tencent/turingfd/sdk/ams/ad/else;-><init>()V

    .line 89
    invoke-virtual {v0, v15}, Lcom/tencent/turingfd/sdk/ams/ad/return;->b(I)Ljava/lang/String;

    move-result-object v15

    .line 90
    iput-object v15, v4, Lcom/tencent/turingfd/sdk/ams/ad/else;->a:Ljava/lang/String;

    if-ne v14, v3, :cond_3

    const/4 v14, 0x0

    .line 91
    iput-object v14, v4, Lcom/tencent/turingfd/sdk/ams/ad/else;->c:Ljava/lang/String;

    .line 92
    iput-object v14, v4, Lcom/tencent/turingfd/sdk/ams/ad/else;->b:Ljava/lang/String;

    goto :goto_4

    .line 93
    :cond_3
    invoke-virtual {v0, v14}, Lcom/tencent/turingfd/sdk/ams/ad/return;->b(I)Ljava/lang/String;

    move-result-object v14

    .line 94
    iget-object v15, v0, Lcom/tencent/turingfd/sdk/ams/ad/return;->b:Ljava/util/Map;

    invoke-interface {v15, v14}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 95
    iput-object v14, v4, Lcom/tencent/turingfd/sdk/ams/ad/else;->c:Ljava/lang/String;

    .line 96
    iget-object v15, v0, Lcom/tencent/turingfd/sdk/ams/ad/return;->b:Ljava/util/Map;

    invoke-interface {v15, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 97
    iput-object v14, v4, Lcom/tencent/turingfd/sdk/ams/ad/else;->b:Ljava/lang/String;

    :cond_4
    :goto_4
    if-ne v9, v3, :cond_6

    sparse-switch v5, :sswitch_data_0

    const/4 v9, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x2

    new-array v3, v15, [Ljava/lang/Object;

    .line 98
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v14

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v9

    const-string v5, "%08X/0x%08X"

    invoke-static {v5, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_6

    :sswitch_0
    const/4 v9, 0x1

    new-array v5, v9, [Ljava/lang/Object;

    .line 99
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v9, 0x0

    aput-object v6, v5, v9

    const-string v6, "#%08X"

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_6

    :sswitch_1
    if-eqz v6, :cond_5

    const/4 v5, 0x1

    goto :goto_5

    :cond_5
    const/4 v5, 0x0

    .line 100
    :goto_5
    invoke-static {v5}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v5

    goto :goto_6

    .line 101
    :sswitch_2
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_6

    :sswitch_3
    int-to-double v5, v6

    const-wide v14, 0x41dfffffffc00000L    # 2.147483647E9

    div-double/2addr v5, v14

    .line 102
    new-instance v9, Ljava/text/DecimalFormat;

    const-string v14, "#.##%"

    invoke-direct {v9, v14}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v5, v6}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v5

    goto :goto_6

    .line 103
    :sswitch_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    shr-int/lit8 v9, v6, 0x8

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v9, Lcom/tencent/turingfd/sdk/ams/ad/return;->j:[Ljava/lang/String;

    and-int/lit16 v6, v6, 0xff

    aget-object v6, v9, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_6

    .line 111
    :sswitch_5
    invoke-static {v6}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v5

    goto :goto_6

    .line 112
    :sswitch_6
    invoke-virtual {v0, v6}, Lcom/tencent/turingfd/sdk/ams/ad/return;->b(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_6

    :sswitch_7
    const/4 v9, 0x1

    new-array v5, v9, [Ljava/lang/Object;

    .line 140
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v14, 0x0

    aput-object v6, v5, v14

    const-string v6, "?id/0x%08X"

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto :goto_6

    :sswitch_8
    const/4 v9, 0x1

    const/4 v14, 0x0

    new-array v5, v9, [Ljava/lang/Object;

    .line 141
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v14

    const-string v6, "@id/0x%08X"

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 142
    :goto_6
    iput-object v5, v4, Lcom/tencent/turingfd/sdk/ams/ad/else;->d:Ljava/lang/String;

    goto :goto_7

    .line 143
    :cond_6
    invoke-virtual {v0, v9}, Lcom/tencent/turingfd/sdk/ams/ad/return;->b(I)Ljava/lang/String;

    move-result-object v3

    .line 144
    iput-object v3, v4, Lcom/tencent/turingfd/sdk/ams/ad/else;->d:Ljava/lang/String;

    .line 145
    :goto_7
    aput-object v4, v12, v13

    .line 148
    iget v3, v0, Lcom/tencent/turingfd/sdk/ams/ad/return;->i:I

    add-int/lit8 v3, v3, 0x14

    iput v3, v0, Lcom/tencent/turingfd/sdk/ams/ad/return;->i:I

    add-int/lit8 v13, v13, 0x1

    const/4 v3, -0x1

    const/4 v6, 0x0

    const/16 v9, 0x3a

    goto/16 :goto_3

    .line 151
    :cond_7
    iget-object v3, v0, Lcom/tencent/turingfd/sdk/ams/ad/return;->a:Lcom/tencent/turingfd/sdk/ams/ad/public;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v2, :cond_9

    .line 152
    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    goto :goto_8

    :cond_8
    const/4 v9, 0x0

    goto :goto_9

    :cond_9
    :goto_8
    const/4 v9, 0x1

    :goto_9
    if-eqz v9, :cond_a

    .line 153
    iget-object v2, v3, Lcom/tencent/turingfd/sdk/ams/ad/public;->b:Lorg/w3c/dom/Document;

    invoke-interface {v2, v8}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v2

    goto :goto_a

    .line 155
    :cond_a
    iget-object v4, v3, Lcom/tencent/turingfd/sdk/ams/ad/public;->b:Lorg/w3c/dom/Document;

    invoke-interface {v4, v2, v11}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v2

    :goto_a
    const/4 v9, 0x0

    :goto_b
    if-ge v9, v7, :cond_e

    .line 159
    aget-object v4, v12, v9

    .line 160
    iget-object v5, v4, Lcom/tencent/turingfd/sdk/ams/ad/else;->c:Ljava/lang/String;

    if-eqz v5, :cond_c

    .line 161
    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    goto :goto_c

    :cond_b
    const/4 v5, 0x0

    goto :goto_d

    :cond_c
    :goto_c
    const/4 v5, 0x1

    :goto_d
    if-eqz v5, :cond_d

    .line 162
    iget-object v5, v4, Lcom/tencent/turingfd/sdk/ams/ad/else;->a:Ljava/lang/String;

    .line 163
    iget-object v4, v4, Lcom/tencent/turingfd/sdk/ams/ad/else;->d:Ljava/lang/String;

    .line 164
    invoke-interface {v2, v5, v4}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v8, 0x3a

    goto :goto_e

    .line 165
    :cond_d
    iget-object v5, v4, Lcom/tencent/turingfd/sdk/ams/ad/else;->c:Ljava/lang/String;

    .line 166
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 167
    iget-object v8, v4, Lcom/tencent/turingfd/sdk/ams/ad/else;->b:Ljava/lang/String;

    .line 168
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v8, 0x3a

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 169
    iget-object v11, v4, Lcom/tencent/turingfd/sdk/ams/ad/else;->a:Ljava/lang/String;

    .line 170
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 171
    iget-object v4, v4, Lcom/tencent/turingfd/sdk/ams/ad/else;->d:Ljava/lang/String;

    .line 172
    invoke-interface {v2, v5, v6, v4}, Lorg/w3c/dom/Element;->setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_e
    add-int/lit8 v9, v9, 0x1

    goto :goto_b

    .line 178
    :cond_e
    iget-object v4, v3, Lcom/tencent/turingfd/sdk/ams/ad/public;->a:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/w3c/dom/Node;

    invoke-interface {v4, v2}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 179
    iget-object v3, v3, Lcom/tencent/turingfd/sdk/ams/ad/public;->a:Ljava/util/Stack;

    invoke-virtual {v3, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :pswitch_3
    move v9, v6

    .line 180
    invoke-virtual {v0, v9}, Lcom/tencent/turingfd/sdk/ams/ad/return;->a(Z)V

    goto/16 :goto_0

    :pswitch_4
    const/4 v2, 0x1

    .line 181
    invoke-virtual {v0, v2}, Lcom/tencent/turingfd/sdk/ams/ad/return;->a(Z)V

    goto/16 :goto_0

    :cond_f
    move v9, v6

    .line 182
    iget v2, v0, Lcom/tencent/turingfd/sdk/ams/ad/return;->i:I

    add-int/lit8 v2, v2, 0x4

    invoke-virtual {v0, v2}, Lcom/tencent/turingfd/sdk/ams/ad/return;->a(I)I

    move-result v2

    .line 183
    iget v3, v0, Lcom/tencent/turingfd/sdk/ams/ad/return;->i:I

    add-int/lit8 v3, v3, 0x8

    invoke-virtual {v0, v3}, Lcom/tencent/turingfd/sdk/ams/ad/return;->a(I)I

    move-result v3

    iput v3, v0, Lcom/tencent/turingfd/sdk/ams/ad/return;->f:I

    .line 184
    iget v3, v0, Lcom/tencent/turingfd/sdk/ams/ad/return;->i:I

    add-int/lit8 v3, v3, 0xc

    invoke-virtual {v0, v3}, Lcom/tencent/turingfd/sdk/ams/ad/return;->a(I)I

    move-result v3

    iput v3, v0, Lcom/tencent/turingfd/sdk/ams/ad/return;->g:I

    .line 185
    iget v3, v0, Lcom/tencent/turingfd/sdk/ams/ad/return;->i:I

    add-int/lit8 v4, v3, 0x14

    .line 186
    invoke-virtual {v0, v4}, Lcom/tencent/turingfd/sdk/ams/ad/return;->a(I)I

    move-result v4

    add-int/2addr v4, v3

    .line 187
    iget v3, v0, Lcom/tencent/turingfd/sdk/ams/ad/return;->i:I

    add-int/lit8 v3, v3, 0x18

    invoke-virtual {v0, v3}, Lcom/tencent/turingfd/sdk/ams/ad/return;->a(I)I

    move-result v3

    .line 189
    iget v5, v0, Lcom/tencent/turingfd/sdk/ams/ad/return;->f:I

    new-array v5, v5, [Ljava/lang/String;

    iput-object v5, v0, Lcom/tencent/turingfd/sdk/ams/ad/return;->d:[Ljava/lang/String;

    move v5, v9

    .line 191
    :goto_f
    iget v6, v0, Lcom/tencent/turingfd/sdk/ams/ad/return;->f:I

    if-ge v5, v6, :cond_12

    .line 192
    iget v6, v0, Lcom/tencent/turingfd/sdk/ams/ad/return;->i:I

    add-int/lit8 v8, v5, 0x7

    mul-int/lit8 v8, v8, 0x4

    add-int/2addr v8, v6

    .line 193
    invoke-virtual {v0, v8}, Lcom/tencent/turingfd/sdk/ams/ad/return;->a(I)I

    move-result v6

    add-int/2addr v6, v4

    .line 194
    iget-object v8, v0, Lcom/tencent/turingfd/sdk/ams/ad/return;->d:[Ljava/lang/String;

    .line 195
    iget-object v10, v0, Lcom/tencent/turingfd/sdk/ams/ad/return;->c:[B

    add-int/lit8 v11, v6, 0x1

    aget-byte v12, v10, v11

    aget-byte v13, v10, v6

    if-ne v12, v13, :cond_10

    .line 196
    aget-byte v10, v10, v6

    .line 197
    new-array v11, v10, [B

    move v12, v9

    :goto_10
    if-ge v12, v10, :cond_11

    .line 199
    iget-object v13, v0, Lcom/tencent/turingfd/sdk/ams/ad/return;->c:[B

    add-int/lit8 v14, v6, 0x2

    add-int/2addr v14, v12

    aget-byte v13, v13, v14

    aput-byte v13, v11, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_10

    .line 203
    :cond_10
    aget-byte v11, v10, v11

    shl-int/lit8 v11, v11, 0x8

    and-int/2addr v11, v7

    aget-byte v10, v10, v6

    and-int/lit16 v10, v10, 0xff

    or-int/2addr v10, v11

    .line 205
    new-array v11, v10, [B

    move v12, v9

    :goto_11
    if-ge v12, v10, :cond_11

    .line 207
    iget-object v13, v0, Lcom/tencent/turingfd/sdk/ams/ad/return;->c:[B

    add-int/lit8 v14, v6, 0x2

    mul-int/lit8 v15, v12, 0x2

    add-int/2addr v15, v14

    aget-byte v13, v13, v15

    aput-byte v13, v11, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_11

    .line 211
    :cond_11
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v11}, Ljava/lang/String;-><init>([B)V

    .line 212
    aput-object v6, v8, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_f

    :cond_12
    if-lez v3, :cond_13

    move v6, v9

    .line 217
    :goto_12
    iget v3, v0, Lcom/tencent/turingfd/sdk/ams/ad/return;->g:I

    if-ge v6, v3, :cond_13

    add-int/lit8 v6, v6, 0x1

    goto :goto_12

    .line 222
    :cond_13
    iget v3, v0, Lcom/tencent/turingfd/sdk/ams/ad/return;->i:I

    add-int/2addr v3, v2

    iput v3, v0, Lcom/tencent/turingfd/sdk/ams/ad/return;->i:I

    goto/16 :goto_0

    :cond_14
    move v9, v6

    .line 223
    iget v2, v0, Lcom/tencent/turingfd/sdk/ams/ad/return;->i:I

    add-int/lit8 v2, v2, 0x4

    invoke-virtual {v0, v2}, Lcom/tencent/turingfd/sdk/ams/ad/return;->a(I)I

    move-result v2

    .line 224
    div-int/lit8 v3, v2, 0x4

    const/4 v4, 0x2

    sub-int/2addr v3, v4

    iput v3, v0, Lcom/tencent/turingfd/sdk/ams/ad/return;->h:I

    .line 226
    new-array v3, v3, [I

    iput-object v3, v0, Lcom/tencent/turingfd/sdk/ams/ad/return;->e:[I

    .line 227
    :goto_13
    iget v3, v0, Lcom/tencent/turingfd/sdk/ams/ad/return;->h:I

    if-ge v6, v3, :cond_15

    .line 228
    iget-object v3, v0, Lcom/tencent/turingfd/sdk/ams/ad/return;->e:[I

    iget v4, v0, Lcom/tencent/turingfd/sdk/ams/ad/return;->i:I

    add-int/lit8 v5, v6, 0x2

    mul-int/lit8 v5, v5, 0x4

    add-int/2addr v5, v4

    invoke-virtual {v0, v5}, Lcom/tencent/turingfd/sdk/ams/ad/return;->a(I)I

    move-result v4

    aput v4, v3, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_13

    .line 231
    :cond_15
    iget v3, v0, Lcom/tencent/turingfd/sdk/ams/ad/return;->i:I

    add-int/2addr v3, v2

    iput v3, v0, Lcom/tencent/turingfd/sdk/ams/ad/return;->i:I

    goto/16 :goto_0

    .line 232
    :cond_16
    iget-object v2, v0, Lcom/tencent/turingfd/sdk/ams/ad/return;->a:Lcom/tencent/turingfd/sdk/ams/ad/public;

    .line 233
    iget-object v3, v2, Lcom/tencent/turingfd/sdk/ams/ad/public;->c:Ljavax/xml/parsers/DocumentBuilder;

    invoke-virtual {v3}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v3

    iput-object v3, v2, Lcom/tencent/turingfd/sdk/ams/ad/public;->b:Lorg/w3c/dom/Document;

    .line 234
    iget-object v2, v2, Lcom/tencent/turingfd/sdk/ams/ad/public;->a:Ljava/util/Stack;

    invoke-virtual {v2, v3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    iget v2, v0, Lcom/tencent/turingfd/sdk/ams/ad/return;->i:I

    add-int/lit8 v2, v2, 0x8

    iput v2, v0, Lcom/tencent/turingfd/sdk/ams/ad/return;->i:I

    goto/16 :goto_0

    .line 236
    :cond_17
    iget-object v2, v0, Lcom/tencent/turingfd/sdk/ams/ad/return;->a:Lcom/tencent/turingfd/sdk/ams/ad/public;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/16 :goto_0

    .line 246
    :cond_18
    iget-object v2, v0, Lcom/tencent/turingfd/sdk/ams/ad/return;->a:Lcom/tencent/turingfd/sdk/ams/ad/public;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 247
    iget-object v1, v1, Lcom/tencent/turingfd/sdk/ams/ad/public;->b:Lorg/w3c/dom/Document;

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x100100
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x1000008 -> :sswitch_8
        0x2000008 -> :sswitch_7
        0x3000008 -> :sswitch_6
        0x4000008 -> :sswitch_5
        0x5000008 -> :sswitch_4
        0x6000008 -> :sswitch_3
        0x10000008 -> :sswitch_2
        0x11000008 -> :sswitch_2
        0x12000008 -> :sswitch_1
        0x1c000008 -> :sswitch_0
        0x1d000008 -> :sswitch_0
    .end sparse-switch
.end method

.method public final a(Z)V
    .locals 2

    .line 248
    iget v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/return;->i:I

    add-int/lit8 v0, v0, 0x10

    invoke-virtual {p0, v0}, Lcom/tencent/turingfd/sdk/ams/ad/return;->a(I)I

    move-result v0

    .line 249
    iget v1, p0, Lcom/tencent/turingfd/sdk/ams/ad/return;->i:I

    add-int/lit8 v1, v1, 0x14

    invoke-virtual {p0, v1}, Lcom/tencent/turingfd/sdk/ams/ad/return;->a(I)I

    move-result v1

    .line 251
    invoke-virtual {p0, v1}, Lcom/tencent/turingfd/sdk/ams/ad/return;->b(I)Ljava/lang/String;

    move-result-object v1

    .line 252
    invoke-virtual {p0, v0}, Lcom/tencent/turingfd/sdk/ams/ad/return;->b(I)Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 255
    iget-object p1, p0, Lcom/tencent/turingfd/sdk/ams/ad/return;->a:Lcom/tencent/turingfd/sdk/ams/ad/public;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 256
    iget-object p1, p0, Lcom/tencent/turingfd/sdk/ams/ad/return;->b:Ljava/util/Map;

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 258
    :cond_0
    iget-object p1, p0, Lcom/tencent/turingfd/sdk/ams/ad/return;->a:Lcom/tencent/turingfd/sdk/ams/ad/public;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 259
    iget-object p1, p0, Lcom/tencent/turingfd/sdk/ams/ad/return;->b:Ljava/util/Map;

    invoke-interface {p1, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    :goto_0
    iget p1, p0, Lcom/tencent/turingfd/sdk/ams/ad/return;->i:I

    add-int/lit8 p1, p1, 0x18

    iput p1, p0, Lcom/tencent/turingfd/sdk/ams/ad/return;->i:I

    return-void
.end method

.method public final b(I)Ljava/lang/String;
    .locals 1

    if-ltz p1, :cond_0

    .line 1
    iget v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/return;->f:I

    if-ge p1, v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/return;->d:[Ljava/lang/String;

    aget-object p1, v0, p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method
