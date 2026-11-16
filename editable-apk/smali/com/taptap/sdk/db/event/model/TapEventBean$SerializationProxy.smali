.class public final Lcom/taptap/sdk/db/event/model/TapEventBean$SerializationProxy;
.super Ljava/lang/Object;
.source "TapEventBean.kt"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taptap/sdk/db/event/model/TapEventBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SerializationProxy"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taptap/sdk/db/event/model/TapEventBean$SerializationProxy$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\n\n\u0002\u0010\u0000\n\u0002\u0008\u0002\u0008\u0001\u0018\u0000 \u00132\u00020\u0001:\u0001\u0013B/\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\tJ\u0008\u0010\u0011\u001a\u00020\u0012H\u0002R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\u000bR\u0011\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000bR\u0011\u0010\u0008\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000bR\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/taptap/sdk/db/event/model/TapEventBean$SerializationProxy;",
        "Ljava/io/Serializable;",
        "eventType",
        "",
        "eventName",
        "eventUUID",
        "timeMillis",
        "",
        "jsonString",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V",
        "getEventName",
        "()Ljava/lang/String;",
        "getEventType",
        "getEventUUID",
        "getJsonString",
        "getTimeMillis",
        "()J",
        "readResolve",
        "",
        "Companion",
        "tap-db_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/taptap/sdk/db/event/model/TapEventBean$SerializationProxy$Companion;

.field private static final serialVersionUID:J = 0x4b5d23b3aL


# instance fields
.field private final eventName:Ljava/lang/String;

.field private final eventType:Ljava/lang/String;

.field private final eventUUID:Ljava/lang/String;

.field private final jsonString:Ljava/lang/String;

.field private final timeMillis:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/taptap/sdk/db/event/model/TapEventBean$SerializationProxy$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/taptap/sdk/db/event/model/TapEventBean$SerializationProxy$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/taptap/sdk/db/event/model/TapEventBean$SerializationProxy;->Companion:Lcom/taptap/sdk/db/event/model/TapEventBean$SerializationProxy$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .locals 1

    const-string v0, "eventType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventUUID"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "jsonString"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-object p1, p0, Lcom/taptap/sdk/db/event/model/TapEventBean$SerializationProxy;->eventType:Ljava/lang/String;

    .line 91
    iput-object p2, p0, Lcom/taptap/sdk/db/event/model/TapEventBean$SerializationProxy;->eventName:Ljava/lang/String;

    .line 92
    iput-object p3, p0, Lcom/taptap/sdk/db/event/model/TapEventBean$SerializationProxy;->eventUUID:Ljava/lang/String;

    .line 93
    iput-wide p4, p0, Lcom/taptap/sdk/db/event/model/TapEventBean$SerializationProxy;->timeMillis:J

    .line 94
    iput-object p6, p0, Lcom/taptap/sdk/db/event/model/TapEventBean$SerializationProxy;->jsonString:Ljava/lang/String;

    return-void
.end method

.method private final readResolve()Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .line 98
    new-instance v8, Lcom/taptap/sdk/db/event/model/TapEventBean;

    iget-object v1, p0, Lcom/taptap/sdk/db/event/model/TapEventBean$SerializationProxy;->eventType:Ljava/lang/String;

    iget-object v2, p0, Lcom/taptap/sdk/db/event/model/TapEventBean$SerializationProxy;->eventName:Ljava/lang/String;

    iget-object v3, p0, Lcom/taptap/sdk/db/event/model/TapEventBean$SerializationProxy;->eventUUID:Ljava/lang/String;

    iget-wide v4, p0, Lcom/taptap/sdk/db/event/model/TapEventBean$SerializationProxy;->timeMillis:J

    iget-object v6, p0, Lcom/taptap/sdk/db/event/model/TapEventBean$SerializationProxy;->jsonString:Ljava/lang/String;

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/taptap/sdk/db/event/model/TapEventBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v8
.end method


# virtual methods
.method public final getEventName()Ljava/lang/String;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/taptap/sdk/db/event/model/TapEventBean$SerializationProxy;->eventName:Ljava/lang/String;

    return-object v0
.end method

.method public final getEventType()Ljava/lang/String;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/taptap/sdk/db/event/model/TapEventBean$SerializationProxy;->eventType:Ljava/lang/String;

    return-object v0
.end method

.method public final getEventUUID()Ljava/lang/String;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/taptap/sdk/db/event/model/TapEventBean$SerializationProxy;->eventUUID:Ljava/lang/String;

    return-object v0
.end method

.method public final getJsonString()Ljava/lang/String;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/taptap/sdk/db/event/model/TapEventBean$SerializationProxy;->jsonString:Ljava/lang/String;

    return-object v0
.end method

.method public final getTimeMillis()J
    .locals 2

    .line 93
    iget-wide v0, p0, Lcom/taptap/sdk/db/event/model/TapEventBean$SerializationProxy;->timeMillis:J

    return-wide v0
.end method
