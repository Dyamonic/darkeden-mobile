.class public Lrich/n3;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static volatile d:Lrich/n3;


# instance fields
.field public a:Lrich/p0;

.field public b:Lrich/o2$b;

.field public c:Lcom/rich/oauth/core/UIConfigBuild;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lrich/n3;->b:Lrich/o2$b;

    iput-object v0, p0, Lrich/n3;->c:Lcom/rich/oauth/core/UIConfigBuild;

    return-void
.end method

.method public static a()Lrich/n3;
    .locals 2

    sget-object v0, Lrich/n3;->d:Lrich/n3;

    if-nez v0, :cond_1

    const-class v0, Lrich/n3;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lrich/n3;->d:Lrich/n3;

    if-nez v1, :cond_0

    new-instance v1, Lrich/n3;

    invoke-direct {v1}, Lrich/n3;-><init>()V

    sput-object v1, Lrich/n3;->d:Lrich/n3;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lrich/n3;->d:Lrich/n3;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/rich/oauth/callback/ModelCallback;Lrich/f3$a;)V
    .locals 8

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Lrich/p0;->b(Landroid/content/Context;)Lrich/p0;

    move-result-object v1

    iput-object v1, p0, Lrich/n3;->a:Lrich/p0;

    .line 109
    iget-object v5, p3, Lrich/f3$a;->a:Ljava/lang/String;

    .line 110
    iget-object v6, p3, Lrich/f3$a;->b:Ljava/lang/String;

    .line 111
    new-instance v7, Lrich/n3$c;

    invoke-direct {v7, p0, p2}, Lrich/n3$c;-><init>(Lrich/n3;Lcom/rich/oauth/callback/ModelCallback;)V

    const/16 p1, 0x1f40

    .line 112
    invoke-virtual {v1, v7}, Lrich/t0;->a(Lrich/q0;)Lrich/l0;

    move-result-object v4

    const-string p2, "SDKRequestCode"

    invoke-virtual {v4, p2, p1}, Lrich/l0;->a(Ljava/lang/String;I)V

    new-instance p1, Lrich/m0;

    iget-object v2, v1, Lrich/t0;->b:Landroid/content/Context;

    move-object v0, p1

    move-object v3, v4

    invoke-direct/range {v0 .. v7}, Lrich/m0;-><init>(Lrich/p0;Landroid/content/Context;Lrich/l0;Lrich/l0;Ljava/lang/String;Ljava/lang/String;Lrich/q0;)V

    invoke-static {p1}, Lrich/k2;->a(Lrich/k2$a;)V

    return-void
.end method

