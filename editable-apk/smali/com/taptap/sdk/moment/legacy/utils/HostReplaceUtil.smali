.class public Lcom/taptap/sdk/moment/legacy/utils/HostReplaceUtil;
.super Ljava/lang/Object;
.source "HostReplaceUtil.java"


# static fields
.field private static final instance:Lcom/taptap/sdk/moment/legacy/utils/HostReplaceUtil;


# instance fields
.field private hostMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    new-instance v0, Lcom/taptap/sdk/moment/legacy/utils/HostReplaceUtil;

    invoke-direct {v0}, Lcom/taptap/sdk/moment/legacy/utils/HostReplaceUtil;-><init>()V

    sput-object v0, Lcom/taptap/sdk/moment/legacy/utils/HostReplaceUtil;->instance:Lcom/taptap/sdk/moment/legacy/utils/HostReplaceUtil;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/taptap/sdk/moment/legacy/utils/HostReplaceUtil;
    .locals 1

    .line 18
    sget-object v0, Lcom/taptap/sdk/moment/legacy/utils/HostReplaceUtil;->instance:Lcom/taptap/sdk/moment/legacy/utils/HostReplaceUtil;

    return-object v0
.end method


# virtual methods
.method public addReplacedHostPair(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/utils/HostReplaceUtil;->hostMap:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/taptap/sdk/moment/legacy/utils/HostReplaceUtil;->hostMap:Ljava/util/Map;

    .line 25
    :cond_0
    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/utils/HostReplaceUtil;->hostMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public clear()V
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/utils/HostReplaceUtil;->hostMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 36
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_0
    return-void
.end method

.method public clearReplacedHostPair(Ljava/lang/String;)V
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/utils/HostReplaceUtil;->hostMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 30
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public getReplacedHost(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 41
    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/utils/HostReplaceUtil;->hostMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/utils/HostReplaceUtil;->hostMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/utils/HostReplaceUtil;->hostMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 43
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    return-object p1
.end method
