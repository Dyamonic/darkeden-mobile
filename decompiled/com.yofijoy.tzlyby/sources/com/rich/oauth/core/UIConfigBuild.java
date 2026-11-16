package com.rich.oauth.core;

import android.view.View;
import androidx.core.view.ViewCompat;
import androidx.recyclerview.widget.ItemTouchHelper;
import com.rich.oauth.R;
import com.rich.oauth.callback.AuthLoginClickListener;
import com.rich.oauth.callback.AuthPageInListener;
import com.rich.oauth.callback.CheckboxCheckedChangeListener;
import com.rich.oauth.callback.CheckboxUnCheckedClickListener;
import com.rich.oauth.callback.PressBackListener;
import com.rich.oauth.callback.UnCheckDialogAuthLoginListener;
import com.rich.oauth.util.AuthConstants;

/* loaded from: classes.dex */
public class UIConfigBuild {
    public int appLanguageType;
    public String authPageActIn_authPagein;
    public String authPageActIn_lastPageOut;
    public String authPageActOut_authPageOut;
    public String authPageActOut_nextPagein;
    public int authPageWindowBottom;
    public int authPageWindowHight;
    public boolean authPageWindowMode;
    public int authPageWindowOffsetX;
    public int authPageWindowOffsetY;
    public int authPageWindowThemeId;
    public int authPageWindowWith;
    public String authuncheckway;
    public boolean bottomNavigationHidden;
    public int checkBoxImageWidth;
    public int checkBoxImageheight;
    public int checkBoxLocation;
    public String checkTipText;
    public int clauseBaseColor;
    public int clauseColor;
    public int clauseStatusColor;
    public View contentView;
    public boolean fitsSystemWindows;
    public String fourthProtocolName;
    public String fourthProtocolUrl;
    public boolean isAutoClosAuthPage;
    public boolean isGravityCenter;
    public String isPrivacyAnimation;
    public boolean isProtocolSeleted;
    public boolean isWindowBackButtonWorks;
    public int logBtnMarginLeft;
    public int logBtnMarginRight;
    public int logBtnOffsetY;
    public int logBtnOffsetY_B;
    public int loginBtnBg;
    public String loginBtnText;
    public int loginBtnTextColor;
    public int loginBtnTextSize;
    public int loginButtonHight;
    public int loginButtonWidth;
    public boolean loginbtnTextBold;
    public AuthLoginClickListener mAuthLoginClickListener;
    public AuthPageInListener mAuthPageInListener;
    public CheckboxCheckedChangeListener mCheckboxCheckedChangelistener;
    public CheckboxUnCheckedClickListener mCheckboxUnCheckedClickListener;
    public PressBackListener mPressBackListener;
    public UnCheckDialogAuthLoginListener mUnCheckDialogAuthLoginListener;
    public int navColorBgColor;
    public int numFieldOffsetY;
    public int numFieldOffsetY_B;
    public boolean numberBold;
    public int numberColor;
    public int numberOffsetX;
    public int numberSize;
    public int ouathStateTextColor;
    public boolean privacyAnimationBoolean;
    public boolean privacyBookSymbol;
    public int privacyColor;
    public String privacyContentText;
    public int privacyMarginLeft;
    public int privacyMarginRight;
    public int privacyNavBgColor;
    public int privacyNavClauseLayoutResID;
    public int privacyNavTextColor;
    public int privacyNavTextSize;
    public int privacyOffsetY;
    public int privacyOffsetY_B;
    public int privacyOtherTextColor;
    public int privacyTextSize;
    public int privacyTheme;
    public String protocolName;
    public String protocolUrl;
    public String secondProtocolName;
    public String secondProtocolUrl;
    public int statusBarBgColor;
    public boolean statusBarTextColor;
    public boolean switchIsHide;
    public String switchText;
    public int switchTextColor;
    public String thirdProtocolName;
    public String thirdProtocolUrl;

