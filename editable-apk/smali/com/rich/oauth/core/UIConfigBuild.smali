.class public Lcom/rich/oauth/core/UIConfigBuild;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rich/oauth/core/UIConfigBuild$Builder;
    }
.end annotation


# instance fields
.field public appLanguageType:I

.field public authPageActIn_authPagein:Ljava/lang/String;

.field public authPageActIn_lastPageOut:Ljava/lang/String;

.field public authPageActOut_authPageOut:Ljava/lang/String;

.field public authPageActOut_nextPagein:Ljava/lang/String;

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

.field public clauseBaseColor:I

.field public clauseColor:I

.field public clauseStatusColor:I

.field public contentView:Landroid/view/View;

.field public fitsSystemWindows:Z

.field public fourthProtocolName:Ljava/lang/String;

.field public fourthProtocolUrl:Ljava/lang/String;

.field public isAutoClosAuthPage:Z

.field public isGravityCenter:Z

.field public isPrivacyAnimation:Ljava/lang/String;

.field public isProtocolSeleted:Z

.field public isWindowBackButtonWorks:Z

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

.field public mAuthLoginClickListener:Lcom/rich/oauth/callback/AuthLoginClickListener;

.field public mAuthPageInListener:Lcom/rich/oauth/callback/AuthPageInListener;

.field public mCheckboxCheckedChangelistener:Lcom/rich/oauth/callback/CheckboxCheckedChangeListener;

.field public mCheckboxUnCheckedClickListener:Lcom/rich/oauth/callback/CheckboxUnCheckedClickListener;

.field public mPressBackListener:Lcom/rich/oauth/callback/PressBackListener;

.field public mUnCheckDialogAuthLoginListener:Lcom/rich/oauth/callback/UnCheckDialogAuthLoginListener;

.field public navColorBgColor:I

.field public numFieldOffsetY:I

.field public numFieldOffsetY_B:I

.field public numberBold:Z

.field public numberColor:I

.field public numberOffsetX:I

.field public numberSize:I

.field public ouathStateTextColor:I

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


