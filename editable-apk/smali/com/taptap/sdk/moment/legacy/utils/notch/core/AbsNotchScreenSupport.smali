.class public abstract Lcom/taptap/sdk/moment/legacy/utils/notch/core/AbsNotchScreenSupport;
.super Ljava/lang/Object;
.source "AbsNotchScreenSupport.java"

# interfaces
.implements Lcom/taptap/sdk/moment/legacy/utils/notch/core/INotchSupport;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getStatusHeight(Landroid/view/Window;)I
    .locals 0

    .line 11
    invoke-virtual {p1}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/taptap/sdk/moment/legacy/utils/notch/helper/NotchStatusBarUtils;->getStatusBarHeight(Landroid/content/Context;)I

    move-result p1

    return p1
.end method
