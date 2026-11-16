.class public Lcom/tencent/turingfd/sdk/ams/ad/CanisMinor$do;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/turingfd/sdk/ams/ad/CanisMinor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "do"
.end annotation


# instance fields
.field public final a:I

.field public final b:[B


# direct methods
.method public constructor <init>(I[B)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, -0x270f

    if-eqz p1, :cond_1

    const/16 v1, -0x3e8

    if-gt p1, v1, :cond_0

    if-ge p1, v0, :cond_1

    :cond_0
    move p1, v0

    .line 8
    :cond_1
    iput p1, p0, Lcom/tencent/turingfd/sdk/ams/ad/CanisMinor$do;->a:I

    .line 9
    iput-object p2, p0, Lcom/tencent/turingfd/sdk/ams/ad/CanisMinor$do;->b:[B

    return-void
.end method
