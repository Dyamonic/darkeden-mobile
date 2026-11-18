.class public Lcom/tencent/turingfd/sdk/ams/ad/GalacticCore$if;
.super Lcom/tencent/turingfd/sdk/ams/ad/GalacticCore;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/turingfd/sdk/ams/ad/GalacticCore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "if"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public b:I

.field public c:[Ljava/lang/String;

.field public d:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/tencent/turingfd/sdk/ams/ad/GalacticCore;-><init>()V

    const-string v0, "keystoreAlias == null"

    .line 10
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 7
    iput-object p1, p0, Lcom/tencent/turingfd/sdk/ams/ad/GalacticCore$if;->a:Ljava/lang/String;

    .line 8
    iput p2, p0, Lcom/tencent/turingfd/sdk/ams/ad/GalacticCore$if;->b:I

    return-void

    .line 9
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "keystoreAlias must not be empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public varargs a([Ljava/lang/String;)Lcom/tencent/turingfd/sdk/ams/ad/GalacticCore;
    .locals 1

    .line 40
    array-length v0, p1

    if-lez v0, :cond_0

    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    .line 41
    :cond_0
    iput-object p1, p0, Lcom/tencent/turingfd/sdk/ams/ad/GalacticCore$if;->c:[Ljava/lang/String;

    return-object p0
.end method

.method public a()Ljava/security/spec/AlgorithmParameterSpec;
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/InstantiationException;
        }
    .end annotation

    move-object/from16 v0, p0

    const-string v1, "android.security.keystore.KeyGenParameterSpec"

    .line 1
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/16 v2, 0x12

    new-array v3, v2, [Ljava/lang/Class;

    .line 2
    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    const-class v7, Ljava/security/spec/AlgorithmParameterSpec;

    const/4 v8, 0x2

    aput-object v7, v3, v8

    const-class v7, Ljavax/security/auth/x500/X500Principal;

    const/4 v9, 0x3

    aput-object v7, v3, v9

    const-class v7, Ljava/math/BigInteger;

    const/4 v10, 0x4

    aput-object v7, v3, v10

    const-class v7, Ljava/util/Date;

    const/4 v11, 0x5

    aput-object v7, v3, v11

    const-class v7, Ljava/util/Date;

    const/4 v12, 0x6

    aput-object v7, v3, v12

    const-class v7, Ljava/util/Date;

    const/4 v13, 0x7

    aput-object v7, v3, v13

    const-class v7, Ljava/util/Date;

    const/16 v14, 0x8

    aput-object v7, v3, v14

    const-class v7, Ljava/util/Date;

    const/16 v15, 0x9

    aput-object v7, v3, v15

    const/16 v7, 0xa

    aput-object v4, v3, v7

    const-class v16, [Ljava/lang/String;

    const/16 v17, 0xb

    aput-object v16, v3, v17

    const-class v16, [Ljava/lang/String;

    const/16 v18, 0xc

    aput-object v16, v3, v18

    const-class v16, [Ljava/lang/String;

    const/16 v19, 0xd

    aput-object v16, v3, v19

    const-class v16, [Ljava/lang/String;

    const/16 v20, 0xe

    aput-object v16, v3, v20

    sget-object v16, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/16 v21, 0xf

    aput-object v16, v3, v21

    const/16 v22, 0x10

    aput-object v16, v3, v22

    const/16 v16, 0x11

    aput-object v4, v3, v16

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    .line 21
    iget-object v3, v0, Lcom/tencent/turingfd/sdk/ams/ad/GalacticCore$if;->a:Ljava/lang/String;

    aput-object v3, v2, v5

    const/4 v3, -0x1

    .line 22
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    const/4 v4, 0x0

    aput-object v4, v2, v8

    aput-object v4, v2, v9

    aput-object v4, v2, v10

    aput-object v4, v2, v11

    aput-object v4, v2, v12

    aput-object v4, v2, v13

    aput-object v4, v2, v14

    aput-object v4, v2, v15

    iget v5, v0, Lcom/tencent/turingfd/sdk/ams/ad/GalacticCore$if;->b:I

    .line 31
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v7

    iget-object v5, v0, Lcom/tencent/turingfd/sdk/ams/ad/GalacticCore$if;->c:[Ljava/lang/String;

    aput-object v5, v2, v17

    aput-object v4, v2, v18

    iget-object v5, v0, Lcom/tencent/turingfd/sdk/ams/ad/GalacticCore$if;->d:[Ljava/lang/String;

    aput-object v5, v2, v19

    aput-object v4, v2, v20

    .line 36
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v4, v2, v21

    .line 37
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v4, v2, v22

    aput-object v3, v2, v16

    .line 39
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/spec/AlgorithmParameterSpec;

    return-object v1
.end method

.method public varargs b([Ljava/lang/String;)Lcom/tencent/turingfd/sdk/ams/ad/GalacticCore;
    .locals 1

    .line 1
    array-length v0, p1

    if-lez v0, :cond_0

    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    .line 2
    :cond_0
    iput-object p1, p0, Lcom/tencent/turingfd/sdk/ams/ad/GalacticCore$if;->d:[Ljava/lang/String;

    return-object p0
.end method
