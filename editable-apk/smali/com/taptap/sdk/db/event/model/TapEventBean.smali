.class public final Lcom/taptap/sdk/db/event/model/TapEventBean;
.super Ljava/lang/Object;
.source "TapEventBean.kt"

# interfaces
.implements Lcom/taptap/sdk/kit/internal/store/ITapData;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taptap/sdk/db/event/model/TapEventBean$Companion;,
        Lcom/taptap/sdk/db/event/model/TapEventBean$SerializationProxy;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/taptap/sdk/kit/internal/store/ITapData<",
        "Lcom/taptap/sdk/db/event/model/TapEventBean;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0010\u0000\n\u0002\u0008\u0006\u0008\u0001\u0018\u0000  2\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0002 !B1\u0008\u0012\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\tB#\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\n\u001a\u0004\u0018\u00010\u000b\u00a2\u0006\u0002\u0010\u000cJ\u0011\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u0000H\u0096\u0002J\u0013\u0010\u001a\u001a\u00020\u001b2\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u001cH\u0096\u0002J\u0008\u0010\u001d\u001a\u00020\u0018H\u0016J\u0008\u0010\u001e\u001a\u00020\u0003H\u0016J\u0008\u0010\u001f\u001a\u00020\u001cH\u0002R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u000eR\u0011\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u000eR\u001a\u0010\n\u001a\u00020\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016\u00a8\u0006\""
    }
    d2 = {
        "Lcom/taptap/sdk/db/event/model/TapEventBean;",
        "Lcom/taptap/sdk/kit/internal/store/ITapData;",
        "eventType",
        "",
        "eventName",
        "eventUUID",
        "timeMillis",
        "",
        "jsonString",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V",
        "properties",
        "Lorg/json/JSONObject;",
        "(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V",
        "getEventName",
        "()Ljava/lang/String;",
        "getEventType",
        "getEventUUID",
        "getProperties",
        "()Lorg/json/JSONObject;",
        "setProperties",
        "(Lorg/json/JSONObject;)V",
        "getTimeMillis",
        "()J",
        "compareTo",
        "",
        "other",
        "equals",
        "",
        "",
        "hashCode",
        "toString",
        "writeReplace",
        "Companion",
        "SerializationProxy",
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
.field public static final Companion:Lcom/taptap/sdk/db/event/model/TapEventBean$Companion;

.field private static final TAG:Ljava/lang/String; = "TapEventBean"


# instance fields
.field private final eventName:Ljava/lang/String;

.field private final eventType:Ljava/lang/String;

.field private final eventUUID:Ljava/lang/String;

.field private properties:Lorg/json/JSONObject;

.field private final timeMillis:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/taptap/sdk/db/event/model/TapEventBean$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/taptap/sdk/db/event/model/TapEventBean$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/taptap/sdk/db/event/model/TapEventBean;->Companion:Lcom/taptap/sdk/db/event/model/TapEventBean$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/taptap/sdk/db/event/model/TapEventBean;->eventType:Ljava/lang/String;

    .line 36
    iput-object p2, p0, Lcom/taptap/sdk/db/event/model/TapEventBean;->eventName:Ljava/lang/String;

    .line 37
    iput-object p3, p0, Lcom/taptap/sdk/db/event/model/TapEventBean;->eventUUID:Ljava/lang/String;

    .line 38
    iput-wide p4, p0, Lcom/taptap/sdk/db/event/model/TapEventBean;->timeMillis:J

    .line 40
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/taptap/sdk/db/event/model/TapEventBean;->properties:Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 42
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    iput-object p2, p0, Lcom/taptap/sdk/db/event/model/TapEventBean;->properties:Lorg/json/JSONObject;

    .line 43
    check-cast p1, Ljava/lang/Throwable;

    const-string p2, "TapEventBean"

    invoke-static {p2, p1}, Lcom/taptap/sdk/kit/internal/TapLogger;->logd(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/taptap/sdk/db/event/model/TapEventBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1

    const-string v0, "eventType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/taptap/sdk/db/event/model/TapEventBean;->eventType:Ljava/lang/String;

    .line 49
    iput-object p2, p0, Lcom/taptap/sdk/db/event/model/TapEventBean;->eventName:Ljava/lang/String;

    .line 50
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "randomUUID().toString()"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/taptap/sdk/db/event/model/TapEventBean;->eventUUID:Ljava/lang/String;

    .line 51
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/taptap/sdk/db/event/model/TapEventBean;->timeMillis:J

    if-nez p3, :cond_0

    .line 52
    new-instance p3, Lorg/json/JSONObject;

    invoke-direct {p3}, Lorg/json/JSONObject;-><init>()V

    :cond_0
    iput-object p3, p0, Lcom/taptap/sdk/db/event/model/TapEventBean;->properties:Lorg/json/JSONObject;

    return-void
.end method

.method private final writeReplace()Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .line 83
    new-instance v7, Lcom/taptap/sdk/db/event/model/TapEventBean$SerializationProxy;

    .line 84
    iget-object v1, p0, Lcom/taptap/sdk/db/event/model/TapEventBean;->eventType:Ljava/lang/String;

    iget-object v2, p0, Lcom/taptap/sdk/db/event/model/TapEventBean;->eventName:Ljava/lang/String;

    iget-object v3, p0, Lcom/taptap/sdk/db/event/model/TapEventBean;->eventUUID:Ljava/lang/String;

    iget-wide v4, p0, Lcom/taptap/sdk/db/event/model/TapEventBean;->timeMillis:J

    iget-object v0, p0, Lcom/taptap/sdk/db/event/model/TapEventBean;->properties:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v0, "properties.toString()"

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, v7

    .line 83
    invoke-direct/range {v0 .. v6}, Lcom/taptap/sdk/db/event/model/TapEventBean$SerializationProxy;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    return-object v7
.end method


# virtual methods
.method public compareTo(Lcom/taptap/sdk/db/event/model/TapEventBean;)I
    .locals 4

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    iget-wide v0, p0, Lcom/taptap/sdk/db/event/model/TapEventBean;->timeMillis:J

    iget-wide v2, p1, Lcom/taptap/sdk/db/event/model/TapEventBean;->timeMillis:J

    invoke-static {v0, v1, v2, v3}, Lkotlin/jvm/internal/Intrinsics;->compare(JJ)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 18
    check-cast p1, Lcom/taptap/sdk/db/event/model/TapEventBean;

    invoke-virtual {p0, p1}, Lcom/taptap/sdk/db/event/model/TapEventBean;->compareTo(Lcom/taptap/sdk/db/event/model/TapEventBean;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 65
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    :cond_2
    const-string v1, "null cannot be cast to non-null type com.taptap.sdk.db.event.model.TapEventBean"

    .line 67
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/taptap/sdk/db/event/model/TapEventBean;

    .line 69
    iget-object v1, p0, Lcom/taptap/sdk/db/event/model/TapEventBean;->eventType:Ljava/lang/String;

    iget-object v3, p1, Lcom/taptap/sdk/db/event/model/TapEventBean;->eventType:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 70
    :cond_3
    iget-object v1, p0, Lcom/taptap/sdk/db/event/model/TapEventBean;->eventName:Ljava/lang/String;

    iget-object v3, p1, Lcom/taptap/sdk/db/event/model/TapEventBean;->eventName:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    .line 71
    :cond_4
    iget-object v1, p0, Lcom/taptap/sdk/db/event/model/TapEventBean;->eventUUID:Ljava/lang/String;

    iget-object v3, p1, Lcom/taptap/sdk/db/event/model/TapEventBean;->eventUUID:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    .line 72
    :cond_5
    iget-wide v3, p0, Lcom/taptap/sdk/db/event/model/TapEventBean;->timeMillis:J

    iget-wide v5, p1, Lcom/taptap/sdk/db/event/model/TapEventBean;->timeMillis:J

    cmp-long p1, v3, v5

    if-eqz p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final getEventName()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/taptap/sdk/db/event/model/TapEventBean;->eventName:Ljava/lang/String;

    return-object v0
.end method

.method public final getEventType()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/taptap/sdk/db/event/model/TapEventBean;->eventType:Ljava/lang/String;

    return-object v0
.end method

.method public final getEventUUID()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/taptap/sdk/db/event/model/TapEventBean;->eventUUID:Ljava/lang/String;

    return-object v0
.end method

.method public final getProperties()Lorg/json/JSONObject;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/taptap/sdk/db/event/model/TapEventBean;->properties:Lorg/json/JSONObject;

    return-object v0
.end method

.method public final getTimeMillis()J
    .locals 2

    .line 29
    iget-wide v0, p0, Lcom/taptap/sdk/db/event/model/TapEventBean;->timeMillis:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 1

    .line 78
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final setProperties(Lorg/json/JSONObject;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    iput-object p1, p0, Lcom/taptap/sdk/db/event/model/TapEventBean;->properties:Lorg/json/JSONObject;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/taptap/sdk/db/event/model/TapEventBean;->properties:Lorg/json/JSONObject;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
