.class public final Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginHandler$Companion;
.super Ljava/lang/Object;
.source "CloudLoginHandler.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCloudLoginHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CloudLoginHandler.kt\ncom/taptap/sdk/login/internal/handlers/cloud/CloudLoginHandler$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,36:1\n1#2:37\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u0003\u001a\u00020\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginHandler$Companion;",
        "",
        "()V",
        "getIntent",
        "Landroid/content/Intent;",
        "tap-login_release"
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

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginHandler$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getIntent()Landroid/content/Intent;
    .locals 2

    .line 17
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.cloud.taptap.gaming.daemon"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.cloud.taptap.gaming"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method
