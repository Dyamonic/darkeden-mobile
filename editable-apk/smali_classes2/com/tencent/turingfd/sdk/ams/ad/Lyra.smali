.class public Lcom/tencent/turingfd/sdk/ams/ad/Lyra;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/turingfd/sdk/ams/ad/Lyra$if;
    }
.end annotation


# static fields
.field public static final c:Lcom/tencent/turingfd/sdk/ams/ad/Chestnut;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tencent/turingfd/sdk/ams/ad/Chestnut<",
            "Lcom/tencent/turingfd/sdk/ams/ad/Lyra;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:[Lcom/tencent/turingfd/sdk/ams/ad/Lyra$if;

.field public volatile b:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/tencent/turingfd/sdk/ams/ad/Lyra$do;

    invoke-direct {v0}, Lcom/tencent/turingfd/sdk/ams/ad/Lyra$do;-><init>()V

    sput-object v0, Lcom/tencent/turingfd/sdk/ams/ad/Lyra;->c:Lcom/tencent/turingfd/sdk/ams/ad/Chestnut;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/tencent/turingfd/sdk/ams/ad/Lyra$if;

    .line 2
    iput-object v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/Lyra;->a:[Lcom/tencent/turingfd/sdk/ams/ad/Lyra$if;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/Lyra;->b:I

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/tencent/turingfd/sdk/ams/ad/Lyra;->a:[Lcom/tencent/turingfd/sdk/ams/ad/Lyra$if;

    monitor-enter v1

    .line 3
    :try_start_0
    iget v2, p0, Lcom/tencent/turingfd/sdk/ams/ad/Lyra;->b:I

    .line 5
    :cond_0
    iget-object v3, p0, Lcom/tencent/turingfd/sdk/ams/ad/Lyra;->a:[Lcom/tencent/turingfd/sdk/ams/ad/Lyra$if;

    iget v4, p0, Lcom/tencent/turingfd/sdk/ams/ad/Lyra;->b:I

    aget-object v3, v3, v4

    if-nez v3, :cond_1

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_2

    const-string v4, ","

    .line 10
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    :cond_2
    iget-wide v4, v3, Lcom/tencent/turingfd/sdk/ams/ad/Lyra$if;->a:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v3, Lcom/tencent/turingfd/sdk/ams/ad/Lyra$if;->b:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    .line 13
    iget-object v3, p0, Lcom/tencent/turingfd/sdk/ams/ad/Lyra;->a:[Lcom/tencent/turingfd/sdk/ams/ad/Lyra$if;

    array-length v3, v3

    rem-int/2addr v2, v3

    .line 14
    iget v3, p0, Lcom/tencent/turingfd/sdk/ams/ad/Lyra;->b:I

    if-ne v2, v3, :cond_0

    .line 15
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_3

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    return-object v0

    :catchall_0
    move-exception v0

    .line 17
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 4

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    return-void

    .line 7
    :cond_1
    invoke-virtual {p1}, Landroid/location/Location;->isFromMockProvider()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 12
    :cond_2
    iget-object v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/Lyra;->a:[Lcom/tencent/turingfd/sdk/ams/ad/Lyra$if;

    monitor-enter v0

    .line 14
    :try_start_0
    iget-object v1, p0, Lcom/tencent/turingfd/sdk/ams/ad/Lyra;->a:[Lcom/tencent/turingfd/sdk/ams/ad/Lyra$if;

    iget v2, p0, Lcom/tencent/turingfd/sdk/ams/ad/Lyra;->b:I

    aget-object v1, v1, v2

    if-nez v1, :cond_3

    .line 16
    new-instance v1, Lcom/tencent/turingfd/sdk/ams/ad/Lyra$if;

    invoke-direct {v1}, Lcom/tencent/turingfd/sdk/ams/ad/Lyra$if;-><init>()V

    .line 17
    iget-object v2, p0, Lcom/tencent/turingfd/sdk/ams/ad/Lyra;->a:[Lcom/tencent/turingfd/sdk/ams/ad/Lyra$if;

    iget v3, p0, Lcom/tencent/turingfd/sdk/ams/ad/Lyra;->b:I

    aput-object v1, v2, v3

    .line 19
    :cond_3
    iget v2, p0, Lcom/tencent/turingfd/sdk/ams/ad/Lyra;->b:I

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lcom/tencent/turingfd/sdk/ams/ad/Lyra;->a:[Lcom/tencent/turingfd/sdk/ams/ad/Lyra$if;

    array-length v3, v3

    rem-int/2addr v2, v3

    iput v2, p0, Lcom/tencent/turingfd/sdk/ams/ad/Lyra;->b:I

    .line 21
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/tencent/turingfd/sdk/ams/ad/Lyra$if;->a:J

    .line 22
    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lcom/tencent/turingfd/sdk/ams/ad/Lyra$if;->b:Ljava/lang/String;

    .line 23
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method
