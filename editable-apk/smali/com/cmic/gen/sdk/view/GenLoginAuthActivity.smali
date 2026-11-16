.class public Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;
.super Landroid/app/Activity;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cmic/gen/sdk/view/GenLoginAuthActivity$l;,
        Lcom/cmic/gen/sdk/view/GenLoginAuthActivity$n;,
        Lcom/cmic/gen/sdk/view/GenLoginAuthActivity$m;
    }
.end annotation


# static fields
.field public static final E:Ljava/lang/String; = "GenLoginAuthActivity"


# instance fields
.field public A:I

.field public B:I

.field public C:Z

.field public D:Landroid/app/Dialog;

.field public a:Landroid/os/Handler;

.field public b:Landroid/content/Context;

.field public c:Landroid/widget/RelativeLayout;

.field public d:Lrich/x2;

.field public e:Lrich/x2;

.field public f:Lrich/x2;

.field public g:Lrich/x2;

.field public h:Lrich/x2;

.field public i:Ljava/util/ArrayList;

.field public j:Ljava/util/ArrayList;

.field public k:[Ljava/lang/String;

.field public l:Lrich/l0;

.field public m:Lrich/r0;

.field public n:Ljava/lang/String;

.field public o:Landroid/widget/CheckBox;

.field public p:Landroid/widget/RelativeLayout;

.field public q:Landroid/widget/RelativeLayout;

.field public r:J

.field public s:I

.field public t:Lcom/cmic/gen/sdk/view/GenLoginAuthActivity$l;

.field public u:Lrich/q0;

.field public v:Z

.field public w:Landroid/widget/RelativeLayout;

.field public x:Ljava/lang/String;

.field public y:Ljava/lang/String;

.field public z:Lrich/o2;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->n:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->r:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->s:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->t:Lcom/cmic/gen/sdk/view/GenLoginAuthActivity$l;

    return-void
.end method

.method public static synthetic a(Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;Ljava/lang/String;Ljava/lang/String;Lrich/l0;Lorg/json/JSONObject;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->a(Ljava/lang/String;Ljava/lang/String;Lrich/l0;Lorg/json/JSONObject;)V

    return-void
.end method

.method public static synthetic a(Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->v:Z

    return p1
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->a:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->d:Lrich/x2;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->d:Lrich/x2;

    invoke-virtual {v0}, Lrich/x2;->dismiss()V

    :cond_0
    iget-object v0, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->e:Lrich/x2;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->e:Lrich/x2;

    invoke-virtual {v0}, Lrich/x2;->dismiss()V

    :cond_1
    invoke-virtual {p0}, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->d()V

    iput-object v1, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->D:Landroid/app/Dialog;

    iget-object v0, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->p:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->clearAnimation()V

    :cond_2
    invoke-static {}, Lrich/u2;->a()Lrich/u2;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, v0, Lrich/u2;->b:I

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    iget-object v0, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->z:Lrich/o2;

    .line 1
    iget-object v1, v0, Lrich/o2;->o0:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 2
    iget-object v0, v0, Lrich/o2;->p0:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 3
    invoke-static {p0, v0}, Lrich/b0;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->z:Lrich/o2;

    .line 4
    iget-object v1, v1, Lrich/o2;->o0:Ljava/lang/String;

    .line 5
    invoke-static {p0, v1}, Lrich/b0;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_3
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Lrich/l0;Lorg/json/JSONObject;)V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->a:Landroid/os/Handler;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->a:Landroid/os/Handler;

    new-instance v0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity$l;

    invoke-direct {v0, p0}, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity$l;-><init>(Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;)V

    iput-object v0, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->t:Lcom/cmic/gen/sdk/view/GenLoginAuthActivity$l;

    :cond_0
    iget-object v0, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->a:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    const-string v0, "103000"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    const-string v2, ""

    const-string v3, "keepListener"

    const-string v4, "traceId"

    if-eqz v0, :cond_1

    :try_start_1
    invoke-static {p0}, Lrich/p0;->b(Landroid/content/Context;)Lrich/p0;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 6
    invoke-virtual {p3, v4, v2}, Lrich/l0;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 7
    invoke-static {v0}, Lrich/d2;->b(Ljava/lang/String;)Lrich/q0;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p3, v3, v1}, Lrich/l0;->a(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_1
    const-string v0, "200020"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p0}, Lrich/p0;->b(Landroid/content/Context;)Lrich/p0;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 8
    invoke-virtual {p3, v4, v2}, Lrich/l0;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 9
    invoke-static {v0}, Lrich/d2;->b(Ljava/lang/String;)Lrich/q0;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {p0}, Lrich/p0;->b(Landroid/content/Context;)Lrich/p0;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lrich/t0;->a(Ljava/lang/String;Ljava/lang/String;Lrich/l0;Lorg/json/JSONObject;)V

    :cond_2
    invoke-virtual {p0}, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->a()V

    goto :goto_1

    :cond_3
    invoke-virtual {p3, v3, v1}, Lrich/l0;->a(Ljava/lang/String;Z)V

    .line 7
    :goto_0
    invoke-static {p0}, Lrich/p0;->b(Landroid/content/Context;)Lrich/p0;

    move-result-object v0

    .line 9
    invoke-virtual {v0, p1, p2, p3, p4}, Lrich/t0;->a(Ljava/lang/String;Ljava/lang/String;Lrich/l0;Lorg/json/JSONObject;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    sget-object p2, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->E:Ljava/lang/String;

    const-string p3, "CallbackResult:\u672a\u77e5\u9519\u8bef"

    invoke-static {p2, p3}, Lrich/c2;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    :goto_1
    return-void
.end method

.method public final b()V
    .locals 4

    :try_start_0
    const-string v0, "authPageOut"

    invoke-static {v0}, Lrich/w1;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, "200020"

    const-string v1, "\u767b\u5f55\u9875\u9762\u5173\u95ed"

    :try_start_1
    iget-object v2, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->l:Lrich/l0;

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->a(Ljava/lang/String;Ljava/lang/String;Lrich/l0;Lorg/json/JSONObject;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lrich/y1;->D:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public c()V
    .locals 6

    sget-object v0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->E:Ljava/lang/String;

    const-string v1, "loginClickStart"

    invoke-static {v0, v1}, Lrich/c2;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->C:Z

    iget-object v0, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->z:Lrich/o2;

    .line 1
    iget-object v0, v0, Lrich/o2;->J:Lrich/s2;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->z:Lrich/o2;

    .line 3
    iget-object v0, v0, Lrich/o2;->J:Lrich/s2;

    .line 4
    iget-object v2, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->b:Landroid/content/Context;

    const/4 v3, 0x0

    check-cast v0, Lrich/n3$h;

    .line 5
    iget-object v4, v0, Lrich/n3$h;->a:Lrich/n3;

    .line 6
    iget-object v4, v4, Lrich/n3;->c:Lcom/rich/oauth/core/UIConfigBuild;

    .line 7
    invoke-virtual {v4}, Lcom/rich/oauth/core/UIConfigBuild;->getAuthLoginClickListener()Lcom/rich/oauth/callback/AuthLoginClickListener;

    move-result-object v4

    if-eqz v4, :cond_3

    iget-object v0, v0, Lrich/n3$h;->a:Lrich/n3;

    .line 8
    iget-object v0, v0, Lrich/n3;->c:Lcom/rich/oauth/core/UIConfigBuild;

    .line 9
    invoke-virtual {v0}, Lcom/rich/oauth/core/UIConfigBuild;->getAuthLoginClickListener()Lcom/rich/oauth/callback/AuthLoginClickListener;

    move-result-object v0

    invoke-interface {v0, v2, v3}, Lcom/rich/oauth/callback/AuthLoginClickListener;->onLoginClickStart(Landroid/content/Context;Lorg/json/JSONObject;)V

    goto/16 :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->D:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void

    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->D:Landroid/app/Dialog;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->D:Landroid/app/Dialog;

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    iget-object v0, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->D:Landroid/app/Dialog;

    new-instance v2, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity$e;

    invoke-direct {v2, p0}, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity$e;-><init>(Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;)V

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    new-instance v0, Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->D:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x2

    const/4 v4, -0x1

    invoke-direct {v2, v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->D:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->b:Landroid/content/Context;

    const-string v5, "umcsdk_dialog_loading"

    invoke-static {v3, v5}, Lrich/b0;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v5, 0x50

    invoke-direct {v3, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v5, 0xd

    invoke-virtual {v3, v5, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v0, v2, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->D:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->D:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/Window;->setDimAmount(F)V

    :cond_2
    iget-object v2, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->D:Landroid/app/Dialog;

    invoke-virtual {v2, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_0
    sget-object v0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->E:Ljava/lang/String;

    invoke-static {v0, v1}, Lrich/c2;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public d()V
    .locals 4

    :try_start_0
    sget-object v0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->E:Ljava/lang/String;

    const-string v1, "loginClickComplete"

    invoke-static {v0, v1}, Lrich/c2;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->z:Lrich/o2;

    .line 1
    iget-object v0, v0, Lrich/o2;->J:Lrich/s2;

    if-eqz v0, :cond_0

    .line 2
    iget-boolean v0, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->C:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->C:Z

    iget-object v0, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->z:Lrich/o2;

    .line 3
    iget-object v0, v0, Lrich/o2;->J:Lrich/s2;

    .line 4
    iget-object v1, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->b:Landroid/content/Context;

    const/4 v2, 0x0

    check-cast v0, Lrich/n3$h;

    .line 5
    iget-object v3, v0, Lrich/n3$h;->a:Lrich/n3;

    .line 6
    iget-object v3, v3, Lrich/n3;->c:Lcom/rich/oauth/core/UIConfigBuild;

    .line 7
    invoke-virtual {v3}, Lcom/rich/oauth/core/UIConfigBuild;->getAuthLoginClickListener()Lcom/rich/oauth/callback/AuthLoginClickListener;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v0, v0, Lrich/n3$h;->a:Lrich/n3;

    .line 8
    iget-object v0, v0, Lrich/n3;->c:Lcom/rich/oauth/core/UIConfigBuild;

    .line 9
    invoke-virtual {v0}, Lcom/rich/oauth/core/UIConfigBuild;->getAuthLoginClickListener()Lcom/rich/oauth/callback/AuthLoginClickListener;

    move-result-object v0

    invoke-interface {v0, v1, v2}, Lcom/rich/oauth/callback/AuthLoginClickListener;->onLoginClickComplete(Landroid/content/Context;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->D:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->D:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final e()V
    .locals 8

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "traceId"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lrich/d2;->c(Ljava/lang/String;)Lrich/l0;

    move-result-object v0

    iput-object v0, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->l:Lrich/l0;

    const/4 v2, 0x0

    if-nez v0, :cond_0

    new-instance v0, Lrich/l0;

    invoke-direct {v0, v2}, Lrich/l0;-><init>(I)V

    iput-object v0, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->l:Lrich/l0;

    :cond_0
    iget-object v0, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->l:Lrich/l0;

    const-string v3, ""

    invoke-virtual {v0, v1, v3}, Lrich/l0;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lrich/d2;->b(Ljava/lang/String;)Lrich/q0;

    move-result-object v0

    iput-object v0, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->u:Lrich/q0;

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->a:Landroid/os/Handler;

    new-instance v0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity$l;

    invoke-direct {v0, p0}, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity$l;-><init>(Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;)V

    iput-object v0, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->t:Lcom/cmic/gen/sdk/view/GenLoginAuthActivity$l;

    iget-object v0, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->l:Lrich/l0;

    const-string v1, "securityphone"

    .line 1
    invoke-virtual {v0, v1, v3}, Lrich/l0;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    iput-object v0, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->n:Ljava/lang/String;

    sget-object v0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->E:Ljava/lang/String;

    const-string v1, "mSecurityPhone value is "

    invoke-static {v1}, Lrich/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->n:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lrich/c2;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->l:Lrich/l0;

    const-string v4, "operatortype"

    invoke-virtual {v1, v4, v3}, Lrich/l0;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "operator value is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lrich/c2;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->z:Lrich/o2;

    .line 3
    iget v0, v0, Lrich/o2;->x0:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-ne v0, v4, :cond_1

    .line 4
    sget-object v0, Lrich/v1;->b:[Ljava/lang/String;

    iput-object v0, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->k:[Ljava/lang/String;

    sget-object v0, Lrich/v1;->e:[Ljava/lang/String;

    aget-object v0, v0, v4

    goto :goto_0

    :cond_1
    if-ne v0, v3, :cond_2

    sget-object v0, Lrich/v1;->c:[Ljava/lang/String;

    iput-object v0, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->k:[Ljava/lang/String;

    sget-object v0, Lrich/v1;->e:[Ljava/lang/String;

    aget-object v0, v0, v3

    goto :goto_0

    :cond_2
    sget-object v0, Lrich/v1;->a:[Ljava/lang/String;

    iput-object v0, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->k:[Ljava/lang/String;

    sget-object v0, Lrich/v1;->e:[Ljava/lang/String;

    aget-object v0, v0, v2

    :goto_0
    const-string v0, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->k:[Ljava/lang/String;

    aget-object v0, v0, v2

    iput-object v0, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->x:Ljava/lang/String;

    const-string v0, "https://wap.cmpassport.com/uni-access/contactCm.html"

    goto :goto_1

    :cond_3
    const-string v0, "3"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->k:[Ljava/lang/String;

    aget-object v0, v0, v4

    iput-object v0, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->x:Ljava/lang/String;

    const-string v0, "https://wap.cmpassport.com/uni-access/contactCt.html"

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->k:[Ljava/lang/String;

    aget-object v0, v0, v3

    iput-object v0, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->x:Ljava/lang/String;

    const-string v0, "https://wap.cmpassport.com/uni-access/contactCu.html"

    :goto_1
    iget-object v1, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->z:Lrich/o2;

    .line 5
    iget v1, v1, Lrich/o2;->w0:I

    const/4 v3, -0x1

    const v5, 0x1030010

    if-ne v1, v3, :cond_5

    move v1, v5

    .line 6
    :cond_5
    new-instance v3, Lrich/x2;

    iget-object v6, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->b:Landroid/content/Context;

    iget-object v7, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->x:Ljava/lang/String;

    invoke-direct {v3, v6, v1, v7, v0}, Lrich/x2;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->d:Lrich/x2;

    new-instance v0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity$c;

    invoke-direct {v0, p0}, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity$c;-><init>(Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;)V

    invoke-virtual {v3, v0}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->i:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->j:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->z:Lrich/o2;

    .line 7
    iget-object v0, v0, Lrich/o2;->U:Ljava/lang/String;

    .line 8
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    new-instance v0, Lrich/x2;

    iget-object v3, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->b:Landroid/content/Context;

    iget-object v6, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->z:Lrich/o2;

    .line 9
    iget-object v7, v6, Lrich/o2;->T:Ljava/lang/String;

    .line 10
    iget-object v6, v6, Lrich/o2;->U:Ljava/lang/String;

    .line 11
    invoke-direct {v0, v3, v1, v7, v6}, Lrich/x2;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->e:Lrich/x2;

    new-instance v3, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity$f;

    invoke-direct {v3, p0}, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity$f;-><init>(Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;)V

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    iget-object v0, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->i:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->e:Lrich/x2;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->j:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->z:Lrich/o2;

    .line 12
    iget-object v3, v3, Lrich/o2;->T:Ljava/lang/String;

    .line 13
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    iget-object v0, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->z:Lrich/o2;

    .line 14
    iget-object v0, v0, Lrich/o2;->W:Ljava/lang/String;

    .line 15
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    new-instance v0, Lrich/x2;

    iget-object v3, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->b:Landroid/content/Context;

    iget-object v6, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->z:Lrich/o2;

    .line 16
    iget-object v7, v6, Lrich/o2;->V:Ljava/lang/String;

    .line 17
    iget-object v6, v6, Lrich/o2;->W:Ljava/lang/String;

    .line 18
    invoke-direct {v0, v3, v1, v7, v6}, Lrich/x2;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->f:Lrich/x2;

    new-instance v3, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity$g;

    invoke-direct {v3, p0}, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity$g;-><init>(Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;)V

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    iget-object v0, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->i:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->f:Lrich/x2;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->j:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->z:Lrich/o2;

    .line 19
    iget-object v3, v3, Lrich/o2;->V:Ljava/lang/String;

    .line 20
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    iget-object v0, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->z:Lrich/o2;

    .line 21
    iget-object v0, v0, Lrich/o2;->Y:Ljava/lang/String;

    .line 22
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    new-instance v0, Lrich/x2;

    iget-object v3, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->b:Landroid/content/Context;

    iget-object v6, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->z:Lrich/o2;

    .line 23
    iget-object v7, v6, Lrich/o2;->X:Ljava/lang/String;

    .line 24
    iget-object v6, v6, Lrich/o2;->Y:Ljava/lang/String;

    .line 25
    invoke-direct {v0, v3, v1, v7, v6}, Lrich/x2;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->g:Lrich/x2;

    new-instance v1, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity$h;

    invoke-direct {v1, p0}, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity$h;-><init>(Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    iget-object v0, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->i:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->g:Lrich/x2;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->j:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->z:Lrich/o2;

    .line 26
    iget-object v1, v1, Lrich/o2;->X:Ljava/lang/String;

    .line 27
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    iget-object v0, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->z:Lrich/o2;

    .line 28
    iget-object v0, v0, Lrich/o2;->a0:Ljava/lang/String;

    .line 29
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    new-instance v0, Lrich/x2;

    iget-object v1, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->b:Landroid/content/Context;

    iget-object v3, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->z:Lrich/o2;

    .line 30
    iget-object v6, v3, Lrich/o2;->Z:Ljava/lang/String;

    .line 31
    iget-object v3, v3, Lrich/o2;->a0:Ljava/lang/String;

    .line 32
    invoke-direct {v0, v1, v5, v6, v3}, Lrich/x2;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->h:Lrich/x2;

    new-instance v1, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity$i;

    invoke-direct {v1, p0}, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity$i;-><init>(Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    iget-object v0, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->i:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->h:Lrich/x2;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->j:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->z:Lrich/o2;

    .line 33
    iget-object v1, v1, Lrich/o2;->Z:Ljava/lang/String;

    .line 34
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    :cond_9
    iget-object v0, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->z:Lrich/o2;

    .line 36
    iget-object v1, v0, Lrich/o2;->S:Ljava/lang/String;

    .line 37
    iput-object v1, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->y:Ljava/lang/String;

    .line 38
    iget-boolean v0, v0, Lrich/o2;->l0:Z

    const-string v1, "\u300a%s\u300b"

    if-eqz v0, :cond_a

    new-array v0, v4, [Ljava/lang/Object;

    .line 39
    iget-object v3, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->x:Ljava/lang/String;

    aput-object v3, v0, v2

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->x:Ljava/lang/String;

    :cond_a
    iget-object v0, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->y:Ljava/lang/String;

    const-string v3, "$$\u8fd0\u8425\u5546\u6761\u6b3e$$"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->y:Ljava/lang/String;

    iget-object v5, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->x:Ljava/lang/String;

    invoke-virtual {v0, v3, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->y:Ljava/lang/String;

    .line 40
    :cond_b
    iget-object v0, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->z:Lrich/o2;

    .line 41
    iget-boolean v0, v0, Lrich/o2;->l0:Z

    if-eqz v0, :cond_c

    move v0, v2

    .line 42
    :goto_2
    iget-object v3, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->j:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_c

    new-array v3, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->j:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v3, v2

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->y:Ljava/lang/String;

    iget-object v6, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->j:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->y:Ljava/lang/String;

    iget-object v5, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->j:Ljava/util/ArrayList;

    invoke-virtual {v5, v0, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_c
    invoke-static {}, Lrich/u2;->a()Lrich/u2;

    move-result-object v0

    new-instance v1, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity$j;

    invoke-direct {v1, p0}, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity$j;-><init>(Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;)V

    .line 43
    iput v4, v0, Lrich/u2;->b:I

    iput-object v1, v0, Lrich/u2;->a:Lrich/u2$a;

    return-void
.end method

.method public final f()V
    .locals 11

    iget-object v0, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->q:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->z:Lrich/o2;

    .line 1
    iget v2, v1, Lrich/o2;->s:I

    const/16 v3, 0xa

    const/16 v4, 0xc

    const/4 v5, -0x1

    const/4 v6, 0x0

    if-gtz v2, :cond_2

    .line 2
    iget v1, v1, Lrich/o2;->t:I

    if-gez v1, :cond_0

    goto :goto_0

    :cond_0
    if-lez v1, :cond_1

    .line 3
    iget v1, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->A:I

    iget-object v2, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->q:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getMeasuredHeight()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->b:Landroid/content/Context;

    iget-object v7, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->z:Lrich/o2;

    .line 4
    iget v7, v7, Lrich/o2;->t:I

    int-to-float v7, v7

    .line 5
    invoke-static {v2, v7}, Lrich/d3;->a(Landroid/content/Context;F)I

    move-result v2

    sub-int/2addr v1, v2

    if-lez v1, :cond_1

    sget-object v1, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->E:Ljava/lang/String;

    const-string v2, "numberField_bottom"

    invoke-static {v1, v2}, Lrich/c2;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v1, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->z:Lrich/o2;

    .line 6
    iget v2, v2, Lrich/o2;->t:I

    int-to-float v2, v2

    .line 7
    invoke-static {v1, v2}, Lrich/d3;->a(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v0, v6, v6, v6, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v3, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_1

    :cond_2
    :goto_0
    invoke-static {v6, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    iget-object v2, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->q:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v1, v1}, Landroid/widget/RelativeLayout;->measure(II)V

    sget-object v1, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->E:Ljava/lang/String;

    const-string v2, "mPhoneLayout.getMeasuredHeight()="

    invoke-static {v2}, Lrich/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v7, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->q:Landroid/widget/RelativeLayout;

    invoke-virtual {v7}, Landroid/widget/RelativeLayout;->getMeasuredHeight()I

    move-result v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lrich/c2;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->z:Lrich/o2;

    .line 8
    iget v2, v2, Lrich/o2;->s:I

    if-lez v2, :cond_3

    .line 9
    iget v2, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->A:I

    iget-object v7, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->q:Landroid/widget/RelativeLayout;

    invoke-virtual {v7}, Landroid/widget/RelativeLayout;->getMeasuredHeight()I

    move-result v7

    sub-int/2addr v2, v7

    iget-object v7, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->b:Landroid/content/Context;

    iget-object v8, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->z:Lrich/o2;

    .line 10
    iget v8, v8, Lrich/o2;->s:I

    int-to-float v8, v8

    .line 11
    invoke-static {v7, v8}, Lrich/d3;->a(Landroid/content/Context;F)I

    move-result v7

    sub-int/2addr v2, v7

    if-lez v2, :cond_3

    const-string v2, "numberField_top"

    invoke-static {v1, v2}, Lrich/c2;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v1, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->z:Lrich/o2;

    .line 12
    iget v2, v2, Lrich/o2;->s:I

    int-to-float v2, v2

    .line 13
    invoke-static {v1, v2}, Lrich/d3;->a(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v0, v6, v1, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_1

    :cond_3
    invoke-virtual {v0, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    :goto_1
    iget-object v1, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->q:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->z:Lrich/o2;

    .line 14
    iget v1, v1, Lrich/o2;->C:I

    .line 15
    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget-object v2, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->z:Lrich/o2;

    .line 16
    iget v2, v2, Lrich/o2;->D:I

    .line 17
    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget-object v7, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->z:Lrich/o2;

    .line 18
    iget v8, v7, Lrich/o2;->E:I

    if-gtz v8, :cond_6

    .line 19
    iget v8, v7, Lrich/o2;->F:I

    if-gez v8, :cond_4

    goto :goto_2

    :cond_4
    if-lez v8, :cond_5

    .line 20
    iget v9, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->A:I

    iget-object v10, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->b:Landroid/content/Context;

    .line 21
    iget v7, v7, Lrich/o2;->B:I

    add-int/2addr v7, v8

    int-to-float v7, v7

    .line 22
    invoke-static {v10, v7}, Lrich/d3;->a(Landroid/content/Context;F)I

    move-result v7

    sub-int/2addr v9, v7

    if-lez v9, :cond_5

    sget-object v7, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->E:Ljava/lang/String;

    const-string v8, "logBtn_bottom"

    invoke-static {v7, v8}, Lrich/c2;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v7, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->b:Landroid/content/Context;

    int-to-float v1, v1

    invoke-static {v7, v1}, Lrich/d3;->a(Landroid/content/Context;F)I

    move-result v1

    iget-object v7, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->b:Landroid/content/Context;

    int-to-float v2, v2

    invoke-static {v7, v2}, Lrich/d3;->a(Landroid/content/Context;F)I

    move-result v2

    iget-object v7, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->b:Landroid/content/Context;

    iget-object v8, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->z:Lrich/o2;

    .line 23
    iget v8, v8, Lrich/o2;->F:I

    int-to-float v8, v8

    .line 24
    invoke-static {v7, v8}, Lrich/d3;->a(Landroid/content/Context;F)I

    move-result v7

    invoke-virtual {v0, v1, v6, v2, v7}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_3

    :cond_5
    invoke-virtual {v0, v3, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v7, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->b:Landroid/content/Context;

    int-to-float v1, v1

    invoke-static {v7, v1}, Lrich/d3;->a(Landroid/content/Context;F)I

    move-result v1

    iget-object v7, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->b:Landroid/content/Context;

    int-to-float v2, v2

    invoke-static {v7, v2}, Lrich/d3;->a(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v0, v1, v6, v2, v6}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_3

    :cond_6
    :goto_2
    iget-object v7, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->z:Lrich/o2;

    .line 25
    iget v8, v7, Lrich/o2;->E:I

    if-lez v8, :cond_7

    .line 26
    iget v9, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->A:I

    iget-object v10, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->b:Landroid/content/Context;

    .line 27
    iget v7, v7, Lrich/o2;->B:I

    add-int/2addr v7, v8

    int-to-float v7, v7

    .line 28
    invoke-static {v10, v7}, Lrich/d3;->a(Landroid/content/Context;F)I

    move-result v7

    sub-int/2addr v9, v7

    if-lez v9, :cond_7

    sget-object v7, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->E:Ljava/lang/String;

    const-string v8, "logBtn_top"

    invoke-static {v7, v8}, Lrich/c2;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v7, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->b:Landroid/content/Context;

    int-to-float v1, v1

    invoke-static {v7, v1}, Lrich/d3;->a(Landroid/content/Context;F)I

    move-result v1

    iget-object v7, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->b:Landroid/content/Context;

    iget-object v8, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->z:Lrich/o2;

    .line 29
    iget v8, v8, Lrich/o2;->E:I

    int-to-float v8, v8

    .line 30
    invoke-static {v7, v8}, Lrich/d3;->a(Landroid/content/Context;F)I

    move-result v7

    iget-object v8, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->b:Landroid/content/Context;

    int-to-float v2, v2

    invoke-static {v8, v2}, Lrich/d3;->a(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v0, v1, v7, v2, v6}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_3

    :cond_7
    invoke-virtual {v0, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v7, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->b:Landroid/content/Context;

    int-to-float v1, v1

    invoke-static {v7, v1}, Lrich/d3;->a(Landroid/content/Context;F)I

    move-result v1

    iget-object v7, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->b:Landroid/content/Context;

    int-to-float v2, v2

    invoke-static {v7, v2}, Lrich/d3;->a(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v0, v1, v6, v2, v6}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    :goto_3
    iget-object v1, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->p:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->z:Lrich/o2;

    .line 31
    iget v2, v1, Lrich/o2;->h0:I

    const/16 v7, 0x1e

    if-ltz v2, :cond_9

    .line 32
    iget v1, v1, Lrich/o2;->P:I

    if-le v1, v7, :cond_8

    goto :goto_4

    :cond_8
    sub-int/2addr v7, v1

    sub-int/2addr v2, v7

    goto :goto_4

    :cond_9
    iget v1, v1, Lrich/o2;->P:I

    if-le v1, v7, :cond_a

    move v2, v6

    goto :goto_4

    :cond_a
    sub-int/2addr v7, v1

    neg-int v2, v7

    .line 33
    :goto_4
    iget-object v1, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->z:Lrich/o2;

    .line 34
    iget v1, v1, Lrich/o2;->i0:I

    .line 35
    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v6, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    iget-object v8, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->p:Landroid/widget/RelativeLayout;

    invoke-virtual {v8, v7, v7}, Landroid/widget/RelativeLayout;->measure(II)V

    iget-object v7, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->z:Lrich/o2;

    .line 36
    iget v8, v7, Lrich/o2;->j0:I

    const-string v9, "privacy_bottom="

    if-gtz v8, :cond_d

    .line 37
    iget v7, v7, Lrich/o2;->k0:I

    if-gez v7, :cond_b

    goto :goto_5

    :cond_b
    if-lez v7, :cond_c

    .line 38
    iget v7, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->A:I

    iget-object v8, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->p:Landroid/widget/RelativeLayout;

    invoke-virtual {v8}, Landroid/widget/RelativeLayout;->getMeasuredHeight()I

    move-result v8

    sub-int/2addr v7, v8

    iget-object v8, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->b:Landroid/content/Context;

    iget-object v10, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->z:Lrich/o2;

    .line 39
    iget v10, v10, Lrich/o2;->k0:I

    int-to-float v10, v10

    .line 40
    invoke-static {v8, v10}, Lrich/d3;->a(Landroid/content/Context;F)I

    move-result v8

    sub-int/2addr v7, v8

    if-lez v7, :cond_c

    sget-object v3, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->E:Ljava/lang/String;

    invoke-static {v9}, Lrich/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->p:Landroid/widget/RelativeLayout;

    invoke-virtual {v8}, Landroid/widget/RelativeLayout;->getMeasuredHeight()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Lrich/c2;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v3, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->b:Landroid/content/Context;

    int-to-float v2, v2

    invoke-static {v3, v2}, Lrich/d3;->a(Landroid/content/Context;F)I

    move-result v2

    iget-object v3, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->b:Landroid/content/Context;

    int-to-float v1, v1

    invoke-static {v3, v1}, Lrich/d3;->a(Landroid/content/Context;F)I

    move-result v1

    iget-object v3, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->b:Landroid/content/Context;

    iget-object v4, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->z:Lrich/o2;

    .line 41
    iget v4, v4, Lrich/o2;->k0:I

    int-to-float v4, v4

    .line 42
    invoke-static {v3, v4}, Lrich/d3;->a(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {v0, v2, v6, v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto/16 :goto_6

    :cond_c
    invoke-virtual {v0, v3, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v3, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->b:Landroid/content/Context;

    int-to-float v2, v2

    invoke-static {v3, v2}, Lrich/d3;->a(Landroid/content/Context;F)I

    move-result v2

    iget-object v3, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->b:Landroid/content/Context;

    int-to-float v1, v1

    invoke-static {v3, v1}, Lrich/d3;->a(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v0, v2, v6, v1, v6}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    sget-object v1, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->E:Ljava/lang/String;

    const-string v2, "privacy_top"

    invoke-static {v1, v2}, Lrich/c2;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_d
    :goto_5
    iget-object v7, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->z:Lrich/o2;

    .line 43
    iget v7, v7, Lrich/o2;->j0:I

    if-lez v7, :cond_e

    .line 44
    iget v7, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->A:I

    iget-object v8, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->p:Landroid/widget/RelativeLayout;

    invoke-virtual {v8}, Landroid/widget/RelativeLayout;->getMeasuredHeight()I

    move-result v8

    sub-int/2addr v7, v8

    iget-object v8, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->b:Landroid/content/Context;

    iget-object v10, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->z:Lrich/o2;

    .line 45
    iget v10, v10, Lrich/o2;->j0:I

    int-to-float v10, v10

    .line 46
    invoke-static {v8, v10}, Lrich/d3;->a(Landroid/content/Context;F)I

    move-result v8

    sub-int/2addr v7, v8

    if-lez v7, :cond_e

    sget-object v4, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->E:Ljava/lang/String;

    const-string v7, "privacy_top = "

    invoke-static {v7}, Lrich/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->p:Landroid/widget/RelativeLayout;

    invoke-virtual {v8}, Landroid/widget/RelativeLayout;->getMeasuredHeight()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lrich/c2;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v3, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->b:Landroid/content/Context;

    int-to-float v2, v2

    invoke-static {v3, v2}, Lrich/d3;->a(Landroid/content/Context;F)I

    move-result v2

    iget-object v3, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->b:Landroid/content/Context;

    iget-object v4, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->z:Lrich/o2;

    .line 47
    iget v4, v4, Lrich/o2;->j0:I

    int-to-float v4, v4

    .line 48
    invoke-static {v3, v4}, Lrich/d3;->a(Landroid/content/Context;F)I

    move-result v3

    iget-object v4, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->b:Landroid/content/Context;

    int-to-float v1, v1

    invoke-static {v4, v1}, Lrich/d3;->a(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v0, v2, v3, v1, v6}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_6

    :cond_e
    sget-object v3, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->E:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Lrich/c2;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v3, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->b:Landroid/content/Context;

    int-to-float v2, v2

    invoke-static {v3, v2}, Lrich/d3;->a(Landroid/content/Context;F)I

    move-result v2

    iget-object v3, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->b:Landroid/content/Context;

    int-to-float v1, v1

    invoke-static {v3, v1}, Lrich/d3;->a(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v0, v2, v6, v1, v6}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    :goto_6
    iget-object v1, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->p:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final g()V
    .locals 7

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v2, 0x8000000

    invoke-virtual {v0, v2}, Landroid/view/Window;->addFlags(I)V

    iget-object v0, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->z:Lrich/o2;

    .line 1
    iget v0, v0, Lrich/o2;->b:I

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v2, -0x80000000

    invoke-virtual {v0, v2}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-object v1, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->z:Lrich/o2;

    .line 3
    iget v1, v1, Lrich/o2;->b:I

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-object v1, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->z:Lrich/o2;

    .line 5
    iget v1, v1, Lrich/o2;->b:I

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/Window;->setNavigationBarColor(I)V

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    const/4 v2, 0x0

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->z:Lrich/o2;

    .line 7
    iget-boolean v0, v0, Lrich/o2;->c:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x2000

    goto :goto_0

    :cond_1
    move v0, v2

    .line 8
    :goto_0
    iget-object v1, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->z:Lrich/o2;

    .line 9
    iget-boolean v1, v1, Lrich/o2;->k:Z

    if-eqz v1, :cond_2

    or-int/lit16 v0, v0, 0x1002

    .line 10
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v1, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->z:Lrich/o2;

    .line 11
    iget-object v4, v1, Lrich/o2;->d:Landroid/view/View;

    if-eqz v4, :cond_4

    .line 12
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_3

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_3
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 13
    :cond_4
    iget v1, v1, Lrich/o2;->e:I

    if-eq v1, v3, :cond_5

    .line 14
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    iget-object v3, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->z:Lrich/o2;

    .line 15
    iget v3, v3, Lrich/o2;->e:I

    .line 16
    invoke-virtual {v1, v3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    :cond_5
    :goto_1
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v1

    iget-object v3, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->b:Landroid/content/Context;

    const-string v4, "window"

    .line 17
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    new-instance v5, Landroid/util/DisplayMetrics;

    invoke-direct {v5}, Landroid/util/DisplayMetrics;-><init>()V

    if-eqz v3, :cond_6

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    :cond_6
    iget v3, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 18
    iput v3, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->A:I

    iget-object v3, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->b:Landroid/content/Context;

    .line 19
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    new-instance v4, Landroid/util/DisplayMetrics;

    invoke-direct {v4}, Landroid/util/DisplayMetrics;-><init>()V

    if-eqz v3, :cond_7

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    :cond_7
    iget v3, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 20
    iput v3, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->B:I

    const/4 v4, 0x1

    if-ne v1, v4, :cond_8

    iget v5, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->A:I

    if-gt v3, v5, :cond_9

    :cond_8
    if-nez v1, :cond_a

    iget v5, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->A:I

    if-ge v3, v5, :cond_a

    :cond_9
    iget v5, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->A:I

    iput v5, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->B:I

    iput v3, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->A:I

    :cond_a
    sget-object v3, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->E:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "orientation = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "--screenWidth = "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->B:I

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "--screenHeight = "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->A:I

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lrich/c2;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget-object v3, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->z:Lrich/o2;

    .line 21
    iget v3, v3, Lrich/o2;->q0:I

    if-eqz v3, :cond_c

    .line 22
    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    iget-object v3, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->b:Landroid/content/Context;

    iget-object v5, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->z:Lrich/o2;

    .line 23
    iget v5, v5, Lrich/o2;->q0:I

    int-to-float v5, v5

    .line 24
    invoke-static {v3, v5}, Lrich/d3;->a(Landroid/content/Context;F)I

    move-result v3

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    iget-object v3, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->b:Landroid/content/Context;

    iget-object v5, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->z:Lrich/o2;

    .line 25
    iget v5, v5, Lrich/o2;->r0:I

    int-to-float v5, v5

    .line 26
    invoke-static {v3, v5}, Lrich/d3;->a(Landroid/content/Context;F)I

    move-result v3

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    iget v3, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v3, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->B:I

    iget v3, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    iput v3, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->A:I

    iget-object v3, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->b:Landroid/content/Context;

    iget-object v5, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->z:Lrich/o2;

    .line 27
    iget v5, v5, Lrich/o2;->s0:I

    int-to-float v5, v5

    .line 28
    invoke-static {v3, v5}, Lrich/d3;->a(Landroid/content/Context;F)I

    move-result v3

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v3, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->z:Lrich/o2;

    .line 29
    iget v5, v3, Lrich/o2;->u0:I

    if-ne v5, v4, :cond_b

    .line 30
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v5, 0x50

    invoke-virtual {v3, v5}, Landroid/view/Window;->setGravity(I)V

    goto :goto_2

    :cond_b
    iget-object v5, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->b:Landroid/content/Context;

    .line 31
    iget v3, v3, Lrich/o2;->t0:I

    int-to-float v3, v3

    .line 32
    invoke-static {v5, v3}, Lrich/d3;->a(Landroid/content/Context;F)I

    move-result v3

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    :goto_2
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_c
    iget-object v1, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->z:Lrich/o2;

    .line 33
    iget-boolean v1, v1, Lrich/o2;->y0:Z

    .line 34
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setFitsSystemWindows(Z)V

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setClipToPadding(Z)V

    :try_start_0
    invoke-virtual {p0}, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->h()V

    iget-object v1, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->q:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->i()Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->j()Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->f()V

    iget-object v0, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->w:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->o:Landroid/widget/CheckBox;

    new-instance v1, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity$k;

    invoke-direct {v1, p0}, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity$k;-><init>(Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 35
    iget-object v0, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    iget-object v0, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->o:Landroid/widget/CheckBox;

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setClickable(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 36
    :try_start_1
    iget-object v0, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->z:Lrich/o2;

    .line 37
    iget-boolean v0, v0, Lrich/o2;->R:Z

    if-eqz v0, :cond_d

    .line 38
    iget-object v0, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->o:Landroid/widget/CheckBox;

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->o:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->z:Lrich/o2;

    .line 39
    iget-object v1, v1, Lrich/o2;->N:Ljava/lang/String;

    .line 40
    invoke-static {p0, v1}, Lrich/b0;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    iget-object v0, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->o:Landroid/widget/CheckBox;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u590d\u9009\u6846 \u5df2\u52fe\u9009 "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->y:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_d
    iget-object v0, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->o:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->m()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    iget-object v0, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->o:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->z:Lrich/o2;

    .line 41
    iget-object v1, v1, Lrich/o2;->O:Ljava/lang/String;

    .line 42
    invoke-static {p0, v1}, Lrich/b0;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->o:Landroid/widget/CheckBox;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u590d\u9009\u6846 \u8bf7\u53cc\u51fb\u52fe\u9009 "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->y:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    :goto_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 42
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setContentDescription(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :catch_0
    :try_start_2
    iget-object v0, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->o:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    :catch_1
    move-exception v0

    sget-object v1, Lrich/y1;->D:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    sget-object v1, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->E:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lrich/c2;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->l:Lrich/l0;

    const/4 v1, 0x0

    const-string v2, "200040"

    const-string v3, "UI\u8d44\u6e90\u52a0\u8f7d\u5f02\u5e38"

    invoke-virtual {p0, v2, v3, v0, v1}, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->a(Ljava/lang/String;Ljava/lang/String;Lrich/l0;Lorg/json/JSONObject;)V

    :goto_4
    return-void
.end method

.method public final h()V
    .locals 7

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->q:Landroid/widget/RelativeLayout;

    const/16 v1, 0x3333

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setId(I)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->q:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xf

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v2, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->z:Lrich/o2;

    .line 1
    iget v2, v2, Lrich/o2;->r:I

    const/4 v3, 0x0

    if-nez v2, :cond_0

    const/16 v2, 0xd

    .line 2
    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_1

    :cond_0
    if-lez v2, :cond_2

    iget v4, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->B:I

    invoke-virtual {v0}, Landroid/widget/TextView;->getWidth()I

    move-result v5

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->b:Landroid/content/Context;

    int-to-float v2, v2

    invoke-static {v5, v2}, Lrich/d3;->a(Landroid/content/Context;F)I

    move-result v5

    sub-int/2addr v4, v5

    if-lez v4, :cond_1

    iget-object v4, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->b:Landroid/content/Context;

    invoke-static {v4, v2}, Lrich/d3;->a(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v1, v2, v3, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_1

    :cond_1
    sget-object v2, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->E:Ljava/lang/String;

    const-string v4, "RelativeLayout.ALIGN_PARENT_RIGHT"

    invoke-static {v2, v4}, Lrich/c2;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0xb

    goto :goto_0

    :cond_2
    :goto_1
    const/4 v2, 0x2

    :try_start_0
    iget-object v4, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->z:Lrich/o2;

    .line 3
    iget v4, v4, Lrich/o2;->o:I

    int-to-float v4, v4

    .line 4
    invoke-virtual {v0, v2, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v4, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->n:Ljava/lang/String;

    const-string v5, "****"

    const-string v6, "\u661f\u661f\u661f\u661f"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "(.{1})"

    const-string v6, "$1 "

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    const/high16 v4, 0x41900000    # 18.0f

    invoke-virtual {v0, v2, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    :goto_2
    iget-object v2, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->n:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->z:Lrich/o2;

    .line 5
    iget-boolean v2, v2, Lrich/o2;->p:Z

    if-eqz v2, :cond_3

    .line 6
    sget-object v2, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_3
    const/16 v2, 0x7777

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setId(I)V

    iget-object v2, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->q:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :try_start_1
    iget-object v1, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->z:Lrich/o2;

    .line 7
    iget v1, v1, Lrich/o2;->q:I

    .line 8
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    const v1, -0xcccccd

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_3
    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iget-object v1, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->q:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0, v0}, Landroid/widget/RelativeLayout;->measure(II)V

    sget-object v0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->E:Ljava/lang/String;

    const-string v1, "mPhoneLayout.getMeasuredHeight()="

    invoke-static {v1}, Lrich/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->q:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lrich/c2;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final i()Landroid/widget/RelativeLayout;
    .locals 5

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->c:Landroid/widget/RelativeLayout;

    const/16 v1, 0x4444

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setId(I)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->z:Lrich/o2;

    .line 1
    iget v2, v2, Lrich/o2;->A:I

    int-to-float v2, v2

    .line 2
    invoke-static {v1, v2}, Lrich/d3;->a(Landroid/content/Context;F)I

    move-result v1

    iget-object v2, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->b:Landroid/content/Context;

    iget-object v3, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->z:Lrich/o2;

    .line 3
    iget v3, v3, Lrich/o2;->B:I

    int-to-float v3, v3

    .line 4
    invoke-static {v2, v3}, Lrich/d3;->a(Landroid/content/Context;F)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->z:Lrich/o2;

    .line 5
    iget v1, v1, Lrich/o2;->w:I

    int-to-float v1, v1

    const/4 v2, 0x2

    .line 6
    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v1, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0xd

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->z:Lrich/o2;

    .line 7
    iget-boolean v1, v1, Lrich/o2;->x:Z

    if-eqz v1, :cond_0

    .line 8
    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_0
    iget-object v1, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->z:Lrich/o2;

    .line 9
    iget-boolean v3, v1, Lrich/o2;->v:Z

    if-eqz v3, :cond_3

    iget v3, v1, Lrich/o2;->x0:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    const-string v2, "\u672c\u6a5f\u865f\u78bc\u767b\u9304"

    goto :goto_0

    :cond_1
    if-ne v3, v2, :cond_2

    const-string v2, "Login"

    goto :goto_0

    :cond_2
    iget-object v2, v1, Lrich/o2;->u:Ljava/lang/String;

    :goto_0
    iput-object v2, v1, Lrich/o2;->u:Ljava/lang/String;

    :cond_3
    iget-object v1, v1, Lrich/o2;->u:Ljava/lang/String;

    .line 10
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :try_start_0
    iget-object v1, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->z:Lrich/o2;

    .line 11
    iget v1, v1, Lrich/o2;->y:I

    .line 12
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_1
    :try_start_1
    iget-object v0, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->c:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->z:Lrich/o2;

    .line 13
    iget-object v2, v2, Lrich/o2;->z:Ljava/lang/String;

    .line 14
    invoke-static {v1, v2}, Lrich/b0;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v0, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->c:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->b:Landroid/content/Context;

    const-string v2, "umcsdk_login_btn_bg"

    invoke-static {v1, v2}, Lrich/b0;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    :goto_2
    iget-object v0, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->c:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public final j()Landroid/widget/RelativeLayout;
    .locals 17

    move-object/from16 v1, p0

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->p:Landroid/widget/RelativeLayout;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setHorizontalGravity(I)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v0, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v5, v1, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->p:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, v1, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->z:Lrich/o2;

    .line 1
    iget v5, v0, Lrich/o2;->P:I

    .line 2
    iget v0, v0, Lrich/o2;->Q:I

    .line 3
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v7, v1, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->b:Landroid/content/Context;

    const/16 v8, 0x1e

    invoke-static {v5, v8}, Ljava/lang/Math;->max(II)I

    move-result v9

    int-to-float v9, v9

    invoke-static {v7, v9}, Lrich/d3;->a(Landroid/content/Context;F)I

    move-result v7

    iget-object v9, v1, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->b:Landroid/content/Context;

    invoke-static {v0, v8}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    invoke-static {v9, v0}, Lrich/d3;->a(Landroid/content/Context;F)I

    move-result v0

    invoke-direct {v6, v7, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v0, v1, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->z:Lrich/o2;

    .line 4
    iget v0, v0, Lrich/o2;->g0:I

    const/16 v7, 0xf

    if-ne v0, v2, :cond_0

    .line 5
    invoke-virtual {v6, v7, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    :cond_0
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->w:Landroid/widget/RelativeLayout;

    const v9, 0x8888

    invoke-virtual {v0, v9}, Landroid/widget/RelativeLayout;->setId(I)V

    iget-object v0, v1, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->w:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/CheckBox;

    invoke-direct {v0, v1}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->o:Landroid/widget/CheckBox;

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v10, v1, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->b:Landroid/content/Context;

    iget-object v11, v1, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->z:Lrich/o2;

    .line 6
    iget v11, v11, Lrich/o2;->P:I

    int-to-float v11, v11

    .line 7
    invoke-static {v10, v11}, Lrich/d3;->a(Landroid/content/Context;F)I

    move-result v10

    iget-object v11, v1, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->b:Landroid/content/Context;

    iget-object v12, v1, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->z:Lrich/o2;

    .line 8
    iget v12, v12, Lrich/o2;->Q:I

    int-to-float v12, v12

    .line 9
    invoke-static {v11, v12}, Lrich/d3;->a(Landroid/content/Context;F)I

    move-result v11

    invoke-direct {v0, v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v10, v1, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->b:Landroid/content/Context;

    if-le v5, v8, :cond_1

    const/4 v5, 0x0

    goto :goto_0

    :cond_1
    sub-int/2addr v8, v5

    int-to-float v5, v8

    :goto_0
    invoke-static {v10, v5}, Lrich/d3;->a(Landroid/content/Context;F)I

    move-result v5

    invoke-virtual {v0, v5, v6, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    const/16 v5, 0xb

    invoke-virtual {v0, v5, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v5, v1, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->z:Lrich/o2;

    .line 10
    iget v5, v5, Lrich/o2;->g0:I

    if-ne v5, v2, :cond_2

    .line 11
    invoke-virtual {v0, v7, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    :cond_2
    iget-object v3, v1, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->o:Landroid/widget/CheckBox;

    invoke-virtual {v3, v0}, Landroid/widget/CheckBox;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, v1, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->w:Landroid/widget/RelativeLayout;

    iget-object v3, v1, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->o:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    iget-object v0, v1, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->p:Landroid/widget/RelativeLayout;

    iget-object v3, v1, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->w:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iget-object v0, v1, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->z:Lrich/o2;

    .line 12
    iget v0, v0, Lrich/o2;->b0:I

    int-to-float v0, v0

    const/4 v5, 0x2

    .line 13
    invoke-virtual {v3, v5, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v4, v1, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->b:Landroid/content/Context;

    const/high16 v7, 0x40a00000    # 5.0f

    invoke-static {v4, v7}, Lrich/d3;->a(Landroid/content/Context;F)I

    move-result v4

    iget-object v8, v1, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->b:Landroid/content/Context;

    invoke-static {v8, v7}, Lrich/d3;->a(Landroid/content/Context;F)I

    move-result v7

    invoke-virtual {v0, v4, v6, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v0, v2, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, v1, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->p:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    iget-object v0, v1, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->z:Lrich/o2;

    .line 14
    iget v0, v0, Lrich/o2;->d0:I

    .line 15
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, v1, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->y:Ljava/lang/String;

    iget-object v4, v1, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->x:Ljava/lang/String;

    iget-object v7, v1, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->d:Lrich/x2;

    iget-object v8, v1, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->i:Ljava/util/ArrayList;

    iget-object v9, v1, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->j:Ljava/util/ArrayList;

    const-string v10, "getClauseSpannableString"

    .line 16
    invoke-static {v10, v0}, Lrich/c2;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v10, Landroid/text/SpannableString;

    invoke-direct {v10, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    :try_start_0
    new-instance v11, Lrich/y2;

    invoke-direct {v11, v1, v7}, Lrich/y2;-><init>(Landroid/content/Context;Lrich/x2;)V

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lt v7, v2, :cond_3

    new-instance v7, Lrich/z2;

    invoke-direct {v7, v1, v8}, Lrich/z2;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    goto :goto_1

    :cond_3
    const/4 v7, 0x0

    :goto_1
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-lt v13, v5, :cond_4

    new-instance v13, Lrich/a3;

    invoke-direct {v13, v1, v8}, Lrich/a3;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    goto :goto_2

    :cond_4
    const/4 v13, 0x0

    :goto_2
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v14

    const/4 v15, 0x3

    if-lt v14, v15, :cond_5

    new-instance v14, Lrich/b3;

    invoke-direct {v14, v1, v8}, Lrich/b3;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    goto :goto_3

    :cond_5
    const/4 v14, 0x0

    :goto_3
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v12

    const/4 v15, 0x4

    if-ne v12, v15, :cond_6

    new-instance v12, Lrich/c3;

    invoke-direct {v12, v1, v8}, Lrich/c3;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    goto :goto_4

    :cond_6
    const/4 v12, 0x0

    :goto_4
    invoke-static/range {p0 .. p0}, Lrich/p0;->b(Landroid/content/Context;)Lrich/p0;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lrich/p0;->c()Lrich/o2;

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v15

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v15

    const/16 v5, 0x22

    invoke-virtual {v10, v11, v15, v4, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v4, v2, :cond_7

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v11

    invoke-virtual {v10, v7, v11, v4, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_5

    :cond_7
    move v11, v6

    :goto_5
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v7, 0x2

    if-lt v4, v7, :cond_8

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v11, v4

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v11

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v11

    invoke-virtual {v10, v13, v11, v4, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :cond_8
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v7, 0x3

    if-lt v4, v7, :cond_9

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v11

    const/4 v4, 0x2

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v0, v7, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v2

    invoke-virtual {v10, v14, v2, v4, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :cond_9
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v4, 0x4

    if-ne v2, v4, :cond_a

    const/4 v2, 0x2

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v11, v2

    const/4 v2, 0x3

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {v10, v12, v0, v2, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 17
    :cond_a
    :goto_6
    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v0, 0x41000000    # 8.0f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v3, v0, v2}, Landroid/widget/TextView;->setLineSpacing(FF)V

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    iget-object v0, v1, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->z:Lrich/o2;

    .line 18
    iget-boolean v0, v0, Lrich/o2;->c0:Z

    if-eqz v0, :cond_b

    .line 19
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_b
    iget-object v0, v1, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->z:Lrich/o2;

    .line 20
    iget-boolean v0, v0, Lrich/o2;->f0:Z

    if-eqz v0, :cond_c

    const/16 v0, 0x11

    .line 21
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setGravity(I)V

    :cond_c
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x106000d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setHighlightColor(I)V

    iget-object v0, v1, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->p:Landroid/widget/RelativeLayout;

    new-instance v2, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity$a;

    invoke-direct {v2, v1}, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity$a;-><init>(Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity$b;

    invoke-direct {v0, v1}, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity$b;-><init>(Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;)V

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    iget-object v0, v1, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->o:Landroid/widget/CheckBox;

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    :try_start_1
    iget-object v0, v1, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->o:Landroid/widget/CheckBox;

    iget-object v2, v1, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->z:Lrich/o2;

    .line 22
    iget-object v2, v2, Lrich/o2;->O:Ljava/lang/String;

    .line 23
    invoke-static {v1, v2}, Lrich/b0;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setBackgroundResource(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_7

    :catch_1
    iget-object v0, v1, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->o:Landroid/widget/CheckBox;

    const-string v2, "umcsdk_uncheck_image"

    invoke-static {v1, v2}, Lrich/b0;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setBackgroundResource(I)V

    :goto_7
    iget-object v0, v1, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->p:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public final k()V
    .locals 2

    iget-object v0, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->c:Landroid/widget/RelativeLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    iget-object v0, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->o:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setClickable(Z)V

    return-void
.end method

.method public final l()V
    .locals 9

    const-string v0, "traceId"

    :try_start_0
    iget v1, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->s:I

    const/4 v2, 0x5

    if-lt v1, v2, :cond_0

    iget-object v0, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->b:Landroid/content/Context;

    const-string v1, "\u7f51\u7edc\u4e0d\u7a33\u5b9a,\u8bf7\u8fd4\u56de\u91cd\u8bd5\u5176\u4ed6\u767b\u5f55\u65b9\u5f0f"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    array-length v3, v1

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_2

    aget-object v6, v1, v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v7, "stack"

    :try_start_1
    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lrich/c2;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string v7, "com.cmic.gen.sdk.activity"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ";"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->l:Lrich/l0;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v2, "loginTime"

    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v1, v2, v5, v6}, Lrich/l0;->a(Ljava/lang/String;J)V

    iget-object v1, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->l:Lrich/l0;

    const-string v2, ""

    invoke-virtual {v1, v0, v2}, Lrich/l0;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {v1}, Lrich/d2;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lrich/l2;->c()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->l:Lrich/l0;

    invoke-virtual {v2, v0, v1}, Lrich/l0;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->u:Lrich/q0;

    .line 1
    sget-object v2, Lrich/d2;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    :cond_3
    invoke-virtual {p0}, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->c()V

    .line 3
    iget-object v0, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    iget-object v0, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->o:Landroid/widget/CheckBox;

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setClickable(Z)V

    .line 4
    new-instance v0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity$n;

    iget-object v1, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->l:Lrich/l0;

    invoke-direct {v0, p0, v1}, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity$n;-><init>(Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;Lrich/l0;)V

    iget-object v1, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->a:Landroid/os/Handler;

    invoke-static {p0}, Lrich/p0;->b(Landroid/content/Context;)Lrich/p0;

    move-result-object v2

    .line 5
    iget-wide v2, v2, Lrich/t0;->c:J

    .line 6
    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    new-instance v1, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity$m;

    invoke-direct {v1, p0, v0}, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity$m;-><init>(Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;Lcom/cmic/gen/sdk/view/GenLoginAuthActivity$n;)V

    invoke-static {v1}, Lrich/k2;->a(Lrich/k2$a;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public final m()Z
    .locals 2

    iget-object v0, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->z:Lrich/o2;

    invoke-virtual {v0}, Lrich/o2;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->z:Lrich/o2;

    .line 1
    iget-object v1, v0, Lrich/o2;->K:Lrich/q2;

    if-nez v1, :cond_1

    .line 2
    iget-object v1, v0, Lrich/o2;->A0:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 3
    iget-object v0, v0, Lrich/o2;->M:Lrich/n2;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/16 v0, 0x4444

    const/4 v1, 0x1

    if-eq p1, v0, :cond_3

    const/16 v0, 0x6666

    if-eq p1, v0, :cond_2

    const v0, 0x8888

    if-eq p1, v0, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object p1, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->o:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->o:Landroid/widget/CheckBox;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_0

    :cond_1
    iget-object p1, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->o:Landroid/widget/CheckBox;

    invoke-virtual {p1, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->b()V

    goto/16 :goto_0

    :cond_3
    iget-object p1, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->o:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    if-nez p1, :cond_8

    iget-object p1, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->z:Lrich/o2;

    .line 1
    iget-object p1, p1, Lrich/o2;->M:Lrich/n2;

    if-eqz p1, :cond_5

    const-string p1, "PrivacyNotSelectedCustom"

    .line 2
    invoke-static {p1}, Lrich/w1;->a(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->z:Lrich/o2;

    .line 3
    iget-object p1, p1, Lrich/o2;->M:Lrich/n2;

    .line 4
    iget-object v0, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->b:Landroid/content/Context;

    new-instance v1, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity$d;

    invoke-direct {v1, p0}, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity$d;-><init>(Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;)V

    check-cast p1, Lrich/n3$k;

    .line 5
    iget-object v2, p1, Lrich/n3$k;->a:Lrich/n3;

    .line 6
    iget-object v2, v2, Lrich/n3;->c:Lcom/rich/oauth/core/UIConfigBuild;

    .line 7
    invoke-virtual {v2}, Lcom/rich/oauth/core/UIConfigBuild;->getUnCheckDialogAuthLoginListener()Lcom/rich/oauth/callback/UnCheckDialogAuthLoginListener;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object p1, p1, Lrich/n3$k;->a:Lrich/n3;

    .line 8
    iget-object p1, p1, Lrich/n3;->c:Lcom/rich/oauth/core/UIConfigBuild;

    .line 9
    invoke-virtual {p1}, Lcom/rich/oauth/core/UIConfigBuild;->getUnCheckDialogAuthLoginListener()Lcom/rich/oauth/callback/UnCheckDialogAuthLoginListener;

    move-result-object p1

    invoke-interface {p1, v0, v1}, Lcom/rich/oauth/callback/UnCheckDialogAuthLoginListener;->onUncheckedAuthLoginListener(Landroid/content/Context;Lcom/cmic/gen/sdk/view/AuthLoginCallBack;)V

    :cond_4
    return-void

    .line 10
    :cond_5
    iget-object p1, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->z:Lrich/o2;

    .line 11
    iget-object p1, p1, Lrich/o2;->A0:Ljava/lang/String;

    if-eqz p1, :cond_6

    const-string p1, "PrivacyNotSelectedShake"

    .line 12
    invoke-static {p1}, Lrich/w1;->a(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->b:Landroid/content/Context;

    iget-object v0, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->z:Lrich/o2;

    .line 13
    iget-object v0, v0, Lrich/o2;->A0:Ljava/lang/String;

    .line 14
    invoke-static {p1, v0}, Lrich/b0;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    iget-object v0, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->p:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    return-void

    :cond_6
    iget-object p1, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->z:Lrich/o2;

    .line 15
    iget-object p1, p1, Lrich/o2;->K:Lrich/q2;

    if-eqz p1, :cond_7

    const-string p1, "PrivacyNotSelectedPopup"

    .line 16
    invoke-static {p1}, Lrich/w1;->a(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->z:Lrich/o2;

    .line 17
    iget-object p1, p1, Lrich/o2;->K:Lrich/q2;

    .line 18
    iget-object v0, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->b:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lrich/q2;->a(Landroid/content/Context;Lorg/json/JSONObject;)V

    return-void

    :cond_7
    iget-object p1, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->z:Lrich/o2;

    invoke-virtual {p1}, Lrich/o2;->a()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_8

    const-string p1, "PrivacyNotSelectedToast"

    invoke-static {p1}, Lrich/w1;->a(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->b:Landroid/content/Context;

    iget-object v0, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->z:Lrich/o2;

    invoke-virtual {v0}, Lrich/o2;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_8
    iget p1, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->s:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->s:I

    invoke-virtual {p0}, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->l()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    sget-object v0, Lrich/y1;->D:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    iput-object p0, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->b:Landroid/content/Context;

    invoke-static {p0}, Lrich/p0;->b(Landroid/content/Context;)Lrich/p0;

    move-result-object p1

    invoke-virtual {p1}, Lrich/p0;->c()Lrich/o2;

    move-result-object p1

    iput-object p1, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->z:Lrich/o2;

    if-eqz p1, :cond_2

    .line 1
    iget p1, p1, Lrich/o2;->v0:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    .line 2
    iget-object p1, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->z:Lrich/o2;

    .line 3
    iget p1, p1, Lrich/o2;->v0:I

    .line 4
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTheme(I)V

    :cond_1
    iget-object p1, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->z:Lrich/o2;

    .line 5
    iget-object p1, p1, Lrich/o2;->m0:Ljava/lang/String;

    if-eqz p1, :cond_2

    .line 6
    iget-object p1, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->z:Lrich/o2;

    .line 7
    iget-object p1, p1, Lrich/o2;->n0:Ljava/lang/String;

    if-eqz p1, :cond_2

    .line 8
    iget-object p1, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->z:Lrich/o2;

    .line 9
    iget-object p1, p1, Lrich/o2;->m0:Ljava/lang/String;

    .line 10
    invoke-static {p0, p1}, Lrich/b0;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    iget-object v0, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->z:Lrich/o2;

    .line 11
    iget-object v0, v0, Lrich/o2;->n0:Ljava/lang/String;

    .line 12
    invoke-static {p0, v0}, Lrich/b0;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_2
    const-string p1, "authPageIn"

    invoke-static {p1}, Lrich/w1;->a(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->r:J

    invoke-static {p0}, Lrich/r0;->a(Landroid/content/Context;)Lrich/r0;

    move-result-object p1

    iput-object p1, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->m:Lrich/r0;

    invoke-virtual {p0}, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->e()V

    invoke-virtual {p0}, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->g()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    iget-object v0, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->l:Lrich/l0;

    if-nez v0, :cond_3

    new-instance v0, Lrich/l0;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lrich/l0;-><init>(I)V

    iput-object v0, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->l:Lrich/l0;

    :cond_3
    iget-object v0, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->l:Lrich/l0;

    invoke-virtual {v0}, Lrich/l0;->a()Lrich/x1;

    move-result-object v0

    iget-object v0, v0, Lrich/x1;->A:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->E:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lrich/c2;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    iget-object p1, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->l:Lrich/l0;

    const/4 v0, 0x0

    const-string v1, "200025"

    const-string v2, "\u53d1\u751f\u672a\u77e5\u9519\u8bef"

    invoke-virtual {p0, v1, v2, p1, v0}, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->a(Ljava/lang/String;Ljava/lang/String;Lrich/l0;Lorg/json/JSONObject;)V

    :goto_0
    return-void
.end method

.method public onDestroy()V
    .locals 8

    const-string v0, "authPrivacyState"

    :try_start_0
    iget-object v1, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->a:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "timeOnAuthPage"

    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->r:J

    sub-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1
    sget-object v4, Lrich/w1;->a:Lrich/w1$b;

    invoke-virtual {v4, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v1, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->o:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    sget-object v1, Lrich/w1;->a:Lrich/w1$b;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v3, "1"

    goto :goto_0

    .line 4
    :cond_0
    :try_start_2
    sget-object v1, Lrich/w1;->a:Lrich/w1$b;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const-string v3, "0"

    .line 3
    :goto_0
    :try_start_3
    invoke-virtual {v1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v0, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->l:Lrich/l0;

    invoke-static {v0, v1}, Lrich/w1;->a(Landroid/content/Context;Lrich/l0;)V

    invoke-static {}, Lrich/w1;->a()V

    iput-object v2, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->D:Landroid/app/Dialog;

    invoke-static {}, Lrich/u2;->a()Lrich/u2;

    move-result-object v0

    .line 6
    iget-object v1, v0, Lrich/u2;->a:Lrich/u2$a;

    if-eqz v1, :cond_1

    iget v1, v0, Lrich/u2;->b:I

    const/4 v3, 0x1

    if-eq v1, v3, :cond_1

    iput-object v2, v0, Lrich/u2;->a:Lrich/u2$a;

    const-string v0, "LoginProxy"

    const-string v1, "mLoginAuthProxy == null"

    invoke-static {v0, v1}, Lrich/c2;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->t:Lcom/cmic/gen/sdk/view/GenLoginAuthActivity$l;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    sget-object v1, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->E:Ljava/lang/String;

    const-string v2, "GenLoginAuthActivity clear failed"

    invoke-static {v1, v2}, Lrich/c2;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lrich/y1;->D:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->z:Lrich/o2;

    .line 1
    iget-object p1, p1, Lrich/o2;->I:Lrich/p2;

    if-eqz p1, :cond_0

    .line 2
    check-cast p1, Lrich/n3$g;

    .line 3
    iget-object p2, p1, Lrich/n3$g;->a:Lrich/n3;

    .line 4
    iget-object p2, p2, Lrich/n3;->c:Lcom/rich/oauth/core/UIConfigBuild;

    .line 5
    invoke-virtual {p2}, Lcom/rich/oauth/core/UIConfigBuild;->getPressBackListener()Lcom/rich/oauth/callback/PressBackListener;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p1, p1, Lrich/n3$g;->a:Lrich/n3;

    .line 6
    iget-object p1, p1, Lrich/n3;->c:Lcom/rich/oauth/core/UIConfigBuild;

    .line 7
    invoke-virtual {p1}, Lcom/rich/oauth/core/UIConfigBuild;->getPressBackListener()Lcom/rich/oauth/callback/PressBackListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/rich/oauth/callback/PressBackListener;->onPressBackListener()V

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->z:Lrich/o2;

    .line 9
    iget p2, p1, Lrich/o2;->q0:I

    if-eqz p2, :cond_1

    .line 10
    iget-boolean p1, p1, Lrich/o2;->z0:Z

    if-eqz p1, :cond_2

    .line 11
    :cond_1
    invoke-virtual {p0}, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->b()V

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public onResume()V
    .locals 4

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->l:Lrich/l0;

    if-eqz v1, :cond_0

    const-string v2, "loginMethod"

    const-string v3, "loginAuth"

    invoke-virtual {v1, v2, v3}, Lrich/l0;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {p0}, Lrich/p0;->b(Landroid/content/Context;)Lrich/p0;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "200087"

    .line 1
    :try_start_1
    iget-object v1, v1, Lrich/p0;->i:Lrich/t2;

    if-eqz v1, :cond_1

    check-cast v1, Lrich/n3$d;

    invoke-virtual {v1, v2, v0}, Lrich/n3$d;->a(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v2, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->l:Lrich/l0;

    invoke-virtual {v2}, Lrich/l0;->a()Lrich/x1;

    move-result-object v2

    iget-object v2, v2, Lrich/x1;->A:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->l:Lrich/l0;

    const-string v2, "200025"

    const-string v3, "\u53d1\u751f\u672a\u77e5\u9519\u8bef"

    invoke-virtual {p0, v2, v3, v1, v0}, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->a(Ljava/lang/String;Ljava/lang/String;Lrich/l0;Lorg/json/JSONObject;)V

    :cond_1
    :goto_0
    return-void
.end method
