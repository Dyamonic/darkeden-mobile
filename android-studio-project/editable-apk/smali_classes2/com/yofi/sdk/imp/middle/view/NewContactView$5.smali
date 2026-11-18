.class Lcom/yofi/sdk/imp/middle/view/NewContactView$5;
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


# direct methods
.method constructor <init>(Lcom/yofi/sdk/imp/middle/view/NewContactView;Lcom/yofi/sdk/activity/VerticalContainerActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$activity"
        }
    .end annotation

    .line 219
    iput-object p1, p0, Lcom/yofi/sdk/imp/middle/view/NewContactView$5;->this$0:Lcom/yofi/sdk/imp/middle/view/NewContactView;

    iput-object p2, p0, Lcom/yofi/sdk/imp/middle/view/NewContactView$5;->val$activity:Lcom/yofi/sdk/activity/VerticalContainerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arg0"
        }
    .end annotation

    .line 223
    iget-object p1, p0, Lcom/yofi/sdk/imp/middle/view/NewContactView$5;->this$0:Lcom/yofi/sdk/imp/middle/view/NewContactView;

    invoke-static {p1}, Lcom/yofi/sdk/imp/middle/view/NewContactView;->access$200(Lcom/yofi/sdk/imp/middle/view/NewContactView;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 224
    iget-object p1, p0, Lcom/yofi/sdk/imp/middle/view/NewContactView$5;->this$0:Lcom/yofi/sdk/imp/middle/view/NewContactView;

    invoke-static {p1}, Lcom/yofi/sdk/imp/middle/view/NewContactView;->access$300(Lcom/yofi/sdk/imp/middle/view/NewContactView;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 225
    iget-object p1, p0, Lcom/yofi/sdk/imp/middle/view/NewContactView$5;->this$0:Lcom/yofi/sdk/imp/middle/view/NewContactView;

    invoke-static {p1}, Lcom/yofi/sdk/imp/middle/view/NewContactView;->access$400(Lcom/yofi/sdk/imp/middle/view/NewContactView;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 227
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p1

    const-string v0, "string"

    if-nez p1, :cond_0

    .line 228
    iget-object p1, p0, Lcom/yofi/sdk/imp/middle/view/NewContactView$5;->val$activity:Lcom/yofi/sdk/activity/VerticalContainerActivity;

    invoke-virtual {p1}, Lcom/yofi/sdk/activity/VerticalContainerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/yofi/sdk/imp/middle/view/NewContactView$5;->val$activity:Lcom/yofi/sdk/activity/VerticalContainerActivity;

    invoke-virtual {v2}, Lcom/yofi/sdk/activity/VerticalContainerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/yofi/sdk/imp/middle/view/NewContactView$5;->val$activity:Lcom/yofi/sdk/activity/VerticalContainerActivity;

    .line 229
    invoke-virtual {v3}, Lcom/yofi/sdk/activity/VerticalContainerActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "content_empty"

    .line 228
    invoke-virtual {v2, v4, v0, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/yofi/sdk/utils/ToastUtils;->show(Landroid/app/Activity;Ljava/lang/String;)V

    return-void

    .line 233
    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v4, 0xc8

    if-le p1, v4, :cond_1

    .line 235
    iget-object p1, p0, Lcom/yofi/sdk/imp/middle/view/NewContactView$5;->val$activity:Lcom/yofi/sdk/activity/VerticalContainerActivity;

    invoke-virtual {p1}, Lcom/yofi/sdk/activity/VerticalContainerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/yofi/sdk/imp/middle/view/NewContactView$5;->val$activity:Lcom/yofi/sdk/activity/VerticalContainerActivity;

    invoke-virtual {v2}, Lcom/yofi/sdk/activity/VerticalContainerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/yofi/sdk/imp/middle/view/NewContactView$5;->val$activity:Lcom/yofi/sdk/activity/VerticalContainerActivity;

    .line 236
    invoke-virtual {v3}, Lcom/yofi/sdk/activity/VerticalContainerActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "content_length_error"

    .line 235
    invoke-virtual {v2, v4, v0, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/yofi/sdk/utils/ToastUtils;->show(Landroid/app/Activity;Ljava/lang/String;)V

    return-void

    .line 240
    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_2

    .line 241
    iget-object p1, p0, Lcom/yofi/sdk/imp/middle/view/NewContactView$5;->val$activity:Lcom/yofi/sdk/activity/VerticalContainerActivity;

    invoke-virtual {p1}, Lcom/yofi/sdk/activity/VerticalContainerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/yofi/sdk/imp/middle/view/NewContactView$5;->val$activity:Lcom/yofi/sdk/activity/VerticalContainerActivity;

    invoke-virtual {v2}, Lcom/yofi/sdk/activity/VerticalContainerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/yofi/sdk/imp/middle/view/NewContactView$5;->val$activity:Lcom/yofi/sdk/activity/VerticalContainerActivity;

    .line 242
    invoke-virtual {v3}, Lcom/yofi/sdk/activity/VerticalContainerActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "name_empty"

    .line 241
    invoke-virtual {v2, v4, v0, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/yofi/sdk/utils/ToastUtils;->show(Landroid/app/Activity;Ljava/lang/String;)V

    return-void

    .line 246
    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v4, 0x14

    if-le p1, v4, :cond_3

    .line 247
    iget-object p1, p0, Lcom/yofi/sdk/imp/middle/view/NewContactView$5;->val$activity:Lcom/yofi/sdk/activity/VerticalContainerActivity;

    invoke-virtual {p1}, Lcom/yofi/sdk/activity/VerticalContainerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/yofi/sdk/imp/middle/view/NewContactView$5;->val$activity:Lcom/yofi/sdk/activity/VerticalContainerActivity;

    invoke-virtual {v2}, Lcom/yofi/sdk/activity/VerticalContainerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/yofi/sdk/imp/middle/view/NewContactView$5;->val$activity:Lcom/yofi/sdk/activity/VerticalContainerActivity;

    .line 248
    invoke-virtual {v3}, Lcom/yofi/sdk/activity/VerticalContainerActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "name_length_error"

    .line 247
    invoke-virtual {v2, v4, v0, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/yofi/sdk/utils/ToastUtils;->show(Landroid/app/Activity;Ljava/lang/String;)V

    return-void

    .line 252
    :cond_3
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_4

    invoke-static {}, Lcom/yofi/sdk/utils/CommonUtils;->instance()Lcom/yofi/sdk/utils/CommonUtils;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/yofi/sdk/utils/CommonUtils;->isEmailValid(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 253
    iget-object p1, p0, Lcom/yofi/sdk/imp/middle/view/NewContactView$5;->val$activity:Lcom/yofi/sdk/activity/VerticalContainerActivity;

    invoke-virtual {p1}, Lcom/yofi/sdk/activity/VerticalContainerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/yofi/sdk/imp/middle/view/NewContactView$5;->val$activity:Lcom/yofi/sdk/activity/VerticalContainerActivity;

    invoke-virtual {v2}, Lcom/yofi/sdk/activity/VerticalContainerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/yofi/sdk/imp/middle/view/NewContactView$5;->val$activity:Lcom/yofi/sdk/activity/VerticalContainerActivity;

    .line 254
    invoke-virtual {v3}, Lcom/yofi/sdk/activity/VerticalContainerActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "mail_error"

    .line 253
    invoke-virtual {v2, v4, v0, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/yofi/sdk/utils/ToastUtils;->show(Landroid/app/Activity;Ljava/lang/String;)V

    return-void

    .line 257
    :cond_4
    iget-object p1, p0, Lcom/yofi/sdk/imp/middle/view/NewContactView$5;->val$activity:Lcom/yofi/sdk/activity/VerticalContainerActivity;

    const-string v4, "input_method"

    invoke-virtual {p1, v4}, Lcom/yofi/sdk/activity/VerticalContainerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    .line 259
    iget-object v4, p0, Lcom/yofi/sdk/imp/middle/view/NewContactView$5;->val$activity:Lcom/yofi/sdk/activity/VerticalContainerActivity;

    invoke-virtual {v4}, Lcom/yofi/sdk/activity/VerticalContainerActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 262
    new-instance p1, Lcom/yofi/sdk/imp/middle/dialog/LoadingDialog;

    iget-object v4, p0, Lcom/yofi/sdk/imp/middle/view/NewContactView$5;->val$activity:Lcom/yofi/sdk/activity/VerticalContainerActivity;

    .line 263
    invoke-virtual {v4}, Lcom/yofi/sdk/activity/VerticalContainerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-object v6, p0, Lcom/yofi/sdk/imp/middle/view/NewContactView$5;->val$activity:Lcom/yofi/sdk/activity/VerticalContainerActivity;

    invoke-virtual {v6}, Lcom/yofi/sdk/activity/VerticalContainerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget-object v7, p0, Lcom/yofi/sdk/imp/middle/view/NewContactView$5;->this$0:Lcom/yofi/sdk/imp/middle/view/NewContactView;

    .line 264
    invoke-static {v7}, Lcom/yofi/sdk/imp/middle/view/NewContactView;->access$500(Lcom/yofi/sdk/imp/middle/view/NewContactView;)Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "sending"

    invoke-virtual {v6, v8, v0, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 263
    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v4, v0}, Lcom/yofi/sdk/imp/middle/dialog/LoadingDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 265
    invoke-virtual {p1}, Lcom/yofi/sdk/imp/middle/dialog/LoadingDialog;->show()V

    .line 267
    invoke-static {}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->instance()Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/yofi/sdk/imp/middle/view/NewContactView$5;->this$0:Lcom/yofi/sdk/imp/middle/view/NewContactView;

    invoke-static {v4}, Lcom/yofi/sdk/imp/middle/view/NewContactView;->access$000(Lcom/yofi/sdk/imp/middle/view/NewContactView;)I

    move-result v4

    iget-object v5, p0, Lcom/yofi/sdk/imp/middle/view/NewContactView$5;->this$0:Lcom/yofi/sdk/imp/middle/view/NewContactView;

    invoke-static {v5}, Lcom/yofi/sdk/imp/middle/view/NewContactView;->access$600(Lcom/yofi/sdk/imp/middle/view/NewContactView;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/yofi/sdk/imp/middle/view/NewContactView$5;->this$0:Lcom/yofi/sdk/imp/middle/view/NewContactView;

    invoke-static {v6}, Lcom/yofi/sdk/imp/middle/view/NewContactView;->access$700(Lcom/yofi/sdk/imp/middle/view/NewContactView;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/yofi/sdk/imp/middle/view/NewContactView$5;->this$0:Lcom/yofi/sdk/imp/middle/view/NewContactView;

    invoke-static {v7}, Lcom/yofi/sdk/imp/middle/view/NewContactView;->access$800(Lcom/yofi/sdk/imp/middle/view/NewContactView;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/yofi/sdk/imp/middle/view/NewContactView$5$1;

    invoke-direct {v8, p0, p1, v1}, Lcom/yofi/sdk/imp/middle/view/NewContactView$5$1;-><init>(Lcom/yofi/sdk/imp/middle/view/NewContactView$5;Lcom/yofi/sdk/imp/middle/dialog/LoadingDialog;Ljava/lang/String;)V

    invoke-static/range {v0 .. v8}, Lcom/yofi/sdk/imp/middle/common/WebAPI;->createMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/yofi/sdk/web/WebAPICallback;)V

    return-void
.end method
