.class Lcom/yofi/sdk/imp/middle/taptap/TapTapSingleton$3;
.super Ljava/lang/Object;
.source "TapTapSingleton.java"

# interfaces
.implements Lcom/taptap/sdk/update/TapTapUpdateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yofi/sdk/imp/middle/taptap/TapTapSingleton;->tapTapOpenUpdate(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yofi/sdk/imp/middle/taptap/TapTapSingleton;


# direct methods
.method constructor <init>(Lcom/yofi/sdk/imp/middle/taptap/TapTapSingleton;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 141
    iput-object p1, p0, Lcom/yofi/sdk/imp/middle/taptap/TapTapSingleton$3;->this$0:Lcom/yofi/sdk/imp/middle/taptap/TapTapSingleton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 0

    return-void
.end method
