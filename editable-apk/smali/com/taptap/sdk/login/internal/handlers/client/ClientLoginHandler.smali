.class public final Lcom/taptap/sdk/login/internal/handlers/client/ClientLoginHandler;
.super Ljava/lang/Object;
.source "ClientLoginHandler.kt"

# interfaces
.implements Lcom/taptap/sdk/login/internal/handlers/LoginHandler;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0016J\u0008\u0010\t\u001a\u00020\nH\u0016\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/taptap/sdk/login/internal/handlers/client/ClientLoginHandler;",
        "Lcom/taptap/sdk/login/internal/handlers/LoginHandler;",
        "()V",
        "canHandle",
        "",
        "activity",
        "Landroid/app/Activity;",
        "request",
        "Lcom/taptap/sdk/login/internal/bean/LoginRequest;",
        "getFragment",
        "Landroid/app/Fragment;",
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
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public canHandle(Landroid/app/Activity;Lcom/taptap/sdk/login/internal/bean/LoginRequest;)Z
    .locals 2

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "request"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/taptap/sdk/login/internal/handlers/client/IntentHelper;->INSTANCE:Lcom/taptap/sdk/login/internal/handlers/client/IntentHelper;

    invoke-virtual {v1, p2}, Lcom/taptap/sdk/login/internal/handlers/client/IntentHelper;->getAction(Lcom/taptap/sdk/login/internal/bean/LoginRequest;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 13
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getFragment()Landroid/app/Fragment;
    .locals 1

    .line 17
    new-instance v0, Lcom/taptap/sdk/login/internal/handlers/client/ClientLoginFragment;

    invoke-direct {v0}, Lcom/taptap/sdk/login/internal/handlers/client/ClientLoginFragment;-><init>()V

    check-cast v0, Landroid/app/Fragment;

    return-object v0
.end method
