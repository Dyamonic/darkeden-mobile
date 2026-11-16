.class public final Lcom/taptap/sdk/initializer/TapTapSdkInitializer$Companion;
.super Ljava/lang/Object;
.source "TapTapSdkInitializer.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taptap/sdk/initializer/TapTapSdkInitializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/taptap/sdk/initializer/TapTapSdkInitializer$Companion;",
        "",
        "()V",
        "setPreferredLanguage",
        "",
        "language",
        "Lcom/taptap/sdk/initializer/api/model/Language;",
        "tap-initializer_release"
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

    .line 365
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/taptap/sdk/initializer/TapTapSdkInitializer$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final setPreferredLanguage(Lcom/taptap/sdk/initializer/api/model/Language;)V
    .locals 1

    const-string v0, "language"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 368
    sget-object v0, Lcom/taptap/sdk/kit/internal/utils/localize/TapLocalizeUtil;->INSTANCE:Lcom/taptap/sdk/kit/internal/utils/localize/TapLocalizeUtil;

    invoke-virtual {p1}, Lcom/taptap/sdk/initializer/api/model/Language;->getLanguage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/taptap/sdk/kit/internal/utils/localize/TapLocalizeUtil;->setPreferredLanguage(Ljava/lang/String;)V

    return-void
.end method
