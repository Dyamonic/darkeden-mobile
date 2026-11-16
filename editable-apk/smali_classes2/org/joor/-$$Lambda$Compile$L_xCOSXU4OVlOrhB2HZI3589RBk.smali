.class public final synthetic Lorg/joor/-$$Lambda$Compile$L_xCOSXU4OVlOrhB2HZI3589RBk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lorg/joor/Compile$ThrowingBiFunction;


# instance fields
.field public final synthetic f$0:Ljava/lang/ClassLoader;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/ClassLoader;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/joor/-$$Lambda$Compile$L_xCOSXU4OVlOrhB2HZI3589RBk;->f$0:Ljava/lang/ClassLoader;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/joor/-$$Lambda$Compile$L_xCOSXU4OVlOrhB2HZI3589RBk;->f$0:Ljava/lang/ClassLoader;

    check-cast p1, Ljava/lang/String;

    check-cast p2, [B

    invoke-static {v0, p1, p2}, Lorg/joor/Compile;->lambda$compile$0(Ljava/lang/ClassLoader;Ljava/lang/String;[B)Ljava/lang/Class;

    move-result-object p1

    return-object p1
.end method
