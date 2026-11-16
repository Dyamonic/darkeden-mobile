.class public Lcom/taptap/sdk/moment/legacy/widget/dialog/InnerBrowserDialog;
.super Landroid/app/DialogFragment;
.source "InnerBrowserDialog.java"


# instance fields
.field private allowProtocols:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private allowUrls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/regex/Pattern;",
            ">;"
        }
    .end annotation
.end field

.field private back:Landroid/widget/ImageView;

.field private close:Landroid/widget/ImageView;

.field private failedUri:Landroid/net/Uri;

.field private loadFailedLayout:Landroid/widget/LinearLayout;

.field private root:Landroid/widget/LinearLayout;

.field private titleBar:Landroid/widget/FrameLayout;

.field private webView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 56
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/InnerBrowserDialog;->allowProtocols:Ljava/util/List;

    .line 57
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/InnerBrowserDialog;->allowUrls:Ljava/util/List;

    const/4 v0, 0x0

    .line 59
    iput-object v0, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/InnerBrowserDialog;->failedUri:Landroid/net/Uri;

    return-void
.end method

.method static synthetic access$000(Lcom/taptap/sdk/moment/legacy/widget/dialog/InnerBrowserDialog;)Landroid/webkit/WebView;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/InnerBrowserDialog;->webView:Landroid/webkit/WebView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/taptap/sdk/moment/legacy/widget/dialog/InnerBrowserDialog;Ljava/lang/String;)Z
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lcom/taptap/sdk/moment/legacy/widget/dialog/InnerBrowserDialog;->checkUrl(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/taptap/sdk/moment/legacy/widget/dialog/InnerBrowserDialog;)Landroid/net/Uri;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/InnerBrowserDialog;->failedUri:Landroid/net/Uri;

    return-object p0
.end method

.method static synthetic access$202(Lcom/taptap/sdk/moment/legacy/widget/dialog/InnerBrowserDialog;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/InnerBrowserDialog;->failedUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$300(Lcom/taptap/sdk/moment/legacy/widget/dialog/InnerBrowserDialog;)Landroid/widget/LinearLayout;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/InnerBrowserDialog;->loadFailedLayout:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$400(Lcom/taptap/sdk/moment/legacy/widget/dialog/InnerBrowserDialog;)Landroid/widget/ImageView;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/InnerBrowserDialog;->back:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/taptap/sdk/moment/legacy/widget/dialog/InnerBrowserDialog;)Landroid/widget/LinearLayout;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/InnerBrowserDialog;->root:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$600(Lcom/taptap/sdk/moment/legacy/widget/dialog/InnerBrowserDialog;)Landroid/widget/FrameLayout;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/InnerBrowserDialog;->titleBar:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method private checkUrl(Ljava/lang/String;)Z
    .locals 3

    .line 72
    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/InnerBrowserDialog;->allowProtocols:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 73
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 74
    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/InnerBrowserDialog;->allowUrls:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/regex/Pattern;

    .line 75
    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_2
    return v2
.end method