    /* loaded from: classes.dex */
    public static class Builder {
        public AuthLoginClickListener authLoginClickListener;
        public String authPageActIn_authPagein;
        public String authPageActIn_lastPageOut;
        public String authPageActOut_authPageOut;
        public String authPageActOut_nextPagein;
        public AuthPageInListener authPageInListener;
        public int authPageWindowBottom;
        public int authPageWindowHight;
        public boolean authPageWindowMode;
        public int authPageWindowOffsetX;
        public int authPageWindowOffsetY;
        public int authPageWindowThemeId;
        public int authPageWindowWith;
        public CheckboxUnCheckedClickListener checkboxUnCheckedClickListener;
        public int clauseStatusColor;
        public View contentView;
        public boolean fitsSystemWindows;
        public String fourthProtocolName;
        public String fourthProtocolUrl;
        public boolean isAutoClosAuthPage;
        public boolean isWindowBackButtonWroks;
        public boolean loginbtnTextBold;
        public CheckboxCheckedChangeListener mCheckboxCheckedChangelistener;
        public boolean numberBold;
        public PressBackListener pressBackListener;
        public boolean privacyAnimationBoolean;
        public int privacyTheme;
        public UnCheckDialogAuthLoginListener unCheckDialogAuthLoginListener;
        public String checkTipText = "请勾选同意服务条款";
        public boolean privacyBookSymbol = true;
        public int appLanguageType = 0;
        public String authuncheckway = AuthConstants.AUTHUNCHECKWAY_SHAKE;
        public boolean bottomNavigationHidden = false;
        public int loginBtnTextColor = -1;
        public int loginBtnTextSize = 15;
        public int switchTextColor = -1;
        public boolean switchIsHide = false;
        public boolean isProtocolSelected = false;
        public String switchText = "其他登录方式";
        public String privacyContentText = "";
        public String protocolName = "";
        public String protocolUrl = "";
        public String secondProtocolName = "";
        public String secondProtocolUrl = "";
        public String thirdProtocolName = "";
        public String thirdProtocolUrl = "";
        public int privacyColor = -16742960;
        public int privacyOtherTextColor = -10066330;
        public int ouathStateTextColor = ViewCompat.MEASURED_STATE_MASK;
        public int numberColor = ViewCompat.MEASURED_STATE_MASK;
        public int numberSize = 20;
        public int numberOffsetX = 0;
        public int numFieldOffsetY = -1;
        public int numFieldOffsetY_B = -1;
        public int statusBarBgColor = -1;
        public boolean statusBarTextColor = true;
        public int privacyNavBgColor = -1;
        public int privacyNavTextColor = ViewCompat.MEASURED_STATE_MASK;
        public int privacyNavTextSize = 15;
        public int privacyNavClauseLayoutResID = ViewCompat.MEASURED_STATE_MASK;
        public String loginBtnText = "本机号码一键登录";
        public int loginBtnBg = R.drawable.umcsdk_login_btn_bg;
        public int loginButtonWidth = ItemTouchHelper.Callback.DEFAULT_SWIPE_ANIMATION_DURATION;
        public int loginButtonHight = 25;
        public int logBtnOffsetY_B = -1;
        public int logBtnOffsetY = -1;
        public int logBtnMarginLeft = 30;
        public int logBtnMarginRight = 30;
        public int privacyOffsetY = -1;
        public int privacyOffsetY_B = -1;
        public int privacyMarginLeft = 20;
        public int privacyMarginRight = 30;
        public int privacyTextSize = 12;
        public int clauseBaseColor = -10066330;
        public int clauseColor = -16742960;
        public boolean isGravityCenter = false;
        public int checkBoxLocation = 0;
        public int checkBoxImageWidth = 13;
        public int checkBoxImageheight = 13;

        public UIConfigBuild build() {
            return new UIConfigBuild(this);
        }

        public boolean isWindowBackButtonWroks() {
            return this.isWindowBackButtonWroks;
        }

        public Builder setAppLanguageType(int i) {
            this.appLanguageType = i;
            return this;
        }

        public Builder setAuthContentView(View view) {
            this.contentView = view;
            return this;
        }

        public Builder setAuthLoginClickListener(AuthLoginClickListener authLoginClickListener) {
            this.authLoginClickListener = authLoginClickListener;
            return this;
        }

        public Builder setAuthLoginPageInListener(AuthPageInListener authPageInListener) {
            this.authPageInListener = authPageInListener;
            return this;
        }

        public Builder setAuthPageActIn(String str, String str2) {
            this.authPageActIn_lastPageOut = str2;
            this.authPageActIn_authPagein = str;
            return this;
        }

