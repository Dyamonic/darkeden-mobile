.class public Lcom/qq/gdt/action/g/a/a;
.super Ljava/lang/Object;


# instance fields
.field private a:J

.field private b:J

.field private final c:Ljava/lang/String;

.field private final d:J

.field private final e:J

.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;

.field private final h:J

.field private final i:Ljava/lang/String;

.field private final j:J

.field private k:Lorg/json/JSONObject;

.field private final l:I


# direct methods
.method public constructor <init>(JJLjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JLorg/json/JSONObject;IJJ)V
    .locals 3

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v1, -0x1

    iput-wide v1, v0, Lcom/qq/gdt/action/g/a/a;->b:J

    move-wide v1, p1

    iput-wide v1, v0, Lcom/qq/gdt/action/g/a/a;->a:J

    move-wide v1, p3

    iput-wide v1, v0, Lcom/qq/gdt/action/g/a/a;->b:J

    move-object v1, p5

    iput-object v1, v0, Lcom/qq/gdt/action/g/a/a;->c:Ljava/lang/String;

    move-wide v1, p6

    iput-wide v1, v0, Lcom/qq/gdt/action/g/a/a;->e:J

    move-object v1, p9

    iput-object v1, v0, Lcom/qq/gdt/action/g/a/a;->i:Ljava/lang/String;

    move-object v1, p10

    iput-object v1, v0, Lcom/qq/gdt/action/g/a/a;->g:Ljava/lang/String;

    move-wide v1, p11

    iput-wide v1, v0, Lcom/qq/gdt/action/g/a/a;->j:J

    move-object v1, p8

    iput-object v1, v0, Lcom/qq/gdt/action/g/a/a;->f:Ljava/lang/String;

    move-object/from16 v1, p13

    iput-object v1, v0, Lcom/qq/gdt/action/g/a/a;->k:Lorg/json/JSONObject;

    move/from16 v1, p14

    iput v1, v0, Lcom/qq/gdt/action/g/a/a;->l:I

    move-wide/from16 v1, p15

    iput-wide v1, v0, Lcom/qq/gdt/action/g/a/a;->h:J

    move-wide/from16 v1, p17

    iput-wide v1, v0, Lcom/qq/gdt/action/g/a/a;->d:J

    return-void
.end method

.method public constructor <init>(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JLorg/json/JSONObject;JJ)V
    .locals 4

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v1, -0x1

    iput-wide v1, v0, Lcom/qq/gdt/action/g/a/a;->b:J

    move-object v1, p5

    iput-object v1, v0, Lcom/qq/gdt/action/g/a/a;->f:Ljava/lang/String;

    move-wide v1, p1

    iput-wide v1, v0, Lcom/qq/gdt/action/g/a/a;->b:J

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "-"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/qq/gdt/action/g/a/a;->c:Ljava/lang/String;

    move-wide v1, p3

    iput-wide v1, v0, Lcom/qq/gdt/action/g/a/a;->e:J

    move-object v1, p7

    iput-object v1, v0, Lcom/qq/gdt/action/g/a/a;->g:Ljava/lang/String;

    move-object v1, p6

    iput-object v1, v0, Lcom/qq/gdt/action/g/a/a;->i:Ljava/lang/String;

    move-wide v1, p8

    iput-wide v1, v0, Lcom/qq/gdt/action/g/a/a;->j:J

    move-object v1, p10

    iput-object v1, v0, Lcom/qq/gdt/action/g/a/a;->k:Lorg/json/JSONObject;

    const/4 v1, 0x0

    iput v1, v0, Lcom/qq/gdt/action/g/a/a;->l:I

    move-wide v1, p11

    iput-wide v1, v0, Lcom/qq/gdt/action/g/a/a;->h:J

    move-wide/from16 v1, p13

    iput-wide v1, v0, Lcom/qq/gdt/action/g/a/a;->d:J

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    iget-wide v0, p0, Lcom/qq/gdt/action/g/a/a;->a:J

    return-wide v0
.end method

.method public a(J)V
    .locals 0

    iput-wide p1, p0, Lcom/qq/gdt/action/g/a/a;->a:J

    return-void
.end method

.method public b()J
    .locals 2

    iget-wide v0, p0, Lcom/qq/gdt/action/g/a/a;->b:J

    return-wide v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/qq/gdt/action/g/a/a;->f:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/qq/gdt/action/g/a/a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/qq/gdt/action/g/a/a;->g:Ljava/lang/String;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/qq/gdt/action/g/a/a;->i:Ljava/lang/String;

    return-object v0
.end method

.method public g()J
    .locals 2

    iget-wide v0, p0, Lcom/qq/gdt/action/g/a/a;->j:J

    return-wide v0
.end method

.method public h()Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/qq/gdt/action/g/a/a;->k:Lorg/json/JSONObject;

    return-object v0
.end method

.method public i()J
    .locals 2

    iget-wide v0, p0, Lcom/qq/gdt/action/g/a/a;->e:J

    return-wide v0
.end method

.method public j()J
    .locals 2

    iget-wide v0, p0, Lcom/qq/gdt/action/g/a/a;->h:J

    return-wide v0
.end method

.method public k()J
    .locals 2

    iget-wide v0, p0, Lcom/qq/gdt/action/g/a/a;->d:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "\"id\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/qq/gdt/action/g/a/a;->a:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",\"eventId\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/qq/gdt/action/g/a/a;->b:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",\"eventUniqueId\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qq/gdt/action/g/a/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ",\"eventTimeMillis\":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/qq/gdt/action/g/a/a;->e:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ",\"sessionId\":\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/qq/gdt/action/g/a/a;->f:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ",\"actionUniqueId\":\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/qq/gdt/action/g/a/a;->g:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ",\"actionType\":\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/qq/gdt/action/g/a/a;->i:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ",\"actionTimeMillis\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/qq/gdt/action/g/a/a;->j:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",\"eventParam\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qq/gdt/action/g/a/a;->k:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",\"status\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/qq/gdt/action/g/a/a;->l:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",\"actionLogId\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/qq/gdt/action/g/a/a;->h:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",\"eventLogId\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/qq/gdt/action/g/a/a;->d:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
