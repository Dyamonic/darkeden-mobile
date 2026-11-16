.class final Lcom/juhe/juhesdk/sdk/JuheSDK$3;
.super Ljava/lang/Object;
.source "JuheSDK.java"

# interfaces
.implements Lcom/juhe/juhesdk/sdk/IFlashCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/juhe/juhesdk/sdk/JuheSDK;->extractedInit(Landroid/app/Activity;Lcom/juhe/juhesdk/sdk/IFlashCallback;Landroid/os/Bundle;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$cb:Lcom/juhe/juhesdk/sdk/IFlashCallback;

.field final synthetic val$channelId:I

.field final synthetic val$finalNeedDetUniqueID:Z


# direct methods
.method constructor <init>(ZILandroid/app/Activity;Lcom/juhe/juhesdk/sdk/IFlashCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "val$cb",
            "val$activity",
            "val$channelId",
            "val$finalNeedDetUniqueID"
        }
    .end annotation

    .line 163
    iput-boolean p1, p0, Lcom/juhe/juhesdk/sdk/JuheSDK$3;->val$finalNeedDetUniqueID:Z

    iput p2, p0, Lcom/juhe/juhesdk/sdk/JuheSDK$3;->val$channelId:I

    iput-object p3, p0, Lcom/juhe/juhesdk/sdk/JuheSDK$3;->val$activity:Landroid/app/Activity;

    iput-object p4, p0, Lcom/juhe/juhesdk/sdk/JuheSDK$3;->val$cb:Lcom/juhe/juhesdk/sdk/IFlashCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(ILjava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "var1",
            "msg"
        }
    .end annotation

    .line 197
    iget-object v0, p0, Lcom/juhe/juhesdk/sdk/JuheSDK$3;->val$activity:Landroid/app/Activity;

    iget-boolean v1, p0, Lcom/juhe/juhesdk/sdk/JuheSDK$3;->val$finalNeedDetUniqueID:Z

    const/16 v2, 0x64

    invoke-static {v0, v2, v1}, Lcom/juhe/juhesdk/middle/manager/LittleApiImp;->sdkStage(Landroid/content/Context;IZ)V

    .line 198
    iget-object v0, p0, Lcom/juhe/juhesdk/sdk/JuheSDK$3;->val$activity:Landroid/app/Activity;

    iget-boolean v1, p0, Lcom/juhe/juhesdk/sdk/JuheSDK$3;->val$finalNeedDetUniqueID:Z

    const/16 v2, 0x65

    invoke-static {v0, v2, v1}, Lcom/juhe/juhesdk/middle/manager/LittleApiImp;->sdkStage(Landroid/content/Context;IZ)V

    .line 199
    iget-object v0, p0, Lcom/juhe/juhesdk/sdk/JuheSDK$3;->val$cb:Lcom/juhe/juhesdk/sdk/IFlashCallback;

    invoke-interface {v0, p1, p2}, Lcom/juhe/juhesdk/sdk/IFlashCallback;->onFailed(ILjava/lang/String;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "var1"
        }
    .end annotation

    .line 166
    iget-boolean v0, p0, Lcom/juhe/juhesdk/sdk/JuheSDK$3;->val$finalNeedDetUniqueID:Z

    if-eqz v0, :cond_3

    .line 169
    iget v0, p0, Lcom/juhe/juhesdk/sdk/JuheSDK$3;->val$channelId:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/16 v1, 0x16

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 185
    :cond_0
    invoke-static {}, Lcom/juhe/juhesdk/utils/CommonUtils;->instance()Lcom/juhe/juhesdk/utils/CommonUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/juhe/juhesdk/utils/CommonUtils;->getNoPermissionDeviceUniqueId()Ljava/lang/String;

    move-result-object v0

    .line 186
    invoke-static {}, Lcom/juhe/juhesdk/utils/CommonUtils;->instance()Lcom/juhe/juhesdk/utils/CommonUtils;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/juhe/juhesdk/utils/CommonUtils;->setmDeviceId(Ljava/lang/String;)V

    goto :goto_1

    .line 171
    :cond_1
    :goto_0
    invoke-static {}, Lcom/juhe/juhesdk/utils/CommonUtils;->instance()Lcom/juhe/juhesdk/utils/CommonUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/juhe/juhesdk/utils/CommonUtils;->getActivityContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "Juhe"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "storage_android_id"

    const-string v2, ""

    .line 172
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 173
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 174
    invoke-static {}, Lcom/juhe/juhesdk/utils/CommonUtils;->instance()Lcom/juhe/juhesdk/utils/CommonUtils;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/juhe/juhesdk/utils/CommonUtils;->setmDeviceId(Ljava/lang/String;)V

    goto :goto_1

    .line 176
    :cond_2
    invoke-static {}, Lcom/juhe/juhesdk/utils/CommonUtils;->instance()Lcom/juhe/juhesdk/utils/CommonUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/juhe/juhesdk/utils/CommonUtils;->getUniqueID()Ljava/lang/String;

    move-result-object v2

    .line 178
    invoke-static {}, Lcom/juhe/juhesdk/utils/CommonUtils;->instance()Lcom/juhe/juhesdk/utils/CommonUtils;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/juhe/juhesdk/utils/CommonUtils;->setmDeviceId(Ljava/lang/String;)V

    .line 179
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 180
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 181
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 190
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/juhe/juhesdk/sdk/JuheSDK$3;->val$activity:Landroid/app/Activity;

    const/16 v1, 0x64

    iget-boolean v2, p0, Lcom/juhe/juhesdk/sdk/JuheSDK$3;->val$finalNeedDetUniqueID:Z

    invoke-static {v0, v1, v2}, Lcom/juhe/juhesdk/middle/manager/LittleApiImp;->sdkStage(Landroid/content/Context;IZ)V

    .line 191
    iget-object v0, p0, Lcom/juhe/juhesdk/sdk/JuheSDK$3;->val$activity:Landroid/app/Activity;

    const/16 v1, 0x66

    iget-boolean v2, p0, Lcom/juhe/juhesdk/sdk/JuheSDK$3;->val$finalNeedDetUniqueID:Z

    invoke-static {v0, v1, v2}, Lcom/juhe/juhesdk/middle/manager/LittleApiImp;->sdkStage(Landroid/content/Context;IZ)V

    .line 192
    iget-object v0, p0, Lcom/juhe/juhesdk/sdk/JuheSDK$3;->val$cb:Lcom/juhe/juhesdk/sdk/IFlashCallback;

    invoke-interface {v0, p1}, Lcom/juhe/juhesdk/sdk/IFlashCallback;->onSuccess(Ljava/lang/String;)V

    return-void
.end method
