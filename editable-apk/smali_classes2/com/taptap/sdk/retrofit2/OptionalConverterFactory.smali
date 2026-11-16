.class public final Lcom/taptap/sdk/retrofit2/OptionalConverterFactory;
.super Lcom/taptap/sdk/retrofit2/Converter$Factory;
.source "OptionalConverterFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taptap/sdk/retrofit2/OptionalConverterFactory$OptionalConverter;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/taptap/sdk/retrofit2/Converter$Factory;-><init>()V

    return-void
.end method

.method public static create()Lcom/taptap/sdk/retrofit2/OptionalConverterFactory;
    .locals 1

    .line 41
    new-instance v0, Lcom/taptap/sdk/retrofit2/OptionalConverterFactory;

    invoke-direct {v0}, Lcom/taptap/sdk/retrofit2/OptionalConverterFactory;-><init>()V

    return-object v0
.end method


# virtual methods
.method public responseBodyConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Lcom/taptap/sdk/retrofit2/Retrofit;)Lcom/taptap/sdk/retrofit2/Converter;
    .locals 2
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

    .line 49
    invoke-static {p1}, Lcom/taptap/sdk/retrofit2/OptionalConverterFactory;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/util/Optional;

    if-eq v0, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/4 v0, 0x0

    .line 53
    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    invoke-static {v0, p1}, Lcom/taptap/sdk/retrofit2/OptionalConverterFactory;->getParameterUpperBound(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object p1

    .line 55
    invoke-virtual {p3, p1, p2}, Lcom/taptap/sdk/retrofit2/Retrofit;->responseBodyConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lcom/taptap/sdk/retrofit2/Converter;

    move-result-object p1

    .line 56
    new-instance p2, Lcom/taptap/sdk/retrofit2/OptionalConverterFactory$OptionalConverter;

    invoke-direct {p2, p1}, Lcom/taptap/sdk/retrofit2/OptionalConverterFactory$OptionalConverter;-><init>(Lcom/taptap/sdk/retrofit2/Converter;)V

    return-object p2
.end method
