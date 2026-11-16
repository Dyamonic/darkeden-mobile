.class public Lcom/taptap/sdk/update/download/DownloadContext$Builder;
.super Ljava/lang/Object;
.source "DownloadContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taptap/sdk/update/download/DownloadContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field final boundTaskList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/taptap/sdk/update/download/DownloadTask;",
            ">;"
        }
    .end annotation
.end field

.field private listener:Lcom/taptap/sdk/update/download/DownloadContextListener;

.field private final set:Lcom/taptap/sdk/update/download/DownloadContext$QueueSet;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 170
    new-instance v0, Lcom/taptap/sdk/update/download/DownloadContext$QueueSet;

    invoke-direct {v0}, Lcom/taptap/sdk/update/download/DownloadContext$QueueSet;-><init>()V

    invoke-direct {p0, v0}, Lcom/taptap/sdk/update/download/DownloadContext$Builder;-><init>(Lcom/taptap/sdk/update/download/DownloadContext$QueueSet;)V

    return-void
.end method

.method public constructor <init>(Lcom/taptap/sdk/update/download/DownloadContext$QueueSet;)V
    .locals 1

    .line 174
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/taptap/sdk/update/download/DownloadContext$Builder;-><init>(Lcom/taptap/sdk/update/download/DownloadContext$QueueSet;Ljava/util/ArrayList;)V

    return-void
.end method

