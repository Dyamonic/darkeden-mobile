.class public final Lcom/taptap/sdk/initializer/api/model/Language$Companion;
.super Ljava/lang/Object;
.source "Language.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taptap/sdk/initializer/api/model/Language;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLanguage.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Language.kt\ncom/taptap/sdk/initializer/api/model/Language$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,106:1\n1#2:107\n8811#3,2:108\n9071#3,4:110\n*S KotlinDebug\n*F\n+ 1 Language.kt\ncom/taptap/sdk/initializer/api/model/Language$Companion\n*L\n103#1:108,2\n103#1:110,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0008J\u000f\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00040\nH\u00c6\u0001\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/taptap/sdk/initializer/api/model/Language$Companion;",
        "",
        "()V",
        "from",
        "Lcom/taptap/sdk/initializer/api/model/Language;",
        "index",
        "",
        "value",
        "",
        "serializer",
        "Lkotlinx/serialization/KSerializer;",
        "tap-initializer-api_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/taptap/sdk/initializer/api/model/Language$Companion;-><init>()V

    return-void
.end method

.method private final synthetic get$cachedSerializer$delegate()Lkotlin/Lazy;
    .locals 1

    .line 90
    invoke-static {}, Lcom/taptap/sdk/initializer/api/model/Language;->access$get$cachedSerializer$delegate$cp()Lkotlin/Lazy;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final from(I)Lcom/taptap/sdk/initializer/api/model/Language;
    .locals 2

    .line 96
    invoke-static {}, Lcom/taptap/sdk/initializer/api/model/Language;->values()[Lcom/taptap/sdk/initializer/api/model/Language;

    move-result-object v0

    if-ltz p1, :cond_0

    invoke-static {v0}, Lkotlin/collections/ArraysKt;->getLastIndex([Ljava/lang/Object;)I

    move-result v1

    if-gt p1, v1, :cond_0

    aget-object p1, v0, p1

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/taptap/sdk/initializer/api/model/Language;->AUTO:Lcom/taptap/sdk/initializer/api/model/Language;

    :goto_0
    return-object p1
.end method

.method public final from(Ljava/lang/String;)Lcom/taptap/sdk/initializer/api/model/Language;
    .locals 6

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    invoke-static {}, Lcom/taptap/sdk/initializer/api/model/Language;->values()[Lcom/taptap/sdk/initializer/api/model/Language;

    move-result-object v0

    .line 108
    array-length v1, v0

    invoke-static {v1}, Lkotlin/collections/MapsKt;->mapCapacity(I)I

    move-result v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v1

    .line 109
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast v2, Ljava/util/Map;

    .line 110
    array-length v1, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    .line 103
    invoke-virtual {v4}, Lcom/taptap/sdk/initializer/api/model/Language;->getLanguage()Ljava/lang/String;

    move-result-object v5

    .line 111
    invoke-interface {v2, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 103
    :cond_0
    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_1

    sget-object p1, Lcom/taptap/sdk/initializer/api/model/Language;->AUTO:Lcom/taptap/sdk/initializer/api/model/Language;

    :cond_1
    check-cast p1, Lcom/taptap/sdk/initializer/api/model/Language;

    return-object p1
.end method

.method public final serializer()Lkotlinx/serialization/KSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/serialization/KSerializer<",
            "Lcom/taptap/sdk/initializer/api/model/Language;",
            ">;"
        }
    .end annotation

    .line 90
    invoke-direct {p0}, Lcom/taptap/sdk/initializer/api/model/Language$Companion;->get$cachedSerializer$delegate()Lkotlin/Lazy;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/serialization/KSerializer;

    return-object v0
.end method