        public Builder setAuthPageActOut(String str, String str2) {
            this.authPageActOut_authPageOut = str2;
            this.authPageActOut_nextPagein = str;
            return this;
        }

        public Builder setAuthPageWindowBottom(int i) {
            this.authPageWindowBottom = i;
            return this;
        }

        public Builder setAuthPageWindowHight(int i) {
            this.authPageWindowHight = i;
            return this;
        }

        public Builder setAuthPageWindowMode(boolean z) {
            this.authPageWindowMode = z;
            return this;
        }

        public Builder setAuthPageWindowOffsetX(int i) {
            this.authPageWindowOffsetX = i;
            return this;
        }

        public Builder setAuthPageWindowOffsetY(int i) {
            this.authPageWindowOffsetY = i;
            return this;
        }

        public Builder setAuthPageWindowThemeId(int i) {
            this.authPageWindowThemeId = i;
            return this;
        }

        public Builder setAuthPageWindowWith(int i) {
            this.authPageWindowWith = i;
            return this;
        }

        public Builder setAutoClosAuthPage(boolean z) {
            this.isAutoClosAuthPage = z;
            return this;
        }

        public Builder setBackButton(boolean z) {
            this.isWindowBackButtonWroks = z;
            return this;
        }

        public Builder setBottomNavigationHidden(boolean z) {
            this.bottomNavigationHidden = z;
            return this;
        }

        public Builder setCheckBoxImageWidth(int i) {
            this.checkBoxImageWidth = i;
            return this;
        }

        public Builder setCheckBoxImageheight(int i) {
            this.checkBoxImageheight = i;
            return this;
        }

        public Builder setCheckBoxLocation(int i) {
            this.checkBoxLocation = i;
            return this;
        }

        public Builder setCheckTipText(String str) {
            this.checkTipText = str;
            return this;
        }

        public Builder setCheckboxUnCheckedClickListener(CheckboxUnCheckedClickListener checkboxUnCheckedClickListener) {
            this.checkboxUnCheckedClickListener = checkboxUnCheckedClickListener;
            return this;
        }

        public Builder setClauseBaseColor(int i) {
            this.clauseBaseColor = i;
            return this;
        }

        public Builder setClauseColor(int i) {
            this.clauseColor = i;
            return this;
        }

        public Builder setClauseStatusColor(int i) {
            this.clauseStatusColor = i;
            return this;
        }

        public Builder setFitsSystemWindows(boolean z) {
            this.fitsSystemWindows = z;
            return this;
        }

        public Builder setFourthProtocol(String str, String str2) {
            this.fourthProtocolName = str;
            this.fourthProtocolUrl = str2;
            return this;
        }

        public Builder setIsGravityCenter(boolean z) {
            this.isGravityCenter = z;
            return this;
        }

        public Builder setLogBtnMarginLeft(int i) {
            this.logBtnMarginLeft = i;
            return this;
        }

        public Builder setLogBtnMarginRight(int i) {
            this.logBtnMarginRight = i;
            return this;
        }

        public Builder setLogBtnOffsetY(int i) {
            this.logBtnOffsetY = i;
            return this;
        }

        public Builder setLogBtnOffsetY_B(int i) {
            this.logBtnOffsetY_B = i;
            return this;
        }

        public Builder setLoginBtnBg(int i) {
            this.loginBtnBg = i;
            return this;
        }

        public Builder setLoginBtnHight(int i) {
            this.loginButtonHight = i;
            return this;
        }

        public Builder setLoginBtnText(String str) {
            this.loginBtnText = str;
            return this;
        }

        public Builder setLoginBtnTextBold(boolean z) {
            this.loginbtnTextBold = z;
            return this;
        }

        public Builder setLoginBtnTextColor(int i) {
            this.loginBtnTextColor = i;
            return this;
        }

        public Builder setLoginBtnTextSize(int i) {
            this.loginBtnTextSize = i;
            return this;
        }

        public Builder setLoginBtnWidth(int i) {
            this.loginButtonWidth = i;
            return this;
        }

        public Builder setNumFieldOffsetY_B(int i) {
            this.numFieldOffsetY_B = i;
            return this;
        }

        public Builder setNumberColor(int i) {
            this.numberColor = i;
            return this;
        }

        public Builder setNumberOffsetX(int i) {
            this.numberOffsetX = i;
            return this;
        }

