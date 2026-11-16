.class public Lcom/heytap/openid/base/m_c;
.super Ljava/lang/Object;


# instance fields
.field public volatile m_a:Landroid/os/IInterface;

.field public m_b:Ljava/lang/String;

.field public m_c:Ljava/lang/String;

.field public final m_d:Ljava/lang/Object;

.field public m_e:Landroid/content/ServiceConnection;

.field public m_f:Landroid/os/Handler;

.field public m_g:Landroid/os/HandlerThread;

.field public m_h:Landroid/content/Context;

.field public m_i:Landroid/os/IBinder$DeathRecipient;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/heytap/openid/base/m_c;->m_a:Landroid/os/IInterface;

    iput-object v0, p0, Lcom/heytap/openid/base/m_c;->m_b:Ljava/lang/String;

    iput-object v0, p0, Lcom/heytap/openid/base/m_c;->m_c:Ljava/lang/String;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/heytap/openid/base/m_c;->m_d:Ljava/lang/Object;

    iput-object v0, p0, Lcom/heytap/openid/base/m_c;->m_e:Landroid/content/ServiceConnection;

    new-instance v0, Lcom/heytap/openid/base/m_c$m_a;

    invoke-direct {v0, p0}, Lcom/heytap/openid/base/m_c$m_a;-><init>(Lcom/heytap/openid/base/m_c;)V

    iput-object v0, p0, Lcom/heytap/openid/base/m_c;->m_i:Landroid/os/IBinder$DeathRecipient;

    invoke-virtual {p0}, Lcom/heytap/openid/base/m_c;->m_b()V

    return-void
.end method


