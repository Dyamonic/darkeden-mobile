.class public interface abstract Lcom/taptap/sdk/login/internal/handlers/phone/PhoneLoginHandler$PhoneLoginResultCallback;
.super Ljava/lang/Object;
.source "PhoneLoginHandler.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taptap/sdk/login/internal/handlers/phone/PhoneLoginHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PhoneLoginResultCallback"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0011\n\u0002\u0008\u0002\u0008f\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H&J1\u0010\u0004\u001a\u00020\u00032\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u000e\u0010\u0008\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\tH&\u00a2\u0006\u0002\u0010\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/taptap/sdk/login/internal/handlers/phone/PhoneLoginHandler$PhoneLoginResultCallback;",
        "",
        "cancelLogin",
        "",
        "continueWebLogin",
        "token",
        "",
        "preferredLoginType",
        "scopes",
        "",
        "(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V",
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


# virtual methods
.method public abstract cancelLogin()V
.end method

.method public abstract continueWebLogin(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
.end method
