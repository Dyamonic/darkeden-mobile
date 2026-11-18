.class public Lcom/tencent/turingfd/sdk/ams/ad/Nucleus$for;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/turingfd/sdk/ams/ad/Nucleus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "for"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/tencent/turingfd/sdk/ams/ad/Nucleus$for;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/tencent/turingfd/sdk/ams/ad/Nucleus$for;->b:Ljava/lang/String;

    .line 4
    iput-wide p3, p0, Lcom/tencent/turingfd/sdk/ams/ad/Nucleus$for;->c:J

    return-void
.end method
