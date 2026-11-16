.class final Lcom/taptap/sdk/retrofit2/BuiltInConverters$BufferingResponseBodyConverter;
.super Ljava/lang/Object;
.source "BuiltInConverters.java"

# interfaces
.implements Lcom/taptap/sdk/retrofit2/Converter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taptap/sdk/retrofit2/BuiltInConverters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "BufferingResponseBodyConverter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/taptap/sdk/retrofit2/Converter<",
        "Lcom/taptap/sdk/okhttp3/ResponseBody;",
        "Lcom/taptap/sdk/okhttp3/ResponseBody;",
        ">;"
    }
.end annotation


# static fields
.field static final INSTANCE:Lcom/taptap/sdk/retrofit2/BuiltInConverters$BufferingResponseBodyConverter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 99
    new-instance v0, Lcom/taptap/sdk/retrofit2/BuiltInConverters$BufferingResponseBodyConverter;

    invoke-direct {v0}, Lcom/taptap/sdk/retrofit2/BuiltInConverters$BufferingResponseBodyConverter;-><init>()V

    sput-object v0, Lcom/taptap/sdk/retrofit2/BuiltInConverters$BufferingResponseBodyConverter;->INSTANCE:Lcom/taptap/sdk/retrofit2/BuiltInConverters$BufferingResponseBodyConverter;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public convert(Lcom/taptap/sdk/okhttp3/ResponseBody;)Lcom/taptap/sdk/okhttp3/ResponseBody;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 105
    :try_start_0
    invoke-static {p1}, Lcom/taptap/sdk/retrofit2/Utils;->buffer(Lcom/taptap/sdk/okhttp3/ResponseBody;)Lcom/taptap/sdk/okhttp3/ResponseBody;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    invoke-virtual {p1}, Lcom/taptap/sdk/okhttp3/ResponseBody;->close()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Lcom/taptap/sdk/okhttp3/ResponseBody;->close()V

    throw v0
.end method

.method public bridge synthetic convert(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 97
    check-cast p1, Lcom/taptap/sdk/okhttp3/ResponseBody;

    invoke-virtual {p0, p1}, Lcom/taptap/sdk/retrofit2/BuiltInConverters$BufferingResponseBodyConverter;->convert(Lcom/taptap/sdk/okhttp3/ResponseBody;)Lcom/taptap/sdk/okhttp3/ResponseBody;

    move-result-object p1

    return-object p1
.end method
