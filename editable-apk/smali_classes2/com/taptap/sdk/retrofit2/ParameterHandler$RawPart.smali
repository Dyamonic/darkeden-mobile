.class final Lcom/taptap/sdk/retrofit2/ParameterHandler$RawPart;
.super Lcom/taptap/sdk/retrofit2/ParameterHandler;
.source "ParameterHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taptap/sdk/retrofit2/ParameterHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "RawPart"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/taptap/sdk/retrofit2/ParameterHandler<",
        "Lcom/taptap/sdk/okhttp3/MultipartBody$Part;",
        ">;"
    }
.end annotation


# static fields
.field static final INSTANCE:Lcom/taptap/sdk/retrofit2/ParameterHandler$RawPart;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 365
    new-instance v0, Lcom/taptap/sdk/retrofit2/ParameterHandler$RawPart;

    invoke-direct {v0}, Lcom/taptap/sdk/retrofit2/ParameterHandler$RawPart;-><init>()V

    sput-object v0, Lcom/taptap/sdk/retrofit2/ParameterHandler$RawPart;->INSTANCE:Lcom/taptap/sdk/retrofit2/ParameterHandler$RawPart;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 367
    invoke-direct {p0}, Lcom/taptap/sdk/retrofit2/ParameterHandler;-><init>()V

    return-void
.end method


# virtual methods
.method apply(Lcom/taptap/sdk/retrofit2/RequestBuilder;Lcom/taptap/sdk/okhttp3/MultipartBody$Part;)V
    .locals 0
    .param p2    # Lcom/taptap/sdk/okhttp3/MultipartBody$Part;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p2, :cond_0

    .line 372
    invoke-virtual {p1, p2}, Lcom/taptap/sdk/retrofit2/RequestBuilder;->addPart(Lcom/taptap/sdk/okhttp3/MultipartBody$Part;)V

    :cond_0
    return-void
.end method

.method bridge synthetic apply(Lcom/taptap/sdk/retrofit2/RequestBuilder;Ljava/lang/Object;)V
    .locals 0
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 364
    check-cast p2, Lcom/taptap/sdk/okhttp3/MultipartBody$Part;

    invoke-virtual {p0, p1, p2}, Lcom/taptap/sdk/retrofit2/ParameterHandler$RawPart;->apply(Lcom/taptap/sdk/retrofit2/RequestBuilder;Lcom/taptap/sdk/okhttp3/MultipartBody$Part;)V

    return-void
.end method
