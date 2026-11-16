.class public Lcom/tencent/turingfd/sdk/ams/ad/Bagasse$do;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/turingfd/sdk/ams/ad/Bagasse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "do"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/net/URL;

.field public final c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public d:I

.field public e:I

.field public f:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/Bagasse$do;->c:Ljava/util/HashMap;

    const/16 v1, 0x2710

    .line 4
    iput v1, p0, Lcom/tencent/turingfd/sdk/ams/ad/Bagasse$do;->d:I

    .line 5
    iput v1, p0, Lcom/tencent/turingfd/sdk/ams/ad/Bagasse$do;->e:I

    const/4 v1, 0x1

    .line 7
    iput-boolean v1, p0, Lcom/tencent/turingfd/sdk/ams/ad/Bagasse$do;->f:Z

    .line 11
    iput-object p1, p0, Lcom/tencent/turingfd/sdk/ams/ad/Bagasse$do;->a:Ljava/lang/String;

    .line 12
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/tencent/turingfd/sdk/ams/ad/Bagasse$do;->b:Ljava/net/URL;

    const-string p1, "Content-Type"

    const-string v1, "application/json; charset=utf-8"

    .line 13
    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static synthetic a(Lcom/tencent/turingfd/sdk/ams/ad/Bagasse$do;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/tencent/turingfd/sdk/ams/ad/Bagasse$do;->a:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic b(Lcom/tencent/turingfd/sdk/ams/ad/Bagasse$do;)Ljava/net/URL;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/tencent/turingfd/sdk/ams/ad/Bagasse$do;->b:Ljava/net/URL;

    return-object p0
.end method

.method public static synthetic c(Lcom/tencent/turingfd/sdk/ams/ad/Bagasse$do;)Ljava/util/HashMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/tencent/turingfd/sdk/ams/ad/Bagasse$do;->c:Ljava/util/HashMap;

    return-object p0
.end method

.method public static synthetic d(Lcom/tencent/turingfd/sdk/ams/ad/Bagasse$do;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/tencent/turingfd/sdk/ams/ad/Bagasse$do;->d:I

    return p0
.end method

.method public static synthetic e(Lcom/tencent/turingfd/sdk/ams/ad/Bagasse$do;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/tencent/turingfd/sdk/ams/ad/Bagasse$do;->e:I

    return p0
.end method

.method public static synthetic f(Lcom/tencent/turingfd/sdk/ams/ad/Bagasse$do;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/tencent/turingfd/sdk/ams/ad/Bagasse$do;->f:Z

    return p0
.end method
