.class Lcom/taptap/sdk/moment/legacy/widget/dialog/BottomSheet$1;
.super Ljava/lang/Object;
.source "BottomSheet.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taptap/sdk/moment/legacy/widget/dialog/BottomSheet;->settingDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taptap/sdk/moment/legacy/widget/dialog/BottomSheet;

.field final synthetic val$window:Landroid/view/Window;


# direct methods
.method constructor <init>(Lcom/taptap/sdk/moment/legacy/widget/dialog/BottomSheet;Landroid/view/Window;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/BottomSheet$1;->this$0:Lcom/taptap/sdk/moment/legacy/widget/dialog/BottomSheet;

    iput-object p2, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/BottomSheet$1;->val$window:Landroid/view/Window;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 1

    .line 109
    iget-object p1, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/BottomSheet$1;->val$window:Landroid/view/Window;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/Window;->clearFlags(I)V

    return-void
.end method
