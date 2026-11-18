.class public Lcom/tencent/turingfd/sdk/ams/ad/Nucleus$if;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/turingfd/sdk/ams/ad/Nucleus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "if"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p3, p0, Lcom/tencent/turingfd/sdk/ams/ad/Nucleus$if;->a:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lcom/tencent/turingfd/sdk/ams/ad/Nucleus$if;->b:Ljava/lang/String;

    return-void
.end method
