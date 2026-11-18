.class Lcom/taptap/sdk/moment/legacy/widget/dialog/BottomSheet$3;
.super Ljava/lang/Object;
.source "BottomSheet.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taptap/sdk/moment/legacy/widget/dialog/BottomSheet;->initView(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taptap/sdk/moment/legacy/widget/dialog/BottomSheet;


# direct methods
.method constructor <init>(Lcom/taptap/sdk/moment/legacy/widget/dialog/BottomSheet;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/BottomSheet$3;->this$0:Lcom/taptap/sdk/moment/legacy/widget/dialog/BottomSheet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 141
    iget-object p1, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/BottomSheet$3;->this$0:Lcom/taptap/sdk/moment/legacy/widget/dialog/BottomSheet;

    invoke-virtual {p1}, Lcom/taptap/sdk/moment/legacy/widget/dialog/BottomSheet;->dismiss()V

    return-void
.end method
