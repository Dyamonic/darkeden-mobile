.class public final Lcom/taptap/sdk/db/event/utils/TapCoreKit;
.super Ljava/lang/Object;
.source "TapCoreKit.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0000\u0008\u00c0\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\u0008\u001a\u00020\t2\u0008\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0007J\u0008\u0010\u000c\u001a\u00020\tH\u0007J\u000e\u0010\r\u001a\u00020\t2\u0006\u0010\u000e\u001a\u00020\u000bJ\u001a\u0010\u000f\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\u000b2\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u000bH\u0007J \u0010\u0012\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\u000b2\u0006\u0010\u0011\u001a\u00020\u000b2\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0001J\u0018\u0010\u0014\u001a\u00020\t2\u0006\u0010\u0010\u001a\u00020\u000b2\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0005\u001a\u00020\u00068BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0005\u0010\u0007\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/taptap/sdk/db/event/utils/TapCoreKit;",
        "",
        "()V",
        "MAX_LENGTH",
        "",
        "isMainThread",
        "",
        "()Z",
        "assertEventName",
        "",
        "eventName",
        "",
        "assertIsNotMainThread",
        "assertUserId",
        "userId",
        "checkKey",
        "errorTitle",
        "key",
        "checkValue",
        "value",
        "filterProperties",
        "dynamicProperties",
        "Lorg/json/JSONObject;",
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
.field public static final INSTANCE:Lcom/taptap/sdk/db/event/utils/TapCoreKit;

.field private static final MAX_LENGTH:I = 0x100


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/taptap/sdk/db/event/utils/TapCoreKit;

    invoke-direct {v0}, Lcom/taptap/sdk/db/event/utils/TapCoreKit;-><init>()V

    sput-object v0, Lcom/taptap/sdk/db/event/utils/TapCoreKit;->INSTANCE:Lcom/taptap/sdk/db/event/utils/TapCoreKit;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final assertEventName(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 42
    move-object v0, p0

    check-cast v0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_3

    .line 45
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    const/16 v0, 0x100

    if-gt p0, v0, :cond_2

    return-void

    .line 46
    :cond_2
    new-instance p0, Lcom/taptap/sdk/kit/internal/exception/TapInvalidDataException;

    const-string v0, "The eventName is too long, max length is 256."

    invoke-direct {p0, v0}, Lcom/taptap/sdk/kit/internal/exception/TapInvalidDataException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 43
    :cond_3
    new-instance p0, Lcom/taptap/sdk/kit/internal/exception/TapInvalidDataException;

    const-string v0, "The eventName is empty."

    invoke-direct {p0, v0}, Lcom/taptap/sdk/kit/internal/exception/TapInvalidDataException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final assertIsNotMainThread()V
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 22
    sget-object v0, Lcom/taptap/sdk/db/event/utils/TapCoreKit;->INSTANCE:Lcom/taptap/sdk/db/event/utils/TapCoreKit;

    invoke-direct {v0}, Lcom/taptap/sdk/db/event/utils/TapCoreKit;->isMainThread()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 23
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Call cannot be made on the main thread"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public static final checkKey(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "errorTitle"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    const/4 v3, 0x5

    const/4 v4, 0x0

    if-eqz v0, :cond_2

    .line 54
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", The key is empty. The error property has been removed"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0, v2, v3, v4}, Lcom/taptap/sdk/kit/internal/TapLogger;->logw$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    return v2

    .line 57
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v5, 0x100

    if-le v0, v5, :cond_3

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", The key is too long, max length is 256. The error property has been removed.\n[key=\'"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\']"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0, v2, v3, v4}, Lcom/taptap/sdk/kit/internal/TapLogger;->logw$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    return v2

    :cond_3
    return v1
.end method

