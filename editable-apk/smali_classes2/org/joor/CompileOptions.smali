.class public final Lorg/joor/CompileOptions;
.super Ljava/lang/Object;
.source "CompileOptions.java"


# instance fields
.field final options:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final processors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Ljavax/annotation/processing/Processor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 35
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 36
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 34
    invoke-direct {p0, v0, v1}, Lorg/joor/CompileOptions;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method private constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljavax/annotation/processing/Processor;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lorg/joor/CompileOptions;->processors:Ljava/util/List;

    .line 45
    iput-object p2, p0, Lorg/joor/CompileOptions;->options:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final options(Ljava/util/List;)Lorg/joor/CompileOptions;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/joor/CompileOptions;"
        }
    .end annotation

    .line 61
    new-instance v0, Lorg/joor/CompileOptions;

    iget-object v1, p0, Lorg/joor/CompileOptions;->processors:Ljava/util/List;

    invoke-direct {v0, v1, p1}, Lorg/joor/CompileOptions;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object v0
.end method

.method public final varargs options([Ljava/lang/String;)Lorg/joor/CompileOptions;
    .locals 0

    .line 57
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/joor/CompileOptions;->options(Ljava/util/List;)Lorg/joor/CompileOptions;

    move-result-object p1

    return-object p1
.end method

.method public final processors(Ljava/util/List;)Lorg/joor/CompileOptions;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljavax/annotation/processing/Processor;",
            ">;)",
            "Lorg/joor/CompileOptions;"
        }
    .end annotation

    .line 53
    new-instance v0, Lorg/joor/CompileOptions;

    iget-object v1, p0, Lorg/joor/CompileOptions;->options:Ljava/util/List;

    invoke-direct {v0, p1, v1}, Lorg/joor/CompileOptions;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object v0
.end method

.method public final varargs processors([Ljavax/annotation/processing/Processor;)Lorg/joor/CompileOptions;
    .locals 0

    .line 49
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/joor/CompileOptions;->processors(Ljava/util/List;)Lorg/joor/CompileOptions;

    move-result-object p1

    return-object p1
.end method
