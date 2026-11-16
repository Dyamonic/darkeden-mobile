.class public final Lcom/taptap/sdk/retrofit2/converter/kotlinx/serialization/Factory;
.super Lcom/taptap/sdk/retrofit2/Converter$Factory;
.source "Factory.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0010\u001b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006JI\u0010\u0007\u001a\u000e\u0012\u0002\u0008\u0003\u0012\u0004\u0012\u00020\t\u0018\u00010\u00082\u0006\u0010\n\u001a\u00020\u000b2\u000e\u0010\u000c\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u000e0\r2\u000e\u0010\u000f\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u000e0\r2\u0006\u0010\u0010\u001a\u00020\u0011H\u0016\u00a2\u0006\u0002\u0010\u0012J9\u0010\u0013\u001a\u000e\u0012\u0004\u0012\u00020\u0014\u0012\u0002\u0008\u0003\u0018\u00010\u00082\u0006\u0010\n\u001a\u00020\u000b2\u000e\u0010\u0015\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u000e0\r2\u0006\u0010\u0010\u001a\u00020\u0011H\u0016\u00a2\u0006\u0002\u0010\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/taptap/sdk/retrofit2/converter/kotlinx/serialization/Factory;",
        "Lcom/taptap/sdk/retrofit2/Converter$Factory;",
        "contentType",
        "Lcom/taptap/sdk/okhttp3/MediaType;",
        "serializer",
        "Lcom/taptap/sdk/retrofit2/converter/kotlinx/serialization/Serializer;",
        "(Lokhttp3/MediaType;Lcom/jakewharton/retrofit2/converter/kotlinx/serialization/Serializer;)V",
        "requestBodyConverter",
        "Lcom/taptap/sdk/retrofit2/Converter;",
        "Lcom/taptap/sdk/okhttp3/RequestBody;",
        "type",
        "Ljava/lang/reflect/Type;",
        "parameterAnnotations",
        "",
        "",
        "methodAnnotations",
        "retrofit",
        "Lcom/taptap/sdk/retrofit2/Retrofit;",
        "(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;Lretrofit2/Retrofit;)Lretrofit2/Converter;",
        "responseBodyConverter",
        "Lcom/taptap/sdk/okhttp3/ResponseBody;",
        "annotations",
        "(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Lretrofit2/Retrofit;)Lretrofit2/Converter;",
        "com.taptap.sdk.retrofit2-kotlinx-serialization-converter"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final contentType:Lcom/taptap/sdk/okhttp3/MediaType;

.field private final serializer:Lcom/taptap/sdk/retrofit2/converter/kotlinx/serialization/Serializer;


# direct methods
.method public constructor <init>(Lcom/taptap/sdk/okhttp3/MediaType;Lcom/taptap/sdk/retrofit2/converter/kotlinx/serialization/Serializer;)V
    .locals 1

    const-string v0, "contentType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serializer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0}, Lcom/taptap/sdk/retrofit2/Converter$Factory;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/taptap/sdk/retrofit2/converter/kotlinx/serialization/Factory;->contentType:Lcom/taptap/sdk/okhttp3/MediaType;

    .line 18
    iput-object p2, p0, Lcom/taptap/sdk/retrofit2/converter/kotlinx/serialization/Factory;->serializer:Lcom/taptap/sdk/retrofit2/converter/kotlinx/serialization/Serializer;

    return-void
.end method


# virtual methods
.method public requestBodyConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;Lcom/taptap/sdk/retrofit2/Retrofit;)Lcom/taptap/sdk/retrofit2/Converter;
    .locals 1
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

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parameterAnnotations"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "methodAnnotations"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "retrofit"

    invoke-static {p4, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    iget-object p2, p0, Lcom/taptap/sdk/retrofit2/converter/kotlinx/serialization/Factory;->serializer:Lcom/taptap/sdk/retrofit2/converter/kotlinx/serialization/Serializer;

    invoke-virtual {p2, p1}, Lcom/taptap/sdk/retrofit2/converter/kotlinx/serialization/Serializer;->serializer(Ljava/lang/reflect/Type;)Lkotlinx/serialization/KSerializer;

    move-result-object p1

    .line 38
    new-instance p2, Lcom/taptap/sdk/retrofit2/converter/kotlinx/serialization/SerializationStrategyConverter;

    iget-object p3, p0, Lcom/taptap/sdk/retrofit2/converter/kotlinx/serialization/Factory;->contentType:Lcom/taptap/sdk/okhttp3/MediaType;

    check-cast p1, Lkotlinx/serialization/SerializationStrategy;

    iget-object p4, p0, Lcom/taptap/sdk/retrofit2/converter/kotlinx/serialization/Factory;->serializer:Lcom/taptap/sdk/retrofit2/converter/kotlinx/serialization/Serializer;

    invoke-direct {p2, p3, p1, p4}, Lcom/taptap/sdk/retrofit2/converter/kotlinx/serialization/SerializationStrategyConverter;-><init>(Lcom/taptap/sdk/okhttp3/MediaType;Lkotlinx/serialization/SerializationStrategy;Lcom/taptap/sdk/retrofit2/converter/kotlinx/serialization/Serializer;)V

    check-cast p2, Lcom/taptap/sdk/retrofit2/Converter;

    return-object p2
.end method

.method public responseBodyConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Lcom/taptap/sdk/retrofit2/Retrofit;)Lcom/taptap/sdk/retrofit2/Converter;
    .locals 1
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

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "annotations"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "retrofit"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    iget-object p2, p0, Lcom/taptap/sdk/retrofit2/converter/kotlinx/serialization/Factory;->serializer:Lcom/taptap/sdk/retrofit2/converter/kotlinx/serialization/Serializer;

    invoke-virtual {p2, p1}, Lcom/taptap/sdk/retrofit2/converter/kotlinx/serialization/Serializer;->serializer(Ljava/lang/reflect/Type;)Lkotlinx/serialization/KSerializer;

    move-result-object p1

    .line 27
    new-instance p2, Lcom/taptap/sdk/retrofit2/converter/kotlinx/serialization/DeserializationStrategyConverter;

    check-cast p1, Lkotlinx/serialization/DeserializationStrategy;

    iget-object p3, p0, Lcom/taptap/sdk/retrofit2/converter/kotlinx/serialization/Factory;->serializer:Lcom/taptap/sdk/retrofit2/converter/kotlinx/serialization/Serializer;

    invoke-direct {p2, p1, p3}, Lcom/taptap/sdk/retrofit2/converter/kotlinx/serialization/DeserializationStrategyConverter;-><init>(Lkotlinx/serialization/DeserializationStrategy;Lcom/taptap/sdk/retrofit2/converter/kotlinx/serialization/Serializer;)V

    check-cast p2, Lcom/taptap/sdk/retrofit2/Converter;

    return-object p2
.end method
