.class public Lcom/juhe/juhesdk/middle/view/CheckUpdateView;
.super Landroid/app/Dialog;
.source "CheckUpdateView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CheckUpdateView"


# instance fields
.field private cancle_btn:Landroid/widget/TextView;

.field private cb:Lcom/juhe/juhesdk/sdk/CheckUpdateCallback;

.field private confirm_btn:Landroid/widget/TextView;

.field public downLoadUrl:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field public needUpdate:I

.field private ok_btn:Landroid/widget/TextView;

.field public updateContent:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/juhe/juhesdk/sdk/CheckUpdateCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "cb"
        }
    .end annotation

    .line 60
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 61
    iput-object p1, p0, Lcom/juhe/juhesdk/middle/view/CheckUpdateView;->mContext:Landroid/content/Context;

    .line 62
    iput-object p2, p0, Lcom/juhe/juhesdk/middle/view/CheckUpdateView;->cb:Lcom/juhe/juhesdk/sdk/CheckUpdateCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/juhe/juhesdk/middle/view/CheckUpdateView;)Lcom/juhe/juhesdk/sdk/CheckUpdateCallback;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/juhe/juhesdk/middle/view/CheckUpdateView;->cb:Lcom/juhe/juhesdk/sdk/CheckUpdateCallback;

    return-object p0
.end method

