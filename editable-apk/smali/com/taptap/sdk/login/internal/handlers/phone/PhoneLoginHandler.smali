.class public final Lcom/taptap/sdk/login/internal/handlers/phone/PhoneLoginHandler;
.super Ljava/lang/Object;
.source "PhoneLoginHandler.kt"

# interfaces
.implements Lcom/taptap/sdk/login/internal/handlers/LoginHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taptap/sdk/login/internal/handlers/phone/PhoneLoginHandler$PhoneLoginResultCallback;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0001\u001aB\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0017H\u0016J\u0008\u0010\u0018\u001a\u00020\u0019H\u0016R.\u0010\u0003\u001a\u0016\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000bR\u001c\u0010\u000c\u001a\u0004\u0018\u00010\rX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/taptap/sdk/login/internal/handlers/phone/PhoneLoginHandler;",
        "Lcom/taptap/sdk/login/internal/handlers/LoginHandler;",
        "()V",
        "phoneLoginCallback",
        "Lkotlin/Function1;",
        "",
        "",
        "",
        "getPhoneLoginCallback",
        "()Lkotlin/jvm/functions/Function1;",
        "setPhoneLoginCallback",
        "(Lkotlin/jvm/functions/Function1;)V",
        "resultCallback",
        "Lcom/taptap/sdk/login/internal/handlers/phone/PhoneLoginHandler$PhoneLoginResultCallback;",
        "getResultCallback",
        "()Lcom/taptap/sdk/login/internal/handlers/phone/PhoneLoginHandler$PhoneLoginResultCallback;",
        "setResultCallback",
        "(Lcom/taptap/sdk/login/internal/handlers/phone/PhoneLoginHandler$PhoneLoginResultCallback;)V",
        "canHandle",
        "",
        "activity",
        "Landroid/app/Activity;",
        "request",
        "Lcom/taptap/sdk/login/internal/bean/LoginRequest;",
        "getFragment",
        "Lcom/taptap/sdk/login/internal/handlers/phone/PhoneLoginFragment;",
        "PhoneLoginResultCallback",
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
.field public static final INSTANCE:Lcom/taptap/sdk/login/internal/handlers/phone/PhoneLoginHandler;

.field private static phoneLoginCallback:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-[",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private static resultCallback:Lcom/taptap/sdk/login/internal/handlers/phone/PhoneLoginHandler$PhoneLoginResultCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/taptap/sdk/login/internal/handlers/phone/PhoneLoginHandler;

    invoke-direct {v0}, Lcom/taptap/sdk/login/internal/handlers/phone/PhoneLoginHandler;-><init>()V

    sput-object v0, Lcom/taptap/sdk/login/internal/handlers/phone/PhoneLoginHandler;->INSTANCE:Lcom/taptap/sdk/login/internal/handlers/phone/PhoneLoginHandler;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 7
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

    .line 12
    sget-object p1, Lcom/taptap/sdk/login/internal/handlers/phone/PhoneLoginHandler;->phoneLoginCallback:Lkotlin/jvm/functions/Function1;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public bridge synthetic getFragment()Landroid/app/Fragment;
    .locals 1

    .line 7
    invoke-virtual {p0}, Lcom/taptap/sdk/login/internal/handlers/phone/PhoneLoginHandler;->getFragment()Lcom/taptap/sdk/login/internal/handlers/phone/PhoneLoginFragment;

    move-result-object v0

    check-cast v0, Landroid/app/Fragment;

    return-object v0
.end method

.method public getFragment()Lcom/taptap/sdk/login/internal/handlers/phone/PhoneLoginFragment;
    .locals 1

    .line 14
    new-instance v0, Lcom/taptap/sdk/login/internal/handlers/phone/PhoneLoginFragment;

    invoke-direct {v0}, Lcom/taptap/sdk/login/internal/handlers/phone/PhoneLoginFragment;-><init>()V

    return-object v0
.end method

.method public final getPhoneLoginCallback()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "[",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 9
    sget-object v0, Lcom/taptap/sdk/login/internal/handlers/phone/PhoneLoginHandler;->phoneLoginCallback:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public final getResultCallback()Lcom/taptap/sdk/login/internal/handlers/phone/PhoneLoginHandler$PhoneLoginResultCallback;
    .locals 1

    .line 10
    sget-object v0, Lcom/taptap/sdk/login/internal/handlers/phone/PhoneLoginHandler;->resultCallback:Lcom/taptap/sdk/login/internal/handlers/phone/PhoneLoginHandler$PhoneLoginResultCallback;

    return-object v0
.end method

.method public final setPhoneLoginCallback(Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-[",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 9
    sput-object p1, Lcom/taptap/sdk/login/internal/handlers/phone/PhoneLoginHandler;->phoneLoginCallback:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public final setResultCallback(Lcom/taptap/sdk/login/internal/handlers/phone/PhoneLoginHandler$PhoneLoginResultCallback;)V
    .locals 0

    .line 10
    sput-object p1, Lcom/taptap/sdk/login/internal/handlers/phone/PhoneLoginHandler;->resultCallback:Lcom/taptap/sdk/login/internal/handlers/phone/PhoneLoginHandler$PhoneLoginResultCallback;

    return-void
.end method