.method public constructor <init>(Lcom/taptap/sdk/update/download/DownloadContext$QueueSet;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taptap/sdk/update/download/DownloadContext$QueueSet;",
            "Ljava/util/ArrayList<",
            "Lcom/taptap/sdk/update/download/DownloadTask;",
            ">;)V"
        }
    .end annotation

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    iput-object p1, p0, Lcom/taptap/sdk/update/download/DownloadContext$Builder;->set:Lcom/taptap/sdk/update/download/DownloadContext$QueueSet;

    .line 179
    iput-object p2, p0, Lcom/taptap/sdk/update/download/DownloadContext$Builder;->boundTaskList:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public bind(Lcom/taptap/sdk/update/download/DownloadTask$Builder;)Lcom/taptap/sdk/update/download/DownloadTask;
    .locals 1

    .line 209
    iget-object v0, p0, Lcom/taptap/sdk/update/download/DownloadContext$Builder;->set:Lcom/taptap/sdk/update/download/DownloadContext$QueueSet;

    invoke-static {v0}, Lcom/taptap/sdk/update/download/DownloadContext$QueueSet;->access$200(Lcom/taptap/sdk/update/download/DownloadContext$QueueSet;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taptap/sdk/update/download/DownloadContext$Builder;->set:Lcom/taptap/sdk/update/download/DownloadContext$QueueSet;

    invoke-static {v0}, Lcom/taptap/sdk/update/download/DownloadContext$QueueSet;->access$200(Lcom/taptap/sdk/update/download/DownloadContext$QueueSet;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/taptap/sdk/update/download/DownloadTask$Builder;->setHeaderMapFields(Ljava/util/Map;)Lcom/taptap/sdk/update/download/DownloadTask$Builder;

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/taptap/sdk/update/download/DownloadContext$Builder;->set:Lcom/taptap/sdk/update/download/DownloadContext$QueueSet;

    invoke-static {v0}, Lcom/taptap/sdk/update/download/DownloadContext$QueueSet;->access$300(Lcom/taptap/sdk/update/download/DownloadContext$QueueSet;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/taptap/sdk/update/download/DownloadContext$Builder;->set:Lcom/taptap/sdk/update/download/DownloadContext$QueueSet;

    invoke-static {v0}, Lcom/taptap/sdk/update/download/DownloadContext$QueueSet;->access$300(Lcom/taptap/sdk/update/download/DownloadContext$QueueSet;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/taptap/sdk/update/download/DownloadTask$Builder;->setReadBufferSize(I)Lcom/taptap/sdk/update/download/DownloadTask$Builder;

    .line 211
    :cond_1
    iget-object v0, p0, Lcom/taptap/sdk/update/download/DownloadContext$Builder;->set:Lcom/taptap/sdk/update/download/DownloadContext$QueueSet;

    invoke-static {v0}, Lcom/taptap/sdk/update/download/DownloadContext$QueueSet;->access$400(Lcom/taptap/sdk/update/download/DownloadContext$QueueSet;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/taptap/sdk/update/download/DownloadContext$Builder;->set:Lcom/taptap/sdk/update/download/DownloadContext$QueueSet;

    invoke-static {v0}, Lcom/taptap/sdk/update/download/DownloadContext$QueueSet;->access$400(Lcom/taptap/sdk/update/download/DownloadContext$QueueSet;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/taptap/sdk/update/download/DownloadTask$Builder;->setFlushBufferSize(I)Lcom/taptap/sdk/update/download/DownloadTask$Builder;

    .line 212
    :cond_2
    iget-object v0, p0, Lcom/taptap/sdk/update/download/DownloadContext$Builder;->set:Lcom/taptap/sdk/update/download/DownloadContext$QueueSet;

    invoke-static {v0}, Lcom/taptap/sdk/update/download/DownloadContext$QueueSet;->access$500(Lcom/taptap/sdk/update/download/DownloadContext$QueueSet;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/taptap/sdk/update/download/DownloadContext$Builder;->set:Lcom/taptap/sdk/update/download/DownloadContext$QueueSet;

    invoke-static {v0}, Lcom/taptap/sdk/update/download/DownloadContext$QueueSet;->access$500(Lcom/taptap/sdk/update/download/DownloadContext$QueueSet;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/taptap/sdk/update/download/DownloadTask$Builder;->setSyncBufferSize(I)Lcom/taptap/sdk/update/download/DownloadTask$Builder;

    .line 213
    :cond_3
    iget-object v0, p0, Lcom/taptap/sdk/update/download/DownloadContext$Builder;->set:Lcom/taptap/sdk/update/download/DownloadContext$QueueSet;

    invoke-static {v0}, Lcom/taptap/sdk/update/download/DownloadContext$QueueSet;->access$600(Lcom/taptap/sdk/update/download/DownloadContext$QueueSet;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/taptap/sdk/update/download/DownloadContext$Builder;->set:Lcom/taptap/sdk/update/download/DownloadContext$QueueSet;

    invoke-static {v0}, Lcom/taptap/sdk/update/download/DownloadContext$QueueSet;->access$600(Lcom/taptap/sdk/update/download/DownloadContext$QueueSet;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/taptap/sdk/update/download/DownloadTask$Builder;->setWifiRequired(Z)Lcom/taptap/sdk/update/download/DownloadTask$Builder;

    .line 214
    :cond_4
    iget-object v0, p0, Lcom/taptap/sdk/update/download/DownloadContext$Builder;->set:Lcom/taptap/sdk/update/download/DownloadContext$QueueSet;

    invoke-static {v0}, Lcom/taptap/sdk/update/download/DownloadContext$QueueSet;->access$700(Lcom/taptap/sdk/update/download/DownloadContext$QueueSet;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 215
    iget-object v0, p0, Lcom/taptap/sdk/update/download/DownloadContext$Builder;->set:Lcom/taptap/sdk/update/download/DownloadContext$QueueSet;

    invoke-static {v0}, Lcom/taptap/sdk/update/download/DownloadContext$QueueSet;->access$700(Lcom/taptap/sdk/update/download/DownloadContext$QueueSet;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/taptap/sdk/update/download/DownloadTask$Builder;->setSyncBufferIntervalMillis(I)Lcom/taptap/sdk/update/download/DownloadTask$Builder;

    .line 217
    :cond_5
    iget-object v0, p0, Lcom/taptap/sdk/update/download/DownloadContext$Builder;->set:Lcom/taptap/sdk/update/download/DownloadContext$QueueSet;

    invoke-static {v0}, Lcom/taptap/sdk/update/download/DownloadContext$QueueSet;->access$800(Lcom/taptap/sdk/update/download/DownloadContext$QueueSet;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 218
    iget-object v0, p0, Lcom/taptap/sdk/update/download/DownloadContext$Builder;->set:Lcom/taptap/sdk/update/download/DownloadContext$QueueSet;

    invoke-static {v0}, Lcom/taptap/sdk/update/download/DownloadContext$QueueSet;->access$800(Lcom/taptap/sdk/update/download/DownloadContext$QueueSet;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/taptap/sdk/update/download/DownloadTask$Builder;->setAutoCallbackToUIThread(Z)Lcom/taptap/sdk/update/download/DownloadTask$Builder;

    .line 220
    :cond_6
    iget-object v0, p0, Lcom/taptap/sdk/update/download/DownloadContext$Builder;->set:Lcom/taptap/sdk/update/download/DownloadContext$QueueSet;

    invoke-static {v0}, Lcom/taptap/sdk/update/download/DownloadContext$QueueSet;->access$900(Lcom/taptap/sdk/update/download/DownloadContext$QueueSet;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 221
    iget-object v0, p0, Lcom/taptap/sdk/update/download/DownloadContext$Builder;->set:Lcom/taptap/sdk/update/download/DownloadContext$QueueSet;

    .line 222
    invoke-static {v0}, Lcom/taptap/sdk/update/download/DownloadContext$QueueSet;->access$900(Lcom/taptap/sdk/update/download/DownloadContext$QueueSet;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/taptap/sdk/update/download/DownloadTask$Builder;->setMinIntervalMillisCallbackProcess(I)Lcom/taptap/sdk/update/download/DownloadTask$Builder;

    .line 225
    :cond_7
    iget-object v0, p0, Lcom/taptap/sdk/update/download/DownloadContext$Builder;->set:Lcom/taptap/sdk/update/download/DownloadContext$QueueSet;

    invoke-static {v0}, Lcom/taptap/sdk/update/download/DownloadContext$QueueSet;->access$1000(Lcom/taptap/sdk/update/download/DownloadContext$QueueSet;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 226
    iget-object v0, p0, Lcom/taptap/sdk/update/download/DownloadContext$Builder;->set:Lcom/taptap/sdk/update/download/DownloadContext$QueueSet;

    invoke-static {v0}, Lcom/taptap/sdk/update/download/DownloadContext$QueueSet;->access$1000(Lcom/taptap/sdk/update/download/DownloadContext$QueueSet;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/taptap/sdk/update/download/DownloadTask$Builder;->setPassIfAlreadyCompleted(Z)Lcom/taptap/sdk/update/download/DownloadTask$Builder;

    .line 229
    :cond_8
    invoke-virtual {p1}, Lcom/taptap/sdk/update/download/DownloadTask$Builder;->build()Lcom/taptap/sdk/update/download/DownloadTask;

    move-result-object p1

    .line 230
    iget-object v0, p0, Lcom/taptap/sdk/update/download/DownloadContext$Builder;->set:Lcom/taptap/sdk/update/download/DownloadContext$QueueSet;

    invoke-static {v0}, Lcom/taptap/sdk/update/download/DownloadContext$QueueSet;->access$1100(Lcom/taptap/sdk/update/download/DownloadContext$QueueSet;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/taptap/sdk/update/download/DownloadContext$Builder;->set:Lcom/taptap/sdk/update/download/DownloadContext$QueueSet;

    invoke-static {v0}, Lcom/taptap/sdk/update/download/DownloadContext$QueueSet;->access$1100(Lcom/taptap/sdk/update/download/DownloadContext$QueueSet;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/taptap/sdk/update/download/DownloadTask;->setTag(Ljava/lang/Object;)V

    .line 232
    :cond_9
    iget-object v0, p0, Lcom/taptap/sdk/update/download/DownloadContext$Builder;->boundTaskList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method public bind(Ljava/lang/String;)Lcom/taptap/sdk/update/download/DownloadTask;
    .locals 2

    .line 200
    iget-object v0, p0, Lcom/taptap/sdk/update/download/DownloadContext$Builder;->set:Lcom/taptap/sdk/update/download/DownloadContext$QueueSet;

    invoke-static {v0}, Lcom/taptap/sdk/update/download/DownloadContext$QueueSet;->access$100(Lcom/taptap/sdk/update/download/DownloadContext$QueueSet;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 205
    new-instance v0, Lcom/taptap/sdk/update/download/DownloadTask$Builder;

    iget-object v1, p0, Lcom/taptap/sdk/update/download/DownloadContext$Builder;->set:Lcom/taptap/sdk/update/download/DownloadContext$QueueSet;

    invoke-static {v1}, Lcom/taptap/sdk/update/download/DownloadContext$QueueSet;->access$100(Lcom/taptap/sdk/update/download/DownloadContext$QueueSet;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/taptap/sdk/update/download/DownloadTask$Builder;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/taptap/sdk/update/download/DownloadTask$Builder;->setFilenameFromResponse(Ljava/lang/Boolean;)Lcom/taptap/sdk/update/download/DownloadTask$Builder;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/taptap/sdk/update/download/DownloadContext$Builder;->bind(Lcom/taptap/sdk/update/download/DownloadTask$Builder;)Lcom/taptap/sdk/update/download/DownloadTask;

    move-result-object p1

    return-object p1

    .line 201
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "If you want to bind only with url, you have to provide parentPath on QueueSet!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bindSetTask(Lcom/taptap/sdk/update/download/DownloadTask;)Lcom/taptap/sdk/update/download/DownloadContext$Builder;
    .locals 2

    .line 188
    iget-object v0, p0, Lcom/taptap/sdk/update/download/DownloadContext$Builder;->boundTaskList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 191
    iget-object v1, p0, Lcom/taptap/sdk/update/download/DownloadContext$Builder;->boundTaskList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 193
    :cond_0
    iget-object v0, p0, Lcom/taptap/sdk/update/download/DownloadContext$Builder;->boundTaskList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    return-object p0
.end method

.method public build()Lcom/taptap/sdk/update/download/DownloadContext;
    .locals 4

    .line 248
    iget-object v0, p0, Lcom/taptap/sdk/update/download/DownloadContext$Builder;->boundTaskList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lcom/taptap/sdk/update/download/DownloadTask;

    .line 249
    new-instance v1, Lcom/taptap/sdk/update/download/DownloadContext;

    iget-object v2, p0, Lcom/taptap/sdk/update/download/DownloadContext$Builder;->boundTaskList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/taptap/sdk/update/download/DownloadTask;

    iget-object v2, p0, Lcom/taptap/sdk/update/download/DownloadContext$Builder;->listener:Lcom/taptap/sdk/update/download/DownloadContextListener;

    iget-object v3, p0, Lcom/taptap/sdk/update/download/DownloadContext$Builder;->set:Lcom/taptap/sdk/update/download/DownloadContext$QueueSet;

    invoke-direct {v1, v0, v2, v3}, Lcom/taptap/sdk/update/download/DownloadContext;-><init>([Lcom/taptap/sdk/update/download/DownloadTask;Lcom/taptap/sdk/update/download/DownloadContextListener;Lcom/taptap/sdk/update/download/DownloadContext$QueueSet;)V

    return-object v1
.end method

.method public setListener(Lcom/taptap/sdk/update/download/DownloadContextListener;)Lcom/taptap/sdk/update/download/DownloadContext$Builder;
    .locals 0

    .line 183
    iput-object p1, p0, Lcom/taptap/sdk/update/download/DownloadContext$Builder;->listener:Lcom/taptap/sdk/update/download/DownloadContextListener;

    return-object p0
.end method

.method public unbind(I)V
    .locals 3

    .line 241
    iget-object v0, p0, Lcom/taptap/sdk/update/download/DownloadContext$Builder;->boundTaskList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 242
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taptap/sdk/update/download/DownloadTask;

    .line 243
    invoke-virtual {v1}, Lcom/taptap/sdk/update/download/DownloadTask;->getId()I

    move-result v2

    if-ne v2, p1, :cond_0

    iget-object v2, p0, Lcom/taptap/sdk/update/download/DownloadContext$Builder;->boundTaskList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public unbind(Lcom/taptap/sdk/update/download/DownloadTask;)V
    .locals 1

    .line 237
    iget-object v0, p0, Lcom/taptap/sdk/update/download/DownloadContext$Builder;->boundTaskList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
