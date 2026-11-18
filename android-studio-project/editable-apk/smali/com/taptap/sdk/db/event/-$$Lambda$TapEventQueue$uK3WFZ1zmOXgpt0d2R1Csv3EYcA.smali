.class public final synthetic Lcom/taptap/sdk/db/event/-$$Lambda$TapEventQueue$uK3WFZ1zmOXgpt0d2R1Csv3EYcA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final synthetic INSTANCE:Lcom/taptap/sdk/db/event/-$$Lambda$TapEventQueue$uK3WFZ1zmOXgpt0d2R1Csv3EYcA;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/taptap/sdk/db/event/-$$Lambda$TapEventQueue$uK3WFZ1zmOXgpt0d2R1Csv3EYcA;

    invoke-direct {v0}, Lcom/taptap/sdk/db/event/-$$Lambda$TapEventQueue$uK3WFZ1zmOXgpt0d2R1Csv3EYcA;-><init>()V

    sput-object v0, Lcom/taptap/sdk/db/event/-$$Lambda$TapEventQueue$uK3WFZ1zmOXgpt0d2R1Csv3EYcA;->INSTANCE:Lcom/taptap/sdk/db/event/-$$Lambda$TapEventQueue$uK3WFZ1zmOXgpt0d2R1Csv3EYcA;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    invoke-static {}, Lcom/taptap/sdk/db/event/TapEventQueue;->lambda$uK3WFZ1zmOXgpt0d2R1Csv3EYcA()V

    return-void
.end method