.method static synthetic access$100(Lcom/juhe/juhesdk/middle/view/CheckUpdateView;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/juhe/juhesdk/middle/view/CheckUpdateView;->beginDownd()V

    return-void
.end method

.method private beginDownd()V
    .locals 3

    .line 161
    :try_start_0
    iget-object v0, p0, Lcom/juhe/juhesdk/middle/view/CheckUpdateView;->downLoadUrl:Ljava/lang/String;

    .line 163
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "android.intent.action.VIEW"

    .line 164
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "android.intent.category.DEFAULT"

    .line 165
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x10000000

    .line 166
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 167
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 168
    iget-object v0, p0, Lcom/juhe/juhesdk/middle/view/CheckUpdateView;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 171
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "beginDownd Exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CheckUpdateView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public getDownLoadUrl()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/juhe/juhesdk/middle/view/CheckUpdateView;->downLoadUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdateContent()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/juhe/juhesdk/middle/view/CheckUpdateView;->updateContent:Ljava/lang/String;

    return-object v0
.end method

.method protected hideBottomUIMenu()V
    .locals 3

    .line 127
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    const/16 v2, 0xb

    if-le v0, v2, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v1, :cond_0

    .line 128
    invoke-virtual {p0}, Lcom/juhe/juhesdk/middle/view/CheckUpdateView;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    .line 129
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0

    .line 130
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_1

    .line 134
    invoke-virtual {p0}, Lcom/juhe/juhesdk/middle/view/CheckUpdateView;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    const-string v0, "CheckUpdateView"

    const-string v1, "hideBottomUIMenu: "

    .line 135
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    invoke-virtual {p0}, Lcom/juhe/juhesdk/middle/view/CheckUpdateView;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/juhe/juhesdk/middle/view/CheckUpdateView$4;

    invoke-direct {v1, p0}, Lcom/juhe/juhesdk/middle/view/CheckUpdateView$4;-><init>(Lcom/juhe/juhesdk/middle/view/CheckUpdateView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public isNeedUpdate()I
    .locals 1

    .line 28
    iget v0, p0, Lcom/juhe/juhesdk/middle/view/CheckUpdateView;->needUpdate:I

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 68
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 69
    iget-object p1, p0, Lcom/juhe/juhesdk/middle/view/CheckUpdateView;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget-object v0, p0, Lcom/juhe/juhesdk/middle/view/CheckUpdateView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "juhe_checkupdate"

    const-string v2, "layout"

    invoke-virtual {p1, v1, v2, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/juhe/juhesdk/middle/view/CheckUpdateView;->setContentView(I)V

    .line 70
    invoke-virtual {p0}, Lcom/juhe/juhesdk/middle/view/CheckUpdateView;->getWindow()Landroid/view/Window;

    move-result-object p1

    .line 71
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 72
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v2, -0x1

    .line 73
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 74
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 75
    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 77
    iget-object p1, p0, Lcom/juhe/juhesdk/middle/view/CheckUpdateView;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget-object v0, p0, Lcom/juhe/juhesdk/middle/view/CheckUpdateView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "message_tv"

    const-string v3, "id"

    invoke-virtual {p1, v2, v3, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/juhe/juhesdk/middle/view/CheckUpdateView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 79
    invoke-static {}, Landroid/text/method/ScrollingMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 80
    iget-object v0, p0, Lcom/juhe/juhesdk/middle/view/CheckUpdateView;->updateContent:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/juhe/juhesdk/middle/view/CheckUpdateView;->updateContent:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    :cond_0
    iget-object p1, p0, Lcom/juhe/juhesdk/middle/view/CheckUpdateView;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget-object v0, p0, Lcom/juhe/juhesdk/middle/view/CheckUpdateView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "cancle_btn"

    invoke-virtual {p1, v2, v3, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/juhe/juhesdk/middle/view/CheckUpdateView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/juhe/juhesdk/middle/view/CheckUpdateView;->cancle_btn:Landroid/widget/TextView;

    .line 85
    new-instance v0, Lcom/juhe/juhesdk/middle/view/CheckUpdateView$1;

    invoke-direct {v0, p0}, Lcom/juhe/juhesdk/middle/view/CheckUpdateView$1;-><init>(Lcom/juhe/juhesdk/middle/view/CheckUpdateView;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    iget-object p1, p0, Lcom/juhe/juhesdk/middle/view/CheckUpdateView;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget-object v0, p0, Lcom/juhe/juhesdk/middle/view/CheckUpdateView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "confirm_btn"

    invoke-virtual {p1, v2, v3, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/juhe/juhesdk/middle/view/CheckUpdateView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/juhe/juhesdk/middle/view/CheckUpdateView;->confirm_btn:Landroid/widget/TextView;

    .line 93
    new-instance v0, Lcom/juhe/juhesdk/middle/view/CheckUpdateView$2;

    invoke-direct {v0, p0}, Lcom/juhe/juhesdk/middle/view/CheckUpdateView$2;-><init>(Lcom/juhe/juhesdk/middle/view/CheckUpdateView;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    iget-object p1, p0, Lcom/juhe/juhesdk/middle/view/CheckUpdateView;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget-object v0, p0, Lcom/juhe/juhesdk/middle/view/CheckUpdateView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ok_btn"

    invoke-virtual {p1, v2, v3, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/juhe/juhesdk/middle/view/CheckUpdateView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/juhe/juhesdk/middle/view/CheckUpdateView;->ok_btn:Landroid/widget/TextView;

    .line 101
    new-instance v0, Lcom/juhe/juhesdk/middle/view/CheckUpdateView$3;

    invoke-direct {v0, p0}, Lcom/juhe/juhesdk/middle/view/CheckUpdateView$3;-><init>(Lcom/juhe/juhesdk/middle/view/CheckUpdateView;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    iget p1, p0, Lcom/juhe/juhesdk/middle/view/CheckUpdateView;->needUpdate:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 109
    iget-object p1, p0, Lcom/juhe/juhesdk/middle/view/CheckUpdateView;->cancle_btn:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 110
    iget-object p1, p0, Lcom/juhe/juhesdk/middle/view/CheckUpdateView;->confirm_btn:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 111
    iget-object p1, p0, Lcom/juhe/juhesdk/middle/view/CheckUpdateView;->ok_btn:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 115
    :cond_1
    invoke-virtual {p0}, Lcom/juhe/juhesdk/middle/view/CheckUpdateView;->hideBottomUIMenu()V

    .line 116
    invoke-virtual {p0}, Lcom/juhe/juhesdk/middle/view/CheckUpdateView;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 117
    invoke-virtual {p0}, Lcom/juhe/juhesdk/middle/view/CheckUpdateView;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/Window;->setDimAmount(F)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "keyCode",
            "event"
        }
    .end annotation

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 181
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public setDownLoadUrl(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "downLoadUrl"
        }
    .end annotation

    .line 40
    iput-object p1, p0, Lcom/juhe/juhesdk/middle/view/CheckUpdateView;->downLoadUrl:Ljava/lang/String;

    return-void
.end method

.method public setNeedUpdate(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "needUpdate"
        }
    .end annotation

    .line 32
    iput p1, p0, Lcom/juhe/juhesdk/middle/view/CheckUpdateView;->needUpdate:I

    return-void
.end method

.method public setUpdateContent(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "updateContent"
        }
    .end annotation

    .line 48
    iput-object p1, p0, Lcom/juhe/juhesdk/middle/view/CheckUpdateView;->updateContent:Ljava/lang/String;

    return-void
.end method