        public Builder setNumberOffsetY(int i) {
            this.numFieldOffsetY = i;
            return this;
        }

        public Builder setNumberSize(int i, boolean z) {
            this.numberSize = i;
            this.numberBold = z;
            return this;
        }

        public Builder setOnCheckboxCheckedChange(CheckboxCheckedChangeListener checkboxCheckedChangeListener) {
            this.mCheckboxCheckedChangelistener = checkboxCheckedChangeListener;
            return this;
        }

        public Builder setOnPressBackListener(PressBackListener pressBackListener) {
            this.pressBackListener = pressBackListener;
            return this;
        }

        public Builder setOuathStateTextColor(int i) {
            this.ouathStateTextColor = i;
            return this;
        }

        public Builder setPrivacyAnimationBoolean(boolean z) {
            this.privacyAnimationBoolean = z;
            return this;
        }

        public Builder setPrivacyBookSymbol(boolean z) {
            this.privacyBookSymbol = z;
            return this;
        }

        public Builder setPrivacyColor(int i, int i2) {
            this.privacyColor = i;
            this.privacyOtherTextColor = i2;
            return this;
        }

        public Builder setPrivacyContentText(String str) {
            this.privacyContentText = str;
            return this;
        }

        public Builder setPrivacyMarginLeft(int i) {
            this.privacyMarginLeft = i;
            return this;
        }

        public Builder setPrivacyMarginRight(int i) {
            this.privacyMarginRight = i;
            return this;
        }

        public Builder setPrivacyNavBgColor(int i) {
            this.privacyNavBgColor = i;
            return this;
        }

        public Builder setPrivacyNavReturnBackClauseLayoutResID(int i) {
            this.privacyNavClauseLayoutResID = i;
            return this;
        }

        public Builder setPrivacyNavTextColor(int i) {
            this.privacyNavTextColor = i;
            return this;
        }

        public Builder setPrivacyNavTextSize(int i) {
            this.privacyNavTextSize = i;
            return this;
        }

        public Builder setPrivacyOffsetY(int i) {
            this.privacyOffsetY = i;
            return this;
        }

        public Builder setPrivacyOffsetY_B(int i) {
            this.privacyOffsetY_B = i;
            return this;
        }

        public Builder setPrivacyTextSize(int i) {
            this.privacyTextSize = i;
            return this;
        }

        public Builder setPrivacyTheme(int i) {
            this.privacyTheme = i;
            return this;
        }

        public Builder setProtocol(String str, String str2) {
            this.protocolName = str;
            this.protocolUrl = str2;
            return this;
        }

        public Builder setProtocolSelected(boolean z) {
            this.isProtocolSelected = z;
            return this;
        }

        public Builder setSecondProtocol(String str, String str2) {
            this.secondProtocolName = str;
            this.secondProtocolUrl = str2;
            return this;
        }

        public Builder setStatusBar(int i, boolean z) {
            this.statusBarBgColor = i;
            this.statusBarTextColor = z;
            return this;
        }

        public Builder setSwitchIsHide(boolean z) {
            this.switchIsHide = z;
            return this;
        }

        public Builder setSwitchText(String str) {
            this.switchText = str;
            return this;
        }

        public Builder setSwitchTextColor(int i) {
            this.switchTextColor = i;
            return this;
        }

        public Builder setThirdProtocol(String str, String str2) {
            this.thirdProtocolName = str;
            this.thirdProtocolUrl = str2;
            return this;
        }

        public Builder setUnCheckWay(String str) {
            this.authuncheckway = str;
            return this;
        }

        public Builder setUncheckDialogAuthLoginListener(UnCheckDialogAuthLoginListener unCheckDialogAuthLoginListener) {
            this.unCheckDialogAuthLoginListener = unCheckDialogAuthLoginListener;
            return this;
        }

        public void setWindowBackButtonWroks(boolean z) {
            this.isWindowBackButtonWroks = z;
        }
    }

