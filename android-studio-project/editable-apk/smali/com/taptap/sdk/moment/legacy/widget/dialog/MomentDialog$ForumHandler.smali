.class Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$ForumHandler;
.super Landroid/os/Handler;
.source "MomentDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ForumHandler"
.end annotation


# instance fields
.field private final mFragmentWeRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;)V
    .locals 1

    .line 1080
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 1081
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$ForumHandler;->mFragmentWeRef:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 1086
    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$ForumHandler;->mFragmentWeRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;

    .line 1087
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x10

    const/4 v2, 0x4

    if-eq p1, v1, :cond_5

    const/16 v1, 0x11

    const/4 v3, 0x0

    if-eq p1, v1, :cond_4

    const/16 v1, 0x14

    if-eq p1, v1, :cond_3

    const/16 v1, 0x15

    if-eq p1, v1, :cond_2

    const/16 v2, 0x20

    if-eq p1, v2, :cond_0

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_6

    .line 1110
    invoke-static {v0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;->access$500(Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;)Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->clearCache(Z)V

    .line 1111
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge p1, v1, :cond_1

    .line 1112
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/CookieSyncManager;->startSync()V

    .line 1113
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object p1

    .line 1114
    invoke-virtual {p1}, Landroid/webkit/CookieManager;->removeAllCookie()V

    .line 1115
    invoke-virtual {p1}, Landroid/webkit/CookieManager;->removeSessionCookie()V

    .line 1116
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/CookieSyncManager;->stopSync()V

    .line 1117
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/CookieSyncManager;->sync()V

    goto :goto_0

    .line 1119
    :cond_1
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object p1

    new-instance v0, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$ForumHandler$1;

    invoke-direct {v0, p0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$ForumHandler$1;-><init>(Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$ForumHandler;)V

    invoke-virtual {p1, v0}, Landroid/webkit/CookieManager;->removeAllCookies(Landroid/webkit/ValueCallback;)V

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_6

    .line 1105
    invoke-static {v0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;->access$2100(Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;)Lcom/taptap/sdk/moment/legacy/widget/TTMGifView;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/taptap/sdk/moment/legacy/widget/TTMGifView;->setVisibility(I)V

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_6

    .line 1100
    invoke-static {v0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;->access$2100(Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;)Lcom/taptap/sdk/moment/legacy/widget/TTMGifView;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/taptap/sdk/moment/legacy/widget/TTMGifView;->setVisibility(I)V

    goto :goto_0

    :cond_4
    if-eqz v0, :cond_6

    .line 1095
    invoke-static {v0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;->access$2000(Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;)Landroid/widget/ImageButton;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

    :cond_5
    if-eqz v0, :cond_6

    .line 1090
    invoke-static {v0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;->access$2000(Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;)Landroid/widget/ImageButton;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_6
    :goto_0
    return-void
.end method
