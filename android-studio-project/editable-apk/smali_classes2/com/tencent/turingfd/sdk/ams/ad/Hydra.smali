.class public final Lcom/tencent/turingfd/sdk/ams/ad/Hydra;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Lcom/tencent/turingfd/sdk/ams/ad/Hydra;


# instance fields
.field public final a:Lcom/tencent/turingfd/sdk/ams/ad/LeoMinor;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/util/Locale;

    .line 1
    invoke-static {v0}, Lcom/tencent/turingfd/sdk/ams/ad/Hydra;->a([Ljava/util/Locale;)Lcom/tencent/turingfd/sdk/ams/ad/Hydra;

    move-result-object v0

    sput-object v0, Lcom/tencent/turingfd/sdk/ams/ad/Hydra;->b:Lcom/tencent/turingfd/sdk/ams/ad/Hydra;

    return-void
.end method

.method public constructor <init>(Lcom/tencent/turingfd/sdk/ams/ad/LeoMinor;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/tencent/turingfd/sdk/ams/ad/Hydra;->a:Lcom/tencent/turingfd/sdk/ams/ad/LeoMinor;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/tencent/turingfd/sdk/ams/ad/Hydra;
    .locals 10

    if-eqz p0, :cond_a

    .line 5
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    :cond_0
    const-string v0, ","

    const/4 v1, -0x1

    .line 8
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    .line 9
    array-length v0, p0

    new-array v2, v0, [Ljava/util/Locale;

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v0, :cond_9

    .line 11
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x15

    if-lt v5, v6, :cond_1

    .line 12
    aget-object v5, p0, v4

    .line 13
    invoke-static {v5}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v5

    goto/16 :goto_1

    .line 14
    :cond_1
    aget-object v5, p0, v4

    const-string v6, "-"

    .line 15
    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    const/4 v8, 0x2

    const/4 v9, 0x1

    if-eqz v7, :cond_4

    .line 16
    invoke-virtual {v5, v6, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v6

    .line 17
    array-length v7, v6

    if-le v7, v8, :cond_2

    .line 18
    new-instance v5, Ljava/util/Locale;

    aget-object v7, v6, v3

    aget-object v9, v6, v9

    aget-object v6, v6, v8

    invoke-direct {v5, v7, v9, v6}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 19
    :cond_2
    array-length v7, v6

    if-le v7, v9, :cond_3

    .line 20
    new-instance v5, Ljava/util/Locale;

    aget-object v7, v6, v3

    aget-object v6, v6, v9

    invoke-direct {v5, v7, v6}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 21
    :cond_3
    array-length v7, v6

    if-ne v7, v9, :cond_7

    .line 22
    new-instance v5, Ljava/util/Locale;

    aget-object v6, v6, v3

    invoke-direct {v5, v6}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const-string v6, "_"

    .line 24
    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 25
    invoke-virtual {v5, v6, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v6

    .line 26
    array-length v7, v6

    if-le v7, v8, :cond_5

    .line 27
    new-instance v5, Ljava/util/Locale;

    aget-object v7, v6, v3

    aget-object v9, v6, v9

    aget-object v6, v6, v8

    invoke-direct {v5, v7, v9, v6}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 28
    :cond_5
    array-length v7, v6

    if-le v7, v9, :cond_6

    .line 29
    new-instance v5, Ljava/util/Locale;

    aget-object v7, v6, v3

    aget-object v6, v6, v9

    invoke-direct {v5, v7, v6}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 30
    :cond_6
    array-length v7, v6

    if-ne v7, v9, :cond_7

    .line 31
    new-instance v5, Ljava/util/Locale;

    aget-object v6, v6, v3

    invoke-direct {v5, v6}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 37
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can not parse language tag: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 38
    :cond_8
    new-instance v6, Ljava/util/Locale;

    invoke-direct {v6, v5}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    move-object v5, v6

    .line 39
    :goto_1
    aput-object v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 41
    :cond_9
    invoke-static {v2}, Lcom/tencent/turingfd/sdk/ams/ad/Hydra;->a([Ljava/util/Locale;)Lcom/tencent/turingfd/sdk/ams/ad/Hydra;

    move-result-object p0

    return-object p0

    .line 42
    :cond_a
    :goto_2
    sget-object p0, Lcom/tencent/turingfd/sdk/ams/ad/Hydra;->b:Lcom/tencent/turingfd/sdk/ams/ad/Hydra;

    return-object p0
.end method

.method public static varargs a([Ljava/util/Locale;)Lcom/tencent/turingfd/sdk/ams/ad/Hydra;
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 2
    new-instance v0, Landroid/os/LocaleList;

    invoke-direct {v0, p0}, Landroid/os/LocaleList;-><init>([Ljava/util/Locale;)V

    .line 3
    new-instance p0, Lcom/tencent/turingfd/sdk/ams/ad/Hydra;

    new-instance v1, Lcom/tencent/turingfd/sdk/ams/ad/Leo;

    invoke-direct {v1, v0}, Lcom/tencent/turingfd/sdk/ams/ad/Leo;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v1}, Lcom/tencent/turingfd/sdk/ams/ad/Hydra;-><init>(Lcom/tencent/turingfd/sdk/ams/ad/LeoMinor;)V

    return-object p0

    .line 4
    :cond_0
    new-instance v0, Lcom/tencent/turingfd/sdk/ams/ad/Hydra;

    new-instance v1, Lcom/tencent/turingfd/sdk/ams/ad/Lacerta;

    invoke-direct {v1, p0}, Lcom/tencent/turingfd/sdk/ams/ad/Lacerta;-><init>([Ljava/util/Locale;)V

    invoke-direct {v0, v1}, Lcom/tencent/turingfd/sdk/ams/ad/Hydra;-><init>(Lcom/tencent/turingfd/sdk/ams/ad/LeoMinor;)V

    return-object v0
.end method