    public UIConfigBuild(Builder builder) {
        this.numFieldOffsetY = -1;
        this.numFieldOffsetY_B = -1;
        this.logBtnOffsetY_B = -1;
        this.privacyTheme = -1;
        this.clauseStatusColor = -1;
        this.logBtnOffsetY = -1;
        this.privacyOffsetY = -1;
        this.privacyOffsetY_B = -1;
        this.appLanguageType = builder.appLanguageType;
        this.privacyAnimationBoolean = builder.privacyAnimationBoolean;
        this.isWindowBackButtonWorks = builder.isWindowBackButtonWroks;
        this.privacyBookSymbol = builder.privacyBookSymbol;
        this.loginBtnBg = builder.loginBtnBg;
        this.loginBtnText = builder.loginBtnText;
        this.loginBtnTextColor = builder.loginBtnTextColor;
        this.switchTextColor = builder.switchTextColor;
        this.switchIsHide = builder.switchIsHide;
        this.switchText = builder.switchText;
        this.protocolName = builder.protocolName;
        this.protocolUrl = builder.protocolUrl;
        this.secondProtocolName = builder.secondProtocolName;
        this.secondProtocolUrl = builder.secondProtocolUrl;
        this.thirdProtocolName = builder.thirdProtocolName;
        this.thirdProtocolUrl = builder.thirdProtocolUrl;
        this.fourthProtocolName = builder.fourthProtocolName;
        this.fourthProtocolUrl = builder.fourthProtocolUrl;
        this.loginButtonWidth = builder.loginButtonWidth;
        this.loginButtonHight = builder.loginButtonHight;
        this.privacyColor = builder.privacyColor;
        this.privacyOtherTextColor = builder.privacyOtherTextColor;
        this.isProtocolSeleted = builder.isProtocolSelected;
        this.statusBarBgColor = builder.statusBarBgColor;
        this.statusBarTextColor = builder.statusBarTextColor;
        this.navColorBgColor = builder.privacyNavBgColor;
        this.numberColor = builder.numberColor;
        this.ouathStateTextColor = builder.ouathStateTextColor;
        this.numberSize = builder.numberSize;
        this.numberOffsetX = builder.numberOffsetX;
        this.numFieldOffsetY = builder.numFieldOffsetY;
        this.privacyNavTextColor = builder.privacyNavTextColor;
        this.logBtnOffsetY_B = builder.logBtnOffsetY_B;
        this.logBtnOffsetY = builder.logBtnOffsetY;
        this.privacyOffsetY = builder.privacyOffsetY;
        this.privacyOffsetY_B = builder.privacyOffsetY_B;
        this.privacyMarginLeft = builder.privacyMarginLeft;
        this.privacyMarginRight = builder.privacyMarginRight;
        this.privacyTextSize = builder.privacyTextSize;
        this.clauseBaseColor = builder.clauseBaseColor;
        this.clauseColor = builder.clauseColor;
        this.isGravityCenter = builder.isGravityCenter;
        this.numFieldOffsetY_B = builder.numFieldOffsetY_B;
        this.privacyNavTextSize = builder.privacyNavTextSize;
        this.privacyNavClauseLayoutResID = builder.privacyNavClauseLayoutResID;
        this.privacyNavBgColor = builder.privacyNavBgColor;
        this.authPageActIn_authPagein = builder.authPageActIn_authPagein;
        this.authPageActIn_lastPageOut = builder.authPageActIn_lastPageOut;
        this.authPageActOut_authPageOut = builder.authPageActOut_authPageOut;
        this.authPageActOut_nextPagein = builder.authPageActOut_nextPagein;
        this.contentView = builder.contentView;
        this.authPageWindowMode = builder.authPageWindowMode;
        this.authPageWindowWith = builder.authPageWindowWith;
        this.authPageWindowHight = builder.authPageWindowHight;
        this.authPageWindowOffsetX = builder.authPageWindowOffsetX;
        this.authPageWindowOffsetY = builder.authPageWindowOffsetY;
        this.authPageWindowThemeId = builder.authPageWindowThemeId;
        this.authPageWindowBottom = builder.authPageWindowBottom;
        this.logBtnMarginLeft = builder.logBtnMarginLeft;
        this.logBtnMarginRight = builder.logBtnMarginRight;
        this.checkBoxLocation = builder.checkBoxLocation;
        this.checkBoxImageWidth = builder.checkBoxImageWidth;
        this.checkBoxImageheight = builder.checkBoxImageheight;
        this.isAutoClosAuthPage = builder.isAutoClosAuthPage;
        this.loginBtnTextSize = builder.loginBtnTextSize;
        this.loginbtnTextBold = builder.loginbtnTextBold;
        this.privacyContentText = builder.privacyContentText;
        this.numberBold = builder.numberBold;
        this.fitsSystemWindows = builder.fitsSystemWindows;
        this.checkTipText = builder.checkTipText;
        this.authuncheckway = builder.authuncheckway;
        this.mCheckboxCheckedChangelistener = builder.mCheckboxCheckedChangelistener;
        this.mAuthLoginClickListener = builder.authLoginClickListener;
        this.mAuthPageInListener = builder.authPageInListener;
        this.mCheckboxUnCheckedClickListener = builder.checkboxUnCheckedClickListener;
        this.mUnCheckDialogAuthLoginListener = builder.unCheckDialogAuthLoginListener;
        this.mPressBackListener = builder.pressBackListener;
        this.bottomNavigationHidden = builder.bottomNavigationHidden;
        this.privacyTheme = builder.privacyTheme;
        this.clauseStatusColor = builder.clauseStatusColor;
    }