.method private final isMainThread()Z
    .locals 2

    .line 115
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final assertUserId(Ljava/lang/String;)V
    .locals 2

    const-string v0, "userId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lkotlin/text/Regex;

    const-string v1, "^[a-zA-Z0-9_\\-+/=.,:]{1,160}$"

    .line 28
    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    .line 29
    move-object v1, p1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lkotlin/text/Regex;->matches(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 32
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    .line 35
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v0, 0xa0

    if-gt p1, v0, :cond_1

    return-void

    .line 36
    :cond_1
    new-instance p1, Lcom/taptap/sdk/kit/internal/exception/TapInvalidDataException;

    const-string v0, "The userId is too long, max length is 160."

    invoke-direct {p1, v0}, Lcom/taptap/sdk/kit/internal/exception/TapInvalidDataException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 33
    :cond_2
    new-instance p1, Lcom/taptap/sdk/kit/internal/exception/TapInvalidDataException;

    const-string v0, "The userId is empty."

    invoke-direct {p1, v0}, Lcom/taptap/sdk/kit/internal/exception/TapInvalidDataException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 30
    :cond_3
    new-instance p1, Lcom/taptap/sdk/kit/internal/exception/TapInvalidDataException;

    const-string v0, "The userId must match [^[a-zA-Z0-9_\\-+/=.,:]{1,160}$]"

    invoke-direct {p1, v0}, Lcom/taptap/sdk/kit/internal/exception/TapInvalidDataException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final checkValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 10

    const-string v0, "errorTitle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    instance-of v0, p3, Ljava/lang/CharSequence;

    const/4 v1, 0x5

    const-string v2, "\']"

    const-string v3, "\', value=\'"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v0, :cond_0

    .line 67
    move-object v0, p3

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/16 v7, 0x100

    if-le v0, v7, :cond_6

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", The value is too long, max length is 256. The error property has been removed.\n[key=\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1, v4, v1, v5}, Lcom/taptap/sdk/kit/internal/TapLogger;->logw$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    return v4

    .line 73
    :cond_0
    instance-of v0, p3, Lkotlinx/serialization/json/JsonNull;

    if-eqz v0, :cond_1

    move v0, v6

    goto :goto_0

    :cond_1
    instance-of v0, p3, Ljava/lang/Number;

    :goto_0
    if-eqz v0, :cond_2

    move v0, v6

    goto :goto_1

    :cond_2
    instance-of v0, p3, Ljava/lang/Boolean;

    :goto_1
    if-eqz v0, :cond_3

    move v0, v6

    goto :goto_2

    :cond_3
    instance-of v0, p3, Ljava/util/Date;

    :goto_2
    if-eqz v0, :cond_4

    return v6

    .line 77
    :cond_4
    instance-of v0, p3, Lorg/json/JSONArray;

    if-eqz v0, :cond_7

    .line 78
    check-cast p3, Lorg/json/JSONArray;

    invoke-virtual {p3}, Lorg/json/JSONArray;->length()I

    move-result v0

    sub-int/2addr v0, v6

    :goto_3
    const/4 v7, -0x1

    if-ge v7, v0, :cond_6

    .line 79
    invoke-virtual {p3, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    .line 80
    instance-of v8, v7, Ljava/lang/CharSequence;

    if-nez v8, :cond_5

    .line 81
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", The value is JSONArray, it only supports children of the text type. The error property has been removed.\n [key=\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\', index = \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7, v4, v1, v5}, Lcom/taptap/sdk/kit/internal/TapLogger;->logw$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 82
    invoke-virtual {p3, v0}, Lorg/json/JSONArray;->remove(I)Ljava/lang/Object;

    :cond_5
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    :cond_6
    return v6

    .line 89
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", The property value must be an instance of CharSequence/Number/Boolean/JSONArray/Date. The error property has been removed.\n[key=\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 88
    invoke-static {v5, p1, v4, v1, v5}, Lcom/taptap/sdk/kit/internal/TapLogger;->logw$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    return v4
.end method

.method public final filterProperties(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 4

    const-string v0, "errorTitle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_0

    return-void

    .line 99
    :cond_0
    invoke-virtual {p2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .line 100
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 101
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 102
    invoke-static {p1, v1}, Lcom/taptap/sdk/db/event/utils/TapCoreKit;->checkKey(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 103
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 106
    :cond_2
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "key"

    .line 107
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v1, v2}, Lcom/taptap/sdk/db/event/utils/TapCoreKit;->checkValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 108
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_3
    return-void
.end method
