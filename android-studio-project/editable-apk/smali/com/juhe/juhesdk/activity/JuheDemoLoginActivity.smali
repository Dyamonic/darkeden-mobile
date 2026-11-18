.class public Lcom/juhe/juhesdk/activity/JuheDemoLoginActivity;
.super Landroid/app/Activity;
.source "JuheDemoLoginActivity.java"


# static fields
.field public static loginSuccessCallBack:Lcom/juhe/juhesdk/interfaces/JuheDemoOnLoginSuccess;


# instance fields
.field private channelId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/juhe/juhesdk/activity/JuheDemoLoginActivity;)I
    .locals 0

    .line 24
    iget p0, p0, Lcom/juhe/juhesdk/activity/JuheDemoLoginActivity;->channelId:I

    return p0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 31
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    invoke-virtual {p0}, Lcom/juhe/juhesdk/activity/JuheDemoLoginActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p0}, Lcom/juhe/juhesdk/activity/JuheDemoLoginActivity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "juhe_login"

    const-string v2, "layout"

    invoke-virtual {p1, v1, v2, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/juhe/juhesdk/activity/JuheDemoLoginActivity;->setContentView(I)V

    .line 34
    invoke-static {}, Lcom/juhe/juhesdk/notchlib/NotchScreenManager;->getInstance()Lcom/juhe/juhesdk/notchlib/NotchScreenManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/juhe/juhesdk/notchlib/NotchScreenManager;->setDisplayInNotch(Landroid/app/Activity;)V

    .line 36
    invoke-virtual {p0}, Lcom/juhe/juhesdk/activity/JuheDemoLoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    const-string v1, "channelId"

    .line 38
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 39
    iput p1, p0, Lcom/juhe/juhesdk/activity/JuheDemoLoginActivity;->channelId:I

    .line 42
    :cond_0
    invoke-virtual {p0}, Lcom/juhe/juhesdk/activity/JuheDemoLoginActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p0}, Lcom/juhe/juhesdk/activity/JuheDemoLoginActivity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "login_name_editText"

    const-string v2, "id"

    invoke-virtual {p1, v1, v2, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/juhe/juhesdk/activity/JuheDemoLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 43
    invoke-virtual {p0}, Lcom/juhe/juhesdk/activity/JuheDemoLoginActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/juhe/juhesdk/activity/JuheDemoLoginActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "password_editText"

    invoke-virtual {v0, v3, v2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/juhe/juhesdk/activity/JuheDemoLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "yofijoytest"

    .line 44
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    invoke-virtual {p0}, Lcom/juhe/juhesdk/activity/JuheDemoLoginActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Lcom/juhe/juhesdk/activity/JuheDemoLoginActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "login_action_btn"

    invoke-virtual {v1, v4, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/juhe/juhesdk/activity/JuheDemoLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 49
    new-instance v3, Lcom/juhe/juhesdk/activity/JuheDemoLoginActivity$1;

    invoke-direct {v3, p0, p1, v0}, Lcom/juhe/juhesdk/activity/JuheDemoLoginActivity$1;-><init>(Lcom/juhe/juhesdk/activity/JuheDemoLoginActivity;Landroid/widget/TextView;Landroid/widget/TextView;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    invoke-virtual {p0}, Lcom/juhe/juhesdk/activity/JuheDemoLoginActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p0}, Lcom/juhe/juhesdk/activity/JuheDemoLoginActivity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cancel_action_btn"

    invoke-virtual {p1, v1, v2, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/juhe/juhesdk/activity/JuheDemoLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 127
    new-instance v0, Lcom/juhe/juhesdk/activity/JuheDemoLoginActivity$2;

    invoke-direct {v0, p0}, Lcom/juhe/juhesdk/activity/JuheDemoLoginActivity$2;-><init>(Lcom/juhe/juhesdk/activity/JuheDemoLoginActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
