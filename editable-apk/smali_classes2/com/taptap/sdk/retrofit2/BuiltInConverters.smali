.class final Lcom/taptap/sdk/retrofit2/BuiltInConverters;
.super Lcom/taptap/sdk/retrofit2/Converter$Factory;
.source "BuiltInConverters.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taptap/sdk/retrofit2/BuiltInConverters$ToStringConverter;,
        Lcom/taptap/sdk/retrofit2/BuiltInConverters$BufferingResponseBodyConverter;,
        Lcom/taptap/sdk/retrofit2/BuiltInConverters$StreamingResponseBodyConverter;,
        Lcom/taptap/sdk/retrofit2/BuiltInConverters$RequestBodyConverter;,
        Lcom/taptap/sdk/retrofit2/BuiltInConverters$UnitResponseBodyConverter;,
        Lcom/taptap/sdk/retrofit2/BuiltInConverters$VoidResponseBodyConverter;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/taptap/sdk/retrofit2/Converter$Factory;-><init>()V

    return-void
.end method


# virtual methods
.method public requestBodyConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;Lcom/taptap/sdk/retrofit2/Retrofit;)Lcom/taptap/sdk/retrofit2/Converter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "Lcom/taptap/sdk/retrofit2/Retrofit;",
            ")",
            "Lcom/taptap/sdk/retrofit2/Converter<",
            "*",
            "Lcom/taptap/sdk/okhttp3/RequestBody;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 52
    const-class p2, Lcom/taptap/sdk/okhttp3/RequestBody;

    invoke-static {p1}, Lcom/taptap/sdk/retrofit2/Utils;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 53
    sget-object p1, Lcom/taptap/sdk/retrofit2/BuiltInConverters$RequestBodyConverter;->INSTANCE:Lcom/taptap/sdk/retrofit2/BuiltInConverters$RequestBodyConverter;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public responseBodyConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Lcom/taptap/sdk/retrofit2/Retrofit;)Lcom/taptap/sdk/retrofit2/Converter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "Lcom/taptap/sdk/retrofit2/Retrofit;",
            ")",
            "Lcom/taptap/sdk/retrofit2/Converter<",
            "Lcom/taptap/sdk/okhttp3/ResponseBody;",
            "*>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 32
    const-class p3, Lcom/taptap/sdk/okhttp3/ResponseBody;

    if-ne p1, p3, :cond_1

    .line 33
    const-class p1, Lcom/taptap/sdk/retrofit2/http/Streaming;

    invoke-static {p2, p1}, Lcom/taptap/sdk/retrofit2/Utils;->isAnnotationPresent([Ljava/lang/annotation/Annotation;Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 34
    sget-object p1, Lcom/taptap/sdk/retrofit2/BuiltInConverters$StreamingResponseBodyConverter;->INSTANCE:Lcom/taptap/sdk/retrofit2/BuiltInConverters$StreamingResponseBodyConverter;

    goto :goto_0

    .line 35
    :cond_0
    sget-object p1, Lcom/taptap/sdk/retrofit2/BuiltInConverters$BufferingResponseBodyConverter;->INSTANCE:Lcom/taptap/sdk/retrofit2/BuiltInConverters$BufferingResponseBodyConverter;

    :goto_0
    return-object p1

    .line 37
    :cond_1
    const-class p2, Ljava/lang/Void;

    if-ne p1, p2, :cond_2

    .line 38
    sget-object p1, Lcom/taptap/sdk/retrofit2/BuiltInConverters$VoidResponseBodyConverter;->INSTANCE:Lcom/taptap/sdk/retrofit2/BuiltInConverters$VoidResponseBodyConverter;

    return-object p1

    .line 40
    :cond_2
    invoke-static {p1}, Lcom/taptap/sdk/retrofit2/Utils;->isUnit(Ljava/lang/reflect/Type;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 41
    sget-object p1, Lcom/taptap/sdk/retrofit2/BuiltInConverters$UnitResponseBodyConverter;->INSTANCE:Lcom/taptap/sdk/retrofit2/BuiltInConverters$UnitResponseBodyConverter;

    return-object p1

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method
