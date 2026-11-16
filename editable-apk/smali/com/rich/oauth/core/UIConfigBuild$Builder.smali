.class public Lcom/rich/oauth/core/UIConfigBuild$Builder;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rich/oauth/core/UIConfigBuild;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field public appLanguageType:I

.field public authLoginClickListener:Lcom/rich/oauth/callback/AuthLoginClickListener;

.field public authPageActIn_authPagein:Ljava/lang/String;

.field public authPageActIn_lastPageOut:Ljava/lang/String;

.field public authPageActOut_authPageOut:Ljava/lang/String;

.field public authPageActOut_nextPagein:Ljava/lang/String;

.field public authPageInListener:Lcom/rich/oauth/callback/AuthPageInListener;

.field public authPageWindowBottom:I

.field public authPageWindowHight:I

.field public authPageWindowMode:Z

.field public authPageWindowOffsetX:I

.field public authPageWindowOffsetY:I

.field public authPageWindowThemeId:I

.field public authPageWindowWith:I

.field public authuncheckway:Ljava/lang/String;

.field public bottomNavigationHidden:Z

.field public checkBoxImageWidth:I

.field public checkBoxImageheight:I

.field public checkBoxLocation:I

.field public checkTipText:Ljava/lang/String;

.field public checkboxUnCheckedClickListener:Lcom/rich/oauth/callback/CheckboxUnCheckedClickListener;

.field public clauseBaseColor:I

.field public clauseColor:I

.field public clauseStatusColor:I

.field public contentView:Landroid/view/View;

.field public fitsSystemWindows:Z

.field public fourthProtocolName:Ljava/lang/String;

.field public fourthProtocolUrl:Ljava/lang/String;

.field public isAutoClosAuthPage:Z

.field public isGravityCenter:Z

.field public isProtocolSelected:Z

.field public isWindowBackButtonWroks:Z

.field public logBtnMarginLeft:I

.field public logBtnMarginRight:I

.field public logBtnOffsetY:I

.field public logBtnOffsetY_B:I

.field public loginBtnBg:I

.field public loginBtnText:Ljava/lang/String;

.field public loginBtnTextColor:I

.field public loginBtnTextSize:I

.field public loginButtonHight:I

.field public loginButtonWidth:I

.field public loginbtnTextBold:Z

.field public mCheckboxCheckedChangelistener:Lcom/rich/oauth/callback/CheckboxCheckedChangeListener;

.field public numFieldOffsetY:I

.field public numFieldOffsetY_B:I

.field public numberBold:Z

.field public numberColor:I

.field public numberOffsetX:I

.field public numberSize:I

.field public ouathStateTextColor:I

.field public pressBackListener:Lcom/rich/oauth/callback/PressBackListener;

.field public privacyAnimationBoolean:Z

.field public privacyBookSymbol:Z

.field public privacyColor:I

.field public privacyContentText:Ljava/lang/String;

.field public privacyMarginLeft:I

.field public privacyMarginRight:I

.field public privacyNavBgColor:I

.field public privacyNavClauseLayoutResID:I

.field public privacyNavTextColor:I

.field public privacyNavTextSize:I

.field public privacyOffsetY:I

.field public privacyOffsetY_B:I

.field public privacyOtherTextColor:I

.field public privacyTextSize:I

.field public privacyTheme:I

.field public protocolName:Ljava/lang/String;

.field public protocolUrl:Ljava/lang/String;

.field public secondProtocolName:Ljava/lang/String;

.field public secondProtocolUrl:Ljava/lang/String;

.field public statusBarBgColor:I

.field public statusBarTextColor:Z

.field public switchIsHide:Z

.field public switchText:Ljava/lang/String;

.field public switchTextColor:I

.field public thirdProtocolName:Ljava/lang/String;

.field public thirdProtocolUrl:Ljava/lang/String;

.field public unCheckDialogAuthLoginListener:Lcom/rich/oauth/callback/UnCheckDialogAuthLoginListener;


