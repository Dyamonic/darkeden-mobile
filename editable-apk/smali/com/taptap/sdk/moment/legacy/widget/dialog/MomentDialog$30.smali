.class Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$30;
.super Ljava/lang/Object;
.source "MomentDialog.java"

# interfaces
.implements Lcom/taptap/sdk/moment/legacy/utils/permission/RequestPermissionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;->openImageChooserActivity([Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;

.field final synthetic val$acceptTypes:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;[Ljava/lang/String;)V
    .locals 0

    .line 731
    iput-object p1, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$30;->this$0:Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;

    iput-object p2, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$30;->val$acceptTypes:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(ZLjava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_2

    .line 735
    iget-object p1, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$30;->this$0:Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;

    invoke-static {p1}, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;->access$1300(Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;)Landroid/webkit/ValueCallback;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 736
    iget-object p1, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$30;->this$0:Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;

    invoke-static {p1}, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;->access$1300(Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;)Landroid/webkit/ValueCallback;

    move-result-object p1

    invoke-interface {p1, p2}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 737
    iget-object p1, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$30;->this$0:Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;

    invoke-static {p1, p2}, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;->access$1302(Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;Landroid/webkit/ValueCallback;)Landroid/webkit/ValueCallback;

    .line 739
    :cond_0
    iget-object p1, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$30;->this$0:Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;

    invoke-static {p1}, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;->access$1500(Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;)Landroid/webkit/ValueCallback;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 740
    iget-object p1, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$30;->this$0:Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;

    invoke-static {p1}, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;->access$1500(Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;)Landroid/webkit/ValueCallback;

    move-result-object p1

    invoke-interface {p1, p2}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 741
    iget-object p1, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$30;->this$0:Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;

    invoke-static {p1, p2}, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;->access$1502(Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;Landroid/webkit/ValueCallback;)Landroid/webkit/ValueCallback;

    :cond_1
    return-void

    .line 745
    :cond_2
    iget-object p1, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$30;->this$0:Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;

    iget-object p2, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$30;->val$acceptTypes:[Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;->access$1700(Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;[Ljava/lang/String;)V

    return-void
.end method
