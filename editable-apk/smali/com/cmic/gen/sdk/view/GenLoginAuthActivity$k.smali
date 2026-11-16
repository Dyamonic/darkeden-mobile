.class public Lcom/cmic/gen/sdk/view/GenLoginAuthActivity$k;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;


# direct methods
.method public constructor <init>(Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity$k;->a:Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    iget-object p1, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity$k;->a:Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;

    .line 1
    iget-object p1, p1, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->z:Lrich/o2;

    .line 2
    iget-object p1, p1, Lrich/o2;->L:Lrich/r2;

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {p1, p2}, Lrich/r2;->a(Z)V

    :cond_0
    if-eqz p2, :cond_1

    iget-object p1, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity$k;->a:Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;

    .line 4
    iget-object p1, p1, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->c:Landroid/widget/RelativeLayout;

    const/4 p2, 0x1

    .line 5
    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    :try_start_0
    iget-object p1, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity$k;->a:Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;

    .line 6
    iget-object p1, p1, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->o:Landroid/widget/CheckBox;

    .line 7
    iget-object p2, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity$k;->a:Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;

    .line 8
    iget-object v0, p2, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->z:Lrich/o2;

    .line 9
    iget-object v0, v0, Lrich/o2;->N:Ljava/lang/String;

    .line 10
    invoke-static {p2, v0}, Lrich/b0;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/CheckBox;->setBackgroundResource(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-object p1, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity$k;->a:Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;

    .line 11
    iget-object p2, p1, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->o:Landroid/widget/CheckBox;

    const-string v0, "umcsdk_check_image"

    .line 12
    invoke-static {p1, v0}, Lrich/b0;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/CheckBox;->setBackgroundResource(I)V

    :goto_0
    iget-object p1, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity$k;->a:Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;

    .line 13
    iget-object p1, p1, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->o:Landroid/widget/CheckBox;

    const-string p2, "\u590d\u9009\u6846 \u5df2\u52fe\u9009 "

    .line 14
    invoke-static {p2}, Lrich/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v0, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity$k;->a:Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;

    goto :goto_2

    :cond_1
    iget-object p1, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity$k;->a:Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;

    .line 15
    iget-object p2, p1, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->c:Landroid/widget/RelativeLayout;

    .line 16
    invoke-virtual {p1}, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->m()Z

    move-result p1

    .line 17
    invoke-virtual {p2, p1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    :try_start_1
    iget-object p1, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity$k;->a:Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;

    .line 18
    iget-object p1, p1, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->o:Landroid/widget/CheckBox;

    .line 19
    iget-object p2, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity$k;->a:Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;

    .line 20
    iget-object v0, p2, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->z:Lrich/o2;

    .line 21
    iget-object v0, v0, Lrich/o2;->O:Ljava/lang/String;

    .line 22
    invoke-static {p2, v0}, Lrich/b0;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/CheckBox;->setBackgroundResource(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    iget-object p1, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity$k;->a:Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;

    .line 23
    iget-object p2, p1, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->o:Landroid/widget/CheckBox;

    const-string v0, "umcsdk_uncheck_image"

    .line 24
    invoke-static {p1, v0}, Lrich/b0;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/CheckBox;->setBackgroundResource(I)V

    :goto_1
    iget-object p1, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity$k;->a:Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;

    .line 25
    iget-object p1, p1, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->o:Landroid/widget/CheckBox;

    const-string p2, "\u590d\u9009\u6846 \u8bf7\u53cc\u51fb\u52fe\u9009 "

    .line 26
    invoke-static {p2}, Lrich/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v0, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity$k;->a:Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;

    .line 27
    :goto_2
    iget-object v0, v0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->y:Ljava/lang/String;

    .line 28
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/CheckBox;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method
