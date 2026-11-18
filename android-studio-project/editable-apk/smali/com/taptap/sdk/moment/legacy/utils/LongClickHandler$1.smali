.class Lcom/taptap/sdk/moment/legacy/utils/LongClickHandler$1;
.super Ljava/lang/Object;
.source "LongClickHandler.java"

# interfaces
.implements Lcom/taptap/sdk/moment/legacy/widget/dialog/BottomSheet$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taptap/sdk/moment/legacy/utils/LongClickHandler;->saveImageToMedia(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taptap/sdk/moment/legacy/utils/LongClickHandler;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/taptap/sdk/moment/legacy/utils/LongClickHandler;Landroid/app/Activity;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/taptap/sdk/moment/legacy/utils/LongClickHandler$1;->this$0:Lcom/taptap/sdk/moment/legacy/utils/LongClickHandler;

    iput-object p2, p0, Lcom/taptap/sdk/moment/legacy/utils/LongClickHandler$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(ILjava/lang/String;)V
    .locals 8

    if-nez p1, :cond_1

    .line 64
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x1d

    if-ge p1, p2, :cond_0

    .line 65
    iget-object p1, p0, Lcom/taptap/sdk/moment/legacy/utils/LongClickHandler$1;->val$activity:Landroid/app/Activity;

    invoke-static {p1}, Lcom/taptap/sdk/moment/legacy/utils/permission/TdsPermission;->with(Landroid/app/Activity;)Lcom/taptap/sdk/moment/legacy/utils/permission/PermissionCollection;

    move-result-object p1

    const-string p2, "android.permission.WRITE_EXTERNAL_STORAGE"

    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    filled-new-array {p2, v0}, [Ljava/lang/String;

    move-result-object p2

    .line 66
    invoke-virtual {p1, p2}, Lcom/taptap/sdk/moment/legacy/utils/permission/PermissionCollection;->permission([Ljava/lang/String;)Lcom/taptap/sdk/moment/legacy/utils/permission/PermissionCollection;

    move-result-object p1

    new-instance p2, Lcom/taptap/sdk/moment/legacy/utils/permission/PermissionConfig;

    sget v0, Lcom/taptap/sdk/moment/R$string;->moment_permission_intent_title:I

    .line 67
    invoke-static {v0}, Lcom/taptap/sdk/kit/internal/utils/localize/TapLocalizeUtil;->getLocalizedString(I)Ljava/lang/String;

    move-result-object v1

    sget v0, Lcom/taptap/sdk/moment/R$string;->moment_permission_intent_reason:I

    .line 68
    invoke-static {v0}, Lcom/taptap/sdk/kit/internal/utils/localize/TapLocalizeUtil;->getLocalizedString(I)Ljava/lang/String;

    move-result-object v2

    sget v0, Lcom/taptap/sdk/moment/R$string;->moment_permission_intent_confirm:I

    .line 69
    invoke-static {v0}, Lcom/taptap/sdk/kit/internal/utils/localize/TapLocalizeUtil;->getLocalizedString(I)Ljava/lang/String;

    move-result-object v3

    sget v0, Lcom/taptap/sdk/moment/R$string;->moment_permission_tip_title:I

    .line 70
    invoke-static {v0}, Lcom/taptap/sdk/kit/internal/utils/localize/TapLocalizeUtil;->getLocalizedString(I)Ljava/lang/String;

    move-result-object v4

    sget v0, Lcom/taptap/sdk/moment/R$string;->moment_permission_tip_reason:I

    .line 71
    invoke-static {v0}, Lcom/taptap/sdk/kit/internal/utils/localize/TapLocalizeUtil;->getLocalizedString(I)Ljava/lang/String;

    move-result-object v5

    sget v0, Lcom/taptap/sdk/moment/R$string;->moment_dialog_cancel:I

    .line 72
    invoke-static {v0}, Lcom/taptap/sdk/kit/internal/utils/localize/TapLocalizeUtil;->getLocalizedString(I)Ljava/lang/String;

    move-result-object v6

    sget v0, Lcom/taptap/sdk/moment/R$string;->moment_permission_tip_confirm:I

    .line 73
    invoke-static {v0}, Lcom/taptap/sdk/kit/internal/utils/localize/TapLocalizeUtil;->getLocalizedString(I)Ljava/lang/String;

    move-result-object v7

    move-object v0, p2

    invoke-direct/range {v0 .. v7}, Lcom/taptap/sdk/moment/legacy/utils/permission/PermissionConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    invoke-virtual {p1, p2}, Lcom/taptap/sdk/moment/legacy/utils/permission/PermissionCollection;->forwardSetting(Lcom/taptap/sdk/moment/legacy/utils/permission/PermissionConfig;)Lcom/taptap/sdk/moment/legacy/utils/permission/PermissionCollection;

    move-result-object p1

    new-instance p2, Lcom/taptap/sdk/moment/legacy/utils/LongClickHandler$1$1;

    invoke-direct {p2, p0}, Lcom/taptap/sdk/moment/legacy/utils/LongClickHandler$1$1;-><init>(Lcom/taptap/sdk/moment/legacy/utils/LongClickHandler$1;)V

    .line 74
    invoke-virtual {p1, p2}, Lcom/taptap/sdk/moment/legacy/utils/permission/PermissionCollection;->request(Lcom/taptap/sdk/moment/legacy/utils/permission/RequestPermissionCallback;)V

    goto :goto_0

    .line 85
    :cond_0
    iget-object p1, p0, Lcom/taptap/sdk/moment/legacy/utils/LongClickHandler$1;->this$0:Lcom/taptap/sdk/moment/legacy/utils/LongClickHandler;

    iget-object p2, p0, Lcom/taptap/sdk/moment/legacy/utils/LongClickHandler$1;->val$activity:Landroid/app/Activity;

    invoke-static {p1, p2}, Lcom/taptap/sdk/moment/legacy/utils/LongClickHandler;->access$100(Lcom/taptap/sdk/moment/legacy/utils/LongClickHandler;Landroid/app/Activity;)V

    :cond_1
    :goto_0
    return-void
.end method
