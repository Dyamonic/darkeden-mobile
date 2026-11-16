.class Lcom/taptap/sdk/moment/legacy/widget/dialog/BottomSheet$2;
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

.field final synthetic val$list:Ljava/util/List;

.field final synthetic val$tempIndex:I


# direct methods
.method constructor <init>(Lcom/taptap/sdk/moment/legacy/widget/dialog/BottomSheet;ILjava/util/List;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/BottomSheet$2;->this$0:Lcom/taptap/sdk/moment/legacy/widget/dialog/BottomSheet;

    iput p2, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/BottomSheet$2;->val$tempIndex:I

    iput-object p3, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/BottomSheet$2;->val$list:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 128
    iget-object p1, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/BottomSheet$2;->this$0:Lcom/taptap/sdk/moment/legacy/widget/dialog/BottomSheet;

    invoke-virtual {p1}, Lcom/taptap/sdk/moment/legacy/widget/dialog/BottomSheet;->dismiss()V

    .line 129
    iget-object p1, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/BottomSheet$2;->this$0:Lcom/taptap/sdk/moment/legacy/widget/dialog/BottomSheet;

    invoke-static {p1}, Lcom/taptap/sdk/moment/legacy/widget/dialog/BottomSheet;->access$000(Lcom/taptap/sdk/moment/legacy/widget/dialog/BottomSheet;)Lcom/taptap/sdk/moment/legacy/widget/dialog/BottomSheet$OnItemClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 130
    iget-object p1, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/BottomSheet$2;->this$0:Lcom/taptap/sdk/moment/legacy/widget/dialog/BottomSheet;

    invoke-static {p1}, Lcom/taptap/sdk/moment/legacy/widget/dialog/BottomSheet;->access$000(Lcom/taptap/sdk/moment/legacy/widget/dialog/BottomSheet;)Lcom/taptap/sdk/moment/legacy/widget/dialog/BottomSheet$OnItemClickListener;

    move-result-object p1

    iget v0, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/BottomSheet$2;->val$tempIndex:I

    iget-object v1, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/BottomSheet$2;->val$list:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/taptap/sdk/moment/legacy/widget/dialog/BottomSheet$OnItemClickListener;->onClick(ILjava/lang/String;)V

    :cond_0
    return-void
.end method