# direct methods
.method public constructor <init>()V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "\u8bf7\u52fe\u9009\u540c\u610f\u670d\u52a1\u6761\u6b3e"

    iput-object v0, p0, Lcom/rich/oauth/core/UIConfigBuild$Builder;->checkTipText:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/rich/oauth/core/UIConfigBuild$Builder;->privacyBookSymbol:Z

    const/4 v1, 0x0

    iput v1, p0, Lcom/rich/oauth/core/UIConfigBuild$Builder;->appLanguageType:I

    sget-object v2, Lcom/rich/oauth/util/AuthConstants;->AUTHUNCHECKWAY_SHAKE:Ljava/lang/String;

    iput-object v2, p0, Lcom/rich/oauth/core/UIConfigBuild$Builder;->authuncheckway:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/rich/oauth/core/UIConfigBuild$Builder;->bottomNavigationHidden:Z

    const/4 v2, -0x1

    iput v2, p0, Lcom/rich/oauth/core/UIConfigBuild$Builder;->loginBtnTextColor:I

    const/16 v3, 0xf

    iput v3, p0, Lcom/rich/oauth/core/UIConfigBuild$Builder;->loginBtnTextSize:I

    iput v2, p0, Lcom/rich/oauth/core/UIConfigBuild$Builder;->switchTextColor:I

    iput-boolean v1, p0, Lcom/rich/oauth/core/UIConfigBuild$Builder;->switchIsHide:Z

    iput-boolean v1, p0, Lcom/rich/oauth/core/UIConfigBuild$Builder;->isProtocolSelected:Z

    const-string v4, "\u5176\u4ed6\u767b\u5f55\u65b9\u5f0f"

    iput-object v4, p0, Lcom/rich/oauth/core/UIConfigBuild$Builder;->switchText:Ljava/lang/String;

    const-string v4, ""

    iput-object v4, p0, Lcom/rich/oauth/core/UIConfigBuild$Builder;->privacyContentText:Ljava/lang/String;

    iput-object v4, p0, Lcom/rich/oauth/core/UIConfigBuild$Builder;->protocolName:Ljava/lang/String;

    iput-object v4, p0, Lcom/rich/oauth/core/UIConfigBuild$Builder;->protocolUrl:Ljava/lang/String;

    iput-object v4, p0, Lcom/rich/oauth/core/UIConfigBuild$Builder;->secondProtocolName:Ljava/lang/String;

    iput-object v4, p0, Lcom/rich/oauth/core/UIConfigBuild$Builder;->secondProtocolUrl:Ljava/lang/String;

    iput-object v4, p0, Lcom/rich/oauth/core/UIConfigBuild$Builder;->thirdProtocolName:Ljava/lang/String;

    iput-object v4, p0, Lcom/rich/oauth/core/UIConfigBuild$Builder;->thirdProtocolUrl:Ljava/lang/String;

    const v4, -0xff7a30

    iput v4, p0, Lcom/rich/oauth/core/UIConfigBuild$Builder;->privacyColor:I

    const v5, -0x99999a

    iput v5, p0, Lcom/rich/oauth/core/UIConfigBuild$Builder;->privacyOtherTextColor:I

    const/high16 v6, -0x1000000

    iput v6, p0, Lcom/rich/oauth/core/UIConfigBuild$Builder;->ouathStateTextColor:I

    iput v6, p0, Lcom/rich/oauth/core/UIConfigBuild$Builder;->numberColor:I

    const/16 v7, 0x14

    iput v7, p0, Lcom/rich/oauth/core/UIConfigBuild$Builder;->numberSize:I

    iput v1, p0, Lcom/rich/oauth/core/UIConfigBuild$Builder;->numberOffsetX:I

    iput v2, p0, Lcom/rich/oauth/core/UIConfigBuild$Builder;->numFieldOffsetY:I

    iput v2, p0, Lcom/rich/oauth/core/UIConfigBuild$Builder;->numFieldOffsetY_B:I

    iput v2, p0, Lcom/rich/oauth/core/UIConfigBuild$Builder;->statusBarBgColor:I

    iput-boolean v0, p0, Lcom/rich/oauth/core/UIConfigBuild$Builder;->statusBarTextColor:Z

    iput v2, p0, Lcom/rich/oauth/core/UIConfigBuild$Builder;->privacyNavBgColor:I

    iput v6, p0, Lcom/rich/oauth/core/UIConfigBuild$Builder;->privacyNavTextColor:I

    iput v3, p0, Lcom/rich/oauth/core/UIConfigBuild$Builder;->privacyNavTextSize:I

    iput v6, p0, Lcom/rich/oauth/core/UIConfigBuild$Builder;->privacyNavClauseLayoutResID:I

    const-string v0, "\u672c\u673a\u53f7\u7801\u4e00\u952e\u767b\u5f55"

    iput-object v0, p0, Lcom/rich/oauth/core/UIConfigBuild$Builder;->loginBtnText:Ljava/lang/String;

    sget v0, Lcom/rich/oauth/R$drawable;->umcsdk_login_btn_bg:I

    iput v0, p0, Lcom/rich/oauth/core/UIConfigBuild$Builder;->loginBtnBg:I

    const/16 v0, 0xfa

    iput v0, p0, Lcom/rich/oauth/core/UIConfigBuild$Builder;->loginButtonWidth:I

    const/16 v0, 0x19

    iput v0, p0, Lcom/rich/oauth/core/UIConfigBuild$Builder;->loginButtonHight:I

    iput v2, p0, Lcom/rich/oauth/core/UIConfigBuild$Builder;->logBtnOffsetY_B:I

    iput v2, p0, Lcom/rich/oauth/core/UIConfigBuild$Builder;->logBtnOffsetY:I

    const/16 v0, 0x1e

    iput v0, p0, Lcom/rich/oauth/core/UIConfigBuild$Builder;->logBtnMarginLeft:I

    iput v0, p0, Lcom/rich/oauth/core/UIConfigBuild$Builder;->logBtnMarginRight:I

    iput v2, p0, Lcom/rich/oauth/core/UIConfigBuild$Builder;->privacyOffsetY:I

    iput v2, p0, Lcom/rich/oauth/core/UIConfigBuild$Builder;->privacyOffsetY_B:I

    iput v7, p0, Lcom/rich/oauth/core/UIConfigBuild$Builder;->privacyMarginLeft:I

    iput v0, p0, Lcom/rich/oauth/core/UIConfigBuild$Builder;->privacyMarginRight:I

    const/16 v0, 0xc

    iput v0, p0, Lcom/rich/oauth/core/UIConfigBuild$Builder;->privacyTextSize:I

    iput v5, p0, Lcom/rich/oauth/core/UIConfigBuild$Builder;->clauseBaseColor:I

    iput v4, p0, Lcom/rich/oauth/core/UIConfigBuild$Builder;->clauseColor:I

    iput-boolean v1, p0, Lcom/rich/oauth/core/UIConfigBuild$Builder;->isGravityCenter:Z

    iput v1, p0, Lcom/rich/oauth/core/UIConfigBuild$Builder;->checkBoxLocation:I

    const/16 v0, 0xd

    iput v0, p0, Lcom/rich/oauth/core/UIConfigBuild$Builder;->checkBoxImageWidth:I

    iput v0, p0, Lcom/rich/oauth/core/UIConfigBuild$Builder;->checkBoxImageheight:I

    return-void
.end method

