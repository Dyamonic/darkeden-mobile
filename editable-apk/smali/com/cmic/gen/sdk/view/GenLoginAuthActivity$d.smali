.class public Lcom/cmic/gen/sdk/view/GenLoginAuthActivity$d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/cmic/gen/sdk/view/AuthLoginCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->onClick(Landroid/view/View;)V
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

    iput-object p1, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity$d;->a:Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthLoginCallBack(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity$d;->a:Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;

    .line 1
    iget-object p1, p1, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->o:Landroid/widget/CheckBox;

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object p1, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity$d;->a:Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;

    .line 3
    iget v1, p1, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->s:I

    add-int/2addr v1, v0

    iput v1, p1, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->s:I

    .line 4
    invoke-virtual {p1}, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->l()V

    :cond_0
    return-void
.end method