.method public a(Landroid/content/Context;Lcom/rich/oauth/callback/ModelCallback;Lrich/f3$a;Lcom/rich/oauth/core/UIConfigBuild;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    if-nez v1, :cond_0

    const/16 v2, 0x4e83

    const-string v3, "callback\u4e3anull"

    invoke-static {v2, v3}, Lcom/rich/oauth/util/JsonBuildUtil;->getJsonString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-interface {v1, v2, v3}, Lcom/rich/oauth/callback/ModelCallback;->onFailureResult(Ljava/lang/String;I)V

    return-void

    :cond_0
    iput-object v3, v0, Lrich/n3;->c:Lcom/rich/oauth/core/UIConfigBuild;

    if-nez v3, :cond_1

    new-instance v3, Lcom/rich/oauth/core/UIConfigBuild$Builder;

    invoke-direct {v3}, Lcom/rich/oauth/core/UIConfigBuild$Builder;-><init>()V

    invoke-virtual {v3}, Lcom/rich/oauth/core/UIConfigBuild$Builder;->build()Lcom/rich/oauth/core/UIConfigBuild;

    move-result-object v3

    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lrich/p0;->b(Landroid/content/Context;)Lrich/p0;

    move-result-object v4

    iput-object v4, v0, Lrich/n3;->a:Lrich/p0;

    new-instance v5, Lrich/n3$d;

    invoke-direct {v5, v0}, Lrich/n3$d;-><init>(Lrich/n3;)V

    .line 1
    iput-object v5, v4, Lrich/p0;->i:Lrich/t2;

    .line 2
    invoke-virtual {v3}, Lcom/rich/oauth/core/UIConfigBuild;->getContentView()Landroid/view/View;

    move-result-object v4

    new-instance v5, Ljava/lang/ref/SoftReference;

    invoke-direct {v5, v4}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    new-instance v4, Lrich/o2$b;

    invoke-direct {v4}, Lrich/o2$b;-><init>()V

    invoke-virtual {v5}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 3
    iput-object v5, v4, Lrich/o2$b;->d:Landroid/view/View;

    const/4 v5, -0x1

    iput v5, v4, Lrich/o2$b;->e:I

    .line 4
    invoke-virtual {v3}, Lcom/rich/oauth/core/UIConfigBuild;->getStatusBarBgColor()I

    move-result v6

    invoke-virtual {v3}, Lcom/rich/oauth/core/UIConfigBuild;->getStatusBarTextColor()Z

    move-result v7

    .line 5
    iput v6, v4, Lrich/o2$b;->b:I

    iput-boolean v7, v4, Lrich/o2$b;->c:Z

    .line 6
    invoke-virtual {v3}, Lcom/rich/oauth/core/UIConfigBuild;->getFitsSystemWindows()Z

    move-result v6

    .line 7
    iput-boolean v6, v4, Lrich/o2$b;->A0:Z

    .line 8
    invoke-virtual {v3}, Lcom/rich/oauth/core/UIConfigBuild;->getNumberSize()I

    move-result v6

    invoke-virtual {v3}, Lcom/rich/oauth/core/UIConfigBuild;->getNumberBold()Z

    move-result v7

    const/16 v8, 0x8

    if-le v6, v8, :cond_2

    .line 9
    iput v6, v4, Lrich/o2$b;->q:I

    iput-boolean v7, v4, Lrich/o2$b;->r:Z

    .line 10
    :cond_2
    invoke-virtual {v3}, Lcom/rich/oauth/core/UIConfigBuild;->getNumberColor()I

    move-result v6

    .line 11
    iput v6, v4, Lrich/o2$b;->s:I

    .line 12
    invoke-virtual {v3}, Lcom/rich/oauth/core/UIConfigBuild;->getNumberOffsetX()I

    move-result v6

    .line 13
    iput v6, v4, Lrich/o2$b;->t:I

    .line 14
    iput-object v4, v0, Lrich/n3;->b:Lrich/o2$b;

    invoke-virtual {v3}, Lcom/rich/oauth/core/UIConfigBuild;->getNumFieldOffsetY()I

    move-result v4

    const/4 v6, 0x0

    if-eq v4, v5, :cond_3

    iget-object v4, v0, Lrich/n3;->b:Lrich/o2$b;

    invoke-virtual {v3}, Lcom/rich/oauth/core/UIConfigBuild;->getNumFieldOffsetY()I

    move-result v7

    .line 15
    iput v7, v4, Lrich/o2$b;->u:I

    iput v6, v4, Lrich/o2$b;->v:I

    .line 16
    :cond_3
    invoke-virtual {v3}, Lcom/rich/oauth/core/UIConfigBuild;->getNumFieldOffsetY_B()I

    move-result v4

    if-eq v4, v5, :cond_4

    iget-object v4, v0, Lrich/n3;->b:Lrich/o2$b;

    invoke-virtual {v3}, Lcom/rich/oauth/core/UIConfigBuild;->getNumFieldOffsetY_B()I

    move-result v7

    .line 17
    iput v7, v4, Lrich/o2$b;->v:I

    iput v6, v4, Lrich/o2$b;->u:I

    .line 18
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v3}, Lcom/rich/oauth/core/UIConfigBuild;->getLoginBtnBg()I

    move-result v7

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v4

    iget-object v7, v0, Lrich/n3;->b:Lrich/o2$b;

    invoke-virtual {v3}, Lcom/rich/oauth/core/UIConfigBuild;->getPrivacyNavTextColor()I

    move-result v8

    .line 19
    iput v8, v7, Lrich/o2$b;->i:I

    .line 20
    invoke-virtual {v3}, Lcom/rich/oauth/core/UIConfigBuild;->getPrivacyNavBgColor()I

    move-result v8

    .line 21
    iput v8, v7, Lrich/o2$b;->j:I

    .line 22
    invoke-virtual {v3}, Lcom/rich/oauth/core/UIConfigBuild;->getPrivacyNavTextSize()I

    move-result v8

    .line 23
    iput v8, v7, Lrich/o2$b;->h:I

    .line 24
    invoke-virtual {v3}, Lcom/rich/oauth/core/UIConfigBuild;->getPrivacyNavClauseLayoutResID()I

    move-result v8

    .line 25
    iput v8, v7, Lrich/o2$b;->f:I

    const-string v8, "returnId"

    iput-object v8, v7, Lrich/o2$b;->g:Ljava/lang/String;

    .line 26
    invoke-virtual {v3}, Lcom/rich/oauth/core/UIConfigBuild;->getClauseStatusColor()I

    move-result v8

    .line 27
    iput v8, v7, Lrich/o2$b;->l:I

    .line 28
    invoke-virtual {v3}, Lcom/rich/oauth/core/UIConfigBuild;->getLoginBtnText()Ljava/lang/String;

    move-result-object v8

    .line 29
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    const-string v10, "^\\s*\\n*$"

    if-nez v9, :cond_5

    invoke-static {v10}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/regex/Matcher;->matches()Z

    move-result v9

    if-nez v9, :cond_5

    iput-object v8, v7, Lrich/o2$b;->w:Ljava/lang/String;

    iput-boolean v6, v7, Lrich/o2$b;->x:Z

    .line 30
    :cond_5
    invoke-virtual {v3}, Lcom/rich/oauth/core/UIConfigBuild;->getLoginBtnTextColor()I

    move-result v8

    .line 31
    iput v8, v7, Lrich/o2$b;->A:I

    .line 32
    iput-object v4, v7, Lrich/o2$b;->B:Ljava/lang/String;

    .line 33
    invoke-virtual {v3}, Lcom/rich/oauth/core/UIConfigBuild;->getLoginBtnText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/rich/oauth/core/UIConfigBuild;->getLoginBtnTextColor()I

    move-result v8

    invoke-virtual {v3}, Lcom/rich/oauth/core/UIConfigBuild;->getLoginBtnTextSize()I

    move-result v9

    invoke-virtual {v3}, Lcom/rich/oauth/core/UIConfigBuild;->isLoginbtnTextBold()Z

    move-result v11

    .line 34
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_6

    invoke-static {v10}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/regex/Matcher;->matches()Z

    move-result v10

    if-nez v10, :cond_6

    iput-object v4, v7, Lrich/o2$b;->w:Ljava/lang/String;

    iput-boolean v6, v7, Lrich/o2$b;->x:Z

    :cond_6
    iput v8, v7, Lrich/o2$b;->A:I

    iput v9, v7, Lrich/o2$b;->y:I

    iput-boolean v11, v7, Lrich/o2$b;->z:Z

    .line 35
    invoke-virtual {v3}, Lcom/rich/oauth/core/UIConfigBuild;->getPrivacyTheme()I

    move-result v4

    if-lez v4, :cond_7

    iget-object v4, v0, Lrich/n3;->b:Lrich/o2$b;

    invoke-virtual {v3}, Lcom/rich/oauth/core/UIConfigBuild;->getPrivacyTheme()I

    move-result v7

    .line 36
    iput v7, v4, Lrich/o2$b;->y0:I

    .line 37
    :cond_7
    invoke-virtual {v3}, Lcom/rich/oauth/core/UIConfigBuild;->getLogBtnOffsetY_B()I

    move-result v4

    if-eq v4, v5, :cond_8

    iget-object v4, v0, Lrich/n3;->b:Lrich/o2$b;

    invoke-virtual {v3}, Lcom/rich/oauth/core/UIConfigBuild;->getLogBtnOffsetY_B()I

    move-result v7

    .line 38
    iput v7, v4, Lrich/o2$b;->H:I

    iput v6, v4, Lrich/o2$b;->G:I

    .line 39
    :cond_8
    invoke-virtual {v3}, Lcom/rich/oauth/core/UIConfigBuild;->getLogBtnOffsetY()I

    move-result v4

    if-eq v4, v5, :cond_9

    iget-object v4, v0, Lrich/n3;->b:Lrich/o2$b;

    invoke-virtual {v3}, Lcom/rich/oauth/core/UIConfigBuild;->getLogBtnOffsetY()I

    move-result v7

    .line 40
    iput v7, v4, Lrich/o2$b;->G:I

    iput v6, v4, Lrich/o2$b;->H:I

    .line 41
    :cond_9
    iget-object v4, v0, Lrich/n3;->b:Lrich/o2$b;

    const/4 v7, 0x1

    .line 42
    iput-boolean v7, v4, Lrich/o2$b;->a:Z

    .line 43
    new-instance v8, Lrich/n3$e;

    invoke-direct {v8, v0}, Lrich/n3$e;-><init>(Lrich/n3;)V

    .line 44
    iput-object v8, v4, Lrich/o2$b;->N:Lrich/r2;

    .line 45
    iget-object v4, v0, Lrich/n3;->b:Lrich/o2$b;

    invoke-virtual {v3}, Lcom/rich/oauth/core/UIConfigBuild;->getLoginButtonWidth()I

    move-result v8

    invoke-virtual {v3}, Lcom/rich/oauth/core/UIConfigBuild;->getLoginButtonHight()I

    move-result v9

    .line 46
    iput v8, v4, Lrich/o2$b;->C:I

    iput v9, v4, Lrich/o2$b;->D:I

    .line 47
    invoke-virtual {v3}, Lcom/rich/oauth/core/UIConfigBuild;->getLogBtnMarginLeft()I

    move-result v8

    invoke-virtual {v3}, Lcom/rich/oauth/core/UIConfigBuild;->getLogBtnMarginRight()I

    move-result v9

    .line 48
    iput v8, v4, Lrich/o2$b;->E:I

    iput v9, v4, Lrich/o2$b;->F:I

    .line 49
    new-instance v8, Lrich/n3$h;

    invoke-direct {v8, v0}, Lrich/n3$h;-><init>(Lrich/n3;)V

    .line 50
    iput-object v8, v4, Lrich/o2$b;->L:Lrich/s2;

    .line 51
    new-instance v8, Lrich/n3$g;

    invoke-direct {v8, v0}, Lrich/n3$g;-><init>(Lrich/n3;)V

    .line 52
    iput-object v8, v4, Lrich/o2$b;->K:Lrich/p2;

    .line 53
    invoke-virtual {v3}, Lcom/rich/oauth/core/UIConfigBuild;->getCheckBoxImageWidth()I

    move-result v8

    invoke-virtual {v3}, Lcom/rich/oauth/core/UIConfigBuild;->getCheckBoxImageHeight()I

    move-result v9

    const-string v10, "umcsdk_check_image"

    .line 54
    iput-object v10, v4, Lrich/o2$b;->P:Ljava/lang/String;

    const-string v10, "umcsdk_uncheck_image"

    iput-object v10, v4, Lrich/o2$b;->Q:Ljava/lang/String;

    iput v8, v4, Lrich/o2$b;->R:I

    iput v9, v4, Lrich/o2$b;->S:I

    .line 55
    invoke-virtual {v3}, Lcom/rich/oauth/core/UIConfigBuild;->isProtocolSeleted()Z

    move-result v8

    .line 56
    iput-boolean v8, v4, Lrich/o2$b;->T:Z

    .line 57
    invoke-virtual {v3}, Lcom/rich/oauth/core/UIConfigBuild;->getBottomNavigationHidden()Z

    move-result v8

    .line 58
    iput-boolean v8, v4, Lrich/o2$b;->k:Z

    .line 59
    invoke-virtual {v3}, Lcom/rich/oauth/core/UIConfigBuild;->getCheckBoxLocation()I

    move-result v8

    .line 60
    iput v8, v4, Lrich/o2$b;->n0:I

    .line 61
    new-instance v8, Lrich/n3$f;

    invoke-direct {v8, v0}, Lrich/n3$f;-><init>(Lrich/n3;)V

    .line 62
    iput-object v8, v4, Lrich/o2$b;->N:Lrich/r2;

    .line 63
    invoke-virtual {v3}, Lcom/rich/oauth/core/UIConfigBuild;->getUnCheckedWay()Ljava/lang/String;

    move-result-object v4

    sget-object v8, Lcom/rich/oauth/util/AuthConstants;->AUTHUNCHECKWAY_TOAST:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    iget-object v4, v0, Lrich/n3;->b:Lrich/o2$b;

    invoke-virtual {v3}, Lcom/rich/oauth/core/UIConfigBuild;->getCheckTipText()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lrich/o2$b;->a(Ljava/lang/String;)Lrich/o2$b;

    goto :goto_0

    :cond_a
    invoke-virtual {v3}, Lcom/rich/oauth/core/UIConfigBuild;->getUnCheckedWay()Ljava/lang/String;

    move-result-object v4

    sget-object v8, Lcom/rich/oauth/util/AuthConstants;->AUTHUNCHECKWAY_SHAKE:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    iget-object v4, v0, Lrich/n3;->b:Lrich/o2$b;

    const-string v8, "umcsdk_anim_shake"

    .line 64
    iput-object v8, v4, Lrich/o2$b;->C0:Ljava/lang/String;

    .line 65
    new-instance v8, Lrich/n3$i;

    invoke-direct {v8, v0}, Lrich/n3$i;-><init>(Lrich/n3;)V

    .line 66
    iput-object v8, v4, Lrich/o2$b;->M:Lrich/q2;

    goto :goto_0

    .line 67
    :cond_b
    invoke-virtual {v3}, Lcom/rich/oauth/core/UIConfigBuild;->getUnCheckedWay()Ljava/lang/String;

    move-result-object v4

    sget-object v8, Lcom/rich/oauth/util/AuthConstants;->AUTHUNCHECKWAY_SECONDAUTHDIALOG:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    iget-object v4, v0, Lrich/n3;->b:Lrich/o2$b;

    new-instance v8, Lrich/n3$k;

    invoke-direct {v8, v0}, Lrich/n3$k;-><init>(Lrich/n3;)V

    .line 68
    iput-object v8, v4, Lrich/o2$b;->O:Lrich/n2;

    .line 69
    new-instance v8, Lrich/n3$j;

    invoke-direct {v8, v0}, Lrich/n3$j;-><init>(Lrich/n3;)V

    .line 70
    iput-object v8, v4, Lrich/o2$b;->M:Lrich/q2;

    .line 71
    :cond_c
    :goto_0
    iget-object v9, v0, Lrich/n3;->b:Lrich/o2$b;

    invoke-virtual {v3}, Lcom/rich/oauth/core/UIConfigBuild;->getPrivacyContentText()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3}, Lcom/rich/oauth/core/UIConfigBuild;->getProtocolName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3}, Lcom/rich/oauth/core/UIConfigBuild;->getProtocolUrl()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3}, Lcom/rich/oauth/core/UIConfigBuild;->getSecondProtocolName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3}, Lcom/rich/oauth/core/UIConfigBuild;->getSecondProtocolUrl()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3}, Lcom/rich/oauth/core/UIConfigBuild;->getThirdProtocolName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v3}, Lcom/rich/oauth/core/UIConfigBuild;->getThirdProtocolUrl()Ljava/lang/String;

    move-result-object v16

    invoke-virtual {v3}, Lcom/rich/oauth/core/UIConfigBuild;->getFourthProtocolName()Ljava/lang/String;

    move-result-object v17

    invoke-virtual {v3}, Lcom/rich/oauth/core/UIConfigBuild;->getFourthProtocolUrl()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v9 .. v18}, Lrich/o2$b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lrich/o2$b;

    move-result-object v4

    invoke-virtual {v3}, Lcom/rich/oauth/core/UIConfigBuild;->getPrivacyTextSize()I

    move-result v8

    invoke-virtual {v3}, Lcom/rich/oauth/core/UIConfigBuild;->getClauseBaseColor()I

    move-result v9

    invoke-virtual {v3}, Lcom/rich/oauth/core/UIConfigBuild;->getClauseColor()I

    move-result v10

    invoke-virtual {v3}, Lcom/rich/oauth/core/UIConfigBuild;->isGravityCenter()Z

    move-result v11

    .line 72
    iput v8, v4, Lrich/o2$b;->d0:I

    iput v9, v4, Lrich/o2$b;->f0:I

    iput v10, v4, Lrich/o2$b;->g0:I

    iput-boolean v11, v4, Lrich/o2$b;->h0:Z

    iput-boolean v6, v4, Lrich/o2$b;->e0:Z

    .line 73
    invoke-virtual {v3}, Lcom/rich/oauth/core/UIConfigBuild;->getPrivacyOtherTextColor()I

    move-result v8

    invoke-virtual {v3}, Lcom/rich/oauth/core/UIConfigBuild;->getPrivacyColor()I

    move-result v9

    .line 74
    iput v8, v4, Lrich/o2$b;->f0:I

    iput v9, v4, Lrich/o2$b;->g0:I

    .line 75
    invoke-virtual {v3}, Lcom/rich/oauth/core/UIConfigBuild;->getPrivacyMarginLeft()I

    move-result v8

    invoke-virtual {v3}, Lcom/rich/oauth/core/UIConfigBuild;->getPrivacyMarginRight()I

    move-result v9

    .line 76
    iput v8, v4, Lrich/o2$b;->i0:I

    iput v9, v4, Lrich/o2$b;->j0:I

    .line 77
    invoke-virtual {v3}, Lcom/rich/oauth/core/UIConfigBuild;->getPrivacyBookSymbol()Z

    move-result v8

    .line 78
    iput-boolean v8, v4, Lrich/o2$b;->m0:Z

    .line 79
    invoke-virtual {v3}, Lcom/rich/oauth/core/UIConfigBuild;->getPrivacyOffsetY()I

    move-result v4

    if-eq v4, v5, :cond_d

    iget-object v4, v0, Lrich/n3;->b:Lrich/o2$b;

    invoke-virtual {v3}, Lcom/rich/oauth/core/UIConfigBuild;->getPrivacyOffsetY()I

    move-result v8

    .line 80
    iput v8, v4, Lrich/o2$b;->k0:I

    iput v6, v4, Lrich/o2$b;->l0:I

    .line 81
    :cond_d
    invoke-virtual {v3}, Lcom/rich/oauth/core/UIConfigBuild;->getPrivacyOffsetY_B()I

    move-result v4

    if-eq v4, v5, :cond_e

    iget-object v4, v0, Lrich/n3;->b:Lrich/o2$b;

    invoke-virtual {v3}, Lcom/rich/oauth/core/UIConfigBuild;->getPrivacyOffsetY_B()I

    move-result v8

    .line 82
    iput v8, v4, Lrich/o2$b;->l0:I

    iput v6, v4, Lrich/o2$b;->k0:I

    .line 83
    :cond_e
    invoke-virtual {v3}, Lcom/rich/oauth/core/UIConfigBuild;->getAuthPageActIn_authPagein()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_f

    invoke-virtual {v3}, Lcom/rich/oauth/core/UIConfigBuild;->getAuthPageActIn_lastPageOut()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_f

    iget-object v4, v0, Lrich/n3;->b:Lrich/o2$b;

    invoke-virtual {v3}, Lcom/rich/oauth/core/UIConfigBuild;->getAuthPageActIn_authPagein()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3}, Lcom/rich/oauth/core/UIConfigBuild;->getAuthPageActIn_lastPageOut()Ljava/lang/String;

    move-result-object v9

    .line 84
    iput-object v8, v4, Lrich/o2$b;->o0:Ljava/lang/String;

    iput-object v9, v4, Lrich/o2$b;->p0:Ljava/lang/String;

    .line 85
    :cond_f
    invoke-virtual {v3}, Lcom/rich/oauth/core/UIConfigBuild;->getAuthPageActOut_authPageOut()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_10

    invoke-virtual {v3}, Lcom/rich/oauth/core/UIConfigBuild;->getAuthPageActOut_nextPagein()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_10

    iget-object v4, v0, Lrich/n3;->b:Lrich/o2$b;

    invoke-virtual {v3}, Lcom/rich/oauth/core/UIConfigBuild;->getAuthPageActOut_nextPagein()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3}, Lcom/rich/oauth/core/UIConfigBuild;->getAuthPageActOut_authPageOut()Ljava/lang/String;

    move-result-object v9

    .line 86
    iput-object v9, v4, Lrich/o2$b;->q0:Ljava/lang/String;

    iput-object v8, v4, Lrich/o2$b;->r0:Ljava/lang/String;

    .line 87
    :cond_10
    iget-object v4, v0, Lrich/n3;->b:Lrich/o2$b;

    .line 88
    iput v6, v4, Lrich/o2$b;->s0:I

    iput v6, v4, Lrich/o2$b;->t0:I

    .line 89
    invoke-virtual {v3}, Lcom/rich/oauth/core/UIConfigBuild;->getAuthPageWindowThemeId()I

    move-result v8

    .line 90
    iput v8, v4, Lrich/o2$b;->x0:I

    .line 91
    invoke-virtual {v3}, Lcom/rich/oauth/core/UIConfigBuild;->getAuthPageWindowMode()Z

    move-result v4

    if-eqz v4, :cond_11

    iget-object v4, v0, Lrich/n3;->b:Lrich/o2$b;

    invoke-virtual {v3}, Lcom/rich/oauth/core/UIConfigBuild;->getAuthPageWindowWith()I

    move-result v8

    invoke-virtual {v3}, Lcom/rich/oauth/core/UIConfigBuild;->getAuthPageWindowHight()I

    move-result v9

    .line 92
    iput v8, v4, Lrich/o2$b;->s0:I

    iput v9, v4, Lrich/o2$b;->t0:I

    .line 93
    invoke-virtual {v3}, Lcom/rich/oauth/core/UIConfigBuild;->getAuthPageWindowOffsetX()I

    move-result v8

    invoke-virtual {v3}, Lcom/rich/oauth/core/UIConfigBuild;->getAuthPageWindowOffsetY()I

    move-result v9

    .line 94
    iput v8, v4, Lrich/o2$b;->u0:I

    iput v9, v4, Lrich/o2$b;->v0:I

    .line 95
    invoke-virtual {v3}, Lcom/rich/oauth/core/UIConfigBuild;->getAuthPageWindowThemeId()I

    move-result v8

    .line 96
    iput v8, v4, Lrich/o2$b;->x0:I

    .line 97
    invoke-virtual {v3}, Lcom/rich/oauth/core/UIConfigBuild;->getAuthPageWindowBottom()I

    move-result v8

    .line 98
    iput v8, v4, Lrich/o2$b;->w0:I

    .line 99
    invoke-virtual {v3}, Lcom/rich/oauth/core/UIConfigBuild;->getBackButton()Z

    move-result v8

    .line 100
    iput-boolean v8, v4, Lrich/o2$b;->B0:Z

    .line 101
    :cond_11
    iget-object v4, v0, Lrich/n3;->b:Lrich/o2$b;

    invoke-virtual {v3}, Lcom/rich/oauth/core/UIConfigBuild;->getAppLanguageType()I

    move-result v3

    .line 102
    iput v3, v4, Lrich/o2$b;->z0:I

    .line 103
    iget-object v3, v0, Lrich/n3;->b:Lrich/o2$b;

    invoke-virtual {v3}, Lrich/o2$b;->a()Lrich/o2;

    move-result-object v3

    const/4 v4, 0x0

    iput-object v4, v0, Lrich/n3;->b:Lrich/o2$b;

    new-instance v4, Ljava/lang/ref/SoftReference;

    invoke-direct {v4, v3}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    new-array v3, v7, [Lrich/o2;

    invoke-virtual {v4}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lrich/o2;

    aput-object v4, v3, v6

    iget-object v8, v0, Lrich/n3;->a:Lrich/p0;

    aget-object v3, v3, v6

    .line 104
    iput-object v3, v8, Lrich/p0;->h:Lrich/o2;

    .line 105
    iget-object v12, v2, Lrich/f3$a;->a:Ljava/lang/String;

    .line 106
    iget-object v13, v2, Lrich/f3$a;->b:Ljava/lang/String;

    .line 107
    new-instance v14, Lrich/n3$a;

    invoke-direct {v14, v0, v1}, Lrich/n3$a;-><init>(Lrich/n3;Lcom/rich/oauth/callback/ModelCallback;)V

    .line 108
    invoke-virtual {v8, v14}, Lrich/t0;->a(Lrich/q0;)Lrich/l0;

    move-result-object v11

    const-string v1, "SDKRequestCode"

    invoke-virtual {v11, v1, v5}, Lrich/l0;->a(Ljava/lang/String;I)V

    new-instance v1, Lrich/n0;

    iget-object v9, v8, Lrich/t0;->b:Landroid/content/Context;

    move-object v7, v1

    move-object v10, v11

    invoke-direct/range {v7 .. v14}, Lrich/n0;-><init>(Lrich/p0;Landroid/content/Context;Lrich/l0;Lrich/l0;Ljava/lang/String;Ljava/lang/String;Lrich/q0;)V

    invoke-static {v1}, Lrich/k2;->a(Lrich/k2$a;)V

    return-void
.end method

.method public b(Landroid/content/Context;Lcom/rich/oauth/callback/ModelCallback;Lrich/f3$a;)V
    .locals 8

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lrich/p0;->b(Landroid/content/Context;)Lrich/p0;

    move-result-object v1

    .line 1
    iget-object v5, p3, Lrich/f3$a;->a:Ljava/lang/String;

    .line 2
    iget-object v6, p3, Lrich/f3$a;->b:Ljava/lang/String;

    .line 3
    new-instance v7, Lrich/n3$b;

    invoke-direct {v7, p0, p2}, Lrich/n3$b;-><init>(Lrich/n3;Lcom/rich/oauth/callback/ModelCallback;)V

    .line 4
    invoke-virtual {v1, v7}, Lrich/t0;->a(Lrich/q0;)Lrich/l0;

    move-result-object v4

    const-string p1, "SDKRequestCode"

    const/4 p2, -0x1

    invoke-virtual {v4, p1, p2}, Lrich/l0;->a(Ljava/lang/String;I)V

    new-instance p1, Lrich/o0;

    iget-object v2, v1, Lrich/t0;->b:Landroid/content/Context;

    move-object v0, p1

    move-object v3, v4

    invoke-direct/range {v0 .. v7}, Lrich/o0;-><init>(Lrich/p0;Landroid/content/Context;Lrich/l0;Lrich/l0;Ljava/lang/String;Ljava/lang/String;Lrich/q0;)V

    invoke-static {p1}, Lrich/k2;->a(Lrich/k2$a;)V

    return-void
.end method
