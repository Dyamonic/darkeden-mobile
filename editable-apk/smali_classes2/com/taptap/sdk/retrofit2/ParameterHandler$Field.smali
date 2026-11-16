.class final Lcom/taptap/sdk/retrofit2/ParameterHandler$Field;
.super Lcom/taptap/sdk/retrofit2/ParameterHandler;
.source "ParameterHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taptap/sdk/retrofit2/ParameterHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Field"
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

.field private final name:Ljava/lang/String;

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
.method constructor <init>(Ljava/lang/String;Lcom/taptap/sdk/retrofit2/Converter;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/taptap/sdk/retrofit2/Converter<",
            "TT;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 271
    invoke-direct {p0}, Lcom/taptap/sdk/retrofit2/ParameterHandler;-><init>()V

    const-string v0, "name == null"

    .line 272
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/taptap/sdk/retrofit2/ParameterHandler$Field;->name:Ljava/lang/String;

    .line 273
    iput-object p2, p0, Lcom/taptap/sdk/retrofit2/ParameterHandler$Field;->valueConverter:Lcom/taptap/sdk/retrofit2/Converter;

    .line 274
    iput-boolean p3, p0, Lcom/taptap/sdk/retrofit2/ParameterHandler$Field;->encoded:Z

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

    if-nez p2, :cond_0

    return-void

    .line 281
    :cond_0
    iget-object v0, p0, Lcom/taptap/sdk/retrofit2/ParameterHandler$Field;->valueConverter:Lcom/taptap/sdk/retrofit2/Converter;

    invoke-interface {v0, p2}, Lcom/taptap/sdk/retrofit2/Converter;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-nez p2, :cond_1

    return-void

    .line 284
    :cond_1
    iget-object v0, p0, Lcom/taptap/sdk/retrofit2/ParameterHandler$Field;->name:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/taptap/sdk/retrofit2/ParameterHandler$Field;->encoded:Z

    invoke-virtual {p1, v0, p2, v1}, Lcom/taptap/sdk/retrofit2/RequestBuilder;->addFormField(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method
