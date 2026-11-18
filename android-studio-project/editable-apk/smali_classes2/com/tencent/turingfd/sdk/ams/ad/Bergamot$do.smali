.class public Lcom/tencent/turingfd/sdk/ams/ad/Bergamot$do;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/turingfd/sdk/ams/ad/Bergamot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "do"
.end annotation


# instance fields
.field public a:I

.field public b:[B

.field public c:Ljava/lang/String;

.field public d:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xc8

    .line 2
    iput v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/Bergamot$do;->a:I

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/Bergamot$do;->d:Z

    return-void
.end method

.method public static synthetic a(Lcom/tencent/turingfd/sdk/ams/ad/Bergamot$do;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/tencent/turingfd/sdk/ams/ad/Bergamot$do;->a:I

    return p0
.end method

.method public static synthetic b(Lcom/tencent/turingfd/sdk/ams/ad/Bergamot$do;)[B
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/tencent/turingfd/sdk/ams/ad/Bergamot$do;->b:[B

    return-object p0
.end method

.method public static synthetic c(Lcom/tencent/turingfd/sdk/ams/ad/Bergamot$do;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/tencent/turingfd/sdk/ams/ad/Bergamot$do;->c:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic d(Lcom/tencent/turingfd/sdk/ams/ad/Bergamot$do;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/tencent/turingfd/sdk/ams/ad/Bergamot$do;->d:Z

    return p0
.end method