# direct methods
.method public constructor <init>(Lcom/rich/oauth/core/UIConfigBuild$Builder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/rich/oauth/core/UIConfigBuild;->numFieldOffsetY:I

    iput v0, p0, Lcom/rich/oauth/core/UIConfigBuild;->numFieldOffsetY_B:I

    iput v0, p0, Lcom/rich/oauth/core/UIConfigBuild;->logBtnOffsetY_B:I

    iput v0, p0, Lcom/rich/oauth/core/UIConfigBuild;->privacyTheme:I

    iput v0, p0, Lcom/rich/oauth/core/UIConfigBuild;->clauseStatusColor:I

    iput v0, p0, Lcom/rich/oauth/core/UIConfigBuild;->logBtnOffsetY:I

    iput v0, p0, Lcom/rich/oauth/core/UIConfigBuild;->privacyOffsetY:I

    iput v0, p0, Lcom/rich/oauth/core/UIConfigBuild;->privacyOffsetY_B:I

    iget v0, p1, Lcom/rich/oauth/core/UIConfigBuild$Builder;->appLanguageType:I

    iput v0, p0, Lcom/rich/oauth/core/UIConfigBuild;->appLanguageType:I

    invoke-static {p1}, Lcom/rich/oauth/core/UIConfigBuild$Builder;->access$000(Lcom/rich/oauth/core/UIConfigBuild$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/rich/oauth/core/UIConfigBuild;->privacyAnimationBoolean:Z

    invoke-static {p1}, Lcom/rich/oauth/core/UIConfigBuild$Builder;->access$100(Lcom/rich/oauth/core/UIConfigBuild$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/rich/oauth/core/UIConfigBuild;->isWindowBackButtonWorks:Z

    iget-boolean v0, p1, Lcom/rich/oauth/core/UIConfigBuild$Builder;->privacyBookSymbol:Z

    iput-boolean v0, p0, Lcom/rich/oauth/core/UIConfigBuild;->privacyBookSymbol:Z

    invoke-static {p1}, Lcom/rich/oauth/core/UIConfigBuild$Builder;->access$200(Lcom/rich/oauth/core/UIConfigBuild$Builder;)I

    move-result v0

    iput v0, p0, Lcom/rich/oauth/core/UIConfigBuild;->loginBtnBg:I

    invoke-static {p1}, Lcom/rich/oauth/core/UIConfigBuild$Builder;->access$300(Lcom/rich/oauth/core/UIConfigBuild$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/rich/oauth/core/UIConfigBuild;->loginBtnText:Ljava/lang/String;

    invoke-static {p1}, Lcom/rich/oauth/core/UIConfigBuild$Builder;->access$400(Lcom/rich/oauth/core/UIConfigBuild$Builder;)I

    move-result v0

    iput v0, p0, Lcom/rich/oauth/core/UIConfigBuild;->loginBtnTextColor:I

    invoke-static {p1}, Lcom/rich/oauth/core/UIConfigBuild$Builder;->access$500(Lcom/rich/oauth/core/UIConfigBuild$Builder;)I

    move-result v0

    iput v0, p0, Lcom/rich/oauth/core/UIConfigBuild;->switchTextColor:I

    invoke-static {p1}, Lcom/rich/oauth/core/UIConfigBuild$Builder;->access$600(Lcom/rich/oauth/core/UIConfigBuild$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/rich/oauth/core/UIConfigBuild;->switchIsHide:Z

    invoke-static {p1}, Lcom/rich/oauth/core/UIConfigBuild$Builder;->access$700(Lcom/rich/oauth/core/UIConfigBuild$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/rich/oauth/core/UIConfigBuild;->switchText:Ljava/lang/String;

    invoke-static {p1}, Lcom/rich/oauth/core/UIConfigBuild$Builder;->access$800(Lcom/rich/oauth/core/UIConfigBuild$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/rich/oauth/core/UIConfigBuild;->protocolName:Ljava/lang/String;

    invoke-static {p1}, Lcom/rich/oauth/core/UIConfigBuild$Builder;->access$900(Lcom/rich/oauth/core/UIConfigBuild$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/rich/oauth/core/UIConfigBuild;->protocolUrl:Ljava/lang/String;

    invoke-static {p1}, Lcom/rich/oauth/core/UIConfigBuild$Builder;->access$1000(Lcom/rich/oauth/core/UIConfigBuild$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/rich/oauth/core/UIConfigBuild;->secondProtocolName:Ljava/lang/String;

    invoke-static {p1}, Lcom/rich/oauth/core/UIConfigBuild$Builder;->access$1100(Lcom/rich/oauth/core/UIConfigBuild$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/rich/oauth/core/UIConfigBuild;->secondProtocolUrl:Ljava/lang/String;

    invoke-static {p1}, Lcom/rich/oauth/core/UIConfigBuild$Builder;->access$1200(Lcom/rich/oauth/core/UIConfigBuild$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/rich/oauth/core/UIConfigBuild;->thirdProtocolName:Ljava/lang/String;

    invoke-static {p1}, Lcom/rich/oauth/core/UIConfigBuild$Builder;->access$1300(Lcom/rich/oauth/core/UIConfigBuild$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/rich/oauth/core/UIConfigBuild;->thirdProtocolUrl:Ljava/lang/String;

    invoke-static {p1}, Lcom/rich/oauth/core/UIConfigBuild$Builder;->access$1400(Lcom/rich/oauth/core/UIConfigBuild$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/rich/oauth/core/UIConfigBuild;->fourthProtocolName:Ljava/lang/String;

    invoke-static {p1}, Lcom/rich/oauth/core/UIConfigBuild$Builder;->access$1500(Lcom/rich/oauth/core/UIConfigBuild$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/rich/oauth/core/UIConfigBuild;->fourthProtocolUrl:Ljava/lang/String;

    invoke-static {p1}, Lcom/rich/oauth/core/UIConfigBuild$Builder;->access$1600(Lcom/rich/oauth/core/UIConfigBuild$Builder;)I

    move-result v0

    iput v0, p0, Lcom/rich/oauth/core/UIConfigBuild;->loginButtonWidth:I

    invoke-static {p1}, Lcom/rich/oauth/core/UIConfigBuild$Builder;->access$1700(Lcom/rich/oauth/core/UIConfigBuild$Builder;)I

    move-result v0

    iput v0, p0, Lcom/rich/oauth/core/UIConfigBuild;->loginButtonHight:I

    invoke-static {p1}, Lcom/rich/oauth/core/UIConfigBuild$Builder;->access$1800(Lcom/rich/oauth/core/UIConfigBuild$Builder;)I

    move-result v0

    iput v0, p0, Lcom/rich/oauth/core/UIConfigBuild;->privacyColor:I

    invoke-static {p1}, Lcom/rich/oauth/core/UIConfigBuild$Builder;->access$1900(Lcom/rich/oauth/core/UIConfigBuild$Builder;)I

    move-result v0

    iput v0, p0, Lcom/rich/oauth/core/UIConfigBuild;->privacyOtherTextColor:I

    invoke-static {p1}, Lcom/rich/oauth/core/UIConfigBuild$Builder;->access$2000(Lcom/rich/oauth/core/UIConfigBuild$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/rich/oauth/core/UIConfigBuild;->isProtocolSeleted:Z

    invoke-static {p1}, Lcom/rich/oauth/core/UIConfigBuild$Builder;->access$2100(Lcom/rich/oauth/core/UIConfigBuild$Builder;)I

    move-result v0

    iput v0, p0, Lcom/rich/oauth/core/UIConfigBuild;->statusBarBgColor:I

    invoke-static {p1}, Lcom/rich/oauth/core/UIConfigBuild$Builder;->access$2200(Lcom/rich/oauth/core/UIConfigBuild$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/rich/oauth/core/UIConfigBuild;->statusBarTextColor:Z

    invoke-static {p1}, Lcom/rich/oauth/core/UIConfigBuild$Builder;->access$2300(Lcom/rich/oauth/core/UIConfigBuild$Builder;)I

    move-result v0

    iput v0, p0, Lcom/rich/oauth/core/UIConfigBuild;->navColorBgColor:I

    invoke-static {p1}, Lcom/rich/oauth/core/UIConfigBuild$Builder;->access$2400(Lcom/rich/oauth/core/UIConfigBuild$Builder;)I

    move-result v0

    iput v0, p0, Lcom/rich/oauth/core/UIConfigBuild;->numberColor:I

    invoke-static {p1}, Lcom/rich/oauth/core/UIConfigBuild$Builder;->access$2500(Lcom/rich/oauth/core/UIConfigBuild$Builder;)I

    move-result v0

    iput v0, p0, Lcom/rich/oauth/core/UIConfigBuild;->ouathStateTextColor:I

    invoke-static {p1}, Lcom/rich/oauth/core/UIConfigBuild$Builder;->access$2600(Lcom/rich/oauth/core/UIConfigBuild$Builder;)I

    move-result v0

    iput v0, p0, Lcom/rich/oauth/core/UIConfigBuild;->numberSize:I

    invoke-static {p1}, Lcom/rich/oauth/core/UIConfigBuild$Builder;->access$2700(Lcom/rich/oauth/core/UIConfigBuild$Builder;)I

    move-result v0

    iput v0, p0, Lcom/rich/oauth/core/UIConfigBuild;->numberOffsetX:I

    invoke-static {p1}, Lcom/rich/oauth/core/UIConfigBuild$Builder;->access$2800(Lcom/rich/oauth/core/UIConfigBuild$Builder;)I

    move-result v0

    iput v0, p0, Lcom/rich/oauth/core/UIConfigBuild;->numFieldOffsetY:I

    invoke-static {p1}, Lcom/rich/oauth/core/UIConfigBuild$Builder;->access$2900(Lcom/rich/oauth/core/UIConfigBuild$Builder;)I

    move-result v0

    iput v0, p0, Lcom/rich/oauth/core/UIConfigBuild;->privacyNavTextColor:I

    invoke-static {p1}, Lcom/rich/oauth/core/UIConfigBuild$Builder;->access$3000(Lcom/rich/oauth/core/UIConfigBuild$Builder;)I

    move-result v0

    iput v0, p0, Lcom/rich/oauth/core/UIConfigBuild;->logBtnOffsetY_B:I

    invoke-static {p1}, Lcom/rich/oauth/core/UIConfigBuild$Builder;->access$3100(Lcom/rich/oauth/core/UIConfigBuild$Builder;)I

    move-result v0

    iput v0, p0, Lcom/rich/oauth/core/UIConfigBuild;->logBtnOffsetY:I

    invoke-static {p1}, Lcom/rich/oauth/core/UIConfigBuild$Builder;->access$3200(Lcom/rich/oauth/core/UIConfigBuild$Builder;)I

    move-result v0

    iput v0, p0, Lcom/rich/oauth/core/UIConfigBuild;->privacyOffsetY:I

    invoke-static {p1}, Lcom/rich/oauth/core/UIConfigBuild$Builder;->access$3300(Lcom/rich/oauth/core/UIConfigBuild$Builder;)I

    move-result v0

    iput v0, p0, Lcom/rich/oauth/core/UIConfigBuild;->privacyOffsetY_B:I

    invoke-static {p1}, Lcom/rich/oauth/core/UIConfigBuild$Builder;->access$3400(Lcom/rich/oauth/core/UIConfigBuild$Builder;)I

    move-result v0

    iput v0, p0, Lcom/rich/oauth/core/UIConfigBuild;->privacyMarginLeft:I

    invoke-static {p1}, Lcom/rich/oauth/core/UIConfigBuild$Builder;->access$3500(Lcom/rich/oauth/core/UIConfigBuild$Builder;)I

    move-result v0

    iput v0, p0, Lcom/rich/oauth/core/UIConfigBuild;->privacyMarginRight:I

    invoke-static {p1}, Lcom/rich/oauth/core/UIConfigBuild$Builder;->access$3600(Lcom/rich/oauth/core/UIConfigBuild$Builder;)I

    move-result v0

    iput v0, p0, Lcom/rich/oauth/core/UIConfigBuild;->privacyTextSize:I

    invoke-static {p1}, Lcom/rich/oauth/core/UIConfigBuild$Builder;->access$3700(Lcom/rich/oauth/core/UIConfigBuild$Builder;)I

    move-result v0

    iput v0, p0, Lcom/rich/oauth/core/UIConfigBuild;->clauseBaseColor:I

    invoke-static {p1}, Lcom/rich/oauth/core/UIConfigBuild$Builder;->access$3800(Lcom/rich/oauth/core/UIConfigBuild$Builder;)I

    move-result v0

    iput v0, p0, Lcom/rich/oauth/core/UIConfigBuild;->clauseColor:I

    invoke-static {p1}, Lcom/rich/oauth/core/UIConfigBuild$Builder;->access$3900(Lcom/rich/oauth/core/UIConfigBuild$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/rich/oauth/core/UIConfigBuild;->isGravityCenter:Z

    invoke-static {p1}, Lcom/rich/oauth/core/UIConfigBuild$Builder;->access$4000(Lcom/rich/oauth/core/UIConfigBuild$Builder;)I

    move-result v0

    iput v0, p0, Lcom/rich/oauth/core/UIConfigBuild;->numFieldOffsetY_B:I

    invoke-static {p1}, Lcom/rich/oauth/core/UIConfigBuild$Builder;->access$4100(Lcom/rich/oauth/core/UIConfigBuild$Builder;)I

    move-result v0

    iput v0, p0, Lcom/rich/oauth/core/UIConfigBuild;->privacyNavTextSize:I

    invoke-static {p1}, Lcom/rich/oauth/core/UIConfigBuild$Builder;->access$4200(Lcom/rich/oauth/core/UIConfigBuild$Builder;)I

    move-result v0

    iput v0, p0, Lcom/rich/oauth/core/UIConfigBuild;->privacyNavClauseLayoutResID:I

    invoke-static {p1}, Lcom/rich/oauth/core/UIConfigBuild$Builder;->access$2300(Lcom/rich/oauth/core/UIConfigBuild$Builder;)I

    move-result v0

    iput v0, p0, Lcom/rich/oauth/core/UIConfigBuild;->privacyNavBgColor:I

    invoke-static {p1}, Lcom/rich/oauth/core/UIConfigBuild$Builder;->access$4300(Lcom/rich/oauth/core/UIConfigBuild$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/rich/oauth/core/UIConfigBuild;->authPageActIn_authPagein:Ljava/lang/String;

    invoke-static {p1}, Lcom/rich/oauth/core/UIConfigBuild$Builder;->access$4400(Lcom/rich/oauth/core/UIConfigBuild$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/rich/oauth/core/UIConfigBuild;->authPageActIn_lastPageOut:Ljava/lang/String;

    iget-object v0, p1, Lcom/rich/oauth/core/UIConfigBuild$Builder;->authPageActOut_authPageOut:Ljava/lang/String;

    iput-object v0, p0, Lcom/rich/oauth/core/UIConfigBuild;->authPageActOut_authPageOut:Ljava/lang/String;

    iget-object v0, p1, Lcom/rich/oauth/core/UIConfigBuild$Builder;->authPageActOut_nextPagein:Ljava/lang/String;

    iput-object v0, p0, Lcom/rich/oauth/core/UIConfigBuild;->authPageActOut_nextPagein:Ljava/lang/String;

    invoke-static {p1}, Lcom/rich/oauth/core/UIConfigBuild$Builder;->access$4500(Lcom/rich/oauth/core/UIConfigBuild$Builder;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/rich/oauth/core/UIConfigBuild;->contentView:Landroid/view/View;

    iget-boolean v0, p1, Lcom/rich/oauth/core/UIConfigBuild$Builder;->authPageWindowMode:Z

    iput-boolean v0, p0, Lcom/rich/oauth/core/UIConfigBuild;->authPageWindowMode:Z

    iget v0, p1, Lcom/rich/oauth/core/UIConfigBuild$Builder;->authPageWindowWith:I

    iput v0, p0, Lcom/rich/oauth/core/UIConfigBuild;->authPageWindowWith:I

    iget v0, p1, Lcom/rich/oauth/core/UIConfigBuild$Builder;->authPageWindowHight:I

    iput v0, p0, Lcom/rich/oauth/core/UIConfigBuild;->authPageWindowHight:I

    iget v0, p1, Lcom/rich/oauth/core/UIConfigBuild$Builder;->authPageWindowOffsetX:I

    iput v0, p0, Lcom/rich/oauth/core/UIConfigBuild;->authPageWindowOffsetX:I

    iget v0, p1, Lcom/rich/oauth/core/UIConfigBuild$Builder;->authPageWindowOffsetY:I

    iput v0, p0, Lcom/rich/oauth/core/UIConfigBuild;->authPageWindowOffsetY:I

    iget v0, p1, Lcom/rich/oauth/core/UIConfigBuild$Builder;->authPageWindowThemeId:I

    iput v0, p0, Lcom/rich/oauth/core/UIConfigBuild;->authPageWindowThemeId:I

    iget v0, p1, Lcom/rich/oauth/core/UIConfigBuild$Builder;->authPageWindowBottom:I

    iput v0, p0, Lcom/rich/oauth/core/UIConfigBuild;->authPageWindowBottom:I

    invoke-static {p1}, Lcom/rich/oauth/core/UIConfigBuild$Builder;->access$4600(Lcom/rich/oauth/core/UIConfigBuild$Builder;)I

    move-result v0

    iput v0, p0, Lcom/rich/oauth/core/UIConfigBuild;->logBtnMarginLeft:I

    invoke-static {p1}, Lcom/rich/oauth/core/UIConfigBuild$Builder;->access$4700(Lcom/rich/oauth/core/UIConfigBuild$Builder;)I

    move-result v0

    iput v0, p0, Lcom/rich/oauth/core/UIConfigBuild;->logBtnMarginRight:I

    iget v0, p1, Lcom/rich/oauth/core/UIConfigBuild$Builder;->checkBoxLocation:I

    iput v0, p0, Lcom/rich/oauth/core/UIConfigBuild;->checkBoxLocation:I

    iget v0, p1, Lcom/rich/oauth/core/UIConfigBuild$Builder;->checkBoxImageWidth:I

    iput v0, p0, Lcom/rich/oauth/core/UIConfigBuild;->checkBoxImageWidth:I

    iget v0, p1, Lcom/rich/oauth/core/UIConfigBuild$Builder;->checkBoxImageheight:I

    iput v0, p0, Lcom/rich/oauth/core/UIConfigBuild;->checkBoxImageheight:I

    iget-boolean v0, p1, Lcom/rich/oauth/core/UIConfigBuild$Builder;->isAutoClosAuthPage:Z

    iput-boolean v0, p0, Lcom/rich/oauth/core/UIConfigBuild;->isAutoClosAuthPage:Z

    iget v0, p1, Lcom/rich/oauth/core/UIConfigBuild$Builder;->loginBtnTextSize:I

    iput v0, p0, Lcom/rich/oauth/core/UIConfigBuild;->loginBtnTextSize:I

    iget-boolean v0, p1, Lcom/rich/oauth/core/UIConfigBuild$Builder;->loginbtnTextBold:Z

    iput-boolean v0, p0, Lcom/rich/oauth/core/UIConfigBuild;->loginbtnTextBold:Z

    iget-object v0, p1, Lcom/rich/oauth/core/UIConfigBuild$Builder;->privacyContentText:Ljava/lang/String;

    iput-object v0, p0, Lcom/rich/oauth/core/UIConfigBuild;->privacyContentText:Ljava/lang/String;

    iget-boolean v0, p1, Lcom/rich/oauth/core/UIConfigBuild$Builder;->numberBold:Z

    iput-boolean v0, p0, Lcom/rich/oauth/core/UIConfigBuild;->numberBold:Z

    invoke-static {p1}, Lcom/rich/oauth/core/UIConfigBuild$Builder;->access$4800(Lcom/rich/oauth/core/UIConfigBuild$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/rich/oauth/core/UIConfigBuild;->fitsSystemWindows:Z

    iget-object v0, p1, Lcom/rich/oauth/core/UIConfigBuild$Builder;->checkTipText:Ljava/lang/String;

    iput-object v0, p0, Lcom/rich/oauth/core/UIConfigBuild;->checkTipText:Ljava/lang/String;

    iget-object v0, p1, Lcom/rich/oauth/core/UIConfigBuild$Builder;->authuncheckway:Ljava/lang/String;

    iput-object v0, p0, Lcom/rich/oauth/core/UIConfigBuild;->authuncheckway:Ljava/lang/String;

    invoke-static {p1}, Lcom/rich/oauth/core/UIConfigBuild$Builder;->access$4900(Lcom/rich/oauth/core/UIConfigBuild$Builder;)Lcom/rich/oauth/callback/CheckboxCheckedChangeListener;

    move-result-object v0

    iput-object v0, p0, Lcom/rich/oauth/core/UIConfigBuild;->mCheckboxCheckedChangelistener:Lcom/rich/oauth/callback/CheckboxCheckedChangeListener;

    invoke-static {p1}, Lcom/rich/oauth/core/UIConfigBuild$Builder;->access$5000(Lcom/rich/oauth/core/UIConfigBuild$Builder;)Lcom/rich/oauth/callback/AuthLoginClickListener;

    move-result-object v0

    iput-object v0, p0, Lcom/rich/oauth/core/UIConfigBuild;->mAuthLoginClickListener:Lcom/rich/oauth/callback/AuthLoginClickListener;

    invoke-static {p1}, Lcom/rich/oauth/core/UIConfigBuild$Builder;->access$5100(Lcom/rich/oauth/core/UIConfigBuild$Builder;)Lcom/rich/oauth/callback/AuthPageInListener;

    move-result-object v0

    iput-object v0, p0, Lcom/rich/oauth/core/UIConfigBuild;->mAuthPageInListener:Lcom/rich/oauth/callback/AuthPageInListener;

    invoke-static {p1}, Lcom/rich/oauth/core/UIConfigBuild$Builder;->access$5200(Lcom/rich/oauth/core/UIConfigBuild$Builder;)Lcom/rich/oauth/callback/CheckboxUnCheckedClickListener;

    move-result-object v0

    iput-object v0, p0, Lcom/rich/oauth/core/UIConfigBuild;->mCheckboxUnCheckedClickListener:Lcom/rich/oauth/callback/CheckboxUnCheckedClickListener;

    invoke-static {p1}, Lcom/rich/oauth/core/UIConfigBuild$Builder;->access$5300(Lcom/rich/oauth/core/UIConfigBuild$Builder;)Lcom/rich/oauth/callback/UnCheckDialogAuthLoginListener;

    move-result-object v0

    iput-object v0, p0, Lcom/rich/oauth/core/UIConfigBuild;->mUnCheckDialogAuthLoginListener:Lcom/rich/oauth/callback/UnCheckDialogAuthLoginListener;

    invoke-static {p1}, Lcom/rich/oauth/core/UIConfigBuild$Builder;->access$5400(Lcom/rich/oauth/core/UIConfigBuild$Builder;)Lcom/rich/oauth/callback/PressBackListener;

    move-result-object v0

    iput-object v0, p0, Lcom/rich/oauth/core/UIConfigBuild;->mPressBackListener:Lcom/rich/oauth/callback/PressBackListener;

    iget-boolean v0, p1, Lcom/rich/oauth/core/UIConfigBuild$Builder;->bottomNavigationHidden:Z

    iput-boolean v0, p0, Lcom/rich/oauth/core/UIConfigBuild;->bottomNavigationHidden:Z

    iget v0, p1, Lcom/rich/oauth/core/UIConfigBuild$Builder;->privacyTheme:I

    iput v0, p0, Lcom/rich/oauth/core/UIConfigBuild;->privacyTheme:I

    iget p1, p1, Lcom/rich/oauth/core/UIConfigBuild$Builder;->clauseStatusColor:I

    iput p1, p0, Lcom/rich/oauth/core/UIConfigBuild;->clauseStatusColor:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/rich/oauth/core/UIConfigBuild$Builder;Lcom/rich/oauth/core/UIConfigBuild$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/rich/oauth/core/UIConfigBuild;-><init>(Lcom/rich/oauth/core/UIConfigBuild$Builder;)V

    return-void
.end method


# virtual methods
.method public getAppLanguageType()I
    .locals 1

    iget v0, p0, Lcom/rich/oauth/core/UIConfigBuild;->appLanguageType:I

    return v0
.end method

.method public getAuthLoginClickListener()Lcom/rich/oauth/callback/AuthLoginClickListener;
    .locals 1

    iget-object v0, p0, Lcom/rich/oauth/core/UIConfigBuild;->mAuthLoginClickListener:Lcom/rich/oauth/callback/AuthLoginClickListener;

    return-object v0
.end method

.method public getAuthPageActIn_authPagein()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/rich/oauth/core/UIConfigBuild;->authPageActIn_authPagein:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthPageActIn_lastPageOut()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/rich/oauth/core/UIConfigBuild;->authPageActIn_lastPageOut:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthPageActOut_authPageOut()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/rich/oauth/core/UIConfigBuild;->authPageActOut_authPageOut:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthPageActOut_nextPagein()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/rich/oauth/core/UIConfigBuild;->authPageActOut_nextPagein:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthPageWindowBottom()I
    .locals 1

    iget v0, p0, Lcom/rich/oauth/core/UIConfigBuild;->authPageWindowBottom:I

    return v0
.end method

.method public getAuthPageWindowHight()I
    .locals 1

    iget v0, p0, Lcom/rich/oauth/core/UIConfigBuild;->authPageWindowHight:I

    return v0
.end method

.method public getAuthPageWindowMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/rich/oauth/core/UIConfigBuild;->authPageWindowMode:Z

    return v0
.end method

.method public getAuthPageWindowOffsetX()I
    .locals 1

    iget v0, p0, Lcom/rich/oauth/core/UIConfigBuild;->authPageWindowOffsetX:I

    return v0
.end method

.method public getAuthPageWindowOffsetY()I
    .locals 1

    iget v0, p0, Lcom/rich/oauth/core/UIConfigBuild;->authPageWindowOffsetY:I

    return v0
.end method

.method public getAuthPageWindowThemeId()I
    .locals 1

    iget v0, p0, Lcom/rich/oauth/core/UIConfigBuild;->authPageWindowThemeId:I

    return v0
.end method

.method public getAuthPageWindowWith()I
    .locals 1

    iget v0, p0, Lcom/rich/oauth/core/UIConfigBuild;->authPageWindowWith:I

    return v0
.end method

.method public getBackButton()Z
    .locals 1

    iget-boolean v0, p0, Lcom/rich/oauth/core/UIConfigBuild;->isWindowBackButtonWorks:Z

    return v0
.end method

.method public getBottomNavigationHidden()Z
    .locals 1

    iget-boolean v0, p0, Lcom/rich/oauth/core/UIConfigBuild;->bottomNavigationHidden:Z

    return v0
.end method

.method public getCheckBoxImageHeight()I
    .locals 1

    iget v0, p0, Lcom/rich/oauth/core/UIConfigBuild;->checkBoxImageheight:I

    return v0
.end method

.method public getCheckBoxImageWidth()I
    .locals 1

    iget v0, p0, Lcom/rich/oauth/core/UIConfigBuild;->checkBoxImageWidth:I

    return v0
.end method

.method public getCheckBoxLocation()I
    .locals 1

    iget v0, p0, Lcom/rich/oauth/core/UIConfigBuild;->checkBoxLocation:I

    return v0
.end method

.method public getCheckTipText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/rich/oauth/core/UIConfigBuild;->checkTipText:Ljava/lang/String;

    return-object v0
.end method

.method public getCheckboxCheckedChangeListener()Lcom/rich/oauth/callback/CheckboxCheckedChangeListener;
    .locals 1

    iget-object v0, p0, Lcom/rich/oauth/core/UIConfigBuild;->mCheckboxCheckedChangelistener:Lcom/rich/oauth/callback/CheckboxCheckedChangeListener;

    return-object v0
.end method

.method public getCheckboxUnCheckedClickListener()Lcom/rich/oauth/callback/CheckboxUnCheckedClickListener;
    .locals 1

    iget-object v0, p0, Lcom/rich/oauth/core/UIConfigBuild;->mCheckboxUnCheckedClickListener:Lcom/rich/oauth/callback/CheckboxUnCheckedClickListener;

    return-object v0
.end method

.method public getCheckedChangeListener()V
    .locals 0

    return-void
.end method

.method public getClauseBaseColor()I
    .locals 1

    iget v0, p0, Lcom/rich/oauth/core/UIConfigBuild;->clauseBaseColor:I

    return v0
.end method

.method public getClauseColor()I
    .locals 1

    iget v0, p0, Lcom/rich/oauth/core/UIConfigBuild;->clauseColor:I

    return v0
.end method

.method public getClauseStatusColor()I
    .locals 1

    iget v0, p0, Lcom/rich/oauth/core/UIConfigBuild;->clauseStatusColor:I

    return v0
.end method

.method public getContentView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/rich/oauth/core/UIConfigBuild;->contentView:Landroid/view/View;

    return-object v0
.end method

.method public getFitsSystemWindows()Z
    .locals 1

    iget-boolean v0, p0, Lcom/rich/oauth/core/UIConfigBuild;->fitsSystemWindows:Z

    return v0
.end method

.method public getFourthProtocolName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/rich/oauth/core/UIConfigBuild;->fourthProtocolName:Ljava/lang/String;

    return-object v0
.end method

.method public getFourthProtocolUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/rich/oauth/core/UIConfigBuild;->fourthProtocolUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getLogBtnMarginLeft()I
    .locals 1

    iget v0, p0, Lcom/rich/oauth/core/UIConfigBuild;->logBtnMarginLeft:I

    return v0
.end method

.method public getLogBtnMarginRight()I
    .locals 1

    iget v0, p0, Lcom/rich/oauth/core/UIConfigBuild;->logBtnMarginRight:I

    return v0
.end method

.method public getLogBtnOffsetY()I
    .locals 1

    iget v0, p0, Lcom/rich/oauth/core/UIConfigBuild;->logBtnOffsetY:I

    return v0
.end method

.method public getLogBtnOffsetY_B()I
    .locals 1

    iget v0, p0, Lcom/rich/oauth/core/UIConfigBuild;->logBtnOffsetY_B:I

    return v0
.end method

.method public getLoginBtnBg()I
    .locals 1

    iget v0, p0, Lcom/rich/oauth/core/UIConfigBuild;->loginBtnBg:I

    return v0
.end method

.method public getLoginBtnText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/rich/oauth/core/UIConfigBuild;->loginBtnText:Ljava/lang/String;

    return-object v0
.end method

.method public getLoginBtnTextColor()I
    .locals 1

    iget v0, p0, Lcom/rich/oauth/core/UIConfigBuild;->loginBtnTextColor:I

    return v0
.end method

.method public getLoginBtnTextSize()I
    .locals 1

    iget v0, p0, Lcom/rich/oauth/core/UIConfigBuild;->loginBtnTextSize:I

    return v0
.end method

.method public getLoginButtonHight()I
    .locals 1

    iget v0, p0, Lcom/rich/oauth/core/UIConfigBuild;->loginButtonHight:I

    return v0
.end method

.method public getLoginButtonWidth()I
    .locals 1

    iget v0, p0, Lcom/rich/oauth/core/UIConfigBuild;->loginButtonWidth:I

    return v0
.end method

.method public getNavColorBgColor()I
    .locals 1

    iget v0, p0, Lcom/rich/oauth/core/UIConfigBuild;->navColorBgColor:I

    return v0
.end method

.method public getNumFieldOffsetY()I
    .locals 1

    iget v0, p0, Lcom/rich/oauth/core/UIConfigBuild;->numFieldOffsetY:I

    return v0
.end method

.method public getNumFieldOffsetY_B()I
    .locals 1

    iget v0, p0, Lcom/rich/oauth/core/UIConfigBuild;->numFieldOffsetY_B:I

    return v0
.end method

.method public getNumberBold()Z
    .locals 1

    iget-boolean v0, p0, Lcom/rich/oauth/core/UIConfigBuild;->numberBold:Z

    return v0
.end method

.method public getNumberColor()I
    .locals 1

    iget v0, p0, Lcom/rich/oauth/core/UIConfigBuild;->numberColor:I

    return v0
.end method

.method public getNumberOffsetX()I
    .locals 1

    iget v0, p0, Lcom/rich/oauth/core/UIConfigBuild;->numberOffsetX:I

    return v0
.end method

.method public getNumberSize()I
    .locals 1

    iget v0, p0, Lcom/rich/oauth/core/UIConfigBuild;->numberSize:I

    return v0
.end method

.method public getOuathStateTextColor()I
    .locals 1

    iget v0, p0, Lcom/rich/oauth/core/UIConfigBuild;->ouathStateTextColor:I

    return v0
.end method

.method public getPressBackListener()Lcom/rich/oauth/callback/PressBackListener;
    .locals 1

    iget-object v0, p0, Lcom/rich/oauth/core/UIConfigBuild;->mPressBackListener:Lcom/rich/oauth/callback/PressBackListener;

    return-object v0
.end method

.method public getPrivacyAnimation()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/rich/oauth/core/UIConfigBuild;->isPrivacyAnimation:Ljava/lang/String;

    return-object v0
.end method

.method public getPrivacyAnimationBoolean()Z
    .locals 1

    iget-boolean v0, p0, Lcom/rich/oauth/core/UIConfigBuild;->privacyAnimationBoolean:Z

    return v0
.end method

.method public getPrivacyBookSymbol()Z
    .locals 1

    iget-boolean v0, p0, Lcom/rich/oauth/core/UIConfigBuild;->privacyBookSymbol:Z

    return v0
.end method

.method public getPrivacyColor()I
    .locals 1

    iget v0, p0, Lcom/rich/oauth/core/UIConfigBuild;->privacyColor:I

    return v0
.end method

.method public getPrivacyContentText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/rich/oauth/core/UIConfigBuild;->privacyContentText:Ljava/lang/String;

    return-object v0
.end method

.method public getPrivacyMarginLeft()I
    .locals 1

    iget v0, p0, Lcom/rich/oauth/core/UIConfigBuild;->privacyMarginLeft:I

    return v0
.end method

.method public getPrivacyMarginRight()I
    .locals 1

    iget v0, p0, Lcom/rich/oauth/core/UIConfigBuild;->privacyMarginRight:I

    return v0
.end method

.method public getPrivacyNavBgColor()I
    .locals 1

    iget v0, p0, Lcom/rich/oauth/core/UIConfigBuild;->privacyNavBgColor:I

    return v0
.end method

.method public getPrivacyNavClauseLayoutResID()I
    .locals 1

    iget v0, p0, Lcom/rich/oauth/core/UIConfigBuild;->privacyNavClauseLayoutResID:I

    return v0
.end method

.method public getPrivacyNavTextColor()I
    .locals 1

    iget v0, p0, Lcom/rich/oauth/core/UIConfigBuild;->privacyNavTextColor:I

    return v0
.end method

.method public getPrivacyNavTextSize()I
    .locals 1

    iget v0, p0, Lcom/rich/oauth/core/UIConfigBuild;->privacyNavTextSize:I

    return v0
.end method

.method public getPrivacyOffsetY()I
    .locals 1

    iget v0, p0, Lcom/rich/oauth/core/UIConfigBuild;->privacyOffsetY:I

    return v0
.end method

.method public getPrivacyOffsetY_B()I
    .locals 1

    iget v0, p0, Lcom/rich/oauth/core/UIConfigBuild;->privacyOffsetY_B:I

    return v0
.end method

.method public getPrivacyOtherTextColor()I
    .locals 1

    iget v0, p0, Lcom/rich/oauth/core/UIConfigBuild;->privacyOtherTextColor:I

    return v0
.end method

.method public getPrivacyTextSize()I
    .locals 1

    iget v0, p0, Lcom/rich/oauth/core/UIConfigBuild;->privacyTextSize:I

    return v0
.end method

.method public getPrivacyTheme()I
    .locals 1

    iget v0, p0, Lcom/rich/oauth/core/UIConfigBuild;->privacyTheme:I

    return v0
.end method

.method public getProtocolName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/rich/oauth/core/UIConfigBuild;->protocolName:Ljava/lang/String;

    return-object v0
.end method

.method public getProtocolUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/rich/oauth/core/UIConfigBuild;->protocolUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getSecondProtocolName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/rich/oauth/core/UIConfigBuild;->secondProtocolName:Ljava/lang/String;

    return-object v0
.end method

.method public getSecondProtocolUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/rich/oauth/core/UIConfigBuild;->secondProtocolUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getStatusBarBgColor()I
    .locals 1

    iget v0, p0, Lcom/rich/oauth/core/UIConfigBuild;->statusBarBgColor:I

    return v0
.end method

.method public getStatusBarTextColor()Z
    .locals 1

    iget-boolean v0, p0, Lcom/rich/oauth/core/UIConfigBuild;->statusBarTextColor:Z

    return v0
.end method

.method public getSwitchText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/rich/oauth/core/UIConfigBuild;->switchText:Ljava/lang/String;

    return-object v0
.end method

.method public getSwitchTextColor()I
    .locals 1

    iget v0, p0, Lcom/rich/oauth/core/UIConfigBuild;->switchTextColor:I

    return v0
.end method

.method public getThirdProtocolName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/rich/oauth/core/UIConfigBuild;->thirdProtocolName:Ljava/lang/String;

    return-object v0
.end method

.method public getThirdProtocolUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/rich/oauth/core/UIConfigBuild;->thirdProtocolUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getUnCheckDialogAuthLoginListener()Lcom/rich/oauth/callback/UnCheckDialogAuthLoginListener;
    .locals 1

    iget-object v0, p0, Lcom/rich/oauth/core/UIConfigBuild;->mUnCheckDialogAuthLoginListener:Lcom/rich/oauth/callback/UnCheckDialogAuthLoginListener;

    return-object v0
.end method

.method public getUnCheckedWay()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/rich/oauth/core/UIConfigBuild;->authuncheckway:Ljava/lang/String;

    return-object v0
.end method

.method public getmAuthPageInListener()Lcom/rich/oauth/callback/AuthPageInListener;
    .locals 1

    iget-object v0, p0, Lcom/rich/oauth/core/UIConfigBuild;->mAuthPageInListener:Lcom/rich/oauth/callback/AuthPageInListener;

    return-object v0
.end method

.method public isAutoClosAuthPage()Z
    .locals 1

    iget-boolean v0, p0, Lcom/rich/oauth/core/UIConfigBuild;->isAutoClosAuthPage:Z

    return v0
.end method

.method public isGravityCenter()Z
    .locals 1

    iget-boolean v0, p0, Lcom/rich/oauth/core/UIConfigBuild;->isGravityCenter:Z

    return v0
.end method

.method public isLoginbtnTextBold()Z
    .locals 1

    iget-boolean v0, p0, Lcom/rich/oauth/core/UIConfigBuild;->loginbtnTextBold:Z

    return v0
.end method

.method public isProtocolSeleted()Z
    .locals 1

    iget-boolean v0, p0, Lcom/rich/oauth/core/UIConfigBuild;->isProtocolSeleted:Z

    return v0
.end method

.method public isSwitchIsHide()Z
    .locals 1

    iget-boolean v0, p0, Lcom/rich/oauth/core/UIConfigBuild;->switchIsHide:Z

    return v0
.end method

.method public setBottomNavigationHidden(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/rich/oauth/core/UIConfigBuild;->bottomNavigationHidden:Z

    return-void
.end method

.method public setClauseStatusColor(I)V
    .locals 0

    iput p1, p0, Lcom/rich/oauth/core/UIConfigBuild;->clauseStatusColor:I

    return-void
.end method

.method public setPrivacyTheme(I)V
    .locals 0

    iput p1, p0, Lcom/rich/oauth/core/UIConfigBuild;->privacyTheme:I

    return-void
.end method

.method public setmAuthPageInListener(Lcom/rich/oauth/callback/AuthPageInListener;)V
    .locals 0

    iput-object p1, p0, Lcom/rich/oauth/core/UIConfigBuild;->mAuthPageInListener:Lcom/rich/oauth/callback/AuthPageInListener;

    return-void
.end method
