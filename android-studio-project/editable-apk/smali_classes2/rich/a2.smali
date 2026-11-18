.class public Lrich/a2;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public a:Lrich/l0;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lrich/x1;Lrich/l0;)V
    .locals 8

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto/16 :goto_0

    :cond_0
    const-string v0, "appid"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Lrich/l0;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1
    iput-object v0, p0, Lrich/x1;->a:Ljava/lang/String;

    .line 2
    sget-object v0, Lrich/j2;->a:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lrich/x1;->q:Ljava/lang/String;

    const-string v0, "interfaceType"

    .line 4
    invoke-virtual {p1, v0, v1}, Lrich/l0;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lrich/x1;->j:Ljava/lang/String;

    const-string v0, "interfaceCode"

    .line 6
    invoke-virtual {p1, v0, v1}, Lrich/l0;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 7
    iput-object v0, p0, Lrich/x1;->k:Ljava/lang/String;

    const-string v0, "interfaceElasped"

    .line 8
    invoke-virtual {p1, v0, v1}, Lrich/l0;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 9
    iput-object v0, p0, Lrich/x1;->l:Ljava/lang/String;

    const-string v0, "timeOut"

    .line 10
    invoke-virtual {p1, v0, v1}, Lrich/l0;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 11
    iput-object v0, p0, Lrich/x1;->e:Ljava/lang/String;

    const-string v0, "traceId"

    .line 12
    invoke-virtual {p1, v0, v1}, Lrich/l0;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 13
    iput-object v2, p0, Lrich/x1;->b:Ljava/lang/String;

    const-string v2, "simCardNum"

    .line 14
    invoke-virtual {p1, v2, v1}, Lrich/l0;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 15
    iput-object v2, p0, Lrich/x1;->t:Ljava/lang/String;

    const-string v2, "operatortype"

    .line 16
    invoke-virtual {p1, v2, v1}, Lrich/l0;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 17
    iput-object v3, p0, Lrich/x1;->o:Ljava/lang/String;

    .line 18
    sget-object v3, Lrich/j2;->b:Ljava/lang/String;

    .line 19
    iput-object v3, p0, Lrich/x1;->r:Ljava/lang/String;

    .line 20
    sget-object v3, Lrich/j2;->c:Ljava/lang/String;

    .line 21
    iput-object v3, p0, Lrich/x1;->s:Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "networktype"

    .line 22
    invoke-virtual {p1, v4, v3}, Lrich/l0;->b(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 23
    iput-object v3, p0, Lrich/x1;->p:Ljava/lang/String;

    const-string v3, "starttime"

    .line 24
    invoke-virtual {p1, v3, v1}, Lrich/l0;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 25
    iput-object v3, p0, Lrich/x1;->f:Ljava/lang/String;

    const-string v3, "endtime"

    .line 26
    invoke-virtual {p1, v3, v1}, Lrich/l0;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 27
    iput-object v3, p0, Lrich/x1;->g:Ljava/lang/String;

    const-string v3, "systemEndTime"

    const-wide/16 v4, 0x0

    .line 28
    invoke-virtual {p1, v3, v4, v5}, Lrich/l0;->b(Ljava/lang/String;J)J

    move-result-wide v6

    const-string v3, "systemStartTime"

    invoke-virtual {p1, v3, v4, v5}, Lrich/l0;->b(Ljava/lang/String;J)J

    move-result-wide v3

    sub-long/2addr v6, v3

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    .line 29
    iput-object v3, p0, Lrich/x1;->h:Ljava/lang/String;

    const-string v3, "imsiState"

    .line 30
    invoke-virtual {p1, v3, v1}, Lrich/l0;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 31
    iput-object v3, p0, Lrich/x1;->u:Ljava/lang/String;

    const-string v3, "AID"

    .line 32
    invoke-static {v3, v1}, Lrich/b0;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 33
    iput-object v3, p0, Lrich/x1;->w:Ljava/lang/String;

    .line 34
    invoke-virtual {p1, v2, v1}, Lrich/l0;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 35
    iput-object v2, p0, Lrich/x1;->x:Ljava/lang/String;

    const-string v2, "scripType"

    .line 36
    invoke-virtual {p1, v2, v1}, Lrich/l0;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 37
    iput-object v2, p0, Lrich/x1;->y:Ljava/lang/String;

    const-string v2, "networkTypeByAPI"

    .line 38
    invoke-virtual {p1, v2, v1}, Lrich/l0;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 39
    iput-object v2, p0, Lrich/x1;->z:Ljava/lang/String;

    .line 40
    invoke-static {v0}, Lrich/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 41
    invoke-virtual {p1, v0, v1}, Lrich/l0;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 42
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SendLog"

    invoke-static {p1, p0}, Lrich/c2;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
