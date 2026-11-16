.class public final synthetic Lcom/taptap/sdk/db/event/utils/-$$Lambda$TapEventLogger$kMgsdnqjjWijeT3tYKY7GXMLrK4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/taptap/sdk/db/event/model/TapEventType;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Z

.field public final synthetic f$4:Lorg/json/JSONObject;


# direct methods
.method public synthetic constructor <init>(Lcom/taptap/sdk/db/event/model/TapEventType;Ljava/lang/String;Ljava/lang/String;ZLorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/taptap/sdk/db/event/utils/-$$Lambda$TapEventLogger$kMgsdnqjjWijeT3tYKY7GXMLrK4;->f$0:Lcom/taptap/sdk/db/event/model/TapEventType;

    iput-object p2, p0, Lcom/taptap/sdk/db/event/utils/-$$Lambda$TapEventLogger$kMgsdnqjjWijeT3tYKY7GXMLrK4;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/taptap/sdk/db/event/utils/-$$Lambda$TapEventLogger$kMgsdnqjjWijeT3tYKY7GXMLrK4;->f$2:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/taptap/sdk/db/event/utils/-$$Lambda$TapEventLogger$kMgsdnqjjWijeT3tYKY7GXMLrK4;->f$3:Z

    iput-object p5, p0, Lcom/taptap/sdk/db/event/utils/-$$Lambda$TapEventLogger$kMgsdnqjjWijeT3tYKY7GXMLrK4;->f$4:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/taptap/sdk/db/event/utils/-$$Lambda$TapEventLogger$kMgsdnqjjWijeT3tYKY7GXMLrK4;->f$0:Lcom/taptap/sdk/db/event/model/TapEventType;

    iget-object v1, p0, Lcom/taptap/sdk/db/event/utils/-$$Lambda$TapEventLogger$kMgsdnqjjWijeT3tYKY7GXMLrK4;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/taptap/sdk/db/event/utils/-$$Lambda$TapEventLogger$kMgsdnqjjWijeT3tYKY7GXMLrK4;->f$2:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/taptap/sdk/db/event/utils/-$$Lambda$TapEventLogger$kMgsdnqjjWijeT3tYKY7GXMLrK4;->f$3:Z

    iget-object v4, p0, Lcom/taptap/sdk/db/event/utils/-$$Lambda$TapEventLogger$kMgsdnqjjWijeT3tYKY7GXMLrK4;->f$4:Lorg/json/JSONObject;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/taptap/sdk/db/event/utils/TapEventLogger;->lambda$kMgsdnqjjWijeT3tYKY7GXMLrK4(Lcom/taptap/sdk/db/event/model/TapEventType;Ljava/lang/String;Ljava/lang/String;ZLorg/json/JSONObject;)V

    return-void
.end method
