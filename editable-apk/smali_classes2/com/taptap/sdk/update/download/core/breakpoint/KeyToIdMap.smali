.class public Lcom/taptap/sdk/update/download/core/breakpoint/KeyToIdMap;
.super Ljava/lang/Object;
.source "KeyToIdMap.java"


# instance fields
.field private final idToKeyMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final keyToIdMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 2

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/taptap/sdk/update/download/core/breakpoint/KeyToIdMap;-><init>(Ljava/util/HashMap;Landroid/util/SparseArray;)V

    return-void
.end method

.method constructor <init>(Ljava/util/HashMap;Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/taptap/sdk/update/download/core/breakpoint/KeyToIdMap;->keyToIdMap:Ljava/util/HashMap;

    .line 39
    iput-object p2, p0, Lcom/taptap/sdk/update/download/core/breakpoint/KeyToIdMap;->idToKeyMap:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public add(Lcom/taptap/sdk/update/download/DownloadTask;I)V
    .locals 2

    .line 58
    invoke-virtual {p0, p1}, Lcom/taptap/sdk/update/download/core/breakpoint/KeyToIdMap;->generateKey(Lcom/taptap/sdk/update/download/DownloadTask;)Ljava/lang/String;

    move-result-object p1

    .line 59
    iget-object v0, p0, Lcom/taptap/sdk/update/download/core/breakpoint/KeyToIdMap;->keyToIdMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    iget-object v0, p0, Lcom/taptap/sdk/update/download/core/breakpoint/KeyToIdMap;->idToKeyMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method generateKey(Lcom/taptap/sdk/update/download/DownloadTask;)Ljava/lang/String;
    .locals 2

    .line 64
    invoke-virtual {p1}, Lcom/taptap/sdk/update/download/DownloadTask;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/taptap/sdk/update/download/DownloadTask;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 65
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/taptap/sdk/update/download/DownloadTask;->getFilename()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public get(Lcom/taptap/sdk/update/download/DownloadTask;)Ljava/lang/Integer;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/taptap/sdk/update/download/core/breakpoint/KeyToIdMap;->keyToIdMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Lcom/taptap/sdk/update/download/core/breakpoint/KeyToIdMap;->generateKey(Lcom/taptap/sdk/update/download/DownloadTask;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public remove(I)V
    .locals 2

    .line 50
    iget-object v0, p0, Lcom/taptap/sdk/update/download/core/breakpoint/KeyToIdMap;->idToKeyMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 52
    iget-object v1, p0, Lcom/taptap/sdk/update/download/core/breakpoint/KeyToIdMap;->keyToIdMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    iget-object v0, p0, Lcom/taptap/sdk/update/download/core/breakpoint/KeyToIdMap;->idToKeyMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    :cond_0
    return-void
.end method
