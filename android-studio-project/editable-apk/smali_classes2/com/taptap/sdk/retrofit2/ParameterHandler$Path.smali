.class final Lcom/taptap/sdk/retrofit2/ParameterHandler$Path;
.super Lcom/taptap/sdk/retrofit2/ParameterHandler;
.source "ParameterHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taptap/sdk/retrofit2/ParameterHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Path"
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
.field private final encoded:Z

.field private final method:Ljava/lang/reflect/Method;

.field private final name:Ljava/lang/String;

.field private final p:I

.field private final valueConverter:Lcom/taptap/sdk/retrofit2/Converter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/taptap/sdk/retrofit2/Converter<",
            "TT;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/reflect/Method;ILjava/lang/String;Lcom/taptap/sdk/retrofit2/Converter;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Method;",
            "I",
            "Ljava/lang/String;",
            "Lcom/taptap/sdk/retrofit2/Converter<",
            "TT;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 104
    invoke-direct {p0}, Lcom/taptap/sdk/retrofit2/ParameterHandler;-><init>()V

    .line 105
    iput-object p1, p0, Lcom/taptap/sdk/retrofit2/ParameterHandler$Path;->method:Ljava/lang/reflect/Method;

    .line 106
    iput p2, p0, Lcom/taptap/sdk/retrofit2/ParameterHandler$Path;->p:I

    const-string p1, "name == null"

    .line 107
    invoke-static {p3, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p3, Ljava/lang/String;

    iput-object p3, p0, Lcom/taptap/sdk/retrofit2/ParameterHandler$Path;->name:Ljava/lang/String;

    .line 108
    iput-object p4, p0, Lcom/taptap/sdk/retrofit2/ParameterHandler$Path;->valueConverter:Lcom/taptap/sdk/retrofit2/Converter;

    .line 109
    iput-boolean p5, p0, Lcom/taptap/sdk/retrofit2/ParameterHandler$Path;->encoded:Z

    return-void
.end method


# virtual methods
.method apply(Lcom/taptap/sdk/retrofit2/RequestBuilder;Ljava/lang/Object;)V
    .locals 2
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 118
    iget-object v0, p0, Lcom/taptap/sdk/retrofit2/ParameterHandler$Path;->name:Ljava/lang/String;

    iget-object v1, p0, Lcom/taptap/sdk/retrofit2/ParameterHandler$Path;->valueConverter:Lcom/taptap/sdk/retrofit2/Converter;

    invoke-interface {v1, p2}, Lcom/taptap/sdk/retrofit2/Converter;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    iget-boolean v1, p0, Lcom/taptap/sdk/retrofit2/ParameterHandler$Path;->encoded:Z

    invoke-virtual {p1, v0, p2, v1}, Lcom/taptap/sdk/retrofit2/RequestBuilder;->addPathParam(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    .line 115
    :cond_0
    iget-object p1, p0, Lcom/taptap/sdk/retrofit2/ParameterHandler$Path;->method:Ljava/lang/reflect/Method;

    iget p2, p0, Lcom/taptap/sdk/retrofit2/ParameterHandler$Path;->p:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Path parameter \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/taptap/sdk/retrofit2/ParameterHandler$Path;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\" value must not be null."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, p2, v0, v1}, Lcom/taptap/sdk/retrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method
