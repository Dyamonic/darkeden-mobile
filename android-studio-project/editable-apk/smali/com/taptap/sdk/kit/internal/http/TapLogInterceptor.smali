.class public final Lcom/taptap/sdk/kit/internal/http/TapLogInterceptor;
.super Ljava/lang/Object;
.source "TapLogInterceptor.kt"

# interfaces
.implements Lcom/taptap/sdk/okhttp3/Interceptor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taptap/sdk/kit/internal/http/TapLogInterceptor$Level;,
        Lcom/taptap/sdk/kit/internal/http/TapLogInterceptor$Companion;,
        Lcom/taptap/sdk/kit/internal/http/TapLogInterceptor$LogTime;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u0000  2\u00020\u0001:\u0003 !\"B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0010\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0008\u001a\u00020\tH\u0002J\u0010\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\rH\u0016J\u0010\u0010\u000e\u001a\u00020\u00032\u0006\u0010\u000f\u001a\u00020\u0010H\u0002J\u0010\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014H\u0002J\u001c\u0010\u0015\u001a\u00020\u00122\u0006\u0010\u0016\u001a\u00020\u00172\n\u0010\u0018\u001a\u00060\u0019j\u0002`\u001aH\u0002J\u0010\u0010\u001b\u001a\u00020\u00122\u0006\u0010\u0016\u001a\u00020\u0017H\u0002J\u0018\u0010\u001c\u001a\u00020\u00122\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020\u000bH\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006#"
    }
    d2 = {
        "Lcom/taptap/sdk/kit/internal/http/TapLogInterceptor;",
        "Lcom/taptap/sdk/okhttp3/Interceptor;",
        "enableLog",
        "",
        "level",
        "Lcom/taptap/sdk/kit/internal/http/TapLogInterceptor$Level;",
        "(ZLcom/taptap/sdk/kit/internal/http/TapLogInterceptor$Level;)V",
        "bodyHasUnknownEncoding",
        "headers",
        "Lcom/taptap/sdk/okhttp3/Headers;",
        "intercept",
        "Lcom/taptap/sdk/okhttp3/Response;",
        "chain",
        "Lcom/taptap/sdk/okhttp3/Interceptor$Chain;",
        "isPlaintext",
        "buffer",
        "Lcom/taptap/sdk/okio/Buffer;",
        "log",
        "",
        "message",
        "",
        "logException",
        "request",
        "Lcom/taptap/sdk/okhttp3/Request;",
        "e",
        "Ljava/lang/Exception;",
        "Lkotlin/Exception;",
        "logRequest",
        "logResponse",
        "startTime",
        "Lcom/taptap/sdk/kit/internal/http/TapLogInterceptor$LogTime;",
        "response",
        "Companion",
        "Level",
        "LogTime",
        "tap-kit_release"
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
.field public static final Companion:Lcom/taptap/sdk/kit/internal/http/TapLogInterceptor$Companion;

.field private static final UTF8:Ljava/nio/charset/Charset;


# instance fields
.field private final enableLog:Z

.field private final level:Lcom/taptap/sdk/kit/internal/http/TapLogInterceptor$Level;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/taptap/sdk/kit/internal/http/TapLogInterceptor$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/taptap/sdk/kit/internal/http/TapLogInterceptor$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/taptap/sdk/kit/internal/http/TapLogInterceptor;->Companion:Lcom/taptap/sdk/kit/internal/http/TapLogInterceptor$Companion;

    const-string v0, "UTF-8"

    .line 25
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/taptap/sdk/kit/internal/http/TapLogInterceptor;->UTF8:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>(ZLcom/taptap/sdk/kit/internal/http/TapLogInterceptor$Level;)V
    .locals 1

    const-string v0, "level"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/taptap/sdk/kit/internal/http/TapLogInterceptor;->enableLog:Z

    iput-object p2, p0, Lcom/taptap/sdk/kit/internal/http/TapLogInterceptor;->level:Lcom/taptap/sdk/kit/internal/http/TapLogInterceptor$Level;

    return-void
.end method

.method private final bodyHasUnknownEncoding(Lcom/taptap/sdk/okhttp3/Headers;)Z
    .locals 2

    const-string v0, "Content-Encoding"

    .line 122
    invoke-virtual {p1, v0}, Lcom/taptap/sdk/okhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    const-string v1, "identity"

    .line 123
    invoke-static {p1, v1, v0}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "gzip"

    invoke-static {p1, v1, v0}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private final isPlaintext(Lcom/taptap/sdk/okio/Buffer;)Z
    .locals 8

    const/4 v0, 0x0

    .line 195
    :try_start_0
    new-instance v7, Lcom/taptap/sdk/okio/Buffer;

    invoke-direct {v7}, Lcom/taptap/sdk/okio/Buffer;-><init>()V

    .line 196
    invoke-virtual {p1}, Lcom/taptap/sdk/okio/Buffer;->size()J

    move-result-wide v1

    const-wide/16 v3, 0x40

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    invoke-virtual {p1}, Lcom/taptap/sdk/okio/Buffer;->size()J

    move-result-wide v1

    move-wide v5, v1

    goto :goto_0

    :cond_0
    move-wide v5, v3

    :goto_0
    const-wide/16 v3, 0x0

    move-object v1, p1

    move-object v2, v7

    .line 197
    invoke-virtual/range {v1 .. v6}, Lcom/taptap/sdk/okio/Buffer;->copyTo(Lcom/taptap/sdk/okio/Buffer;JJ)Lcom/taptap/sdk/okio/Buffer;

    move p1, v0

    :goto_1
    const/16 v1, 0x10

    if-ge p1, v1, :cond_2

    .line 200
    invoke-virtual {v7}, Lcom/taptap/sdk/okio/Buffer;->exhausted()Z

    move-result v1

    if-nez v1, :cond_2

    .line 201
    invoke-virtual {v7}, Lcom/taptap/sdk/okio/Buffer;->readUtf8CodePoint()I

    move-result v1

    .line 202
    invoke-static {v1}, Ljava/lang/Character;->isISOControl(I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(I)Z

    move-result v1
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_1

    return v0

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x1

    return p1

    :catch_0
    return v0
.end method

.method private final log(Ljava/lang/String;)V
    .locals 1

    .line 215
    iget-boolean v0, p0, Lcom/taptap/sdk/kit/internal/http/TapLogInterceptor;->enableLog:Z

    if-eqz v0, :cond_0

    const-string v0, "TapHttp"

    .line 216
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private final logException(Lcom/taptap/sdk/okhttp3/Request;Ljava/lang/Exception;)V
    .locals 3

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<------ HTTP FAILED: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 61
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/taptap/sdk/okhttp3/Request;->method()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/taptap/sdk/okhttp3/Request;->url()Lcom/taptap/sdk/okhttp3/HttpUrl;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 62
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0xa

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "builder.toString()"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/taptap/sdk/kit/internal/http/TapLogInterceptor;->log(Ljava/lang/String;)V

    return-void
.end method

.method private final logRequest(Lcom/taptap/sdk/okhttp3/Request;)V
    .locals 13

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "------> "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 70
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/taptap/sdk/okhttp3/Request;->method()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/taptap/sdk/okhttp3/Request;->url()Lcom/taptap/sdk/okhttp3/HttpUrl;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 71
    invoke-virtual {p1}, Lcom/taptap/sdk/okhttp3/Request;->body()Lcom/taptap/sdk/okhttp3/RequestBody;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    const-string v5, "-byte body)"

    const-string v6, " ("

    const/4 v7, 0x0

    if-eqz v4, :cond_2

    .line 74
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_1

    .line 75
    invoke-virtual {v1}, Lcom/taptap/sdk/okhttp3/RequestBody;->contentLength()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    goto :goto_1

    :cond_1
    move-object v8, v7

    :goto_1
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 76
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    :cond_2
    iget-object v8, p0, Lcom/taptap/sdk/kit/internal/http/TapLogInterceptor;->level:Lcom/taptap/sdk/kit/internal/http/TapLogInterceptor$Level;

    sget-object v9, Lcom/taptap/sdk/kit/internal/http/TapLogInterceptor$Level;->BASIC:Lcom/taptap/sdk/kit/internal/http/TapLogInterceptor$Level;

    if-ne v8, v9, :cond_e

    const-string v8, "\n"

    if-eqz v4, :cond_7

    if-eqz v1, :cond_3

    .line 81
    invoke-virtual {v1}, Lcom/taptap/sdk/okhttp3/RequestBody;->contentType()Lcom/taptap/sdk/okhttp3/MediaType;

    move-result-object v9

    goto :goto_2

    :cond_3
    move-object v9, v7

    :goto_2
    if-eqz v9, :cond_4

    .line 82
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "Content-Type: "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/taptap/sdk/okhttp3/RequestBody;->contentType()Lcom/taptap/sdk/okhttp3/MediaType;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_4
    if-eqz v1, :cond_5

    .line 84
    invoke-virtual {v1}, Lcom/taptap/sdk/okhttp3/RequestBody;->contentLength()J

    move-result-wide v9

    const-wide/16 v11, -0x1

    cmp-long v9, v9, v11

    if-nez v9, :cond_5

    move v9, v3

    goto :goto_3

    :cond_5
    move v9, v2

    :goto_3
    if-nez v9, :cond_7

    .line 85
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "Content-Length: "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcom/taptap/sdk/okhttp3/RequestBody;->contentLength()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    :cond_6
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 88
    :cond_7
    invoke-virtual {p1}, Lcom/taptap/sdk/okhttp3/Request;->headers()Lcom/taptap/sdk/okhttp3/Headers;

    move-result-object v7

    .line 89
    invoke-virtual {v7}, Lcom/taptap/sdk/okhttp3/Headers;->size()I

    move-result v9

    :goto_4
    if-ge v2, v9, :cond_9

    .line 90
    invoke-virtual {v7, v2}, Lcom/taptap/sdk/okhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v10

    const-string v11, "Content-Type"

    .line 91
    invoke-static {v11, v10, v3}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v11

    if-nez v11, :cond_8

    const-string v11, "Content-Length"

    invoke-static {v11, v10, v3}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v11

    if-nez v11, :cond_8

    .line 92
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ": "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Lcom/taptap/sdk/okhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_9
    const-string v2, "\n------> END "

    if-eqz v4, :cond_d

    const-string v3, "headers"

    .line 97
    invoke-static {v7, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v7}, Lcom/taptap/sdk/kit/internal/http/TapLogInterceptor;->bodyHasUnknownEncoding(Lcom/taptap/sdk/okhttp3/Headers;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 98
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/taptap/sdk/okhttp3/Request;->method()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " (encoded body omitted)"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_5

    .line 100
    :cond_a
    new-instance v3, Lcom/taptap/sdk/okio/Buffer;

    invoke-direct {v3}, Lcom/taptap/sdk/okio/Buffer;-><init>()V

    .line 101
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v4, v3

    check-cast v4, Lcom/taptap/sdk/okio/BufferedSink;

    invoke-virtual {v1, v4}, Lcom/taptap/sdk/okhttp3/RequestBody;->writeTo(Lcom/taptap/sdk/okio/BufferedSink;)V

    .line 102
    sget-object v4, Lcom/taptap/sdk/kit/internal/http/TapLogInterceptor;->UTF8:Ljava/nio/charset/Charset;

    .line 103
    invoke-virtual {v1}, Lcom/taptap/sdk/okhttp3/RequestBody;->contentType()Lcom/taptap/sdk/okhttp3/MediaType;

    move-result-object v7

    if-eqz v7, :cond_b

    .line 105
    invoke-virtual {v7, v4}, Lcom/taptap/sdk/okhttp3/MediaType;->charset(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v4

    .line 107
    :cond_b
    invoke-direct {p0, v3}, Lcom/taptap/sdk/kit/internal/http/TapLogInterceptor;->isPlaintext(Lcom/taptap/sdk/okio/Buffer;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 108
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Lcom/taptap/sdk/okio/Buffer;->readString(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/taptap/sdk/okhttp3/Request;->method()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/taptap/sdk/okhttp3/RequestBody;->contentLength()J

    move-result-wide v1

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 111
    :cond_c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/taptap/sdk/okhttp3/Request;->method()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " (binary "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/taptap/sdk/okhttp3/RequestBody;->contentLength()J

    move-result-wide v1

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "-byte body omitted)"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 115
    :cond_d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/taptap/sdk/okhttp3/Request;->method()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    :cond_e
    :goto_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "builder.toString()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/taptap/sdk/kit/internal/http/TapLogInterceptor;->log(Ljava/lang/String;)V

    return-void
.end method

.method private final logResponse(Lcom/taptap/sdk/kit/internal/http/TapLogInterceptor$LogTime;Lcom/taptap/sdk/okhttp3/Response;)V
    .locals 9

    .line 127
    invoke-virtual {p2}, Lcom/taptap/sdk/okhttp3/Response;->body()Lcom/taptap/sdk/okhttp3/ResponseBody;

    move-result-object v0

    .line 128
    invoke-virtual {p2}, Lcom/taptap/sdk/okhttp3/Response;->request()Lcom/taptap/sdk/okhttp3/Request;

    move-result-object v1

    .line 130
    invoke-virtual {p1}, Lcom/taptap/sdk/kit/internal/http/TapLogInterceptor$LogTime;->tookMs()J

    move-result-wide v2

    if-eqz v0, :cond_0

    .line 131
    invoke-virtual {v0}, Lcom/taptap/sdk/okhttp3/ResponseBody;->contentLength()J

    move-result-wide v4

    goto :goto_0

    :cond_0
    const-wide/16 v4, -0x1

    .line 133
    :goto_0
    invoke-virtual {p2}, Lcom/taptap/sdk/okhttp3/Response;->headers()Lcom/taptap/sdk/okhttp3/Headers;

    move-result-object p1

    .line 135
    new-instance v6, Ljava/lang/StringBuilder;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "<------ "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/taptap/sdk/okhttp3/Response;->code()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v8, 0x20

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/taptap/sdk/okhttp3/Request;->url()Lcom/taptap/sdk/okhttp3/HttpUrl;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "ms)"

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 137
    iget-object v1, p0, Lcom/taptap/sdk/kit/internal/http/TapLogInterceptor;->level:Lcom/taptap/sdk/kit/internal/http/TapLogInterceptor$Level;

    sget-object v2, Lcom/taptap/sdk/kit/internal/http/TapLogInterceptor$Level;->BASIC:Lcom/taptap/sdk/kit/internal/http/TapLogInterceptor$Level;

    const-string v3, "\n"

    if-ne v1, v2, :cond_1

    const/4 v1, 0x0

    .line 138
    invoke-virtual {p1}, Lcom/taptap/sdk/okhttp3/Headers;->size()I

    move-result v2

    :goto_1
    if-ge v1, v2, :cond_1

    .line 139
    invoke-virtual {p1, v1}, Lcom/taptap/sdk/okhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v7

    .line 140
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Lcom/taptap/sdk/okhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 144
    :cond_1
    iget-object v1, p0, Lcom/taptap/sdk/kit/internal/http/TapLogInterceptor;->level:Lcom/taptap/sdk/kit/internal/http/TapLogInterceptor$Level;

    sget-object v2, Lcom/taptap/sdk/kit/internal/http/TapLogInterceptor$Level;->BASIC:Lcom/taptap/sdk/kit/internal/http/TapLogInterceptor$Level;

    if-ne v1, v2, :cond_a

    .line 145
    invoke-static {p2}, Lcom/taptap/sdk/okhttp3/internal/http/HttpHeaders;->hasBody(Lcom/taptap/sdk/okhttp3/Response;)Z

    move-result v1

    if-eqz v1, :cond_9

    if-eqz v0, :cond_9

    .line 146
    invoke-virtual {p2}, Lcom/taptap/sdk/okhttp3/Response;->headers()Lcom/taptap/sdk/okhttp3/Headers;

    move-result-object p2

    const-string v1, "response.headers()"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/taptap/sdk/kit/internal/http/TapLogInterceptor;->bodyHasUnknownEncoding(Lcom/taptap/sdk/okhttp3/Headers;)Z

    move-result p2

    if-eqz p2, :cond_2

    const-string p1, "\n<------ END HTTP (encoded body omitted)"

    .line 147
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    .line 149
    :cond_2
    invoke-virtual {v0}, Lcom/taptap/sdk/okhttp3/ResponseBody;->source()Lcom/taptap/sdk/okio/BufferedSource;

    move-result-object p2

    const-wide v1, 0x7fffffffffffffffL

    .line 150
    invoke-interface {p2, v1, v2}, Lcom/taptap/sdk/okio/BufferedSource;->request(J)Z

    .line 151
    invoke-interface {p2}, Lcom/taptap/sdk/okio/BufferedSource;->buffer()Lcom/taptap/sdk/okio/Buffer;

    move-result-object p2

    const-string v1, "Content-Encoding"

    .line 153
    invoke-virtual {p1, v1}, Lcom/taptap/sdk/okhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "gzip"

    const/4 v2, 0x1

    invoke-static {v1, p1, v2}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_4

    .line 154
    invoke-virtual {p2}, Lcom/taptap/sdk/okio/Buffer;->size()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 157
    :try_start_0
    new-instance v2, Lcom/taptap/sdk/okio/GzipSource;

    invoke-virtual {p2}, Lcom/taptap/sdk/okio/Buffer;->clone()Lcom/taptap/sdk/okio/Buffer;

    move-result-object p2

    check-cast p2, Lcom/taptap/sdk/okio/Source;

    invoke-direct {v2, p2}, Lcom/taptap/sdk/okio/GzipSource;-><init>(Lcom/taptap/sdk/okio/Source;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 158
    :try_start_1
    new-instance p2, Lcom/taptap/sdk/okio/Buffer;

    invoke-direct {p2}, Lcom/taptap/sdk/okio/Buffer;-><init>()V

    .line 159
    move-object v1, v2

    check-cast v1, Lcom/taptap/sdk/okio/Source;

    invoke-virtual {p2, v1}, Lcom/taptap/sdk/okio/Buffer;->writeAll(Lcom/taptap/sdk/okio/Source;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 161
    invoke-virtual {v2}, Lcom/taptap/sdk/okio/GzipSource;->close()V

    move-object v1, p1

    goto :goto_3

    :catchall_0
    move-exception p1

    move-object v1, v2

    goto :goto_2

    :catchall_1
    move-exception p1

    :goto_2
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/taptap/sdk/okio/GzipSource;->close()V

    :cond_3
    throw p1

    .line 165
    :cond_4
    :goto_3
    sget-object p1, Lcom/taptap/sdk/kit/internal/http/TapLogInterceptor;->UTF8:Ljava/nio/charset/Charset;

    .line 166
    invoke-virtual {v0}, Lcom/taptap/sdk/okhttp3/ResponseBody;->contentType()Lcom/taptap/sdk/okhttp3/MediaType;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 168
    invoke-virtual {v0, p1}, Lcom/taptap/sdk/okhttp3/MediaType;->charset(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object p1

    :cond_5
    const-string v0, "buffer"

    .line 171
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/taptap/sdk/kit/internal/http/TapLogInterceptor;->isPlaintext(Lcom/taptap/sdk/okio/Buffer;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n<------ END HTTP (binary "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/taptap/sdk/okio/Buffer;->size()J

    move-result-wide v7

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "-byte body omitted)"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    const-wide/16 v7, 0x0

    cmp-long v0, v4, v7

    if-eqz v0, :cond_7

    .line 176
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    invoke-virtual {p2}, Lcom/taptap/sdk/okio/Buffer;->clone()Lcom/taptap/sdk/okio/Buffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/taptap/sdk/okio/Buffer;->readString(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    const-string p1, "\n<------ END HTTP ("

    if-eqz v1, :cond_8

    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/taptap/sdk/okio/Buffer;->size()J

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "-byte, "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "-gzipped-byte body)"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 183
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/taptap/sdk/okio/Buffer;->size()J

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "-byte body)"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_9
    const-string p1, "\n<------ END HTTP"

    .line 187
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    :cond_a
    :goto_4
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "builder.toString()"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/taptap/sdk/kit/internal/http/TapLogInterceptor;->log(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public intercept(Lcom/taptap/sdk/okhttp3/Interceptor$Chain;)Lcom/taptap/sdk/okhttp3/Response;
    .locals 4

    const-string v0, "request"

    const-string v1, "chain"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-interface {p1}, Lcom/taptap/sdk/okhttp3/Interceptor$Chain;->request()Lcom/taptap/sdk/okhttp3/Request;

    move-result-object v1

    .line 38
    :try_start_0
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 39
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/taptap/sdk/kit/internal/http/TapLogInterceptor;->logRequest(Lcom/taptap/sdk/okhttp3/Request;)V

    .line 40
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 38
    invoke-static {v2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v2}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    :goto_0
    new-instance v2, Lcom/taptap/sdk/kit/internal/http/TapLogInterceptor$LogTime;

    invoke-direct {v2}, Lcom/taptap/sdk/kit/internal/http/TapLogInterceptor$LogTime;-><init>()V

    .line 45
    :try_start_1
    invoke-interface {p1, v1}, Lcom/taptap/sdk/okhttp3/Interceptor$Chain;->proceed(Lcom/taptap/sdk/okhttp3/Request;)Lcom/taptap/sdk/okhttp3/Response;

    move-result-object p1

    const-string v3, "chain.proceed(request)"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 51
    :try_start_2
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 52
    invoke-direct {p0, v2, p1}, Lcom/taptap/sdk/kit/internal/http/TapLogInterceptor;->logResponse(Lcom/taptap/sdk/kit/internal/http/TapLogInterceptor$LogTime;Lcom/taptap/sdk/okhttp3/Response;)V

    .line 53
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 51
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 53
    :goto_1
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 54
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "logResponse error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TapHttp"

    invoke-static {v2, v1, v0}, Lcom/taptap/sdk/kit/internal/TapLogger;->logd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-object p1

    :catch_0
    move-exception p1

    .line 47
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v1, p1}, Lcom/taptap/sdk/kit/internal/http/TapLogInterceptor;->logException(Lcom/taptap/sdk/okhttp3/Request;Ljava/lang/Exception;)V

    .line 48
    throw p1
.end method
