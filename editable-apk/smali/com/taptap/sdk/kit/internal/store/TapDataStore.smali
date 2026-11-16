.class public final Lcom/taptap/sdk/kit/internal/store/TapDataStore;
.super Ljava/lang/Object;
.source "TapDataStore.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taptap/sdk/kit/internal/store/TapDataStore$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/taptap/sdk/kit/internal/store/ITapData<",
        "TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0008\u0004\u0018\u0000 \"*\u000e\u0008\u0000\u0010\u0001*\u0008\u0012\u0004\u0012\u0002H\u00010\u00022\u00020\u0003:\u0001\"B%\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0002\u0010\u000cJ\u0017\u0010\u0016\u001a\u0004\u0018\u00018\u00002\u0006\u0010\u0017\u001a\u00028\u0000H\u0007\u00a2\u0006\u0002\u0010\u0018J\u0010\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001cH\u0007J\u0006\u0010\u001d\u001a\u00020\tJ\u0018\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u001f2\u0008\u0008\u0002\u0010 \u001a\u00020\tH\u0007J\u0008\u0010!\u001a\u00020\u001aH\u0003R\u0014\u0010\r\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u0010\u0010\u0012\u001a\u0004\u0018\u00010\u0013X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015\u00a8\u0006#"
    }
    d2 = {
        "Lcom/taptap/sdk/kit/internal/store/TapDataStore;",
        "T",
        "Lcom/taptap/sdk/kit/internal/store/ITapData;",
        "",
        "context",
        "Landroid/content/Context;",
        "storeFileName",
        "",
        "maxAccumulatedData",
        "",
        "mapSize",
        "",
        "(Landroid/content/Context;Ljava/lang/String;IJ)V",
        "accumulatedData",
        "Ljava/util/concurrent/CopyOnWriteArrayList;",
        "inFlightData",
        "getMapSize",
        "()J",
        "mappedByteBuffer",
        "Ljava/nio/MappedByteBuffer;",
        "getMaxAccumulatedData",
        "()I",
        "addData",
        "data",
        "(Lcom/taptap/sdk/kit/internal/store/ITapData;)Lcom/taptap/sdk/kit/internal/store/ITapData;",
        "clearInFlightAndStats",
        "",
        "moveToAccumulated",
        "",
        "getAccumulatedDataCount",
        "obtainData",
        "",
        "maxCount",
        "syncData",
        "Companion",
        "tap-kit_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/taptap/sdk/kit/internal/store/TapDataStore$Companion;

.field private static final TAG:Ljava/lang/String; = "TapDataStore"


# instance fields
.field private accumulatedData:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final inFlightData:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final mapSize:J

.field private mappedByteBuffer:Ljava/nio/MappedByteBuffer;

.field private final maxAccumulatedData:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/taptap/sdk/kit/internal/store/TapDataStore$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/taptap/sdk/kit/internal/store/TapDataStore$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/taptap/sdk/kit/internal/store/TapDataStore;->Companion:Lcom/taptap/sdk/kit/internal/store/TapDataStore$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;IJ)V
    .locals 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "storeFileName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput p3, p0, Lcom/taptap/sdk/kit/internal/store/TapDataStore;->maxAccumulatedData:I

    .line 21
    iput-wide p4, p0, Lcom/taptap/sdk/kit/internal/store/TapDataStore;->mapSize:J

    .line 29
    new-instance p3, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p3}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p3, p0, Lcom/taptap/sdk/kit/internal/store/TapDataStore;->accumulatedData:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 30
    new-instance p3, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p3}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p3, p0, Lcom/taptap/sdk/kit/internal/store/TapDataStore;->inFlightData:Ljava/util/concurrent/CopyOnWriteArrayList;

    const-string p3, "TapDataStore"

    const-string v0, "initialize start"

    .line 33
    invoke-static {p3, v0}, Lcom/taptap/sdk/kit/internal/TapLogger;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 36
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_0

    .line 37
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 39
    :cond_0
    new-instance p1, Ljava/io/RandomAccessFile;

    const-string p2, "rw"

    invoke-direct {p1, v0, p2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 40
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    const/4 p1, 0x0

    if-eqz v1, :cond_1

    .line 43
    :try_start_0
    sget-object v2, Ljava/nio/channels/FileChannel$MapMode;->READ_WRITE:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v3, 0x0

    move-wide v5, p4

    invoke-virtual/range {v1 .. v6}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 45
    check-cast p2, Ljava/lang/Throwable;

    invoke-static {p3, p2}, Lcom/taptap/sdk/kit/internal/TapLogger;->logd(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    move-object p2, p1

    :goto_0
    if-nez p2, :cond_2

    const/4 p2, 0x4

    const-string p4, "initialize failure MappedByteBuffer = null"

    .line 48
    invoke-static {p3, p4, p1, p2, p1}, Lcom/taptap/sdk/kit/internal/TapLogger;->loge$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    goto :goto_2

    .line 50
    :cond_2
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p4

    .line 52
    :try_start_1
    invoke-virtual {p2}, Ljava/nio/MappedByteBuffer;->remaining()I

    move-result p5

    .line 53
    new-array p5, p5, [B

    .line 54
    invoke-virtual {p2, p5}, Ljava/nio/MappedByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 55
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 56
    new-instance p5, Ljava/io/ObjectInputStream;

    check-cast v0, Ljava/io/InputStream;

    invoke-direct {p5, v0}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 57
    invoke-virtual {p5}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object p5

    instance-of v0, p5, Ljava/util/List;

    if-eqz v0, :cond_3

    move-object p1, p5

    check-cast p1, Ljava/util/List;

    :cond_3
    if-nez p1, :cond_4

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_4
    move-object p4, p1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 62
    check-cast p1, Ljava/lang/Throwable;

    const-string p5, "If this is the first time you start, you can ignore this error message."

    .line 59
    invoke-static {p3, p5, p1}, Lcom/taptap/sdk/kit/internal/TapLogger;->logd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 65
    :goto_1
    iget-object p1, p0, Lcom/taptap/sdk/kit/internal/store/TapDataStore;->accumulatedData:Ljava/util/concurrent/CopyOnWriteArrayList;

    check-cast p4, Ljava/lang/Iterable;

    invoke-static {p4}, Lkotlin/collections/CollectionsKt;->distinct(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p4

    check-cast p4, Ljava/util/Collection;

    invoke-virtual {p1, p4}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(Ljava/util/Collection;)Z

    .line 66
    iput-object p2, p0, Lcom/taptap/sdk/kit/internal/store/TapDataStore;->mappedByteBuffer:Ljava/nio/MappedByteBuffer;

    .line 68
    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "initialize end accumulatedData.size = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/taptap/sdk/kit/internal/store/TapDataStore;->accumulatedData:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/taptap/sdk/kit/internal/TapLogger;->logd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static final clearInFlightAndStats$lambda$0(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    invoke-interface {p0, p1, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method public static synthetic lambda$UoV_Fqr3-qEbssIQCQe-7yP8AXA(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/taptap/sdk/kit/internal/store/TapDataStore;->clearInFlightAndStats$lambda$0(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static synthetic obtainData$default(Lcom/taptap/sdk/kit/internal/store/TapDataStore;IILjava/lang/Object;)Ljava/util/List;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/16 p1, 0xc8

    .line 87
    :cond_0
    invoke-virtual {p0, p1}, Lcom/taptap/sdk/kit/internal/store/TapDataStore;->obtainData(I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private final declared-synchronized syncData()V
    .locals 6

    monitor-enter p0

    .line 119
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 121
    :try_start_1
    new-instance v1, Ljava/io/ObjectOutputStream;

    move-object v2, v0

    check-cast v2, Ljava/io/OutputStream;

    invoke-direct {v1, v2}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    check-cast v1, Ljava/io/Closeable;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    move-object v2, v1

    check-cast v2, Ljava/io/ObjectOutputStream;

    .line 122
    iget-object v3, p0, Lcom/taptap/sdk/kit/internal/store/TapDataStore;->accumulatedData:Ljava/util/concurrent/CopyOnWriteArrayList;

    check-cast v3, Ljava/lang/Iterable;

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 123
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 124
    array-length v2, v0

    iget-object v3, p0, Lcom/taptap/sdk/kit/internal/store/TapDataStore;->mappedByteBuffer:Ljava/nio/MappedByteBuffer;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/nio/MappedByteBuffer;->capacity()I

    move-result v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x0

    if-ge v2, v3, :cond_2

    .line 125
    iget-object v2, p0, Lcom/taptap/sdk/kit/internal/store/TapDataStore;->mappedByteBuffer:Ljava/nio/MappedByteBuffer;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/nio/MappedByteBuffer;->clear()Ljava/nio/Buffer;

    .line 126
    :cond_1
    iget-object v2, p0, Lcom/taptap/sdk/kit/internal/store/TapDataStore;->mappedByteBuffer:Ljava/nio/MappedByteBuffer;

    if-eqz v2, :cond_4

    invoke-virtual {v2, v0}, Ljava/nio/MappedByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto :goto_2

    :cond_2
    const-string v2, "TapDataStore"

    .line 130
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "syncData failure Not enough space\uff0c capacity = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/taptap/sdk/kit/internal/store/TapDataStore;->mappedByteBuffer:Ljava/nio/MappedByteBuffer;

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Ljava/nio/MappedByteBuffer;->capacity()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_1

    :cond_3
    move-object v5, v4

    :goto_1
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", byteArray = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v0, v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 128
    invoke-static {v2, v0}, Lcom/taptap/sdk/kit/internal/TapLogger;->logd(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 121
    :cond_4
    :goto_2
    :try_start_3
    invoke-static {v1, v4}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_3

    :catchall_0
    move-exception v0

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v2

    :try_start_5
    invoke-static {v1, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catch_0
    move-exception v0

    :try_start_6
    const-string v1, "TapDataStore"

    .line 135
    check-cast v0, Ljava/lang/Throwable;

    invoke-static {v1, v0}, Lcom/taptap/sdk/kit/internal/TapLogger;->logd(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 137
    :goto_3
    monitor-exit p0

    return-void

    :catchall_2
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final addData(Lcom/taptap/sdk/kit/internal/store/ITapData;)Lcom/taptap/sdk/kit/internal/store/ITapData;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lcom/taptap/sdk/kit/internal/store/TapDataStore;->accumulatedData:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/taptap/sdk/kit/internal/store/TapDataStore;->inFlightData:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/taptap/sdk/kit/internal/store/TapDataStore;->maxAccumulatedData:I

    if-lt v0, v1, :cond_0

    .line 79
    iget-object v0, p0, Lcom/taptap/sdk/kit/internal/store/TapDataStore;->accumulatedData:Ljava/util/concurrent/CopyOnWriteArrayList;

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->removeFirst(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taptap/sdk/kit/internal/store/ITapData;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 81
    :goto_0
    iget-object v1, p0, Lcom/taptap/sdk/kit/internal/store/TapDataStore;->accumulatedData:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    invoke-direct {p0}, Lcom/taptap/sdk/kit/internal/store/TapDataStore;->syncData()V

    return-object v0
.end method

.method public final clearInFlightAndStats(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 103
    iget-object p1, p0, Lcom/taptap/sdk/kit/internal/store/TapDataStore;->accumulatedData:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v0, p0, Lcom/taptap/sdk/kit/internal/store/TapDataStore;->inFlightData:Ljava/util/concurrent/CopyOnWriteArrayList;

    check-cast v0, Ljava/util/Collection;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(Ljava/util/Collection;)Z

    .line 104
    iget-object p1, p0, Lcom/taptap/sdk/kit/internal/store/TapDataStore;->accumulatedData:Ljava/util/concurrent/CopyOnWriteArrayList;

    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->distinct(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    .line 105
    iget-object v0, p0, Lcom/taptap/sdk/kit/internal/store/TapDataStore;->accumulatedData:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 106
    iget-object v0, p0, Lcom/taptap/sdk/kit/internal/store/TapDataStore;->accumulatedData:Ljava/util/concurrent/CopyOnWriteArrayList;

    check-cast p1, Ljava/util/Collection;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(Ljava/util/Collection;)Z

    .line 107
    iget-object p1, p0, Lcom/taptap/sdk/kit/internal/store/TapDataStore;->accumulatedData:Ljava/util/concurrent/CopyOnWriteArrayList;

    check-cast p1, Ljava/util/List;

    sget-object v0, Lcom/taptap/sdk/kit/internal/store/TapDataStore$clearInFlightAndStats$1;->INSTANCE:Lcom/taptap/sdk/kit/internal/store/TapDataStore$clearInFlightAndStats$1;

    check-cast v0, Lkotlin/jvm/functions/Function2;

    new-instance v1, Lcom/taptap/sdk/kit/internal/store/-$$Lambda$TapDataStore$UoV_Fqr3-qEbssIQCQe-7yP8AXA;

    invoke-direct {v1, v0}, Lcom/taptap/sdk/kit/internal/store/-$$Lambda$TapDataStore$UoV_Fqr3-qEbssIQCQe-7yP8AXA;-><init>(Lkotlin/jvm/functions/Function2;)V

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    .line 109
    :cond_0
    iget-object p1, p0, Lcom/taptap/sdk/kit/internal/store/TapDataStore;->inFlightData:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 110
    invoke-direct {p0}, Lcom/taptap/sdk/kit/internal/store/TapDataStore;->syncData()V

    return-void
.end method

.method public final getAccumulatedDataCount()I
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/taptap/sdk/kit/internal/store/TapDataStore;->accumulatedData:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final getMapSize()J
    .locals 2

    .line 21
    iget-wide v0, p0, Lcom/taptap/sdk/kit/internal/store/TapDataStore;->mapSize:J

    return-wide v0
.end method

.method public final getMaxAccumulatedData()I
    .locals 1

    .line 20
    iget v0, p0, Lcom/taptap/sdk/kit/internal/store/TapDataStore;->maxAccumulatedData:I

    return v0
.end method

.method public final obtainData(I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 88
    iget-object v0, p0, Lcom/taptap/sdk/kit/internal/store/TapDataStore;->accumulatedData:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    .line 89
    iget-object v0, p0, Lcom/taptap/sdk/kit/internal/store/TapDataStore;->accumulatedData:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->subList(II)Ljava/util/List;

    move-result-object p1

    const-string v0, "accumulatedData.subList(0, maxCount)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lcom/taptap/sdk/kit/internal/store/TapDataStore;->inFlightData:Ljava/util/concurrent/CopyOnWriteArrayList;

    check-cast p1, Ljava/util/Collection;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(Ljava/util/Collection;)Z

    .line 91
    iget-object v0, p0, Lcom/taptap/sdk/kit/internal/store/TapDataStore;->accumulatedData:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->removeAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 93
    :cond_0
    iget-object p1, p0, Lcom/taptap/sdk/kit/internal/store/TapDataStore;->inFlightData:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v0, p0, Lcom/taptap/sdk/kit/internal/store/TapDataStore;->accumulatedData:Ljava/util/concurrent/CopyOnWriteArrayList;

    check-cast v0, Ljava/util/Collection;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(Ljava/util/Collection;)Z

    .line 94
    iget-object p1, p0, Lcom/taptap/sdk/kit/internal/store/TapDataStore;->accumulatedData:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 96
    :goto_0
    invoke-direct {p0}, Lcom/taptap/sdk/kit/internal/store/TapDataStore;->syncData()V

    .line 97
    iget-object p1, p0, Lcom/taptap/sdk/kit/internal/store/TapDataStore;->inFlightData:Ljava/util/concurrent/CopyOnWriteArrayList;

    check-cast p1, Ljava/util/List;

    return-object p1
.end method
