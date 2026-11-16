.class final Lcom/taptap/sdk/retrofit2/ParameterHandler$Tag;
.super Lcom/taptap/sdk/retrofit2/ParameterHandler;
.source "ParameterHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taptap/sdk/retrofit2/ParameterHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Tag"
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
.field final cls:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 449
    invoke-direct {p0}, Lcom/taptap/sdk/retrofit2/ParameterHandler;-><init>()V

    .line 450
    iput-object p1, p0, Lcom/taptap/sdk/retrofit2/ParameterHandler$Tag;->cls:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method apply(Lcom/taptap/sdk/retrofit2/RequestBuilder;Ljava/lang/Object;)V
    .locals 1
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

    .line 455
    iget-object v0, p0, Lcom/taptap/sdk/retrofit2/ParameterHandler$Tag;->cls:Ljava/lang/Class;

    invoke-virtual {p1, v0, p2}, Lcom/taptap/sdk/retrofit2/RequestBuilder;->addTag(Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method