    public int getAppLanguageType() {
        return this.appLanguageType;
    }

    public AuthLoginClickListener getAuthLoginClickListener() {
        return this.mAuthLoginClickListener;
    }

    public String getAuthPageActIn_authPagein() {
        return this.authPageActIn_authPagein;
    }

    public String getAuthPageActIn_lastPageOut() {
        return this.authPageActIn_lastPageOut;
    }

    public String getAuthPageActOut_authPageOut() {
        return this.authPageActOut_authPageOut;
    }

    public String getAuthPageActOut_nextPagein() {
        return this.authPageActOut_nextPagein;
    }

    public int getAuthPageWindowBottom() {
        return this.authPageWindowBottom;
    }

    public int getAuthPageWindowHight() {
        return this.authPageWindowHight;
    }

    public boolean getAuthPageWindowMode() {
        return this.authPageWindowMode;
    }

    public int getAuthPageWindowOffsetX() {
        return this.authPageWindowOffsetX;
    }

    public int getAuthPageWindowOffsetY() {
        return this.authPageWindowOffsetY;
    }

    public int getAuthPageWindowThemeId() {
        return this.authPageWindowThemeId;
    }

    public int getAuthPageWindowWith() {
        return this.authPageWindowWith;
    }

    public boolean getBackButton() {
        return this.isWindowBackButtonWorks;
    }

    public boolean getBottomNavigationHidden() {
        return this.bottomNavigationHidden;
    }

    public int getCheckBoxImageHeight() {
        return this.checkBoxImageheight;
    }

    public int getCheckBoxImageWidth() {
        return this.checkBoxImageWidth;
    }

    public int getCheckBoxLocation() {
        return this.checkBoxLocation;
    }

    public String getCheckTipText() {
        return this.checkTipText;
    }

    public CheckboxCheckedChangeListener getCheckboxCheckedChangeListener() {
        return this.mCheckboxCheckedChangelistener;
    }

    public CheckboxUnCheckedClickListener getCheckboxUnCheckedClickListener() {
        return this.mCheckboxUnCheckedClickListener;
    }

    public void getCheckedChangeListener() {
    }

    public int getClauseBaseColor() {
        return this.clauseBaseColor;
    }

    public int getClauseColor() {
        return this.clauseColor;
    }

    public int getClauseStatusColor() {
        return this.clauseStatusColor;
    }

    public View getContentView() {
        return this.contentView;
    }

    public boolean getFitsSystemWindows() {
        return this.fitsSystemWindows;
    }

    public String getFourthProtocolName() {
        return this.fourthProtocolName;
    }

    public String getFourthProtocolUrl() {
        return this.fourthProtocolUrl;
    }

    public int getLogBtnMarginLeft() {
        return this.logBtnMarginLeft;
    }

    public int getLogBtnMarginRight() {
        return this.logBtnMarginRight;
    }

    public int getLogBtnOffsetY() {
        return this.logBtnOffsetY;
    }

    public int getLogBtnOffsetY_B() {
        return this.logBtnOffsetY_B;
    }

    public int getLoginBtnBg() {
        return this.loginBtnBg;
    }

    public String getLoginBtnText() {
        return this.loginBtnText;
    }

    public int getLoginBtnTextColor() {
        return this.loginBtnTextColor;
    }

    public int getLoginBtnTextSize() {
        return this.loginBtnTextSize;
    }

