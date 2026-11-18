.class public Lrich/t0;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrich/t0$d;
    }
.end annotation


# static fields
.field public static g:Lrich/t0;


# instance fields
.field public final a:Lrich/r0;

.field public final b:Landroid/content/Context;

.field public c:J

.field public final d:Landroid/os/Handler;

.field public e:Ljava/lang/String;

.field public final f:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x1f40

    iput-wide v0, p0, Lrich/t0;->c:J

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lrich/t0;->f:Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lrich/t0;->b:Landroid/content/Context;

    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lrich/t0;->d:Landroid/os/Handler;

    invoke-static {p1}, Lrich/r0;->a(Landroid/content/Context;)Lrich/r0;

    move-result-object v0

    iput-object v0, p0, Lrich/t0;->a:Lrich/r0;

    invoke-static {p1}, Lrich/m2;->a(Landroid/content/Context;)Lrich/m2;

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lrich/b0;->a:Landroid/content/Context;

    .line 3
    new-instance v0, Lrich/h2;

    invoke-direct {v0, p1}, Lrich/h2;-><init>(Landroid/content/Context;)V

    sput-object v0, Lrich/h2;->d:Lrich/h2;

    .line 4
    new-instance p1, Lrich/t0$a;

    invoke-direct {p1, p0}, Lrich/t0$a;-><init>(Lrich/t0;)V

    invoke-static {p1}, Lrich/k2;->a(Lrich/k2$a;)V

    return-void
.end method

.method public static b(Landroid/content/Context;)Lrich/t0;
    .locals 2

    sget-object v0, Lrich/t0;->g:Lrich/t0;

    if-nez v0, :cond_1

    const-class v0, Lrich/t0;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lrich/t0;->g:Lrich/t0;

    if-nez v1, :cond_0

    new-instance v1, Lrich/t0;

    invoke-direct {v1, p0}, Lrich/t0;-><init>(Landroid/content/Context;)V

    sput-object v1, Lrich/t0;->g:Lrich/t0;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    sget-object p0, Lrich/t0;->g:Lrich/t0;

    return-object p0
.end method


