.class public Lcom/yofi/sdk/widget/SplashView;
.super Landroid/widget/RelativeLayout;
.source "SplashView.java"


# instance fields
.field private assetManager:Landroid/content/res/AssetManager;

.field private context:Landroid/content/Context;

.field private imageView:Landroid/widget/ImageView;

.field private isLandScape:Z

.field private layoutParams:Landroid/widget/RelativeLayout$LayoutParams;

.field private linearLayout:Landroid/widget/LinearLayout;

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "isLandScape"
        }
    .end annotation

    .line 29
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 30
    iput-object p1, p0, Lcom/yofi/sdk/widget/SplashView;->context:Landroid/content/Context;

    .line 31
    iput-boolean p2, p0, Lcom/yofi/sdk/widget/SplashView;->isLandScape:Z

    .line 32
    invoke-direct {p0}, Lcom/yofi/sdk/widget/SplashView;->initView()V

    return-void
.end method

.method private createLinear()Landroid/widget/LinearLayout;
    .locals 2

    .line 78
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/yofi/sdk/widget/SplashView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 79
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    return-object v0
.end method

.method private initView()V
    .locals 5

    .line 36
    invoke-direct {p0}, Lcom/yofi/sdk/widget/SplashView;->createLinear()Landroid/widget/LinearLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/yofi/sdk/widget/SplashView;->linearLayout:Landroid/widget/LinearLayout;

    .line 37
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/yofi/sdk/widget/SplashView;->layoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    .line 38
    iget-boolean v0, p0, Lcom/yofi/sdk/widget/SplashView;->isLandScape:Z

    const/4 v1, 0x0

    const-string v2, "layout"

    if-eqz v0, :cond_0

    .line 39
    invoke-virtual {p0}, Lcom/yofi/sdk/widget/SplashView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v3, p0, Lcom/yofi/sdk/widget/SplashView;->context:Landroid/content/Context;

    const-string v4, "yofi_splash_layout_land"

    invoke-static {v3, v4, v2}, Lcom/yofi/sdk/utils/ResUtils;->getId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yofi/sdk/widget/SplashView;->view:Landroid/view/View;

    goto :goto_0

    .line 41
    :cond_0
    invoke-virtual {p0}, Lcom/yofi/sdk/widget/SplashView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v3, p0, Lcom/yofi/sdk/widget/SplashView;->context:Landroid/content/Context;

    const-string v4, "yofi_splash_layout_port"

    invoke-static {v3, v4, v2}, Lcom/yofi/sdk/utils/ResUtils;->getId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yofi/sdk/widget/SplashView;->view:Landroid/view/View;

    .line 44
    :goto_0
    iget-object v0, p0, Lcom/yofi/sdk/widget/SplashView;->view:Landroid/view/View;

    invoke-virtual {p0}, Lcom/yofi/sdk/widget/SplashView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/yofi/sdk/widget/SplashView;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "iv_splash"

    const-string v4, "id"

    invoke-virtual {v1, v3, v4, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yofi/sdk/widget/SplashView;->imageView:Landroid/widget/ImageView;

    .line 45
    iget-object v0, p0, Lcom/yofi/sdk/widget/SplashView;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    iput-object v0, p0, Lcom/yofi/sdk/widget/SplashView;->assetManager:Landroid/content/res/AssetManager;

    .line 48
    :try_start_0
    iget-boolean v1, p0, Lcom/yofi/sdk/widget/SplashView;->isLandScape:Z

    if-eqz v1, :cond_1

    const-string v1, "splash_image/splash_land.png"

    .line 49
    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1

    :cond_1
    const-string v1, "splash_image/splash.png"

    .line 51
    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 54
    :goto_1
    iget-object v1, p0, Lcom/yofi/sdk/widget/SplashView;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    :catch_0
    :try_start_1
    iget-object v0, p0, Lcom/yofi/sdk/widget/SplashView;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/yofi/sdk/widget/SplashView;->context:Landroid/content/Context;

    .line 61
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "YOFI_SPLASH_TYPE"

    const-string v3, "string"

    iget-object v4, p0, Lcom/yofi/sdk/widget/SplashView;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 60
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    const-string v0, "default"

    :goto_2
    const-string v1, "centerlogo"

    .line 64
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 65
    iget-object v0, p0, Lcom/yofi/sdk/widget/SplashView;->imageView:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 66
    iget-object v0, p0, Lcom/yofi/sdk/widget/SplashView;->linearLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0xff

    invoke-static {v1, v1, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    goto :goto_3

    .line 68
    :cond_2
    iget-object v0, p0, Lcom/yofi/sdk/widget/SplashView;->imageView:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 69
    iget-object v0, p0, Lcom/yofi/sdk/widget/SplashView;->linearLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-static {v1, v1, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 73
    :goto_3
    iget-object v0, p0, Lcom/yofi/sdk/widget/SplashView;->linearLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/yofi/sdk/widget/SplashView;->view:Landroid/view/View;

    iget-object v2, p0, Lcom/yofi/sdk/widget/SplashView;->layoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 74
    iget-object v0, p0, Lcom/yofi/sdk/widget/SplashView;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/yofi/sdk/widget/SplashView;->addView(Landroid/view/View;)V

    return-void
.end method
