.class Lcom/yofi/sdk/imp/middle/view/NewContactView$3;
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

.field final synthetic val$requestCode:I


# direct methods
.method constructor <init>(Lcom/yofi/sdk/imp/middle/view/NewContactView;Lcom/yofi/sdk/activity/VerticalContainerActivity;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$requestCode",
            "val$activity"
        }
    .end annotation

    .line 187
    iput-object p1, p0, Lcom/yofi/sdk/imp/middle/view/NewContactView$3;->this$0:Lcom/yofi/sdk/imp/middle/view/NewContactView;

    iput-object p2, p0, Lcom/yofi/sdk/imp/middle/view/NewContactView$3;->val$activity:Lcom/yofi/sdk/activity/VerticalContainerActivity;

    iput p3, p0, Lcom/yofi/sdk/imp/middle/view/NewContactView$3;->val$requestCode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arg0"
        }
    .end annotation

    const-string p1, "Panda"

    const-string v0, "=============new Intent(Intent.ACTION_PICK"

    .line 191
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    new-instance p1, Landroid/content/Intent;

    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "android.intent.action.PICK"

    invoke-direct {p1, v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 194
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v1, "image/*"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 197
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/view/NewContactView$3;->val$activity:Lcom/yofi/sdk/activity/VerticalContainerActivity;

    iget v1, p0, Lcom/yofi/sdk/imp/middle/view/NewContactView$3;->val$requestCode:I

    invoke-virtual {v0, p1, v1}, Lcom/yofi/sdk/activity/VerticalContainerActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
