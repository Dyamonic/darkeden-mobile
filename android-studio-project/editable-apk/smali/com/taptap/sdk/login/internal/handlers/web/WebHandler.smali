.class public final Lcom/taptap/sdk/login/internal/handlers/web/WebHandler;
.super Ljava/lang/Object;
.source "WebHandler.kt"

# interfaces
.implements Lcom/taptap/sdk/login/internal/handlers/LoginHandler;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0016J\u0008\u0010\t\u001a\u00020\nH\u0016\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/taptap/sdk/login/internal/handlers/web/WebHandler;",
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

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public canHandle(Landroid/app/Activity;Lcom/taptap/sdk/login/internal/bean/LoginRequest;)Z
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "request"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method public getFragment()Landroid/app/Fragment;
    .locals 1

    .line 11
    new-instance v0, Lcom/taptap/sdk/login/internal/handlers/web/WebLoginFragment;

    invoke-direct {v0}, Lcom/taptap/sdk/login/internal/handlers/web/WebLoginFragment;-><init>()V

    check-cast v0, Landroid/app/Fragment;

    return-object v0
.end method