.method private setFullScreen()V
    .locals 4

    .line 87
    invoke-virtual {p0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/InnerBrowserDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 90
    :cond_0
    invoke-virtual {p0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/InnerBrowserDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_2

    const/16 v1, 0x400

    .line 92
    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 93
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    const v1, 0x106000d

    .line 94
    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 95
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/4 v2, -0x1

    .line 96
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 97
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 98
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1c

    if-lt v2, v3, :cond_1

    .line 100
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    const/4 v3, 0x1

    .line 101
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 102
    invoke-virtual {v0, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 104
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x500

    .line 105
    invoke-virtual {v2, v3}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_1
    const/high16 v2, 0x1000000

    .line 107
    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 110
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 111
    invoke-static {v0}, Lcom/taptap/sdk/moment/legacy/utils/ScreenHelper;->fullScreenImmersive(Landroid/view/Window;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public loadUrl(Landroid/app/Activity;Landroid/net/Uri;)V
    .locals 3

    if-nez p2, :cond_0

    return-void

    .line 442
    :cond_0
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 443
    invoke-direct {p0, v0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/InnerBrowserDialog;->checkUrl(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "http://"

    .line 444
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 446
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 447
    invoke-virtual {p1, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 449
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadUrl: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "InnerBrowserDialog"

    invoke-static {v0, p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void

    .line 459
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "uri"

    .line 460
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 461
    invoke-virtual {p0, v0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/InnerBrowserDialog;->setArguments(Landroid/os/Bundle;)V

    .line 462
    invoke-virtual {p0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/InnerBrowserDialog;->getDialog()Landroid/app/Dialog;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/InnerBrowserDialog;->getDialog()Landroid/app/Dialog;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Dialog;->isShowing()Z

    move-result p2

    if-nez p2, :cond_3

    .line 463
    :cond_2
    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    const-string p2, "TapMomentInnerBrowserDialog"

    invoke-virtual {p0, p1, p2}, Lcom/taptap/sdk/moment/legacy/widget/dialog/InnerBrowserDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    :cond_3
    return-void

    .line 454
    :cond_4
    new-instance v0, Lcom/taptap/sdk/moment/legacy/widget/dialog/SecurityJumpAlert;

    invoke-direct {v0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/SecurityJumpAlert;-><init>()V

    .line 455
    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/taptap/sdk/moment/legacy/widget/dialog/SecurityJumpAlert;->show(Landroid/app/FragmentManager;Landroid/net/Uri;)V

    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    .line 117
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onAttach(Landroid/app/Activity;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 122
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 123
    sget p1, Lcom/taptap/sdk/moment/R$style;->BottomSheetStyle:I

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/taptap/sdk/moment/legacy/widget/dialog/InnerBrowserDialog;->setStyle(II)V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    .line 128
    new-instance p1, Lcom/taptap/sdk/moment/legacy/widget/dialog/InnerBrowserDialog$1;

    invoke-virtual {p0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/InnerBrowserDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/InnerBrowserDialog;->getTheme()I

    move-result v1

    invoke-direct {p1, p0, v0, v1}, Lcom/taptap/sdk/moment/legacy/widget/dialog/InnerBrowserDialog$1;-><init>(Lcom/taptap/sdk/moment/legacy/widget/dialog/InnerBrowserDialog;Landroid/content/Context;I)V

    return-object p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 144
    sget p3, Lcom/taptap/sdk/moment/R$layout;->ttos_moment_fragment_browser:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 7

    .line 149
    invoke-super {p0, p1, p2}, Landroid/app/DialogFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 151
    invoke-direct {p0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/InnerBrowserDialog;->setFullScreen()V

    .line 153
    sget p2, Lcom/taptap/sdk/moment/R$id;->root:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/InnerBrowserDialog;->root:Landroid/widget/LinearLayout;

    .line 155
    sget p2, Lcom/taptap/sdk/moment/R$id;->webView:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/webkit/WebView;

    iput-object p2, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/InnerBrowserDialog;->webView:Landroid/webkit/WebView;

    .line 157
    invoke-virtual {p2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p2

    const/4 v0, 0x1

    .line 158
    invoke-virtual {p2, v0}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 159
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x0

    const/16 v3, 0x15

    if-lt v1, v3, :cond_0

    .line 160
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v1

    iget-object v3, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/InnerBrowserDialog;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1, v3, v0}, Landroid/webkit/CookieManager;->setAcceptThirdPartyCookies(Landroid/webkit/WebView;Z)V

    .line 161
    invoke-virtual {p2, v2}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    .line 163
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const/4 v3, 0x0

    :try_start_0
    const-string v4, "setAllowUniversalAccessFromFileURLs"

    new-array v5, v0, [Ljava/lang/Class;

    .line 166
    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v2

    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 169
    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    :goto_0
    if-eqz v3, :cond_1

    :try_start_1
    new-array v1, v0, [Ljava/lang/Object;

    .line 173
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-virtual {v3, p2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1

    :catch_2
    move-exception v1

    .line 175
    :goto_1
    invoke-virtual {v1}, Ljava/lang/ReflectiveOperationException;->printStackTrace()V

    .line 179
    :cond_1
    :goto_2
    invoke-virtual {p2, v0}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 180
    invoke-virtual {p2, v2}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    .line 181
    invoke-virtual {p2, v2}, Landroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    .line 182
    invoke-virtual {p2, v2}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    const/4 v1, -0x1

    .line 183
    invoke-virtual {p2, v1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 184
    invoke-virtual {p2, v0}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 185
    invoke-virtual {p2, v0}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 186
    invoke-virtual {p2, v2}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    .line 187
    invoke-virtual {p2, v0}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 188
    invoke-virtual {p2, v0}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 189
    invoke-virtual {p2, v0}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 190
    invoke-virtual {p2, v2}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 192
    iget-object p2, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/InnerBrowserDialog;->webView:Landroid/webkit/WebView;

    new-instance v0, Lcom/taptap/sdk/moment/legacy/widget/dialog/InnerBrowserDialog$2;

    invoke-direct {v0, p0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/InnerBrowserDialog$2;-><init>(Lcom/taptap/sdk/moment/legacy/widget/dialog/InnerBrowserDialog;)V

    invoke-virtual {p2, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 244
    iget-object p2, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/InnerBrowserDialog;->webView:Landroid/webkit/WebView;

    new-instance v0, Lcom/taptap/sdk/moment/legacy/widget/dialog/InnerBrowserDialog$3;

    invoke-direct {v0, p0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/InnerBrowserDialog$3;-><init>(Lcom/taptap/sdk/moment/legacy/widget/dialog/InnerBrowserDialog;)V

    invoke-virtual {p2, v0}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 281
    new-instance p2, Lcom/taptap/sdk/moment/legacy/widget/dialog/InnerBrowserDialog$4;

    invoke-direct {p2, p0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/InnerBrowserDialog$4;-><init>(Lcom/taptap/sdk/moment/legacy/widget/dialog/InnerBrowserDialog;)V

    .line 358
    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/InnerBrowserDialog;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, p2}, Landroid/webkit/WebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 361
    sget p2, Lcom/taptap/sdk/moment/R$id;->back:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/InnerBrowserDialog;->back:Landroid/widget/ImageView;

    .line 362
    new-instance v0, Lcom/taptap/sdk/moment/legacy/widget/dialog/InnerBrowserDialog$5;

    invoke-direct {v0, p0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/InnerBrowserDialog$5;-><init>(Lcom/taptap/sdk/moment/legacy/widget/dialog/InnerBrowserDialog;)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 370
    iget-object p2, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/InnerBrowserDialog;->back:Landroid/widget/ImageView;

    const/4 v0, 0x4

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 372
    sget p2, Lcom/taptap/sdk/moment/R$id;->close:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/InnerBrowserDialog;->close:Landroid/widget/ImageView;

    .line 373
    new-instance v0, Lcom/taptap/sdk/moment/legacy/widget/dialog/InnerBrowserDialog$6;

    invoke-direct {v0, p0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/InnerBrowserDialog$6;-><init>(Lcom/taptap/sdk/moment/legacy/widget/dialog/InnerBrowserDialog;)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 380
    sget p2, Lcom/taptap/sdk/moment/R$id;->titleBar:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout;

    iput-object p2, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/InnerBrowserDialog;->titleBar:Landroid/widget/FrameLayout;

    .line 382
    sget p2, Lcom/taptap/sdk/moment/R$id;->loadFailedLayout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/InnerBrowserDialog;->loadFailedLayout:Landroid/widget/LinearLayout;

    .line 384
    new-instance v0, Lcom/taptap/sdk/moment/legacy/widget/dialog/InnerBrowserDialog$7;

    invoke-direct {v0, p0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/InnerBrowserDialog$7;-><init>(Lcom/taptap/sdk/moment/legacy/widget/dialog/InnerBrowserDialog;)V

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 398
    sget p2, Lcom/taptap/sdk/moment/R$id;->reloadMessage:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    sget v0, Lcom/taptap/sdk/moment/R$string;->moment_browser_load_failed_message:I

    invoke-static {v0}, Lcom/taptap/sdk/kit/internal/utils/localize/TapLocalizeUtil;->getLocalizedString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 400
    invoke-virtual {p0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/InnerBrowserDialog;->getDialog()Landroid/app/Dialog;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p2

    new-instance v0, Lcom/taptap/sdk/moment/legacy/widget/dialog/InnerBrowserDialog$8;

    invoke-direct {v0, p0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/InnerBrowserDialog$8;-><init>(Lcom/taptap/sdk/moment/legacy/widget/dialog/InnerBrowserDialog;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 414
    invoke-virtual {p0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/InnerBrowserDialog;->getDialog()Landroid/app/Dialog;

    move-result-object p2

    new-instance v0, Lcom/taptap/sdk/moment/legacy/widget/dialog/InnerBrowserDialog$9;

    invoke-direct {v0, p0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/InnerBrowserDialog$9;-><init>(Lcom/taptap/sdk/moment/legacy/widget/dialog/InnerBrowserDialog;)V

    invoke-virtual {p2, v0}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 429
    new-instance p2, Lcom/taptap/sdk/moment/legacy/widget/dialog/InnerBrowserDialog$10;

    invoke-direct {p2, p0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/InnerBrowserDialog$10;-><init>(Lcom/taptap/sdk/moment/legacy/widget/dialog/InnerBrowserDialog;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setAllowProtocols(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 63
    :cond_0
    iput-object p1, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/InnerBrowserDialog;->allowProtocols:Ljava/util/List;

    return-void
.end method

.method public setAllowUrls(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/regex/Pattern;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 68
    :cond_0
    iput-object p1, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/InnerBrowserDialog;->allowUrls:Ljava/util/List;

    return-void
.end method
