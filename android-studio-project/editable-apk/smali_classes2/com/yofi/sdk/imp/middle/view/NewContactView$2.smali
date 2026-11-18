.class Lcom/yofi/sdk/imp/middle/view/NewContactView$2;
.super Ljava/lang/Object;
.source "NewContactView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yofi/sdk/imp/middle/view/NewContactView;-><init>(Lcom/yofi/sdk/activity/VerticalContainerActivity;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yofi/sdk/imp/middle/view/NewContactView;

.field final synthetic val$activity:Lcom/yofi/sdk/activity/VerticalContainerActivity;

.field final synthetic val$str1:Ljava/lang/String;

.field final synthetic val$typeButton:Landroid/widget/Button;


# direct methods
.method constructor <init>(Lcom/yofi/sdk/imp/middle/view/NewContactView;Lcom/yofi/sdk/activity/VerticalContainerActivity;Landroid/widget/Button;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$str1",
            "val$typeButton",
            "val$activity"
        }
    .end annotation

    .line 129
    iput-object p1, p0, Lcom/yofi/sdk/imp/middle/view/NewContactView$2;->this$0:Lcom/yofi/sdk/imp/middle/view/NewContactView;

    iput-object p2, p0, Lcom/yofi/sdk/imp/middle/view/NewContactView$2;->val$activity:Lcom/yofi/sdk/activity/VerticalContainerActivity;

    iput-object p3, p0, Lcom/yofi/sdk/imp/middle/view/NewContactView$2;->val$typeButton:Landroid/widget/Button;

    iput-object p4, p0, Lcom/yofi/sdk/imp/middle/view/NewContactView$2;->val$str1:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arg0"
        }
    .end annotation

    .line 132
    iget-object p1, p0, Lcom/yofi/sdk/imp/middle/view/NewContactView$2;->val$activity:Lcom/yofi/sdk/activity/VerticalContainerActivity;

    invoke-virtual {p1}, Lcom/yofi/sdk/activity/VerticalContainerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/view/NewContactView$2;->val$activity:Lcom/yofi/sdk/activity/VerticalContainerActivity;

    .line 133
    invoke-virtual {v0}, Lcom/yofi/sdk/activity/VerticalContainerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/yofi/sdk/imp/middle/view/NewContactView$2;->val$activity:Lcom/yofi/sdk/activity/VerticalContainerActivity;

    .line 134
    invoke-virtual {v1}, Lcom/yofi/sdk/activity/VerticalContainerActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "game"

    const-string v3, "string"

    .line 133
    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    .line 132
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 135
    iget-object v1, p0, Lcom/yofi/sdk/imp/middle/view/NewContactView$2;->val$activity:Lcom/yofi/sdk/activity/VerticalContainerActivity;

    invoke-virtual {v1}, Lcom/yofi/sdk/activity/VerticalContainerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/yofi/sdk/imp/middle/view/NewContactView$2;->val$activity:Lcom/yofi/sdk/activity/VerticalContainerActivity;

    .line 136
    invoke-virtual {v2}, Lcom/yofi/sdk/activity/VerticalContainerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v4, p0, Lcom/yofi/sdk/imp/middle/view/NewContactView$2;->val$activity:Lcom/yofi/sdk/activity/VerticalContainerActivity;

    .line 137
    invoke-virtual {v4}, Lcom/yofi/sdk/activity/VerticalContainerActivity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "proposal"

    .line 136
    invoke-virtual {v2, v5, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Object;

    .line 135
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 138
    iget-object v2, p0, Lcom/yofi/sdk/imp/middle/view/NewContactView$2;->val$activity:Lcom/yofi/sdk/activity/VerticalContainerActivity;

    invoke-virtual {v2}, Lcom/yofi/sdk/activity/VerticalContainerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v4, p0, Lcom/yofi/sdk/imp/middle/view/NewContactView$2;->val$activity:Lcom/yofi/sdk/activity/VerticalContainerActivity;

    .line 139
    invoke-virtual {v4}, Lcom/yofi/sdk/activity/VerticalContainerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v5, p0, Lcom/yofi/sdk/imp/middle/view/NewContactView$2;->val$activity:Lcom/yofi/sdk/activity/VerticalContainerActivity;

    .line 140
    invoke-virtual {v5}, Lcom/yofi/sdk/activity/VerticalContainerActivity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "account_number"

    .line 139
    invoke-virtual {v4, v6, v3, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v4, v0, [Ljava/lang/Object;

    .line 138
    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 141
    iget-object v4, p0, Lcom/yofi/sdk/imp/middle/view/NewContactView$2;->val$activity:Lcom/yofi/sdk/activity/VerticalContainerActivity;

    invoke-virtual {v4}, Lcom/yofi/sdk/activity/VerticalContainerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v5, p0, Lcom/yofi/sdk/imp/middle/view/NewContactView$2;->val$activity:Lcom/yofi/sdk/activity/VerticalContainerActivity;

    .line 142
    invoke-virtual {v5}, Lcom/yofi/sdk/activity/VerticalContainerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-object v6, p0, Lcom/yofi/sdk/imp/middle/view/NewContactView$2;->val$activity:Lcom/yofi/sdk/activity/VerticalContainerActivity;

    .line 143
    invoke-virtual {v6}, Lcom/yofi/sdk/activity/VerticalContainerActivity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "payment"

    .line 142
    invoke-virtual {v5, v7, v3, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v0, [Ljava/lang/Object;

    .line 141
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/String;

    aput-object p1, v5, v0

    const/4 p1, 0x1

    aput-object v1, v5, p1

    const/4 p1, 0x2

    aput-object v2, v5, p1

    const/4 p1, 0x3

    aput-object v4, v5, p1

    .line 146
    iget-object p1, p0, Lcom/yofi/sdk/imp/middle/view/NewContactView$2;->val$activity:Lcom/yofi/sdk/activity/VerticalContainerActivity;

    invoke-virtual {p1}, Lcom/yofi/sdk/activity/VerticalContainerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget-object v1, p0, Lcom/yofi/sdk/imp/middle/view/NewContactView$2;->val$activity:Lcom/yofi/sdk/activity/VerticalContainerActivity;

    .line 147
    invoke-virtual {v1}, Lcom/yofi/sdk/activity/VerticalContainerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/yofi/sdk/imp/middle/view/NewContactView$2;->val$activity:Lcom/yofi/sdk/activity/VerticalContainerActivity;

    .line 148
    invoke-virtual {v2}, Lcom/yofi/sdk/activity/VerticalContainerActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v4, "please_select_question_type"

    .line 147
    invoke-virtual {v1, v4, v3, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-array v1, v0, [Ljava/lang/Object;

    .line 146
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 149
    iget-object v1, p0, Lcom/yofi/sdk/imp/middle/view/NewContactView$2;->val$activity:Lcom/yofi/sdk/activity/VerticalContainerActivity;

    invoke-virtual {v1}, Lcom/yofi/sdk/activity/VerticalContainerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/yofi/sdk/imp/middle/view/NewContactView$2;->val$activity:Lcom/yofi/sdk/activity/VerticalContainerActivity;

    .line 150
    invoke-virtual {v2}, Lcom/yofi/sdk/activity/VerticalContainerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v4, p0, Lcom/yofi/sdk/imp/middle/view/NewContactView$2;->val$activity:Lcom/yofi/sdk/activity/VerticalContainerActivity;

    .line 151
    invoke-virtual {v4}, Lcom/yofi/sdk/activity/VerticalContainerActivity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v6, "cancel"

    .line 150
    invoke-virtual {v2, v6, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    .line 149
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 152
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/yofi/sdk/imp/middle/view/NewContactView$2;->val$activity:Lcom/yofi/sdk/activity/VerticalContainerActivity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 153
    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v1, Lcom/yofi/sdk/imp/middle/view/NewContactView$2$2;

    invoke-direct {v1, p0, v5}, Lcom/yofi/sdk/imp/middle/view/NewContactView$2$2;-><init>(Lcom/yofi/sdk/imp/middle/view/NewContactView$2;[Ljava/lang/String;)V

    .line 154
    invoke-virtual {p1, v5, v1}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v1, Lcom/yofi/sdk/imp/middle/view/NewContactView$2$1;

    invoke-direct {v1, p0}, Lcom/yofi/sdk/imp/middle/view/NewContactView$2$1;-><init>(Lcom/yofi/sdk/imp/middle/view/NewContactView$2;)V

    .line 161
    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 167
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 168
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method
