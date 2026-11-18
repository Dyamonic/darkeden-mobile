.class Lcom/juhe/juhesdk/sdk/JuheSDK$2$1;
.super Ljava/lang/Object;
.source "JuheSDK.java"

# interfaces
.implements Lcom/juhe/juhesdk/sdk/CheckUpdateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/juhe/juhesdk/sdk/JuheSDK$2;->onSuccess(Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/juhe/juhesdk/sdk/JuheSDK$2;


# direct methods
.method constructor <init>(Lcom/juhe/juhesdk/sdk/JuheSDK$2;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 132
    iput-object p1, p0, Lcom/juhe/juhesdk/sdk/JuheSDK$2$1;->this$0:Lcom/juhe/juhesdk/sdk/JuheSDK$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelClick(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "var1"
        }
    .end annotation

    return-void
.end method
