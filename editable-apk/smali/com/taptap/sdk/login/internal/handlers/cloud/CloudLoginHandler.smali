.class public final Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginHandler;
.super Ljava/lang/Object;
.source "CloudLoginHandler.kt"

# interfaces
.implements Lcom/taptap/sdk/login/internal/handlers/LoginHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginHandler$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000 \u000b2\u00020\u0001:\u0001\u000bB\u0005\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0016J\u0008\u0010\t\u001a\u00020\nH\u0016\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginHandler;",
        "Lcom/taptap/sdk/login/internal/handlers/LoginHandler;",
        "()V",
        "canHandle",
        "",
        "activity",
        "Landroid/app/Activity;",
        "request",
        "Lcom/taptap/sdk/login/internal/bean/LoginRequest;",
        "getFragment",
        "Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginFragment;",
        "Companion",
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


# static fields
.field public static final Companion:Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginHandler$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginHandler$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginHandler$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginHandler;->Companion:Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginHandler$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public canHandle(Landroid/app/Activity;Lcom/taptap/sdk/login/internal/bean/LoginRequest;)Z
    .locals 3

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "request"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    new-instance p2, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginHandler$canHandle$connection$1;

    invoke-direct {p2, p1}, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginHandler$canHandle$connection$1;-><init>(Landroid/app/Activity;)V

    .line 27
    sget-object v0, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginHandler;->Companion:Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginHandler$Companion;

    invoke-virtual {v0}, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginHandler$Companion;->getIntent()Landroid/content/Intent;

    move-result-object v0

    check-cast p2, Landroid/content/ServiceConnection;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, p2, v1}, Landroid/app/Activity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 29
    sget-object v1, Lcom/taptap/sdk/login/internal/LoginManager;->INSTANCE:Lcom/taptap/sdk/login/internal/LoginManager;

    sget-object v2, Lcom/taptap/sdk/login/internal/LoginEntrance;->CLOUD:Lcom/taptap/sdk/login/internal/LoginEntrance;

    invoke-virtual {v1, v2}, Lcom/taptap/sdk/login/internal/LoginManager;->setCurrentLoginEntrance$tap_login_release(Lcom/taptap/sdk/login/internal/LoginEntrance;)V

    .line 31
    :cond_0
    invoke-virtual {p1, p2}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V

    return v0
.end method

.method public bridge synthetic getFragment()Landroid/app/Fragment;
    .locals 1

    .line 14
    invoke-virtual {p0}, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginHandler;->getFragment()Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginFragment;

    move-result-object v0

    check-cast v0, Landroid/app/Fragment;

    return-object v0
.end method

.method public getFragment()Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginFragment;
    .locals 1

    .line 35
    new-instance v0, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginFragment;

    invoke-direct {v0}, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginFragment;-><init>()V

    return-object v0
.end method
