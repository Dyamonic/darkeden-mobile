.class Lcom/yofi/sdk/imp/middle/view/NewContactView$2$2;
.super Ljava/lang/Object;
.source "NewContactView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yofi/sdk/imp/middle/view/NewContactView$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/yofi/sdk/imp/middle/view/NewContactView$2;

.field final synthetic val$arrayFruit:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/yofi/sdk/imp/middle/view/NewContactView$2;[Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$1",
            "val$arrayFruit"
        }
    .end annotation

    .line 154
    iput-object p1, p0, Lcom/yofi/sdk/imp/middle/view/NewContactView$2$2;->this$1:Lcom/yofi/sdk/imp/middle/view/NewContactView$2;

    iput-object p2, p0, Lcom/yofi/sdk/imp/middle/view/NewContactView$2$2;->val$arrayFruit:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dialog",
            "which"
        }
    .end annotation

    .line 157
    iget-object p1, p0, Lcom/yofi/sdk/imp/middle/view/NewContactView$2$2;->this$1:Lcom/yofi/sdk/imp/middle/view/NewContactView$2;

    iget-object p1, p1, Lcom/yofi/sdk/imp/middle/view/NewContactView$2;->this$0:Lcom/yofi/sdk/imp/middle/view/NewContactView;

    add-int/lit8 v0, p2, 0x1

    invoke-static {p1, v0}, Lcom/yofi/sdk/imp/middle/view/NewContactView;->access$002(Lcom/yofi/sdk/imp/middle/view/NewContactView;I)I

    .line 158
    iget-object p1, p0, Lcom/yofi/sdk/imp/middle/view/NewContactView$2$2;->this$1:Lcom/yofi/sdk/imp/middle/view/NewContactView$2;

    iget-object p1, p1, Lcom/yofi/sdk/imp/middle/view/NewContactView$2;->val$typeButton:Landroid/widget/Button;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/yofi/sdk/imp/middle/view/NewContactView$2$2;->this$1:Lcom/yofi/sdk/imp/middle/view/NewContactView$2;

    iget-object v1, v1, Lcom/yofi/sdk/imp/middle/view/NewContactView$2;->val$str1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yofi/sdk/imp/middle/view/NewContactView$2$2;->val$arrayFruit:[Ljava/lang/String;

    aget-object p2, v1, p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
