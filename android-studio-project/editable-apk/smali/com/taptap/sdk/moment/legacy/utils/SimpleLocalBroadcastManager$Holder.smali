.class Lcom/taptap/sdk/moment/legacy/utils/SimpleLocalBroadcastManager$Holder;
.super Ljava/lang/Object;
.source "SimpleLocalBroadcastManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taptap/sdk/moment/legacy/utils/SimpleLocalBroadcastManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# static fields
.field static INSTANCE:Lcom/taptap/sdk/moment/legacy/utils/SimpleLocalBroadcastManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 15
    new-instance v0, Lcom/taptap/sdk/moment/legacy/utils/SimpleLocalBroadcastManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/taptap/sdk/moment/legacy/utils/SimpleLocalBroadcastManager;-><init>(Lcom/taptap/sdk/moment/legacy/utils/SimpleLocalBroadcastManager$1;)V

    sput-object v0, Lcom/taptap/sdk/moment/legacy/utils/SimpleLocalBroadcastManager$Holder;->INSTANCE:Lcom/taptap/sdk/moment/legacy/utils/SimpleLocalBroadcastManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
