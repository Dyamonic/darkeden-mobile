.class public Lcom/yofi/sdk/imp/middle/view/PayView;
.super Ljava/lang/Object;
.source "PayView.java"

# interfaces
.implements Lcom/yofi/sdk/interfaces/IContainerView;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private activity:Lcom/yofi/sdk/activity/ContainerActivity;

.field private btnClose:Landroid/widget/Button;

.field layoutAli:Landroid/widget/RelativeLayout;

.field layoutSandBox:Landroid/widget/RelativeLayout;

.field layoutWechat:Landroid/widget/RelativeLayout;

.field private mHandler:Landroid/os/Handler;

.field private orderId:Ljava/lang/String;

.field private payInfo:Lcom/yofi/sdk/imp/middle/data/PayInfo;

.field private payType:I

.field radioAli:Landroid/widget/RadioButton;

.field radioSandBox:Landroid/widget/RadioButton;

.field radioWechat:Landroid/widget/RadioButton;

.field private registerTime:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/yofi/sdk/activity/ContainerActivity;Landroid/os/Bundle;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0
        }
        names = {
            "activity",
            "bundle"
        }
    .end annotation

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 49
    iput-object v0, p0, Lcom/yofi/sdk/imp/middle/view/PayView;->orderId:Ljava/lang/String;

    .line 158
    new-instance v1, Lcom/yofi/sdk/imp/middle/view/PayView$3;

    invoke-direct {v1, p0}, Lcom/yofi/sdk/imp/middle/view/PayView$3;-><init>(Lcom/yofi/sdk/imp/middle/view/PayView;)V

    iput-object v1, p0, Lcom/yofi/sdk/imp/middle/view/PayView;->mHandler:Landroid/os/Handler;

    .line 62
    iput-object p1, p0, Lcom/yofi/sdk/imp/middle/view/PayView;->activity:Lcom/yofi/sdk/activity/ContainerActivity;

    const-string v1, "REGISTER_TIME"

    const/4 v2, 0x0

    .line 63
    invoke-virtual {p1, v1, v2}, Lcom/yofi/sdk/activity/ContainerActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v3, "time"

    .line 64
    invoke-interface {v1, v3, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yofi/sdk/imp/middle/view/PayView;->registerTime:Ljava/lang/String;

    const-string v0, "SANDBOX"

    .line 65
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 66
    sget-object v1, Lcom/yofi/sdk/imp/middle/common/Constants$PAY_TYPE;->ALI:Lcom/yofi/sdk/imp/middle/common/Constants$PAY_TYPE;

    invoke-virtual {v1}, Lcom/yofi/sdk/imp/middle/common/Constants$PAY_TYPE;->getValue()I

    move-result v1

    iput v1, p0, Lcom/yofi/sdk/imp/middle/view/PayView;->payType:I

    .line 67
    invoke-virtual {p1}, Lcom/yofi/sdk/activity/ContainerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p1}, Lcom/yofi/sdk/activity/ContainerActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "payview"

    const-string v5, "layout"

    invoke-virtual {v1, v4, v5, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/yofi/sdk/activity/ContainerActivity;->setContentView(I)V

    .line 69
    invoke-virtual {p1}, Lcom/yofi/sdk/activity/ContainerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p1}, Lcom/yofi/sdk/activity/ContainerActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "wypay_bt_close"

    const-string v5, "id"

    invoke-virtual {v1, v4, v5, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/yofi/sdk/activity/ContainerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/yofi/sdk/imp/middle/view/PayView;->btnClose:Landroid/widget/Button;

    .line 71
    invoke-virtual {p1}, Lcom/yofi/sdk/activity/ContainerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p1}, Lcom/yofi/sdk/activity/ContainerActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "layout_ali"

    invoke-virtual {v1, v4, v5, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/yofi/sdk/activity/ContainerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/yofi/sdk/imp/middle/view/PayView;->layoutAli:Landroid/widget/RelativeLayout;

    .line 73
    invoke-virtual {p1}, Lcom/yofi/sdk/activity/ContainerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p1}, Lcom/yofi/sdk/activity/ContainerActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "layout_wechat"

    invoke-virtual {v1, v4, v5, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/yofi/sdk/activity/ContainerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/yofi/sdk/imp/middle/view/PayView;->layoutWechat:Landroid/widget/RelativeLayout;

    .line 75
    invoke-virtual {p1}, Lcom/yofi/sdk/activity/ContainerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p1}, Lcom/yofi/sdk/activity/ContainerActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "layout_sandbox"

    invoke-virtual {v1, v4, v5, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/yofi/sdk/activity/ContainerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/yofi/sdk/imp/middle/view/PayView;->layoutSandBox:Landroid/widget/RelativeLayout;

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    .line 77
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 81
    :cond_0
    invoke-virtual {p1}, Lcom/yofi/sdk/activity/ContainerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p1}, Lcom/yofi/sdk/activity/ContainerActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "radio_ali"

    invoke-virtual {v0, v2, v5, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/yofi/sdk/activity/ContainerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/yofi/sdk/imp/middle/view/PayView;->radioAli:Landroid/widget/RadioButton;

    .line 82
    invoke-virtual {v0, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    invoke-virtual {p1}, Lcom/yofi/sdk/activity/ContainerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p1}, Lcom/yofi/sdk/activity/ContainerActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "radio_wechat"

    invoke-virtual {v0, v2, v5, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/yofi/sdk/activity/ContainerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/yofi/sdk/imp/middle/view/PayView;->radioWechat:Landroid/widget/RadioButton;

    .line 86
    invoke-virtual {v0, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    invoke-virtual {p1}, Lcom/yofi/sdk/activity/ContainerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p1}, Lcom/yofi/sdk/activity/ContainerActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "radio_sandbox"

    invoke-virtual {v0, v2, v5, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/yofi/sdk/activity/ContainerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/yofi/sdk/imp/middle/view/PayView;->radioSandBox:Landroid/widget/RadioButton;

    .line 90
    invoke-virtual {v0, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "APP_ORDER_ID"

    .line 92
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yofi/sdk/imp/middle/view/PayView;->orderId:Ljava/lang/String;

    const-string v0, "PAY_INFO"

    .line 93
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lcom/yofi/sdk/imp/middle/data/PayInfo;

    iput-object p2, p0, Lcom/yofi/sdk/imp/middle/view/PayView;->payInfo:Lcom/yofi/sdk/imp/middle/data/PayInfo;

    .line 96
    invoke-virtual {p1}, Lcom/yofi/sdk/activity/ContainerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p1}, Lcom/yofi/sdk/activity/ContainerActivity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "tx_product_name"

    invoke-virtual {p2, v1, v5, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    .line 95
    invoke-virtual {p1, p2}, Lcom/yofi/sdk/activity/ContainerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 98
    invoke-virtual {p1}, Lcom/yofi/sdk/activity/ContainerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p1}, Lcom/yofi/sdk/activity/ContainerActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "tx_amount"

    invoke-virtual {v0, v2, v5, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/yofi/sdk/activity/ContainerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 99
    iget-object v1, p0, Lcom/yofi/sdk/imp/middle/view/PayView;->payInfo:Lcom/yofi/sdk/imp/middle/data/PayInfo;

    invoke-virtual {v1}, Lcom/yofi/sdk/imp/middle/data/PayInfo;->getProductName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    iget-object p2, p0, Lcom/yofi/sdk/imp/middle/view/PayView;->payInfo:Lcom/yofi/sdk/imp/middle/data/PayInfo;

    invoke-virtual {p2}, Lcom/yofi/sdk/imp/middle/data/PayInfo;->getAmount()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    iget-object p2, p0, Lcom/yofi/sdk/imp/middle/view/PayView;->btnClose:Landroid/widget/Button;

    new-instance v0, Lcom/yofi/sdk/imp/middle/view/PayView$1;

    invoke-direct {v0, p0}, Lcom/yofi/sdk/imp/middle/view/PayView$1;-><init>(Lcom/yofi/sdk/imp/middle/view/PayView;)V

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    invoke-virtual {p1}, Lcom/yofi/sdk/activity/ContainerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p1}, Lcom/yofi/sdk/activity/ContainerActivity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "btn_pay"

    invoke-virtual {p2, v1, v5, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/yofi/sdk/activity/ContainerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 111
    invoke-static {p1}, Lcom/yofi/sdk/widget/WidgetUtil;->setButtonStateChangeListener(Landroid/view/View;)V

    .line 112
    new-instance p2, Lcom/yofi/sdk/imp/middle/view/PayView$2;

    invoke-direct {p2, p0}, Lcom/yofi/sdk/imp/middle/view/PayView$2;-><init>(Lcom/yofi/sdk/imp/middle/view/PayView;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/yofi/sdk/imp/middle/view/PayView;)Lcom/yofi/sdk/activity/ContainerActivity;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/yofi/sdk/imp/middle/view/PayView;->activity:Lcom/yofi/sdk/activity/ContainerActivity;

    return-object p0
.end method

.method static synthetic access$100(Lcom/yofi/sdk/imp/middle/view/PayView;)I
    .locals 0

    .line 47
    iget p0, p0, Lcom/yofi/sdk/imp/middle/view/PayView;->payType:I

    return p0
.end method

.method static synthetic access$200(Lcom/yofi/sdk/imp/middle/view/PayView;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/yofi/sdk/imp/middle/view/PayView;->doAlipay()V

    return-void
.end method

.method static synthetic access$300(Lcom/yofi/sdk/imp/middle/view/PayView;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/yofi/sdk/imp/middle/view/PayView;->doWechatPay()V

    return-void
.end method

.method static synthetic access$400(Lcom/yofi/sdk/imp/middle/view/PayView;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/yofi/sdk/imp/middle/view/PayView;->doSandBoxPay()V

    return-void
.end method

.method static synthetic access$500(Lcom/yofi/sdk/imp/middle/view/PayView;)Lcom/yofi/sdk/imp/middle/data/PayInfo;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/yofi/sdk/imp/middle/view/PayView;->payInfo:Lcom/yofi/sdk/imp/middle/data/PayInfo;

    return-object p0
.end method

.method static synthetic access$600(Lcom/yofi/sdk/imp/middle/view/PayView;)Landroid/os/Handler;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/yofi/sdk/imp/middle/view/PayView;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static checkAppInstalled(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "paramContext",
            "paramString"
        }
    .end annotation

    .line 264
    new-instance v0, Landroid/content/Intent;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 265
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private doAlipay()V
    .locals 7

    .line 180
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/view/PayView;->activity:Lcom/yofi/sdk/activity/ContainerActivity;

    const-string v1, "alipays://"

    invoke-static {v0, v1}, Lcom/yofi/sdk/imp/middle/view/PayView;->checkAppInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const-string v1, "string"

    if-nez v0, :cond_0

    const-string v0, "YoFiSdk"

    const-string v2, "zhifubao not installed"

    .line 181
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/view/PayView;->activity:Lcom/yofi/sdk/activity/ContainerActivity;

    .line 183
    invoke-virtual {v0}, Lcom/yofi/sdk/activity/ContainerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/yofi/sdk/imp/middle/view/PayView;->activity:Lcom/yofi/sdk/activity/ContainerActivity;

    invoke-virtual {v3}, Lcom/yofi/sdk/activity/ContainerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/yofi/sdk/imp/middle/view/PayView;->activity:Lcom/yofi/sdk/activity/ContainerActivity;

    .line 184
    invoke-virtual {v4}, Lcom/yofi/sdk/activity/ContainerActivity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "alipay_app_install"

    invoke-virtual {v3, v5, v1, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 183
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 182
    invoke-static {v0, v1}, Lcom/yofi/sdk/utils/ToastUtils;->show(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 186
    :cond_0
    new-instance v0, Lcom/yofi/sdk/imp/middle/dialog/LoadingDialog;

    iget-object v2, p0, Lcom/yofi/sdk/imp/middle/view/PayView;->activity:Lcom/yofi/sdk/activity/ContainerActivity;

    invoke-virtual {v2}, Lcom/yofi/sdk/activity/ContainerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/yofi/sdk/imp/middle/view/PayView;->activity:Lcom/yofi/sdk/activity/ContainerActivity;

    .line 187
    invoke-virtual {v4}, Lcom/yofi/sdk/activity/ContainerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v5, p0, Lcom/yofi/sdk/imp/middle/view/PayView;->activity:Lcom/yofi/sdk/activity/ContainerActivity;

    invoke-virtual {v5}, Lcom/yofi/sdk/activity/ContainerActivity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "paying"

    invoke-virtual {v4, v6, v1, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/yofi/sdk/imp/middle/dialog/LoadingDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 188
    invoke-virtual {v0}, Lcom/yofi/sdk/imp/middle/dialog/LoadingDialog;->show()V

    .line 189
    iget-object v1, p0, Lcom/yofi/sdk/imp/middle/view/PayView;->orderId:Ljava/lang/String;

    new-instance v2, Lcom/yofi/sdk/imp/middle/view/PayView$4;

    invoke-direct {v2, p0, v0}, Lcom/yofi/sdk/imp/middle/view/PayView$4;-><init>(Lcom/yofi/sdk/imp/middle/view/PayView;Lcom/yofi/sdk/imp/middle/dialog/LoadingDialog;)V

    invoke-static {v1, v2}, Lcom/yofi/sdk/imp/middle/manager/LittleApiImp;->alipay(Ljava/lang/String;Lcom/yofi/sdk/web/WebAPICallback;)V

    :goto_0
    return-void
.end method

.method private doSandBoxPay()V
    .locals 4

    .line 249
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 250
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 251
    iget-object v2, p0, Lcom/yofi/sdk/imp/middle/view/PayView;->activity:Lcom/yofi/sdk/activity/ContainerActivity;

    const-class v3, Lcom/yofi/sdk/activity/WebPayView;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 252
    iget-object v2, p0, Lcom/yofi/sdk/imp/middle/view/PayView;->orderId:Ljava/lang/String;

    const-string v3, "APP_ORDER_ID"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "BOTH_H5"

    const/4 v3, 0x0

    .line 253
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 254
    sget-object v2, Lcom/yofi/sdk/imp/middle/common/Constants$PAY_TYPE;->SANDBOX:Lcom/yofi/sdk/imp/middle/common/Constants$PAY_TYPE;

    invoke-virtual {v2}, Lcom/yofi/sdk/imp/middle/common/Constants$PAY_TYPE;->getValue()I

    move-result v2

    const-string v3, "PAY_TYPE"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 255
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 256
    iget-object v1, p0, Lcom/yofi/sdk/imp/middle/view/PayView;->activity:Lcom/yofi/sdk/activity/ContainerActivity;

    invoke-virtual {v1, v0}, Lcom/yofi/sdk/activity/ContainerActivity;->startActivity(Landroid/content/Intent;)V

    .line 257
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/view/PayView;->activity:Lcom/yofi/sdk/activity/ContainerActivity;

    invoke-virtual {v0}, Lcom/yofi/sdk/activity/ContainerActivity;->finish()V

    return-void
.end method

.method private doWechatPay()V
    .locals 4

    .line 236
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 237
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 238
    iget-object v2, p0, Lcom/yofi/sdk/imp/middle/view/PayView;->activity:Lcom/yofi/sdk/activity/ContainerActivity;

    const-class v3, Lcom/yofi/sdk/activity/WebPayView;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 239
    iget-object v2, p0, Lcom/yofi/sdk/imp/middle/view/PayView;->orderId:Ljava/lang/String;

    const-string v3, "APP_ORDER_ID"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "BOTH_H5"

    const/4 v3, 0x0

    .line 240
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 241
    sget-object v2, Lcom/yofi/sdk/imp/middle/common/Constants$PAY_TYPE;->WECHAT:Lcom/yofi/sdk/imp/middle/common/Constants$PAY_TYPE;

    invoke-virtual {v2}, Lcom/yofi/sdk/imp/middle/common/Constants$PAY_TYPE;->getValue()I

    move-result v2

    const-string v3, "PAY_TYPE"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 242
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 243
    iget-object v1, p0, Lcom/yofi/sdk/imp/middle/view/PayView;->activity:Lcom/yofi/sdk/activity/ContainerActivity;

    invoke-virtual {v1, v0}, Lcom/yofi/sdk/activity/ContainerActivity;->startActivity(Landroid/content/Intent;)V

    .line 244
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/view/PayView;->activity:Lcom/yofi/sdk/activity/ContainerActivity;

    invoke-virtual {v0}, Lcom/yofi/sdk/activity/ContainerActivity;->finish()V

    return-void
.end method

.method private toBindView()V
    .locals 0

    return-void
.end method


# virtual methods
.method public onBackPressed()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 126
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/yofi/sdk/imp/middle/view/PayView;->activity:Lcom/yofi/sdk/activity/ContainerActivity;

    invoke-virtual {v1}, Lcom/yofi/sdk/activity/ContainerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/yofi/sdk/imp/middle/view/PayView;->activity:Lcom/yofi/sdk/activity/ContainerActivity;

    invoke-virtual {v2}, Lcom/yofi/sdk/activity/ContainerActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "radio_ali"

    const-string v4, "id"

    invoke-virtual {v1, v3, v4, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const-string v2, "drawable"

    const-string v3, "img_bg_light_blue_2x"

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-ne v0, v1, :cond_0

    .line 127
    iget-object p1, p0, Lcom/yofi/sdk/imp/middle/view/PayView;->radioAli:Landroid/widget/RadioButton;

    invoke-virtual {p1, v5}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 128
    iget-object p1, p0, Lcom/yofi/sdk/imp/middle/view/PayView;->radioWechat:Landroid/widget/RadioButton;

    invoke-virtual {p1, v6}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 129
    iget-object p1, p0, Lcom/yofi/sdk/imp/middle/view/PayView;->radioSandBox:Landroid/widget/RadioButton;

    invoke-virtual {p1, v6}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 130
    sget-object p1, Lcom/yofi/sdk/imp/middle/common/Constants$PAY_TYPE;->ALI:Lcom/yofi/sdk/imp/middle/common/Constants$PAY_TYPE;

    invoke-virtual {p1}, Lcom/yofi/sdk/imp/middle/common/Constants$PAY_TYPE;->getValue()I

    move-result p1

    iput p1, p0, Lcom/yofi/sdk/imp/middle/view/PayView;->payType:I

    .line 131
    iget-object p1, p0, Lcom/yofi/sdk/imp/middle/view/PayView;->layoutAli:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/view/PayView;->activity:Lcom/yofi/sdk/activity/ContainerActivity;

    invoke-virtual {v0}, Lcom/yofi/sdk/activity/ContainerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/yofi/sdk/imp/middle/view/PayView;->activity:Lcom/yofi/sdk/activity/ContainerActivity;

    .line 132
    invoke-virtual {v1}, Lcom/yofi/sdk/activity/ContainerActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 131
    invoke-virtual {v0, v3, v2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 133
    iget-object p1, p0, Lcom/yofi/sdk/imp/middle/view/PayView;->layoutWechat:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v6}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 134
    iget-object p1, p0, Lcom/yofi/sdk/imp/middle/view/PayView;->layoutSandBox:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v6}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 135
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/yofi/sdk/imp/middle/view/PayView;->activity:Lcom/yofi/sdk/activity/ContainerActivity;

    invoke-virtual {v1}, Lcom/yofi/sdk/activity/ContainerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v7, p0, Lcom/yofi/sdk/imp/middle/view/PayView;->activity:Lcom/yofi/sdk/activity/ContainerActivity;

    .line 136
    invoke-virtual {v7}, Lcom/yofi/sdk/activity/ContainerActivity;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "radio_wechat"

    .line 135
    invoke-virtual {v1, v8, v4, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 137
    iget-object p1, p0, Lcom/yofi/sdk/imp/middle/view/PayView;->radioAli:Landroid/widget/RadioButton;

    invoke-virtual {p1, v6}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 138
    iget-object p1, p0, Lcom/yofi/sdk/imp/middle/view/PayView;->radioWechat:Landroid/widget/RadioButton;

    invoke-virtual {p1, v5}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 139
    iget-object p1, p0, Lcom/yofi/sdk/imp/middle/view/PayView;->radioSandBox:Landroid/widget/RadioButton;

    invoke-virtual {p1, v6}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 140
    sget-object p1, Lcom/yofi/sdk/imp/middle/common/Constants$PAY_TYPE;->WECHAT:Lcom/yofi/sdk/imp/middle/common/Constants$PAY_TYPE;

    invoke-virtual {p1}, Lcom/yofi/sdk/imp/middle/common/Constants$PAY_TYPE;->getValue()I

    move-result p1

    iput p1, p0, Lcom/yofi/sdk/imp/middle/view/PayView;->payType:I

    .line 141
    iget-object p1, p0, Lcom/yofi/sdk/imp/middle/view/PayView;->layoutAli:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v6}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 142
    iget-object p1, p0, Lcom/yofi/sdk/imp/middle/view/PayView;->layoutWechat:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/view/PayView;->activity:Lcom/yofi/sdk/activity/ContainerActivity;

    invoke-virtual {v0}, Lcom/yofi/sdk/activity/ContainerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/yofi/sdk/imp/middle/view/PayView;->activity:Lcom/yofi/sdk/activity/ContainerActivity;

    .line 143
    invoke-virtual {v1}, Lcom/yofi/sdk/activity/ContainerActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 142
    invoke-virtual {v0, v3, v2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 144
    iget-object p1, p0, Lcom/yofi/sdk/imp/middle/view/PayView;->layoutSandBox:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v6}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    goto :goto_0

    .line 145
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/view/PayView;->activity:Lcom/yofi/sdk/activity/ContainerActivity;

    invoke-virtual {v0}, Lcom/yofi/sdk/activity/ContainerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/yofi/sdk/imp/middle/view/PayView;->activity:Lcom/yofi/sdk/activity/ContainerActivity;

    .line 146
    invoke-virtual {v1}, Lcom/yofi/sdk/activity/ContainerActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v7, "radio_sandbox"

    .line 145
    invoke-virtual {v0, v7, v4, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-ne p1, v0, :cond_2

    .line 147
    iget-object p1, p0, Lcom/yofi/sdk/imp/middle/view/PayView;->radioAli:Landroid/widget/RadioButton;

    invoke-virtual {p1, v6}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 148
    iget-object p1, p0, Lcom/yofi/sdk/imp/middle/view/PayView;->radioWechat:Landroid/widget/RadioButton;

    invoke-virtual {p1, v6}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 149
    iget-object p1, p0, Lcom/yofi/sdk/imp/middle/view/PayView;->radioSandBox:Landroid/widget/RadioButton;

    invoke-virtual {p1, v5}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 150
    sget-object p1, Lcom/yofi/sdk/imp/middle/common/Constants$PAY_TYPE;->SANDBOX:Lcom/yofi/sdk/imp/middle/common/Constants$PAY_TYPE;

    invoke-virtual {p1}, Lcom/yofi/sdk/imp/middle/common/Constants$PAY_TYPE;->getValue()I

    move-result p1

    iput p1, p0, Lcom/yofi/sdk/imp/middle/view/PayView;->payType:I

    .line 151
    iget-object p1, p0, Lcom/yofi/sdk/imp/middle/view/PayView;->layoutAli:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v6}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 152
    iget-object p1, p0, Lcom/yofi/sdk/imp/middle/view/PayView;->layoutWechat:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v6}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 153
    iget-object p1, p0, Lcom/yofi/sdk/imp/middle/view/PayView;->layoutSandBox:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/view/PayView;->activity:Lcom/yofi/sdk/activity/ContainerActivity;

    invoke-virtual {v0}, Lcom/yofi/sdk/activity/ContainerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/yofi/sdk/imp/middle/view/PayView;->activity:Lcom/yofi/sdk/activity/ContainerActivity;

    .line 154
    invoke-virtual {v1}, Lcom/yofi/sdk/activity/ContainerActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 153
    invoke-virtual {v0, v3, v2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onDestory()V
    .locals 0

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
            "paramInt",
            "paramKeyEvent"
        }
    .end annotation

    .line 277
    invoke-static {}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->instance()Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->getPayCallback()Lcom/yofi/sdk/IFlashCallback;

    move-result-object p1

    const/4 p2, 0x0

    const-string v0, ""

    invoke-interface {p1, p2, v0}, Lcom/yofi/sdk/IFlashCallback;->onFailed(ILjava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onPermissionsGranted(ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "requestCode",
            "perms"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onResult(IILandroid/content/Intent;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "paramInt1",
            "paramInt2",
            "paramIntent"
        }
    .end annotation

    .line 282
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "requestCode = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "YoFiSdk"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onResume()V
    .locals 0

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public parseScheme(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "paramString"
        }
    .end annotation

    const-string v0, "platformapi/startapp"

    .line 289
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "platformapi"

    .line 290
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "startapp"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
