.class public Lcom/juhe/juhesdk/middle/view/JuheXieYiDialog;
.super Landroid/app/Dialog;
.source "JuheXieYiDialog.java"


# instance fields
.field private mCallBack:Lcom/juhe/juhesdk/middle/view/JuheXieYiCallback;

.field private mUrl:Ljava/lang/String;

.field private mWebView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/juhe/juhesdk/middle/view/JuheXieYiCallback;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "url",
            "callback"
        }
    .end annotation

    .line 21
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "JuheXieYi_Dialog"

    const-string v3, "style"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 22
    iput-object p3, p0, Lcom/juhe/juhesdk/middle/view/JuheXieYiDialog;->mCallBack:Lcom/juhe/juhesdk/middle/view/JuheXieYiCallback;

    .line 23
    iput-object p2, p0, Lcom/juhe/juhesdk/middle/view/JuheXieYiDialog;->mUrl:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/juhe/juhesdk/middle/view/JuheXieYiDialog;)Lcom/juhe/juhesdk/middle/view/JuheXieYiCallback;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/juhe/juhesdk/middle/view/JuheXieYiDialog;->mCallBack:Lcom/juhe/juhesdk/middle/view/JuheXieYiCallback;

    return-object p0
.end method


# virtual methods
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

    .line 28
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 29
    invoke-virtual {p0, p1}, Lcom/juhe/juhesdk/middle/view/JuheXieYiDialog;->requestWindowFeature(I)Z

    const/4 v0, 0x0

    .line 30
    invoke-virtual {p0, v0}, Lcom/juhe/juhesdk/middle/view/JuheXieYiDialog;->setCancelable(Z)V

    .line 31
    invoke-virtual {p0}, Lcom/juhe/juhesdk/middle/view/JuheXieYiDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/juhe/juhesdk/middle/view/JuheXieYiDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "juhexieyi"

    const-string v3, "layout"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/juhe/juhesdk/middle/view/JuheXieYiDialog;->setContentView(I)V

    .line 32
    invoke-virtual {p0}, Lcom/juhe/juhesdk/middle/view/JuheXieYiDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/juhe/juhesdk/middle/view/JuheXieYiDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "tv_agree"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/juhe/juhesdk/middle/view/JuheXieYiDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/juhe/juhesdk/middle/view/JuheXieYiDialog$1;

    invoke-direct {v1, p0}, Lcom/juhe/juhesdk/middle/view/JuheXieYiDialog$1;-><init>(Lcom/juhe/juhesdk/middle/view/JuheXieYiDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 40
    invoke-virtual {p0}, Lcom/juhe/juhesdk/middle/view/JuheXieYiDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/juhe/juhesdk/middle/view/JuheXieYiDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "tv_noagree"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/juhe/juhesdk/middle/view/JuheXieYiDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/juhe/juhesdk/middle/view/JuheXieYiDialog$2;

    invoke-direct {v1, p0}, Lcom/juhe/juhesdk/middle/view/JuheXieYiDialog$2;-><init>(Lcom/juhe/juhesdk/middle/view/JuheXieYiDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    invoke-virtual {p0}, Lcom/juhe/juhesdk/middle/view/JuheXieYiDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/juhe/juhesdk/middle/view/JuheXieYiDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "juhewv"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/juhe/juhesdk/middle/view/JuheXieYiDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/juhe/juhesdk/middle/view/JuheXieYiDialog;->mWebView:Landroid/webkit/WebView;

    .line 48
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 49
    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    .line 50
    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 51
    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    const/4 v1, -0x1

    .line 52
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 53
    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 54
    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 55
    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    .line 56
    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    const-string p1, "utf-8"

    .line 57
    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    .line 58
    iget-object p1, p0, Lcom/juhe/juhesdk/middle/view/JuheXieYiDialog;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p1, v1}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 59
    iget-object p1, p0, Lcom/juhe/juhesdk/middle/view/JuheXieYiDialog;->mWebView:Landroid/webkit/WebView;

    iget-object v0, p0, Lcom/juhe/juhesdk/middle/view/JuheXieYiDialog;->mUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 60
    new-instance p1, Landroid/util/DisplayMetrics;

    invoke-direct {p1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 61
    invoke-virtual {p0}, Lcom/juhe/juhesdk/middle/view/JuheXieYiDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 63
    iget v0, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 64
    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 65
    invoke-virtual {p0}, Lcom/juhe/juhesdk/middle/view/JuheXieYiDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    if-le v0, p1, :cond_0

    int-to-float p1, p1

    const v0, 0x3f8ccccd    # 1.1f

    mul-float/2addr v0, p1

    float-to-int v0, v0

    .line 67
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    const v0, 0x3f666666    # 0.9f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    .line 68
    iput p1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    :cond_0
    int-to-float v0, v0

    const v2, 0x3f4ccccd    # 0.8f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    .line 70
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float p1, p1

    const v0, 0x3f19999a    # 0.6f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    .line 71
    iput p1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 73
    :goto_0
    invoke-virtual {p0}, Lcom/juhe/juhesdk/middle/view/JuheXieYiDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    check-cast v1, Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p1, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method