    public int getLoginButtonHight() {
        return this.loginButtonHight;
    }

    public int getLoginButtonWidth() {
        return this.loginButtonWidth;
    }

    public int getNavColorBgColor() {
        return this.navColorBgColor;
    }

    public int getNumFieldOffsetY() {
        return this.numFieldOffsetY;
    }

    public int getNumFieldOffsetY_B() {
        return this.numFieldOffsetY_B;
    }

    public boolean getNumberBold() {
        return this.numberBold;
    }

    public int getNumberColor() {
        return this.numberColor;
    }

    public int getNumberOffsetX() {
        return this.numberOffsetX;
    }

    public int getNumberSize() {
        return this.numberSize;
    }

    public int getOuathStateTextColor() {
        return this.ouathStateTextColor;
    }

    public PressBackListener getPressBackListener() {
        return this.mPressBackListener;
    }

    public String getPrivacyAnimation() {
        return this.isPrivacyAnimation;
    }

    public boolean getPrivacyAnimationBoolean() {
        return this.privacyAnimationBoolean;
    }

    public boolean getPrivacyBookSymbol() {
        return this.privacyBookSymbol;
    }

    public int getPrivacyColor() {
        return this.privacyColor;
    }

    public String getPrivacyContentText() {
        return this.privacyContentText;
    }

    public int getPrivacyMarginLeft() {
        return this.privacyMarginLeft;
    }

    public int getPrivacyMarginRight() {
        return this.privacyMarginRight;
    }

    public int getPrivacyNavBgColor() {
        return this.privacyNavBgColor;
    }

    public int getPrivacyNavClauseLayoutResID() {
        return this.privacyNavClauseLayoutResID;
    }

    public int getPrivacyNavTextColor() {
        return this.privacyNavTextColor;
    }

    public int getPrivacyNavTextSize() {
        return this.privacyNavTextSize;
    }

    public int getPrivacyOffsetY() {
        return this.privacyOffsetY;
    }

    public int getPrivacyOffsetY_B() {
        return this.privacyOffsetY_B;
    }

    public int getPrivacyOtherTextColor() {
        return this.privacyOtherTextColor;
    }

    public int getPrivacyTextSize() {
        return this.privacyTextSize;
    }

    public int getPrivacyTheme() {
        return this.privacyTheme;
    }

    public String getProtocolName() {
        return this.protocolName;
    }

    public String getProtocolUrl() {
        return this.protocolUrl;
    }

    public String getSecondProtocolName() {
        return this.secondProtocolName;
    }

    public String getSecondProtocolUrl() {
        return this.secondProtocolUrl;
    }

    public int getStatusBarBgColor() {
        return this.statusBarBgColor;
    }

    public boolean getStatusBarTextColor() {
        return this.statusBarTextColor;
    }

    public String getSwitchText() {
        return this.switchText;
    }

    public int getSwitchTextColor() {
        return this.switchTextColor;
    }

    public String getThirdProtocolName() {
        return this.thirdProtocolName;
    }

    public String getThirdProtocolUrl() {
        return this.thirdProtocolUrl;
    }

    public UnCheckDialogAuthLoginListener getUnCheckDialogAuthLoginListener() {
        return this.mUnCheckDialogAuthLoginListener;
    }

    public String getUnCheckedWay() {
        return this.authuncheckway;
    }

    public AuthPageInListener getmAuthPageInListener() {
        return this.mAuthPageInListener;
    }

    public boolean isAutoClosAuthPage() {
        return this.isAutoClosAuthPage;
    }

    public boolean isGravityCenter() {
        return this.isGravityCenter;
    }

    public boolean isLoginbtnTextBold() {
        return this.loginbtnTextBold;
    }

    public boolean isProtocolSeleted() {
        return this.isProtocolSeleted;
    }

    public boolean isSwitchIsHide() {
        return this.switchIsHide;
    }

    public void setBottomNavigationHidden(boolean z) {
        this.bottomNavigationHidden = z;
    }

    public void setClauseStatusColor(int i) {
        this.clauseStatusColor = i;
    }

    public void setPrivacyTheme(int i) {
        this.privacyTheme = i;
    }

    public void setmAuthPageInListener(AuthPageInListener authPageInListener) {
        this.mAuthPageInListener = authPageInListener;
    }
}
