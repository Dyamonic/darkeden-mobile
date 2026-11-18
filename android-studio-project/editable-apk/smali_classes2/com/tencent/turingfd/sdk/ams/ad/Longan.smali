.class public Lcom/tencent/turingfd/sdk/ams/ad/Longan;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Lcom/tencent/turingfd/sdk/ams/ad/Longan;


# instance fields
.field public a:Lcom/tencent/turingfd/sdk/ams/ad/Flat;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/tencent/turingfd/sdk/ams/ad/Longan;

    invoke-direct {v0}, Lcom/tencent/turingfd/sdk/ams/ad/Longan;-><init>()V

    sput-object v0, Lcom/tencent/turingfd/sdk/ams/ad/Longan;->b:Lcom/tencent/turingfd/sdk/ams/ad/Longan;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I[BIILcom/tencent/turingfd/sdk/ams/ad/CanisMajor;)Lcom/tencent/turingfd/sdk/ams/ad/Mango;
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/tencent/turingfd/sdk/ams/ad/Longan;->a:Lcom/tencent/turingfd/sdk/ams/ad/Flat;

    .line 2
    iget-object p1, p1, Lcom/tencent/turingfd/sdk/ams/ad/Flat;->a:Lcom/tencent/turingfd/sdk/ams/ad/CanisMinor;

    const/16 p3, -0x4e20

    if-nez p1, :cond_0

    .line 3
    invoke-static {p3}, Lcom/tencent/turingfd/sdk/ams/ad/Mango;->a(I)Lcom/tencent/turingfd/sdk/ams/ad/Mango;

    move-result-object p1

    goto :goto_0

    .line 7
    :cond_0
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 8
    check-cast p1, Lcom/tencent/turingfd/sdk/ams/ad/synchronized$do;

    invoke-virtual {p1, p2}, Lcom/tencent/turingfd/sdk/ams/ad/synchronized$do;->a([B)Lcom/tencent/turingfd/sdk/ams/ad/CanisMinor$do;

    move-result-object p1

    .line 12
    iget p2, p1, Lcom/tencent/turingfd/sdk/ams/ad/CanisMinor$do;->a:I

    if-eqz p2, :cond_1

    add-int/2addr p2, p3

    .line 13
    invoke-static {p2}, Lcom/tencent/turingfd/sdk/ams/ad/Mango;->a(I)Lcom/tencent/turingfd/sdk/ams/ad/Mango;

    move-result-object p1

    goto :goto_0

    .line 15
    :cond_1
    iget-object p1, p1, Lcom/tencent/turingfd/sdk/ams/ad/CanisMinor$do;->b:[B

    invoke-static {p1}, Lcom/tencent/turingfd/sdk/ams/ad/Mango;->a([B)Lcom/tencent/turingfd/sdk/ams/ad/Mango;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 19
    :catchall_0
    invoke-static {p3}, Lcom/tencent/turingfd/sdk/ams/ad/Mango;->a(I)Lcom/tencent/turingfd/sdk/ams/ad/Mango;

    move-result-object p1

    :goto_0
    return-object p1
.end method
