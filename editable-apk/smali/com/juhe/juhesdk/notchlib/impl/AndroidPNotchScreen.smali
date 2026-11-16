.class public Lcom/juhe/juhesdk/notchlib/impl/AndroidPNotchScreen;
.super Ljava/lang/Object;
.source "AndroidPNotchScreen.java"

# interfaces
.implements Lcom/juhe/juhesdk/notchlib/INotchScreen;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getNotchRect(Landroid/app/Activity;Lcom/juhe/juhesdk/notchlib/INotchScreen$NotchSizeCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10
        }
        names = {
            "activity",
            "callback"
        }
    .end annotation

    .line 82
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    .line 83
    new-instance v0, Lcom/juhe/juhesdk/notchlib/impl/AndroidPNotchScreen$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/juhe/juhesdk/notchlib/impl/AndroidPNotchScreen$1;-><init>(Lcom/juhe/juhesdk/notchlib/impl/AndroidPNotchScreen;Landroid/view/View;Lcom/juhe/juhesdk/notchlib/INotchScreen$NotchSizeCallback;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public hasNotch(Landroid/app/Activity;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    const/4 p1, 0x1

    return p1
.end method

.method public setDisplayInNotch(Landroid/app/Activity;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    .line 56
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    .line 58
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v1, 0x1

    .line 59
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 60
    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 62
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x1706

    .line 67
    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method
