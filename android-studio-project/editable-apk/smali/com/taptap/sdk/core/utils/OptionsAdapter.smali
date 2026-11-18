.class public final Lcom/taptap/sdk/core/utils/OptionsAdapter;
.super Ljava/lang/Object;
.source "OptionsAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nOptionsAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OptionsAdapter.kt\ncom/taptap/sdk/core/utils/OptionsAdapter\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,34:1\n1785#2,3:35\n*S KotlinDebug\n*F\n+ 1 OptionsAdapter.kt\ncom/taptap/sdk/core/utils/OptionsAdapter\n*L\n16#1:35,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u001a\u0010\u0003\u001a\u00020\u0004*\u00020\u00042\u000e\u0010\u0005\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u0006\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/taptap/sdk/core/utils/OptionsAdapter;",
        "",
        "()V",
        "adapt",
        "Lcom/taptap/sdk/initializer/TapTapSdkInitializer$Builder;",
        "options",
        "",
        "",
        "tap-core_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/taptap/sdk/core/utils/OptionsAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/taptap/sdk/core/utils/OptionsAdapter;

    invoke-direct {v0}, Lcom/taptap/sdk/core/utils/OptionsAdapter;-><init>()V

    sput-object v0, Lcom/taptap/sdk/core/utils/OptionsAdapter;->INSTANCE:Lcom/taptap/sdk/core/utils/OptionsAdapter;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final adapt(Lcom/taptap/sdk/initializer/TapTapSdkInitializer$Builder;Ljava/util/List;)Lcom/taptap/sdk/initializer/TapTapSdkInitializer$Builder;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taptap/sdk/initializer/TapTapSdkInitializer$Builder;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/taptap/sdk/initializer/TapTapSdkInitializer$Builder;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "options"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    check-cast p2, Ljava/lang/Iterable;

    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->filterNotNull(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p2

    check-cast p2, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 36
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 17
    move-object v2, v0

    check-cast v2, Ljava/util/Map;

    sget-object v3, Lcom/taptap/sdk/core/utils/JSONUtils;->INSTANCE:Lcom/taptap/sdk/core/utils/JSONUtils;

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/taptap/sdk/core/utils/JSONUtils;->toMap(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_0

    :cond_0
    const-string p2, "enableToast"

    .line 22
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    instance-of v1, p2, Ljava/lang/Boolean;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p2, Ljava/lang/Boolean;

    goto :goto_1

    :cond_1
    move-object p2, v2

    :goto_1
    const/4 v1, 0x1

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    goto :goto_2

    :cond_2
    move p2, v1

    .line 21
    :goto_2
    invoke-virtual {p1, p2}, Lcom/taptap/sdk/initializer/TapTapSdkInitializer$Builder;->setEnableToast(Z)Lcom/taptap/sdk/initializer/TapTapSdkInitializer$Builder;

    const-string p2, "showSwitchAccount"

    .line 26
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    instance-of v3, p2, Ljava/lang/Boolean;

    if-eqz v3, :cond_3

    check-cast p2, Ljava/lang/Boolean;

    goto :goto_3

    :cond_3
    move-object p2, v2

    :goto_3
    if-eqz p2, :cond_4

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    goto :goto_4

    :cond_4
    const/4 p2, 0x0

    .line 25
    :goto_4
    invoke-virtual {p1, p2}, Lcom/taptap/sdk/initializer/TapTapSdkInitializer$Builder;->setShowSwitchAccount(Z)Lcom/taptap/sdk/initializer/TapTapSdkInitializer$Builder;

    const-string p2, "useAgeRange"

    .line 30
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_5

    move-object v2, p2

    check-cast v2, Ljava/lang/Boolean;

    :cond_5
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 29
    :cond_6
    invoke-virtual {p1, v1}, Lcom/taptap/sdk/initializer/TapTapSdkInitializer$Builder;->setUseAgeRange(Z)Lcom/taptap/sdk/initializer/TapTapSdkInitializer$Builder;

    return-object p1
.end method
