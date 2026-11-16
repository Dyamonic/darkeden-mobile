.class public final synthetic Lcom/taptap/sdk/login/internal/handlers/cloud/-$$Lambda$CloudLoginFragment$r6AAUr_8khZ2FIXGss681fMvZvI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final synthetic f$0:Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/taptap/sdk/login/internal/handlers/cloud/-$$Lambda$CloudLoginFragment$r6AAUr_8khZ2FIXGss681fMvZvI;->f$0:Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginFragment;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 1

    iget-object v0, p0, Lcom/taptap/sdk/login/internal/handlers/cloud/-$$Lambda$CloudLoginFragment$r6AAUr_8khZ2FIXGss681fMvZvI;->f$0:Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginFragment;

    invoke-static {v0, p1}, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginFragment;->lambda$r6AAUr_8khZ2FIXGss681fMvZvI(Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginFragment;Landroid/os/Message;)Z

    move-result p1

    return p1
.end method
