.class final Lcom/taptap/sdk/retrofit2/BuiltInConverters$StreamingResponseBodyConverter;
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
    name = "StreamingResponseBodyConverter"
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
.field static final INSTANCE:Lcom/taptap/sdk/retrofit2/BuiltInConverters$StreamingResponseBodyConverter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 89
    new-instance v0, Lcom/taptap/sdk/retrofit2/BuiltInConverters$StreamingResponseBodyConverter;

    invoke-direct {v0}, Lcom/taptap/sdk/retrofit2/BuiltInConverters$StreamingResponseBodyConverter;-><init>()V

    sput-object v0, Lcom/taptap/sdk/retrofit2/BuiltInConverters$StreamingResponseBodyConverter;->INSTANCE:Lcom/taptap/sdk/retrofit2/BuiltInConverters$StreamingResponseBodyConverter;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public convert(Lcom/taptap/sdk/okhttp3/ResponseBody;)Lcom/taptap/sdk/okhttp3/ResponseBody;
    .locals 0

    return-object p1
.end method

.method public bridge synthetic convert(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 87
    check-cast p1, Lcom/taptap/sdk/okhttp3/ResponseBody;

    invoke-virtual {p0, p1}, Lcom/taptap/sdk/retrofit2/BuiltInConverters$StreamingResponseBodyConverter;->convert(Lcom/taptap/sdk/okhttp3/ResponseBody;)Lcom/taptap/sdk/okhttp3/ResponseBody;

    move-result-object p1

    return-object p1
.end method
