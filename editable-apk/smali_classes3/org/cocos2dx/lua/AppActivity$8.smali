.class Lorg/cocos2dx/lua/AppActivity$8;
.super Ljava/lang/Object;
.source "AppActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cocos2dx/lua/AppActivity;->jumpToComment()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cocos2dx/lua/AppActivity;


# direct methods
.method constructor <init>(Lorg/cocos2dx/lua/AppActivity;)V
    .locals 0

    .line 530
    iput-object p1, p0, Lorg/cocos2dx/lua/AppActivity$8;->this$0:Lorg/cocos2dx/lua/AppActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 533
    invoke-static {}, Lcom/juhe/juhesdk/sdk/JuheSDK;->tapTapOpenReview()V

    return-void
.end method
