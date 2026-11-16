.class final Lcom/taptap/sdk/retrofit2/ParameterHandler$Body;
.super Lcom/taptap/sdk/retrofit2/ParameterHandler;
.source "ParameterHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taptap/sdk/retrofit2/ParameterHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Body"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/taptap/sdk/retrofit2/ParameterHandler<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final converter:Lcom/taptap/sdk/retrofit2/Converter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/taptap/sdk/retrofit2/Converter<",
            "TT;",
            "Lcom/taptap/sdk/okhttp3/RequestBody;",
            ">;"
        }
    .end annotation
.end field

.field private final method:Ljava/lang/reflect/Method;

.field private final p:I


# direct methods
.method constructor <init>(Ljava/lang/reflect/Method;ILcom/taptap/sdk/retrofit2/Converter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Method;",
            "I",
            "Lcom/taptap/sdk/retrofit2/Converter<",
            "TT;",
            "Lcom/taptap/sdk/okhttp3/RequestBody;",
            ">;)V"
        }
    .end annotation

    .line 425
    invoke-direct {p0}, Lcom/taptap/sdk/retrofit2/ParameterHandler;-><init>()V

    .line 426
    iput-object p1, p0, Lcom/taptap/sdk/retrofit2/ParameterHandler$Body;->method:Ljava/lang/reflect/Method;

    .line 427
    iput p2, p0, Lcom/taptap/sdk/retrofit2/ParameterHandler$Body;->p:I

    .line 428
    iput-object p3, p0, Lcom/taptap/sdk/retrofit2/ParameterHandler$Body;->converter:Lcom/taptap/sdk/retrofit2/Converter;

    return-void
.end method


# virtual methods
.method apply(Lcom/taptap/sdk/retrofit2/RequestBuilder;Ljava/lang/Object;)V
    .locals 5
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taptap/sdk/retrofit2/RequestBuilder;",
            "TT;)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 438
    :try_start_0
    iget-object v1, p0, Lcom/taptap/sdk/retrofit2/ParameterHandler$Body;->converter:Lcom/taptap/sdk/retrofit2/Converter;

    invoke-interface {v1, p2}, Lcom/taptap/sdk/retrofit2/Converter;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taptap/sdk/okhttp3/RequestBody;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 442
    invoke-virtual {p1, v1}, Lcom/taptap/sdk/retrofit2/RequestBuilder;->setBody(Lcom/taptap/sdk/okhttp3/RequestBody;)V

    return-void

    :catch_0
    move-exception p1

    .line 440
    iget-object v1, p0, Lcom/taptap/sdk/retrofit2/ParameterHandler$Body;->method:Ljava/lang/reflect/Method;

    iget v2, p0, Lcom/taptap/sdk/retrofit2/ParameterHandler$Body;->p:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to convert "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " to RequestBody"

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, p1, v2, p2, v0}, Lcom/taptap/sdk/retrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;Ljava/lang/Throwable;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 434
    :cond_0
    iget-object p1, p0, Lcom/taptap/sdk/retrofit2/ParameterHandler$Body;->method:Ljava/lang/reflect/Method;

    iget p2, p0, Lcom/taptap/sdk/retrofit2/ParameterHandler$Body;->p:I

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Body parameter value must not be null."

    invoke-static {p1, p2, v1, v0}, Lcom/taptap/sdk/retrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method
