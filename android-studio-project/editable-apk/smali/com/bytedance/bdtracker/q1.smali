.class public abstract Lcom/bytedance/bdtracker/q1;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public a:Z

.field public b:Z

.field public c:Z

.field public d:Z


# direct methods
.method public constructor <init>(ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/bytedance/bdtracker/q1;->b:Z

    iput-boolean p2, p0, Lcom/bytedance/bdtracker/q1;->c:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/bytedance/bdtracker/q1;->d:Z

    return-void
.end method

.method public constructor <init>(ZZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/bytedance/bdtracker/q1;->b:Z

    iput-boolean p2, p0, Lcom/bytedance/bdtracker/q1;->c:Z

    iput-boolean p3, p0, Lcom/bytedance/bdtracker/q1;->d:Z

    return-void
.end method


# virtual methods
.method public abstract a()Ljava/lang/String;
.end method

.method public abstract a(Lorg/json/JSONObject;)Z
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Lcom/bytedance/bdtracker/q1;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    check-cast p1, Lcom/bytedance/bdtracker/q1;

    invoke-virtual {p0}, Lcom/bytedance/bdtracker/q1;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/bytedance/bdtracker/q1;->a()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    invoke-virtual {p0}, Lcom/bytedance/bdtracker/q1;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method