# virtual methods
.method public m_a()Landroid/content/Intent;
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method public m_a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method public declared-synchronized m_a(Landroid/content/Context;Ljava/util/List;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz p3, :cond_1

    invoke-virtual {p0, v1}, Lcom/heytap/openid/base/m_c;->m_b(Ljava/lang/String;)Z

    move-result v2

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v1}, Lcom/heytap/openid/base/m_c;->m_a(Ljava/lang/String;)Z

    move-result v2

    :goto_1
    if-nez v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz p2, :cond_3

    monitor-exit p0

    return-void

    :cond_3
    :try_start_1
    iget-object p2, p0, Lcom/heytap/openid/base/m_c;->m_a:Landroid/os/IInterface;

    const/4 p3, 0x1

    if-nez p2, :cond_7

    const-string p2, "2009"

    invoke-static {p2}, Lcom/heytap/openid/sdk/m_h;->m_a(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    invoke-virtual {p0}, Lcom/heytap/openid/base/m_c;->m_a()Landroid/content/Intent;

    move-result-object p2

    iget-object v1, p0, Lcom/heytap/openid/base/m_c;->m_e:Landroid/content/ServiceConnection;

    invoke-virtual {p1, p2, v1, p3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p2

    if-eqz p2, :cond_5

    const-string p2, "2013"

    invoke-static {p2}, Lcom/heytap/openid/sdk/m_h;->m_a(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/heytap/openid/base/m_c;->m_a:Landroid/os/IInterface;

    if-nez p2, :cond_7

    iget-object p2, p0, Lcom/heytap/openid/base/m_c;->m_d:Ljava/lang/Object;

    monitor-enter p2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    iget-object v1, p0, Lcom/heytap/openid/base/m_c;->m_a:Landroid/os/IInterface;

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/heytap/openid/base/m_c;->m_d:Ljava/lang/Object;

    const-wide/16 v2, 0x2710

    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v1

    goto :goto_3

    :catch_0
    :try_start_4
    const-string v1, "1006"
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    const-string v2, "IDHelper"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_2
    monitor-exit p2

    goto :goto_5

    :goto_3
    monitor-exit p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :cond_5
    :try_start_7
    const-string p2, "1007"
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    const-string v1, "IDHelper"

    invoke-static {v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_5

    :catch_1
    move-exception p2

    :try_start_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "1008 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    goto :goto_4

    :cond_6
    invoke-virtual {p2}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p2

    :goto_4
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "IDHelper"

    invoke-static {v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    :goto_5
    iget-object p2, p0, Lcom/heytap/openid/base/m_c;->m_a:Landroid/os/IInterface;

    if-nez p2, :cond_8

    const-string p1, "IDHelper"

    const-string p2, "1004"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    monitor-exit p0

    return-void

    :cond_8
    :try_start_a
    const-string p2, "2010"

    invoke-static {p2}, Lcom/heytap/openid/sdk/m_h;->m_a(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/heytap/openid/base/m_c;->m_b:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_9

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/heytap/openid/base/m_c;->m_b:Ljava/lang/String;

    :cond_9
    iget-object p2, p0, Lcom/heytap/openid/base/m_c;->m_c:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_a

    iget-object p2, p0, Lcom/heytap/openid/base/m_c;->m_b:Ljava/lang/String;

    const-string v1, "SHA1"

    invoke-static {p1, p2, v1}, Lcom/heytap/openid/sdk/m_a;->m_a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/heytap/openid/base/m_c;->m_c:Ljava/lang/String;

    :cond_a
    iget-object p1, p0, Lcom/heytap/openid/base/m_c;->m_f:Landroid/os/Handler;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/heytap/openid/base/m_c;->m_d:Ljava/lang/Object;

    monitor-enter v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :try_start_b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " 2023"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/heytap/openid/sdk/m_h;->m_a(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/heytap/openid/base/m_c;->m_f:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    const-string v3, "RESET_OUID"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    const/4 v3, 0x3

    iput v3, v2, Landroid/os/Message;->what:I

    goto :goto_7

    :cond_b
    iput p3, v2, Landroid/os/Message;->what:I

    :goto_7
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "IdType"

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v3, p0, Lcom/heytap/openid/base/m_c;->m_f:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-string v4, "DUID"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    if-eqz v4, :cond_c

    const/16 v4, 0x1388

    goto :goto_8

    :cond_c
    const/16 v4, 0x7d0

    :goto_8
    :try_start_c
    iget-object v5, p0, Lcom/heytap/openid/base/m_c;->m_d:Ljava/lang/Object;

    int-to-long v6, v4

    invoke-virtual {v5, v6, v7}, Ljava/lang/Object;->wait(J)V
    :try_end_c
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_c} :catch_2
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    goto :goto_9

    :catch_2
    :try_start_d
    const-string v5, "1022"
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    :try_start_e
    const-string v6, "IDHelper"

    invoke-static {v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_9
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    sub-long/2addr v5, v2

    int-to-long v2, v4

    cmp-long v2, v5, v2

    if-lez v2, :cond_d

    :try_start_f
    const-string v2, "1023"
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    :try_start_10
    const-string v3, "IDHelper"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " 2024"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/heytap/openid/sdk/m_h;->m_a(Ljava/lang/String;)V

    monitor-exit v1

    goto/16 :goto_6

    :catchall_1
    move-exception p1

    monitor-exit v1
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    :try_start_11
    throw p1

    :cond_e
    iget-object p1, p0, Lcom/heytap/openid/base/m_c;->m_f:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p1

    iput p2, p1, Landroid/os/Message;->what:I

    iget-object p2, p0, Lcom/heytap/openid/base/m_c;->m_f:Landroid/os/Handler;

    const-wide/32 v0, 0x493e0

    invoke-virtual {p2, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    monitor-exit p0

    return-void

    :catchall_2
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public m_a(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method public final m_b()V
    .locals 2

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "GetIDWorkThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/heytap/openid/base/m_c;->m_g:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/heytap/openid/base/m_c$m_b;

    iget-object v1, p0, Lcom/heytap/openid/base/m_c;->m_g:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/heytap/openid/base/m_c$m_b;-><init>(Lcom/heytap/openid/base/m_c;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/heytap/openid/base/m_c;->m_f:Landroid/os/Handler;

    return-void
.end method

.method public m_b(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method public m_c(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method
