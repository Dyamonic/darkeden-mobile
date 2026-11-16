.class abstract Lcom/taptap/sdk/retrofit2/ParameterHandler;
.super Ljava/lang/Object;
.source "ParameterHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taptap/sdk/retrofit2/ParameterHandler$Tag;,
        Lcom/taptap/sdk/retrofit2/ParameterHandler$Body;,
        Lcom/taptap/sdk/retrofit2/ParameterHandler$PartMap;,
        Lcom/taptap/sdk/retrofit2/ParameterHandler$RawPart;,
        Lcom/taptap/sdk/retrofit2/ParameterHandler$Part;,
        Lcom/taptap/sdk/retrofit2/ParameterHandler$FieldMap;,
        Lcom/taptap/sdk/retrofit2/ParameterHandler$Field;,
        Lcom/taptap/sdk/retrofit2/ParameterHandler$Headers;,
        Lcom/taptap/sdk/retrofit2/ParameterHandler$HeaderMap;,
        Lcom/taptap/sdk/retrofit2/ParameterHandler$QueryMap;,
        Lcom/taptap/sdk/retrofit2/ParameterHandler$QueryName;,
        Lcom/taptap/sdk/retrofit2/ParameterHandler$Query;,
        Lcom/taptap/sdk/retrofit2/ParameterHandler$Path;,
        Lcom/taptap/sdk/retrofit2/ParameterHandler$Header;,
        Lcom/taptap/sdk/retrofit2/ParameterHandler$RelativeUrl;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method abstract apply(Lcom/taptap/sdk/retrofit2/RequestBuilder;Ljava/lang/Object;)V
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
.end method

.method final array()Lcom/taptap/sdk/retrofit2/ParameterHandler;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/taptap/sdk/retrofit2/ParameterHandler<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 44
    new-instance v0, Lcom/taptap/sdk/retrofit2/ParameterHandler$2;

    invoke-direct {v0, p0}, Lcom/taptap/sdk/retrofit2/ParameterHandler$2;-><init>(Lcom/taptap/sdk/retrofit2/ParameterHandler;)V

    return-object v0
.end method

.method final iterable()Lcom/taptap/sdk/retrofit2/ParameterHandler;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/taptap/sdk/retrofit2/ParameterHandler<",
            "Ljava/lang/Iterable<",
            "TT;>;>;"
        }
    .end annotation

    .line 31
    new-instance v0, Lcom/taptap/sdk/retrofit2/ParameterHandler$1;

    invoke-direct {v0, p0}, Lcom/taptap/sdk/retrofit2/ParameterHandler$1;-><init>(Lcom/taptap/sdk/retrofit2/ParameterHandler;)V

    return-object v0
.end method
