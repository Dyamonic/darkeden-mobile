.class public Lcom/cmic/gen/sdk/view/GenLoginAuthActivity$j;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lrich/u2$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->e()V
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

    iput-object p1, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity$j;->a:Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity$j;->a:Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;

    .line 1
    iget-object v0, v0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->a:Landroid/os/Handler;

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity$j;->a:Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;

    .line 3
    iget-object v0, v0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->d:Lrich/x2;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity$j;->a:Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;

    .line 5
    iget-object v0, v0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->d:Lrich/x2;

    .line 6
    invoke-virtual {v0}, Lrich/x2;->dismiss()V

    :cond_0
    iget-object v0, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity$j;->a:Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;

    .line 7
    iget-object v0, v0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->e:Lrich/x2;

    if-eqz v0, :cond_1

    .line 8
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity$j;->a:Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;

    .line 9
    iget-object v0, v0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->e:Lrich/x2;

    .line 10
    invoke-virtual {v0}, Lrich/x2;->dismiss()V

    :cond_1
    iget-object v0, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity$j;->a:Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;

    .line 11
    invoke-virtual {v0}, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->b()V

    return-void
.end method
