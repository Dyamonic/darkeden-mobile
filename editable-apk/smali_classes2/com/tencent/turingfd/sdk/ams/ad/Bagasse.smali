.class public Lcom/tencent/turingfd/sdk/ams/ad/Bagasse;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/turingfd/sdk/ams/ad/Bagasse$do;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/net/URL;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final e:I

.field public final f:I

.field public final g:Z


# direct methods
.method public constructor <init>(Lcom/tencent/turingfd/sdk/ams/ad/Bagasse$do;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/tencent/turingfd/sdk/ams/ad/Bagasse$do;->a(Lcom/tencent/turingfd/sdk/ams/ad/Bagasse$do;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/Bagasse;->a:Ljava/lang/String;

    .line 3
    invoke-static {p1}, Lcom/tencent/turingfd/sdk/ams/ad/Bagasse$do;->b(Lcom/tencent/turingfd/sdk/ams/ad/Bagasse$do;)Ljava/net/URL;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/Bagasse;->b:Ljava/net/URL;

    const-string v0, "GET"

    .line 4
    iput-object v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/Bagasse;->c:Ljava/lang/String;

    .line 5
    invoke-static {p1}, Lcom/tencent/turingfd/sdk/ams/ad/Bagasse$do;->c(Lcom/tencent/turingfd/sdk/ams/ad/Bagasse$do;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/Bagasse;->d:Ljava/util/Map;

    .line 7
    invoke-static {p1}, Lcom/tencent/turingfd/sdk/ams/ad/Bagasse$do;->d(Lcom/tencent/turingfd/sdk/ams/ad/Bagasse$do;)I

    move-result v0

    iput v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/Bagasse;->e:I

    .line 8
    invoke-static {p1}, Lcom/tencent/turingfd/sdk/ams/ad/Bagasse$do;->e(Lcom/tencent/turingfd/sdk/ams/ad/Bagasse$do;)I

    move-result v0

    iput v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/Bagasse;->f:I

    .line 10
    invoke-static {p1}, Lcom/tencent/turingfd/sdk/ams/ad/Bagasse$do;->f(Lcom/tencent/turingfd/sdk/ams/ad/Bagasse$do;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/tencent/turingfd/sdk/ams/ad/Bagasse;->g:Z

    return-void
.end method
