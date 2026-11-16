.class final Lcom/taptap/sdk/retrofit2/ParameterHandler$Part;
.super Lcom/taptap/sdk/retrofit2/ParameterHandler;
.source "ParameterHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taptap/sdk/retrofit2/ParameterHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Part"
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

.field private final headers:Lcom/taptap/sdk/okhttp3/Headers;

.field private final method:Ljava/lang/reflect/Method;

.field private final p:I


# direct methods
.method constructor <init>(Ljava/lang/reflect/Method;ILcom/taptap/sdk/okhttp3/Headers;Lcom/taptap/sdk/retrofit2/Converter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Method;",
            "I",
            "Lcom/taptap/sdk/okhttp3/Headers;",
            "Lcom/taptap/sdk/retrofit2/Converter<",
            "TT;",
            "Lcom/taptap/sdk/okhttp3/RequestBody;",
            ">;)V"
        }
    .end annotation

    .line 343
    invoke-direct {p0}, Lcom/taptap/sdk/retrofit2/ParameterHandler;-><init>()V

    .line 344
    iput-object p1, p0, Lcom/taptap/sdk/retrofit2/ParameterHandler$Part;->method:Ljava/lang/reflect/Method;

    .line 345
    iput p2, p0, Lcom/taptap/sdk/retrofit2/ParameterHandler$Part;->p:I

    .line 346
    iput-object p3, p0, Lcom/taptap/sdk/retrofit2/ParameterHandler$Part;->headers:Lcom/taptap/sdk/okhttp3/Headers;

    .line 347
    iput-object p4, p0, Lcom/taptap/sdk/retrofit2/ParameterHandler$Part;->converter:Lcom/taptap/sdk/retrofit2/Converter;

    return-void
.end method


# virtual methods
.method apply(Lcom/taptap/sdk/retrofit2/RequestBuilder;Ljava/lang/Object;)V
    .locals 4
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

    if-nez p2, :cond_0

    return-void

    .line 356
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/taptap/sdk/retrofit2/ParameterHandler$Part;->converter:Lcom/taptap/sdk/retrofit2/Converter;

    invoke-interface {v0, p2}, Lcom/taptap/sdk/retrofit2/Converter;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taptap/sdk/okhttp3/RequestBody;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 360
    iget-object p2, p0, Lcom/taptap/sdk/retrofit2/ParameterHandler$Part;->headers:Lcom/taptap/sdk/okhttp3/Headers;

    invoke-virtual {p1, p2, v0}, Lcom/taptap/sdk/retrofit2/RequestBuilder;->addPart(Lcom/taptap/sdk/okhttp3/Headers;Lcom/taptap/sdk/okhttp3/RequestBody;)V

    return-void

    :catch_0
    move-exception p1

    .line 358
    iget-object v0, p0, Lcom/taptap/sdk/retrofit2/ParameterHandler$Part;->method:Ljava/lang/reflect/Method;

    iget v1, p0, Lcom/taptap/sdk/retrofit2/ParameterHandler$Part;->p:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to convert "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " to RequestBody"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, p2, v2}, Lcom/taptap/sdk/retrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method