# virtual methods
.method public a(Landroid/content/Context;)Lorg/json/JSONObject;
    .locals 6

    const-string v0, "AuthnHelperCore"

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    iget-object v2, p0, Lrich/t0;->b:Landroid/content/Context;

    invoke-static {v2}, Lrich/j2;->a(Landroid/content/Context;)Z

    move-result v2

    invoke-static {}, Lrich/v0;->a()Lrich/v0;

    move-result-object v3

    invoke-virtual {v3, p1, v2}, Lrich/v0;->a(Landroid/content/Context;Z)V

    .line 28
    sget-object v3, Lrich/h2;->d:Lrich/h2;

    const/4 v4, 0x0

    .line 29
    invoke-virtual {v3, v4, v2}, Lrich/h2;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lrich/l0;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Lrich/l0;-><init>(I)V

    invoke-static {p1, v2, v4}, Lrich/j2;->a(Landroid/content/Context;ZLrich/l0;)I

    move-result p1

    const-string v2, "operatortype"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "networktype"

    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u7f51\u7edc\u7c7b\u578b: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lrich/c2;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u8fd0\u8425\u5546\u7c7b\u578b: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lrich/c2;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v1

    :catch_0
    :try_start_2
    const-string p1, "errorDes"

    const-string v0, "\u53d1\u751f\u672a\u77e5\u9519\u8bef"

    invoke-virtual {v1, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-object v1
.end method

.method public a(Lrich/q0;)Lrich/l0;
    .locals 5

    new-instance v0, Lrich/l0;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Lrich/l0;-><init>(I)V

    invoke-static {}, Lrich/l2;->c()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lrich/x1;

    invoke-direct {v2}, Lrich/x1;-><init>()V

    .line 1
    iget-object v3, v0, Lrich/l0;->a:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v4, "logBean"

    invoke-virtual {v3, v4, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "traceId"

    .line 2
    invoke-virtual {v0, v2, v1}, Lrich/l0;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2, v1}, Lrich/c2;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 3
    sget-object v2, Lrich/d2;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public final a()V
    .locals 3

    const-string v0, "%"

    invoke-static {v0}, Lrich/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lrich/l2;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "generate aid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AuthnHelperCore"

    invoke-static {v2, v1}, Lrich/c2;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "AID"

    invoke-static {v1, v0}, Lrich/b0;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lrich/l0;Lorg/json/JSONObject;)V
    .locals 7

    const-string v0, "traceId"

    :try_start_0
    const-string v1, ""

    .line 16
    invoke-virtual {p3, v0, v1}, Lrich/l0;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SDKRequestCode"

    const/4 v2, -0x1

    .line 17
    invoke-virtual {p3, v1, v2}, Lrich/l0;->b(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v0}, Lrich/d2;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {v0}, Lrich/d2;->b(Ljava/lang/String;)Lrich/q0;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz p4, :cond_0

    const-string v4, "keepListener"

    invoke-virtual {p4, v4, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_1

    .line 18
    :cond_0
    sget-object v4, Lrich/d2;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    if-nez v2, :cond_2

    .line 19
    monitor-exit p0

    return-void

    :cond_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v4, "systemEndTime"

    :try_start_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    invoke-virtual {p3, v4, v5, v6}, Lrich/l0;->a(Ljava/lang/String;J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const-string v4, "endtime"

    :try_start_3
    invoke-static {}, Lrich/b0;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3, v4, v5}, Lrich/l0;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    const-string v4, "logintype"

    .line 20
    :try_start_4
    invoke-virtual {p3, v4, v3}, Lrich/l0;->b(Ljava/lang/String;I)I

    move-result v3

    if-nez p4, :cond_3

    .line 21
    invoke-static {p1, p2}, Lrich/b0;->a(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p4

    :cond_3
    const/4 v4, 0x3

    if-ne v3, v4, :cond_4

    invoke-static {p1, p3, p4}, Lrich/b0;->a(Ljava/lang/String;Lrich/l0;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p2

    goto :goto_0

    :cond_4
    invoke-static {p1, p2, p3, p4}, Lrich/b0;->a(Ljava/lang/String;Ljava/lang/String;Lrich/l0;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p2

    :goto_0
    const-string p4, "traceId"

    invoke-virtual {p2, p4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    const-string p4, "scripExpiresIn"

    :try_start_5
    invoke-static {}, Lrich/f2;->a()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object p4, p0, Lrich/t0;->d:Landroid/os/Handler;

    new-instance v0, Lrich/t0$c;

    invoke-direct {v0, p0, v2, v1, p2}, Lrich/t0$c;-><init>(Lrich/t0;Lrich/q0;ILorg/json/JSONObject;)V

    invoke-virtual {p4, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object p2, p0, Lrich/t0;->b:Landroid/content/Context;

    invoke-static {p2}, Lrich/k0;->a(Landroid/content/Context;)Lrich/k0;

    move-result-object p2

    .line 22
    iget-object p2, p2, Lrich/k0;->c:Lrich/j0;

    invoke-virtual {p2, p3}, Lrich/j0;->a(Lrich/l0;)V

    .line 23
    invoke-virtual {p3}, Lrich/l0;->b()Lrich/h0;

    move-result-object p2

    .line 24
    iget-boolean p2, p2, Lrich/h0;->j:Z

    if-nez p2, :cond_5

    .line 25
    invoke-virtual {p3}, Lrich/l0;->b()Lrich/h0;

    move-result-object p2

    invoke-static {p2}, Lrich/l2;->a(Lrich/h0;)Z

    move-result p2

    if-nez p2, :cond_5

    iget-object p2, p0, Lrich/t0;->b:Landroid/content/Context;

    .line 26
    new-instance p4, Lrich/u0;

    invoke-direct {p4, p0, p1, p2, p3}, Lrich/u0;-><init>(Lrich/t0;Ljava/lang/String;Landroid/content/Context;Lrich/l0;)V

    invoke-static {p4}, Lrich/k2;->a(Lrich/k2$a;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 27
    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw p1
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5
    :goto_1
    return-void
.end method

.method public a(Lrich/l0;)V
    .locals 4

    new-instance v0, Lrich/t0$d;

    invoke-direct {v0, p0, p1}, Lrich/t0$d;-><init>(Lrich/t0;Lrich/l0;)V

    iget-object v1, p0, Lrich/t0;->d:Landroid/os/Handler;

    iget-wide v2, p0, Lrich/t0;->c:J

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v1, p0, Lrich/t0;->a:Lrich/r0;

    new-instance v2, Lrich/t0$b;

    invoke-direct {v2, p0, v0}, Lrich/t0$b;-><init>(Lrich/t0;Lrich/t0$d;)V

    invoke-virtual {v1, p1, v2}, Lrich/r0;->a(Lrich/l0;Lrich/s0;)V

    return-void
.end method

.method public a(Lrich/l0;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILrich/q0;)Z
    .locals 6

    iget-object v0, p0, Lrich/t0;->b:Landroid/content/Context;

    invoke-static {v0}, Lrich/k0;->a(Landroid/content/Context;)Lrich/k0;

    move-result-object v0

    invoke-virtual {v0}, Lrich/k0;->a()Lrich/h0;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrich/l0;->a(Lrich/h0;)V

    iget-object v1, p0, Lrich/t0;->e:Ljava/lang/String;

    const-string v2, "rsa2048"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "use2048PublicKey"

    invoke-virtual {p1, v2, v1}, Lrich/l0;->a(Ljava/lang/String;Z)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const-string v3, "systemStartTime"

    invoke-virtual {p1, v3, v1, v2}, Lrich/l0;->a(Ljava/lang/String;J)V

    invoke-static {}, Lrich/b0;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "starttime"

    invoke-virtual {p1, v2, v1}, Lrich/l0;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "loginMethod"

    invoke-virtual {p1, v1, p4}, Lrich/l0;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string p4, "appkey"

    invoke-virtual {p1, p4, p3}, Lrich/l0;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string p4, "appid"

    invoke-virtual {p1, p4, p2}, Lrich/l0;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v1, p0, Lrich/t0;->c:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p4

    const-string v1, "timeOut"

    invoke-virtual {p1, v1, p4}, Lrich/l0;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p4, p0, Lrich/t0;->b:Landroid/content/Context;

    invoke-static {p4}, Lrich/j2;->a(Landroid/content/Context;)Z

    move-result p4

    invoke-static {}, Lrich/v0;->a()Lrich/v0;

    move-result-object v1

    iget-object v2, p0, Lrich/t0;->b:Landroid/content/Context;

    invoke-virtual {v1, v2, p4}, Lrich/v0;->a(Landroid/content/Context;Z)V

    .line 4
    sget-object v1, Lrich/h2;->d:Lrich/h2;

    .line 5
    invoke-virtual {v1}, Lrich/h2;->a()Ljava/lang/String;

    move-result-object v1

    .line 6
    sget-object v2, Lrich/h2;->d:Lrich/h2;

    .line 7
    invoke-virtual {v2, p4}, Lrich/h2;->a(Z)Ljava/lang/String;

    move-result-object v2

    .line 8
    sget-object v3, Lrich/h2;->d:Lrich/h2;

    .line 9
    invoke-virtual {v3, v2, p4}, Lrich/h2;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    const-string v4, "operator"

    invoke-virtual {p1, v4, v2}, Lrich/l0;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "operatortype"

    invoke-virtual {p1, v4, v3}, Lrich/l0;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "logintype"

    invoke-virtual {p1, v4, p5}, Lrich/l0;->a(Ljava/lang/String;I)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "subId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "AuthnHelperCore"

    invoke-static {v5, v4}, Lrich/c2;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u4f7f\u7528subId\u4f5c\u4e3a\u7f13\u5b58key = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "AuthnHelperCore"

    invoke-static {v4, v2}, Lrich/c2;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "scripType"

    const-string v4, "subid"

    invoke-virtual {p1, v2, v4}, Lrich/l0;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "scripKey"

    invoke-virtual {p1, v2, v1}, Lrich/l0;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u4f7f\u7528operator\u4f5c\u4e3a\u7f13\u5b58key = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "AuthnHelperCore"

    invoke-static {v4, v1}, Lrich/c2;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "scripType"

    const-string v4, "operator"

    invoke-virtual {p1, v1, v4}, Lrich/l0;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "scripKey"

    invoke-virtual {p1, v1, v2}, Lrich/l0;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    iget-object v1, p0, Lrich/t0;->b:Landroid/content/Context;

    invoke-static {v1, p4, p1}, Lrich/j2;->a(Landroid/content/Context;ZLrich/l0;)I

    move-result v1

    const-string v2, "networktype"

    invoke-virtual {p1, v2, v1}, Lrich/l0;->a(Ljava/lang/String;I)V

    const/4 v2, 0x0

    if-nez p4, :cond_2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string p3, "authType"

    invoke-virtual {p1, p3, p2}, Lrich/l0;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "200010"

    const-string p3, "\u65e0\u6cd5\u8bc6\u522bsim\u5361\u6216\u6ca1\u6709sim\u5361"

    goto/16 :goto_5

    :cond_2
    if-nez p6, :cond_3

    const-string p2, "102203"

    const-string p3, "listener\u4e0d\u80fd\u4e3a\u7a7a"

    goto/16 :goto_5

    .line 10
    :cond_3
    iget-boolean p4, v0, Lrich/h0;->g:Z

    if-eqz p4, :cond_4

    goto :goto_3

    :cond_4
    if-nez p2, :cond_5

    const-string p2, ""

    goto :goto_1

    .line 11
    :cond_5
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    :goto_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_6

    const-string p2, "102203"

    const-string p3, "appId \u4e0d\u80fd\u4e3a\u7a7a"

    goto/16 :goto_5

    :cond_6
    if-nez p3, :cond_7

    const-string p2, ""

    goto :goto_2

    :cond_7
    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    :goto_2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_8

    const-string p2, "102203"

    const-string p3, "appkey\u4e0d\u80fd\u4e3a\u7a7a"

    goto/16 :goto_5

    :cond_8
    if-nez v1, :cond_9

    const-string p2, "102101"

    const-string p3, "\u672a\u68c0\u6d4b\u5230\u7f51\u7edc"

    goto/16 :goto_5

    :cond_9
    const-string p2, "2"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_a

    .line 12
    iget-boolean p2, v0, Lrich/h0;->f:Z

    if-eqz p2, :cond_a

    goto :goto_3

    :cond_a
    const-string p2, "3"

    .line 13
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_b

    .line 14
    iget-boolean p2, v0, Lrich/h0;->e:Z

    if-eqz p2, :cond_b

    :goto_3
    const-string p2, "200082"

    const-string p3, "\u670d\u52a1\u5668\u7e41\u5fd9\uff0c\u8bf7\u7a0d\u540e\u91cd\u8bd5"

    goto :goto_5

    .line 15
    :cond_b
    iget-object p2, p0, Lrich/t0;->f:Ljava/lang/Object;

    monitor-enter p2

    :try_start_0
    invoke-static {p1}, Lrich/f2;->a(Lrich/l0;)Z

    move-result p3

    const/4 p4, 0x1

    if-eqz p3, :cond_d

    const-string p6, "securityphone"

    const-string v0, ""

    invoke-static {p6, v0}, Lrich/b0;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p6

    const-string v0, "securityphone"

    invoke-virtual {p1, v0, p6}, Lrich/l0;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p6, 0x3

    if-eq p6, p5, :cond_d

    iget-object p5, p0, Lrich/t0;->b:Landroid/content/Context;

    invoke-static {p5}, Lrich/f2;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string p6, "AuthnHelperCore"

    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u89e3\u5bc6phoneScript "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    xor-int/2addr v3, p4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p6, v0}, Lrich/c2;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p6

    if-nez p6, :cond_c

    const-string p6, "phonescrip"

    invoke-virtual {p1, p6, p5}, Lrich/l0;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_c
    move p3, v2

    :goto_4
    invoke-static {p4, v2}, Lrich/f2;->a(ZZ)V

    :cond_d
    const-string p5, "isCacheScrip"

    invoke-virtual {p1, p5, p3}, Lrich/l0;->a(Ljava/lang/String;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string p5, "AuthnHelperCore"

    :try_start_2
    new-instance p6, Ljava/lang/StringBuilder;

    invoke-direct {p6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isCachePhoneScrip = "

    invoke-virtual {p6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p6

    invoke-static {p5, p6}, Lrich/c2;->b(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 p2, 0x2

    if-ne v1, p2, :cond_e

    if-nez p3, :cond_e

    const-string p2, "102103"

    const-string p3, "\u65e0\u6570\u636e\u7f51\u7edc"

    :goto_5
    const/4 p4, 0x0

    invoke-virtual {p0, p2, p3, p1, p4}, Lrich/t0;->a(Ljava/lang/String;Ljava/lang/String;Lrich/l0;Lorg/json/JSONObject;)V

    return v2

    :cond_e
    return p4

    :catchall_0
    move-exception p1

    :try_start_3
    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public b()V
    .locals 2

    const/4 v0, 0x1

    :try_start_0
    invoke-static {v0, v0}, Lrich/f2;->a(ZZ)V

    const-string v0, "AuthnHelperCore"

    const-string v1, "\u5220\u9664scrip"

    invoke-static {v0, v1}, Lrich/c2;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