.method public static synthetic access$000(Lcom/rich/oauth/core/UIConfigBuild$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/rich/oauth/core/UIConfigBuild$Builder;->privacyAnimationBoolean:Z

    return p0
.end method

.method public static synthetic access$100(Lcom/rich/oauth/core/UIConfigBuild$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/rich/oauth/core/UIConfigBuild$Builder;->isWindowBackButtonWroks:Z

    return p0
.end method

.method public static synthetic access$1000(Lcom/rich/oauth/core/UIConfigBuild$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/rich/oauth/core/UIConfigBuild$Builder;->secondProtocolName:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$1100(Lcom/rich/oauth/core/UIConfigBuild$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/rich/oauth/core/UIConfigBuild$Builder;->secondProtocolUrl:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$1200(Lcom/rich/oauth/core/UIConfigBuild$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/rich/oauth/core/UIConfigBuild$Builder;->thirdProtocolName:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$1300(Lcom/rich/oauth/core/UIConfigBuild$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/rich/oauth/core/UIConfigBuild$Builder;->thirdProtocolUrl:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$1400(Lcom/rich/oauth/core/UIConfigBuild$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/rich/oauth/core/UIConfigBuild$Builder;->fourthProtocolName:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$1500(Lcom/rich/oauth/core/UIConfigBuild$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/rich/oauth/core/UIConfigBuild$Builder;->fourthProtocolUrl:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$1600(Lcom/rich/oauth/core/UIConfigBuild$Builder;)I
    .locals 0

    iget p0, p0, Lcom/rich/oauth/core/UIConfigBuild$Builder;->loginButtonWidth:I

    return p0
.end method

.method public static synthetic access$1700(Lcom/rich/oauth/core/UIConfigBuild$Builder;)I
    .locals 0

    iget p0, p0, Lcom/rich/oauth/core/UIConfigBuild$Builder;->loginButtonHight:I

    return p0
.end method

.method public static synthetic access$1800(Lcom/rich/oauth/core/UIConfigBuild$Builder;)I
    .locals 0

    iget p0, p0, Lcom/rich/oauth/core/UIConfigBuild$Builder;->privacyColor:I

    return p0
.end method

.method public static synthetic access$1900(Lcom/rich/oauth/core/UIConfigBuild$Builder;)I
    .locals 0

    iget p0, p0, Lcom/rich/oauth/core/UIConfigBuild$Builder;->privacyOtherTextColor:I

    return p0
.end method

.method public static synthetic access$200(Lcom/rich/oauth/core/UIConfigBuild$Builder;)I
    .locals 0

    iget p0, p0, Lcom/rich/oauth/core/UIConfigBuild$Builder;->loginBtnBg:I

    return p0
.end method

.method public static synthetic access$2000(Lcom/rich/oauth/core/UIConfigBuild$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/rich/oauth/core/UIConfigBuild$Builder;->isProtocolSelected:Z

    return p0
.end method

.method public static synthetic access$2100(Lcom/rich/oauth/core/UIConfigBuild$Builder;)I
    .locals 0

    iget p0, p0, Lcom/rich/oauth/core/UIConfigBuild$Builder;->statusBarBgColor:I

    return p0
.end method

.method public static synthetic access$2200(Lcom/rich/oauth/core/UIConfigBuild$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/rich/oauth/core/UIConfigBuild$Builder;->statusBarTextColor:Z

    return p0
.end method

.method public static synthetic access$2300(Lcom/rich/oauth/core/UIConfigBuild$Builder;)I
    .locals 0

    iget p0, p0, Lcom/rich/oauth/core/UIConfigBuild$Builder;->privacyNavBgColor:I

    return p0
.end method

.method public static synthetic access$2400(Lcom/rich/oauth/core/UIConfigBuild$Builder;)I
    .locals 0

    iget p0, p0, Lcom/rich/oauth/core/UIConfigBuild$Builder;->numberColor:I

    return p0
.end method

.method public static synthetic access$2500(Lcom/rich/oauth/core/UIConfigBuild$Builder;)I
    .locals 0

    iget p0, p0, Lcom/rich/oauth/core/UIConfigBuild$Builder;->ouathStateTextColor:I

    return p0
.end method

.method public static synthetic access$2600(Lcom/rich/oauth/core/UIConfigBuild$Builder;)I
    .locals 0

    iget p0, p0, Lcom/rich/oauth/core/UIConfigBuild$Builder;->numberSize:I

    return p0
.end method

.method public static synthetic access$2700(Lcom/rich/oauth/core/UIConfigBuild$Builder;)I
    .locals 0

    iget p0, p0, Lcom/rich/oauth/core/UIConfigBuild$Builder;->numberOffsetX:I

    return p0
.end method

.method public static synthetic access$2800(Lcom/rich/oauth/core/UIConfigBuild$Builder;)I
    .locals 0

    iget p0, p0, Lcom/rich/oauth/core/UIConfigBuild$Builder;->numFieldOffsetY:I

    return p0
.end method

.method public static synthetic access$2900(Lcom/rich/oauth/core/UIConfigBuild$Builder;)I
    .locals 0

    iget p0, p0, Lcom/rich/oauth/core/UIConfigBuild$Builder;->privacyNavTextColor:I

    return p0
.end method

.method public static synthetic access$300(Lcom/rich/oauth/core/UIConfigBuild$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/rich/oauth/core/UIConfigBuild$Builder;->loginBtnText:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$3000(Lcom/rich/oauth/core/UIConfigBuild$Builder;)I
    .locals 0

    iget p0, p0, Lcom/rich/oauth/core/UIConfigBuild$Builder;->logBtnOffsetY_B:I

    return p0
.end method

.method public static synthetic access$3100(Lcom/rich/oauth/core/UIConfigBuild$Builder;)I
    .locals 0

    iget p0, p0, Lcom/rich/oauth/core/UIConfigBuild$Builder;->logBtnOffsetY:I

    return p0
.end method

.method public static synthetic access$3200(Lcom/rich/oauth/core/UIConfigBuild$Builder;)I
    .locals 0

    iget p0, p0, Lcom/rich/oauth/core/UIConfigBuild$Builder;->privacyOffsetY:I

    return p0
.end method

.method public static synthetic access$3300(Lcom/rich/oauth/core/UIConfigBuild$Builder;)I
    .locals 0

    iget p0, p0, Lcom/rich/oauth/core/UIConfigBuild$Builder;->privacyOffsetY_B:I

    return p0
.end method

.method public static synthetic access$3400(Lcom/rich/oauth/core/UIConfigBuild$Builder;)I
    .locals 0

    iget p0, p0, Lcom/rich/oauth/core/UIConfigBuild$Builder;->privacyMarginLeft:I

    return p0
.end method

.method public static synthetic access$3500(Lcom/rich/oauth/core/UIConfigBuild$Builder;)I
    .locals 0

    iget p0, p0, Lcom/rich/oauth/core/UIConfigBuild$Builder;->privacyMarginRight:I

    return p0
.end method

.method public static synthetic access$3600(Lcom/rich/oauth/core/UIConfigBuild$Builder;)I
    .locals 0

    iget p0, p0, Lcom/rich/oauth/core/UIConfigBuild$Builder;->privacyTextSize:I

    return p0
.end method

.method public static synthetic access$3700(Lcom/rich/oauth/core/UIConfigBuild$Builder;)I
    .locals 0

    iget p0, p0, Lcom/rich/oauth/core/UIConfigBuild$Builder;->clauseBaseColor:I

    return p0
.end method

.method public static synthetic access$3800(Lcom/rich/oauth/core/UIConfigBuild$Builder;)I
    .locals 0

    iget p0, p0, Lcom/rich/oauth/core/UIConfigBuild$Builder;->clauseColor:I

    return p0
.end method

.method public static synthetic access$3900(Lcom/rich/oauth/core/UIConfigBuild$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/rich/oauth/core/UIConfigBuild$Builder;->isGravityCenter:Z

    return p0
.end method

.method public static synthetic access$400(Lcom/rich/oauth/core/UIConfigBuild$Builder;)I
    .locals 0

    iget p0, p0, Lcom/rich/oauth/core/UIConfigBuild$Builder;->loginBtnTextColor:I

    return p0
.end method

.method public static synthetic access$4000(Lcom/rich/oauth/core/UIConfigBuild$Builder;)I
    .locals 0

    iget p0, p0, Lcom/rich/oauth/core/UIConfigBuild$Builder;->numFieldOffsetY_B:I

    return p0
.end method

.method public static synthetic access$4100(Lcom/rich/oauth/core/UIConfigBuild$Builder;)I
    .locals 0

    iget p0, p0, Lcom/rich/oauth/core/UIConfigBuild$Builder;->privacyNavTextSize:I

    return p0
.end method

.method public static synthetic access$4200(Lcom/rich/oauth/core/UIConfigBuild$Builder;)I
    .locals 0

    iget p0, p0, Lcom/rich/oauth/core/UIConfigBuild$Builder;->privacyNavClauseLayoutResID:I

    return p0
.end method

.method public static synthetic access$4300(Lcom/rich/oauth/core/UIConfigBuild$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/rich/oauth/core/UIConfigBuild$Builder;->authPageActIn_authPagein:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$4400(Lcom/rich/oauth/core/UIConfigBuild$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/rich/oauth/core/UIConfigBuild$Builder;->authPageActIn_lastPageOut:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$4500(Lcom/rich/oauth/core/UIConfigBuild$Builder;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/rich/oauth/core/UIConfigBuild$Builder;->contentView:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$4600(Lcom/rich/oauth/core/UIConfigBuild$Builder;)I
    .locals 0

    iget p0, p0, Lcom/rich/oauth/core/UIConfigBuild$Builder;->logBtnMarginLeft:I

    return p0
.end method

.method public static synthetic access$4700(Lcom/rich/oauth/core/UIConfigBuild$Builder;)I
    .locals 0

    iget p0, p0, Lcom/rich/oauth/core/UIConfigBuild$Builder;->logBtnMarginRight:I

    return p0
.end method

.method public static synthetic access$4800(Lcom/rich/oauth/core/UIConfigBuild$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/rich/oauth/core/UIConfigBuild$Builder;->fitsSystemWindows:Z

    return p0
.end method

.method public static synthetic access$4900(Lcom/rich/oauth/core/UIConfigBuild$Builder;)Lcom/rich/oauth/callback/CheckboxCheckedChangeListener;
    .locals 0

    iget-object p0, p0, Lcom/rich/oauth/core/UIConfigBuild$Builder;->mCheckboxCheckedChangelistener:Lcom/rich/oauth/callback/CheckboxCheckedChangeListener;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/rich/oauth/core/UIConfigBuild$Builder;)I
    .locals 0

    iget p0, p0, Lcom/rich/oauth/core/UIConfigBuild$Builder;->switchTextColor:I

    return p0
.end method

.method public static synthetic access$5000(Lcom/rich/oauth/core/UIConfigBuild$Builder;)Lcom/rich/oauth/callback/AuthLoginClickListener;
    .locals 0

    iget-object p0, p0, Lcom/rich/oauth/core/UIConfigBuild$Builder;->authLoginClickListener:Lcom/rich/oauth/callback/AuthLoginClickListener;

    return-object p0
.end method

.method public static synthetic access$5100(Lcom/rich/oauth/core/UIConfigBuild$Builder;)Lcom/rich/oauth/callback/AuthPageInListener;
    .locals 0

    iget-object p0, p0, Lcom/rich/oauth/core/UIConfigBuild$Builder;->authPageInListener:Lcom/rich/oauth/callback/AuthPageInListener;

    return-object p0
.end method

.method public static synthetic access$5200(Lcom/rich/oauth/core/UIConfigBuild$Builder;)Lcom/rich/oauth/callback/CheckboxUnCheckedClickListener;
    .locals 0

    iget-object p0, p0, Lcom/rich/oauth/core/UIConfigBuild$Builder;->checkboxUnCheckedClickListener:Lcom/rich/oauth/callback/CheckboxUnCheckedClickListener;

    return-object p0
.end method

.method public static synthetic access$5300(Lcom/rich/oauth/core/UIConfigBuild$Builder;)Lcom/rich/oauth/callback/UnCheckDialogAuthLoginListener;
    .locals 0

    iget-object p0, p0, Lcom/rich/oauth/core/UIConfigBuild$Builder;->unCheckDialogAuthLoginListener:Lcom/rich/oauth/callback/UnCheckDialogAuthLoginListener;

    return-object p0
.end method

.method public static synthetic access$5400(Lcom/rich/oauth/core/UIConfigBuild$Builder;)Lcom/rich/oauth/callback/PressBackListener;
    .locals 0

    iget-object p0, p0, Lcom/rich/oauth/core/UIConfigBuild$Builder;->pressBackListener:Lcom/rich/oauth/callback/PressBackListener;

    return-object p0
.end method

.method public static synthetic access$600(Lcom/rich/oauth/core/UIConfigBuild$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/rich/oauth/core/UIConfigBuild$Builder;->switchIsHide:Z

    return p0
.end method

.method public static synthetic access$700(Lcom/rich/oauth/core/UIConfigBuild$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/rich/oauth/core/UIConfigBuild$Builder;->switchText:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$800(Lcom/rich/oauth/core/UIConfigBuild$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/rich/oauth/core/UIConfigBuild$Builder;->protocolName:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$900(Lcom/rich/oauth/core/UIConfigBuild$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/rich/oauth/core/UIConfigBuild$Builder;->protocolUrl:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public build()Lcom/rich/oauth/core/UIConfigBuild;
    .locals 2

    new-instance v0, Lcom/rich/oauth/core/UIConfigBuild;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/rich/oauth/core/UIConfigBuild;-><init>(Lcom/rich/oauth/core/UIConfigBuild$Builder;Lcom/rich/oauth/core/UIConfigBuild$1;)V

    return-object v0
.end method

.method public isWindowBackButtonWroks()Z
    .locals 1

    iget-boolean v0, p0, Lcom/rich/oauth/core/UIConfigBuild$Builder;->isWindowBackButtonWroks:Z

    return v0
.end method

.method public setAppLanguageType(I)Lcom/rich/oauth/core/UIConfigBuild$Builder;
    .locals 0

    iput p1, p0, Lcom/rich/oauth/core/UIConfigBuild$Builder;->appLanguageType:I

    return-object p0
.end method

.method public setAuthContentView(Landroid/view/View;)Lcom/rich/oauth/core/UIConfigBuild$Builder;
    .locals 0

    iput-object p1, p0, Lcom/rich/oauth/core/UIConfigBuild$Builder;->contentView:Landroid/view/View;

    return-object p0
.end method

.method public setAuthLoginClickListener(Lcom/rich/oauth/callback/AuthLoginClickListener;)Lcom/rich/oauth/core/UIConfigBuild$Builder;
    .locals 0

    iput-object p1, p0, Lcom/rich/oauth/core/UIConfigBuild$Builder;->authLoginClickListener:Lcom/rich/oauth/callback/AuthLoginClickListener;

    return-object p0
.end method

.method public setAuthLoginPageInListener(Lcom/rich/oauth/callback/AuthPageInListener;)Lcom/rich/oauth/core/UIConfigBuild$Builder;
    .locals 0

    iput-object p1, p0, Lcom/rich/oauth/core/UIConfigBuild$Builder;->authPageInListener:Lcom/rich/oauth/callback/AuthPageInListener;

    return-object p0
.end method

.method public setAuthPageActIn(Ljava/lang/String;Ljava/lang/String;)Lcom/rich/oauth/core/UIConfigBuild$Builder;
    .locals 0

    iput-object p2, p0, Lcom/rich/oauth/core/UIConfigBuild$Builder;->authPageActIn_lastPageOut:Ljava/lang/String;

    iput-object p1, p0, Lcom/rich/oauth/core/UIConfigBuild$Builder;->authPageActIn_authPagein:Ljava/lang/String;

    return-object p0
.end method

.method public setAuthPageActOut(Ljava/lang/String;Ljava/lang/String;)Lcom/rich/oauth/core/UIConfigBuild$Builder;
    .locals 0

    iput-object p2, p0, Lcom/rich/oauth/core/UIConfigBuild$Builder;->authPageActOut_authPageOut:Ljava/lang/String;

    iput-object p1, p0, Lcom/rich/oauth/core/UIConfigBuild$Builder;->authPageActOut_nextPagein:Ljava/lang/String;

    return-object p0
.end method

.method public setAuthPageWindowBottom(I)Lcom/rich/oauth/core/UIConfigBuild$Builder;
    .locals 0

    iput p1, p0, Lcom/rich/oauth/core/UIConfigBuild$Builder;->authPageWindowBottom:I

    return-object p0
.end method

.method public setAuthPageWindowHight(I)Lcom/rich/oauth/core/UIConfigBuild$Builder;
    .locals 0

    iput p1, p0, Lcom/rich/oauth/core/UIConfigBuild$Builder;->authPageWindowHight:I

    return-object p0
.end method

.method public setAuthPageWindowMode(Z)Lcom/rich/oauth/core/UIConfigBuild$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/rich/oauth/core/UIConfigBuild$Builder;->authPageWindowMode:Z

    return-object p0
.end method

.method public setAuthPageWindowOffsetX(I)Lcom/rich/oauth/core/UIConfigBuild$Builder;
    .locals 0

    iput p1, p0, Lcom/rich/oauth/core/UIConfigBuild$Builder;->authPageWindowOffsetX:I

    return-object p0
.end method

.method public setAuthPageWindowOffsetY(I)Lcom/rich/oauth/core/UIConfigBuild$Builder;
    .locals 0

    iput p1, p0, Lcom/rich/oauth/core/UIConfigBuild$Builder;->authPageWindowOffsetY:I

    return-object p0
.end method

.method public setAuthPageWindowThemeId(I)Lcom/rich/oauth/core/UIConfigBuild$Builder;
    .locals 0

    iput p1, p0, Lcom/rich/oauth/core/UIConfigBuild$Builder;->authPageWindowThemeId:I

    return-object p0
.end method

.method public setAuthPageWindowWith(I)Lcom/rich/oauth/core/UIConfigBuild$Builder;
    .locals 0

    iput p1, p0, Lcom/rich/oauth/core/UIConfigBuild$Builder;->authPageWindowWith:I

    return-object p0
.end method

.method public setAutoClosAuthPage(Z)Lcom/rich/oauth/core/UIConfigBuild$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/rich/oauth/core/UIConfigBuild$Builder;->isAutoClosAuthPage:Z

    return-object p0
.end method

.method public setBackButton(Z)Lcom/rich/oauth/core/UIConfigBuild$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/rich/oauth/core/UIConfigBuild$Builder;->isWindowBackButtonWroks:Z

    return-object p0
.end method

.method public setBottomNavigationHidden(Z)Lcom/rich/oauth/core/UIConfigBuild$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/rich/oauth/core/UIConfigBuild$Builder;->bottomNavigationHidden:Z

    return-object p0
.end method

.method public setCheckBoxImageWidth(I)Lcom/rich/oauth/core/UIConfigBuild$Builder;
    .locals 0

    iput p1, p0, Lcom/rich/oauth/core/UIConfigBuild$Builder;->checkBoxImageWidth:I

    return-object p0
.end method

.method public setCheckBoxImageheight(I)Lcom/rich/oauth/core/UIConfigBuild$Builder;
    .locals 0

    iput p1, p0, Lcom/rich/oauth/core/UIConfigBuild$Builder;->checkBoxImageheight:I

    return-object p0
.end method

.method public setCheckBoxLocation(I)Lcom/rich/oauth/core/UIConfigBuild$Builder;
    .locals 0

    iput p1, p0, Lcom/rich/oauth/core/UIConfigBuild$Builder;->checkBoxLocation:I

    return-object p0
.end method

.method public setCheckTipText(Ljava/lang/String;)Lcom/rich/oauth/core/UIConfigBuild$Builder;
    .locals 0

    iput-object p1, p0, Lcom/rich/oauth/core/UIConfigBuild$Builder;->checkTipText:Ljava/lang/String;

    return-object p0
.end method

.method public setCheckboxUnCheckedClickListener(Lcom/rich/oauth/callback/CheckboxUnCheckedClickListener;)Lcom/rich/oauth/core/UIConfigBuild$Builder;
    .locals 0

    iput-object p1, p0, Lcom/rich/oauth/core/UIConfigBuild$Builder;->checkboxUnCheckedClickListener:Lcom/rich/oauth/callback/CheckboxUnCheckedClickListener;

    return-object p0
.end method

.method public setClauseBaseColor(I)Lcom/rich/oauth/core/UIConfigBuild$Builder;
    .locals 0

    iput p1, p0, Lcom/rich/oauth/core/UIConfigBuild$Builder;->clauseBaseColor:I

    return-object p0
.end method

.method public setClauseColor(I)Lcom/rich/oauth/core/UIConfigBuild$Builder;
    .locals 0

    iput p1, p0, Lcom/rich/oauth/core/UIConfigBuild$Builder;->clauseColor:I

    return-object p0
.end method

.method public setClauseStatusColor(I)Lcom/rich/oauth/core/UIConfigBuild$Builder;
    .locals 0

    iput p1, p0, Lcom/rich/oauth/core/UIConfigBuild$Builder;->clauseStatusColor:I

    return-object p0
.end method

.method public setFitsSystemWindows(Z)Lcom/rich/oauth/core/UIConfigBuild$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/rich/oauth/core/UIConfigBuild$Builder;->fitsSystemWindows:Z

    return-object p0
.end method

.method public setFourthProtocol(Ljava/lang/String;Ljava/lang/String;)Lcom/rich/oauth/core/UIConfigBuild$Builder;
    .locals 0

    iput-object p1, p0, Lcom/rich/oauth/core/UIConfigBuild$Builder;->fourthProtocolName:Ljava/lang/String;

    iput-object p2, p0, Lcom/rich/oauth/core/UIConfigBuild$Builder;->fourthProtocolUrl:Ljava/lang/String;

    return-object p0
.end method

.method public setIsGravityCenter(Z)Lcom/rich/oauth/core/UIConfigBuild$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/rich/oauth/core/UIConfigBuild$Builder;->isGravityCenter:Z

    return-object p0
.end method

.method public setLogBtnMarginLeft(I)Lcom/rich/oauth/core/UIConfigBuild$Builder;
    .locals 0

    iput p1, p0, Lcom/rich/oauth/core/UIConfigBuild$Builder;->logBtnMarginLeft:I

    return-object p0
.end method

.method public setLogBtnMarginRight(I)Lcom/rich/oauth/core/UIConfigBuild$Builder;
    .locals 0

    iput p1, p0, Lcom/rich/oauth/core/UIConfigBuild$Builder;->logBtnMarginRight:I

    return-object p0
.end method

.method public setLogBtnOffsetY(I)Lcom/rich/oauth/core/UIConfigBuild$Builder;
    .locals 0

    iput p1, p0, Lcom/rich/oauth/core/UIConfigBuild$Builder;->logBtnOffsetY:I

    return-object p0
.end method

.method public setLogBtnOffsetY_B(I)Lcom/rich/oauth/core/UIConfigBuild$Builder;
    .locals 0

    iput p1, p0, Lcom/rich/oauth/core/UIConfigBuild$Builder;->logBtnOffsetY_B:I

    return-object p0
.end method

.method public setLoginBtnBg(I)Lcom/rich/oauth/core/UIConfigBuild$Builder;
    .locals 0

    iput p1, p0, Lcom/rich/oauth/core/UIConfigBuild$Builder;->loginBtnBg:I

    return-object p0
.end method

.method public setLoginBtnHight(I)Lcom/rich/oauth/core/UIConfigBuild$Builder;
    .locals 0

    iput p1, p0, Lcom/rich/oauth/core/UIConfigBuild$Builder;->loginButtonHight:I

    return-object p0
.end method

.method public setLoginBtnText(Ljava/lang/String;)Lcom/rich/oauth/core/UIConfigBuild$Builder;
    .locals 0

    iput-object p1, p0, Lcom/rich/oauth/core/UIConfigBuild$Builder;->loginBtnText:Ljava/lang/String;

    return-object p0
.end method

.method public setLoginBtnTextBold(Z)Lcom/rich/oauth/core/UIConfigBuild$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/rich/oauth/core/UIConfigBuild$Builder;->loginbtnTextBold:Z

    return-object p0
.end method

.method public setLoginBtnTextColor(I)Lcom/rich/oauth/core/UIConfigBuild$Builder;
    .locals 0

    iput p1, p0, Lcom/rich/oauth/core/UIConfigBuild$Builder;->loginBtnTextColor:I

    return-object p0
.end method

.method public setLoginBtnTextSize(I)Lcom/rich/oauth/core/UIConfigBuild$Builder;
    .locals 0

    iput p1, p0, Lcom/rich/oauth/core/UIConfigBuild$Builder;->loginBtnTextSize:I

    return-object p0
.end method

.method public setLoginBtnWidth(I)Lcom/rich/oauth/core/UIConfigBuild$Builder;
    .locals 0

    iput p1, p0, Lcom/rich/oauth/core/UIConfigBuild$Builder;->loginButtonWidth:I

    return-object p0
.end method

.method public setNumFieldOffsetY_B(I)Lcom/rich/oauth/core/UIConfigBuild$Builder;
    .locals 0

    iput p1, p0, Lcom/rich/oauth/core/UIConfigBuild$Builder;->numFieldOffsetY_B:I

    return-object p0
.end method

.method public setNumberColor(I)Lcom/rich/oauth/core/UIConfigBuild$Builder;
    .locals 0

    iput p1, p0, Lcom/rich/oauth/core/UIConfigBuild$Builder;->numberColor:I

    return-object p0
.end method

.method public setNumberOffsetX(I)Lcom/rich/oauth/core/UIConfigBuild$Builder;
    .locals 0

    iput p1, p0, Lcom/rich/oauth/core/UIConfigBuild$Builder;->numberOffsetX:I

    return-object p0
.end method

.method public setNumberOffsetY(I)Lcom/rich/oauth/core/UIConfigBuild$Builder;
    .locals 0

    iput p1, p0, Lcom/rich/oauth/core/UIConfigBuild$Builder;->numFieldOffsetY:I

    return-object p0
.end method

.method public setNumberSize(IZ)Lcom/rich/oauth/core/UIConfigBuild$Builder;
    .locals 0

    iput p1, p0, Lcom/rich/oauth/core/UIConfigBuild$Builder;->numberSize:I

    iput-boolean p2, p0, Lcom/rich/oauth/core/UIConfigBuild$Builder;->numberBold:Z

    return-object p0
.end method

.method public setOnCheckboxCheckedChange(Lcom/rich/oauth/callback/CheckboxCheckedChangeListener;)Lcom/rich/oauth/core/UIConfigBuild$Builder;
    .locals 0

    iput-object p1, p0, Lcom/rich/oauth/core/UIConfigBuild$Builder;->mCheckboxCheckedChangelistener:Lcom/rich/oauth/callback/CheckboxCheckedChangeListener;

    return-object p0
.end method

.method public setOnPressBackListener(Lcom/rich/oauth/callback/PressBackListener;)Lcom/rich/oauth/core/UIConfigBuild$Builder;
    .locals 0

    iput-object p1, p0, Lcom/rich/oauth/core/UIConfigBuild$Builder;->pressBackListener:Lcom/rich/oauth/callback/PressBackListener;

    return-object p0
.end method

.method public setOuathStateTextColor(I)Lcom/rich/oauth/core/UIConfigBuild$Builder;
    .locals 0

    iput p1, p0, Lcom/rich/oauth/core/UIConfigBuild$Builder;->ouathStateTextColor:I

    return-object p0
.end method

.method public setPrivacyAnimationBoolean(Z)Lcom/rich/oauth/core/UIConfigBuild$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/rich/oauth/core/UIConfigBuild$Builder;->privacyAnimationBoolean:Z

    return-object p0
.end method

.method public setPrivacyBookSymbol(Z)Lcom/rich/oauth/core/UIConfigBuild$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/rich/oauth/core/UIConfigBuild$Builder;->privacyBookSymbol:Z

    return-object p0
.end method

.method public setPrivacyColor(II)Lcom/rich/oauth/core/UIConfigBuild$Builder;
    .locals 0

    iput p1, p0, Lcom/rich/oauth/core/UIConfigBuild$Builder;->privacyColor:I

    iput p2, p0, Lcom/rich/oauth/core/UIConfigBuild$Builder;->privacyOtherTextColor:I

    return-object p0
.end method

.method public setPrivacyContentText(Ljava/lang/String;)Lcom/rich/oauth/core/UIConfigBuild$Builder;
    .locals 0

    iput-object p1, p0, Lcom/rich/oauth/core/UIConfigBuild$Builder;->privacyContentText:Ljava/lang/String;

    return-object p0
.end method

.method public setPrivacyMarginLeft(I)Lcom/rich/oauth/core/UIConfigBuild$Builder;
    .locals 0

    iput p1, p0, Lcom/rich/oauth/core/UIConfigBuild$Builder;->privacyMarginLeft:I

    return-object p0
.end method

.method public setPrivacyMarginRight(I)Lcom/rich/oauth/core/UIConfigBuild$Builder;
    .locals 0

    iput p1, p0, Lcom/rich/oauth/core/UIConfigBuild$Builder;->privacyMarginRight:I

    return-object p0
.end method

.method public setPrivacyNavBgColor(I)Lcom/rich/oauth/core/UIConfigBuild$Builder;
    .locals 0

    iput p1, p0, Lcom/rich/oauth/core/UIConfigBuild$Builder;->privacyNavBgColor:I

    return-object p0
.end method

.method public setPrivacyNavReturnBackClauseLayoutResID(I)Lcom/rich/oauth/core/UIConfigBuild$Builder;
    .locals 0

    iput p1, p0, Lcom/rich/oauth/core/UIConfigBuild$Builder;->privacyNavClauseLayoutResID:I

    return-object p0
.end method

.method public setPrivacyNavTextColor(I)Lcom/rich/oauth/core/UIConfigBuild$Builder;
    .locals 0

    iput p1, p0, Lcom/rich/oauth/core/UIConfigBuild$Builder;->privacyNavTextColor:I

    return-object p0
.end method

.method public setPrivacyNavTextSize(I)Lcom/rich/oauth/core/UIConfigBuild$Builder;
    .locals 0

    iput p1, p0, Lcom/rich/oauth/core/UIConfigBuild$Builder;->privacyNavTextSize:I

    return-object p0
.end method

.method public setPrivacyOffsetY(I)Lcom/rich/oauth/core/UIConfigBuild$Builder;
    .locals 0

    iput p1, p0, Lcom/rich/oauth/core/UIConfigBuild$Builder;->privacyOffsetY:I

    return-object p0
.end method

.method public setPrivacyOffsetY_B(I)Lcom/rich/oauth/core/UIConfigBuild$Builder;
    .locals 0

    iput p1, p0, Lcom/rich/oauth/core/UIConfigBuild$Builder;->privacyOffsetY_B:I

    return-object p0
.end method

.method public setPrivacyTextSize(I)Lcom/rich/oauth/core/UIConfigBuild$Builder;
    .locals 0

    iput p1, p0, Lcom/rich/oauth/core/UIConfigBuild$Builder;->privacyTextSize:I

    return-object p0
.end method

.method public setPrivacyTheme(I)Lcom/rich/oauth/core/UIConfigBuild$Builder;
    .locals 0

    iput p1, p0, Lcom/rich/oauth/core/UIConfigBuild$Builder;->privacyTheme:I

    return-object p0
.end method

.method public setProtocol(Ljava/lang/String;Ljava/lang/String;)Lcom/rich/oauth/core/UIConfigBuild$Builder;
    .locals 0

    iput-object p1, p0, Lcom/rich/oauth/core/UIConfigBuild$Builder;->protocolName:Ljava/lang/String;

    iput-object p2, p0, Lcom/rich/oauth/core/UIConfigBuild$Builder;->protocolUrl:Ljava/lang/String;

    return-object p0
.end method

.method public setProtocolSelected(Z)Lcom/rich/oauth/core/UIConfigBuild$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/rich/oauth/core/UIConfigBuild$Builder;->isProtocolSelected:Z

    return-object p0
.end method

.method public setSecondProtocol(Ljava/lang/String;Ljava/lang/String;)Lcom/rich/oauth/core/UIConfigBuild$Builder;
    .locals 0

    iput-object p1, p0, Lcom/rich/oauth/core/UIConfigBuild$Builder;->secondProtocolName:Ljava/lang/String;

    iput-object p2, p0, Lcom/rich/oauth/core/UIConfigBuild$Builder;->secondProtocolUrl:Ljava/lang/String;

    return-object p0
.end method

.method public setStatusBar(IZ)Lcom/rich/oauth/core/UIConfigBuild$Builder;
    .locals 0

    iput p1, p0, Lcom/rich/oauth/core/UIConfigBuild$Builder;->statusBarBgColor:I

    iput-boolean p2, p0, Lcom/rich/oauth/core/UIConfigBuild$Builder;->statusBarTextColor:Z

    return-object p0
.end method

.method public setSwitchIsHide(Z)Lcom/rich/oauth/core/UIConfigBuild$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/rich/oauth/core/UIConfigBuild$Builder;->switchIsHide:Z

    return-object p0
.end method

.method public setSwitchText(Ljava/lang/String;)Lcom/rich/oauth/core/UIConfigBuild$Builder;
    .locals 0

    iput-object p1, p0, Lcom/rich/oauth/core/UIConfigBuild$Builder;->switchText:Ljava/lang/String;

    return-object p0
.end method

.method public setSwitchTextColor(I)Lcom/rich/oauth/core/UIConfigBuild$Builder;
    .locals 0

    iput p1, p0, Lcom/rich/oauth/core/UIConfigBuild$Builder;->switchTextColor:I

    return-object p0
.end method

.method public setThirdProtocol(Ljava/lang/String;Ljava/lang/String;)Lcom/rich/oauth/core/UIConfigBuild$Builder;
    .locals 0

    iput-object p1, p0, Lcom/rich/oauth/core/UIConfigBuild$Builder;->thirdProtocolName:Ljava/lang/String;

    iput-object p2, p0, Lcom/rich/oauth/core/UIConfigBuild$Builder;->thirdProtocolUrl:Ljava/lang/String;

    return-object p0
.end method

.method public setUnCheckWay(Ljava/lang/String;)Lcom/rich/oauth/core/UIConfigBuild$Builder;
    .locals 0

    iput-object p1, p0, Lcom/rich/oauth/core/UIConfigBuild$Builder;->authuncheckway:Ljava/lang/String;

    return-object p0
.end method

.method public setUncheckDialogAuthLoginListener(Lcom/rich/oauth/callback/UnCheckDialogAuthLoginListener;)Lcom/rich/oauth/core/UIConfigBuild$Builder;
    .locals 0

    iput-object p1, p0, Lcom/rich/oauth/core/UIConfigBuild$Builder;->unCheckDialogAuthLoginListener:Lcom/rich/oauth/callback/UnCheckDialogAuthLoginListener;

    return-object p0
.end method

.method public setWindowBackButtonWroks(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/rich/oauth/core/UIConfigBuild$Builder;->isWindowBackButtonWroks:Z

    return-void
.end method
