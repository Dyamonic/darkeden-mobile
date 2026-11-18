.class public Lcom/yofi/sdk/utils/ToastUtils;
.super Ljava/lang/Object;
.source "ToastUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static show(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "activity",
            "msg"
        }
    .end annotation

    .line 15
    new-instance v0, Lcom/hjq/xtoast/XToast;

    invoke-direct {v0, p0}, Lcom/hjq/xtoast/XToast;-><init>(Landroid/app/Activity;)V

    .line 16
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "yofi_toast"

    const-string v4, "layout"

    invoke-virtual {v1, v3, v4, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/hjq/xtoast/XToast;->setView(I)Lcom/hjq/xtoast/XToast;

    move-result-object v0

    const/16 v1, 0x7d0

    .line 20
    invoke-virtual {v0, v1}, Lcom/hjq/xtoast/XToast;->setDuration(I)Lcom/hjq/xtoast/XToast;

    move-result-object v0

    const v1, 0x1030004

    .line 22
    invoke-virtual {v0, v1}, Lcom/hjq/xtoast/XToast;->setAnimStyle(I)Lcom/hjq/xtoast/XToast;

    move-result-object v0

    const/4 v1, 0x0

    .line 24
    invoke-virtual {v0, v1}, Lcom/hjq/xtoast/XToast;->setOutsideTouchable(Z)Lcom/hjq/xtoast/XToast;

    move-result-object v0

    const/4 v1, 0x0

    .line 26
    invoke-virtual {v0, v1}, Lcom/hjq/xtoast/XToast;->setBackgroundDimAmount(F)Lcom/hjq/xtoast/XToast;

    move-result-object v0

    .line 27
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string v2, "message_text"

    const-string v3, "id"

    invoke-virtual {v1, v2, v3, p0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v0, p0, p1}, Lcom/hjq/xtoast/XToast;->setText(ILjava/lang/CharSequence;)Lcom/hjq/xtoast/XToast;

    move-result-object p0

    .line 28
    invoke-virtual {p0}, Lcom/hjq/xtoast/XToast;->show()Lcom/hjq/xtoast/XToast;

    return-void
.end method

.method public static show(Landroid/app/Activity;Ljava/lang/String;I)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "activity",
            "msg",
            "duration"
        }
    .end annotation

    .line 34
    new-instance v0, Lcom/hjq/xtoast/XToast;

    invoke-direct {v0, p0}, Lcom/hjq/xtoast/XToast;-><init>(Landroid/app/Activity;)V

    .line 35
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "yofi_toast"

    const-string v4, "layout"

    invoke-virtual {v1, v3, v4, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/hjq/xtoast/XToast;->setView(I)Lcom/hjq/xtoast/XToast;

    move-result-object v0

    .line 39
    invoke-virtual {v0, p2}, Lcom/hjq/xtoast/XToast;->setDuration(I)Lcom/hjq/xtoast/XToast;

    move-result-object p2

    const v0, 0x1030004

    .line 41
    invoke-virtual {p2, v0}, Lcom/hjq/xtoast/XToast;->setAnimStyle(I)Lcom/hjq/xtoast/XToast;

    move-result-object p2

    const/4 v0, 0x0

    .line 43
    invoke-virtual {p2, v0}, Lcom/hjq/xtoast/XToast;->setOutsideTouchable(Z)Lcom/hjq/xtoast/XToast;

    move-result-object p2

    const/4 v0, 0x0

    .line 45
    invoke-virtual {p2, v0}, Lcom/hjq/xtoast/XToast;->setBackgroundDimAmount(F)Lcom/hjq/xtoast/XToast;

    move-result-object p2

    .line 46
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string v1, "message_text"

    const-string v2, "id"

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p2, p0, p1}, Lcom/hjq/xtoast/XToast;->setText(ILjava/lang/CharSequence;)Lcom/hjq/xtoast/XToast;

    move-result-object p0

    .line 47
    invoke-virtual {p0}, Lcom/hjq/xtoast/XToast;->show()Lcom/hjq/xtoast/XToast;

    return-void
.end method

.method public static showToast(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "msg"
        }
    .end annotation

    const/4 v0, 0x0

    .line 53
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method
