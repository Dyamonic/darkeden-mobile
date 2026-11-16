.class Lcom/tencent/open/a/g$2;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/open/a/g;->a(Landroid/os/Bundle;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/os/Bundle;

.field final synthetic b:Z

.field final synthetic c:Lcom/tencent/open/a/g;


# direct methods
.method constructor <init>(Lcom/tencent/open/a/g;Landroid/os/Bundle;Z)V
    .locals 0

    .line 161
    iput-object p1, p0, Lcom/tencent/open/a/g$2;->c:Lcom/tencent/open/a/g;

    iput-object p2, p0, Lcom/tencent/open/a/g$2;->a:Landroid/os/Bundle;

    iput-boolean p3, p0, Lcom/tencent/open/a/g$2;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    const-string v0, "openSDK_LOG.ReportManager"

    .line 166
    :try_start_0
    invoke-static {}, Lcom/tencent/open/utils/e;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/open/a/c;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/open/utils/k;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 167
    invoke-static {}, Lcom/tencent/open/utils/e;->a()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/open/a/c;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/open/utils/k;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 168
    invoke-static {}, Lcom/tencent/open/a/c;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/open/utils/k;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 169
    invoke-static {}, Lcom/tencent/open/utils/e;->a()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/tencent/open/a/c;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/tencent/open/utils/k;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "-->reporVia:imei[%s,%s],imsi[%s,%s],mac[%s,%s],anid[%s,%s]"

    const/16 v6, 0x8

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    .line 173
    invoke-static {}, Lcom/tencent/open/utils/e;->a()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/tencent/open/a/c;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object v1, v6, v7

    const/4 v7, 0x2

    .line 174
    invoke-static {}, Lcom/tencent/open/utils/e;->a()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/tencent/open/a/c;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x3

    aput-object v2, v6, v7

    const/4 v7, 0x4

    .line 175
    invoke-static {}, Lcom/tencent/open/a/c;->a()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x5

    aput-object v3, v6, v7

    const/4 v7, 0x6

    .line 176
    invoke-static {}, Lcom/tencent/open/utils/e;->a()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/tencent/open/a/c;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x7

    aput-object v4, v6, v7

    .line 172
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string v6, "uin"

    const-string v7, "1000"

    .line 178
    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "imei"

    .line 179
    invoke-virtual {v5, v6, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "imsi"

    .line 180
    invoke-virtual {v5, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "android_id"

    .line 181
    invoke-virtual {v5, v1, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "mac"

    .line 182
    invoke-virtual {v5, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "platform"

    const-string v2, "1"

    .line 184
    invoke-virtual {v5, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "os_ver"

    .line 185
    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v5, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "position"

    .line 186
    invoke-static {}, Lcom/tencent/open/utils/e;->a()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/open/utils/k;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "network"

    .line 187
    invoke-static {}, Lcom/tencent/open/utils/e;->a()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/open/a/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "language"

    .line 188
    invoke-static {}, Lcom/tencent/open/a/c;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "resolution"

    .line 189
    invoke-static {}, Lcom/tencent/open/utils/e;->a()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/open/a/c;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "apn"

    .line 190
    invoke-static {}, Lcom/tencent/open/utils/e;->a()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/open/a/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "model_name"

    .line 191
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v5, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "timezone"

    .line 192
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "sdk_ver"

    const-string v2, "3.3.7.lite"

    .line 193
    invoke-virtual {v5, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "qz_ver"

    .line 194
    invoke-static {}, Lcom/tencent/open/utils/e;->a()Landroid/content/Context;

    move-result-object v2

    const-string v3, "com.qzone"

    invoke-static {v2, v3}, Lcom/tencent/open/utils/k;->d(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "qq_ver"

    .line 195
    invoke-static {}, Lcom/tencent/open/utils/e;->a()Landroid/content/Context;

    move-result-object v2

    const-string v3, "com.tencent.mobileqq"

    invoke-static {v2, v3}, Lcom/tencent/open/utils/k;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "qua"

    .line 196
    invoke-static {}, Lcom/tencent/open/utils/e;->a()Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Lcom/tencent/open/utils/e;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/open/utils/k;->e(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "packagename"

    .line 197
    invoke-static {}, Lcom/tencent/open/utils/e;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "app_ver"

    .line 198
    invoke-static {}, Lcom/tencent/open/utils/e;->a()Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Lcom/tencent/open/utils/e;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/open/utils/k;->d(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    iget-object v1, p0, Lcom/tencent/open/a/g$2;->a:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    .line 202
    invoke-virtual {v5, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 205
    :cond_0
    new-instance v1, Lcom/tencent/open/a/b;

    invoke-direct {v1, v5}, Lcom/tencent/open/a/b;-><init>(Landroid/os/Bundle;)V

    .line 208
    iget-object v2, p0, Lcom/tencent/open/a/g$2;->c:Lcom/tencent/open/a/g;

    iget-object v2, v2, Lcom/tencent/open/a/g;->d:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 211
    iget-object v1, p0, Lcom/tencent/open/a/g$2;->c:Lcom/tencent/open/a/g;

    iget-object v1, v1, Lcom/tencent/open/a/g;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 214
    invoke-static {}, Lcom/tencent/open/utils/e;->a()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/tencent/open/utils/f;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/open/utils/f;

    move-result-object v2

    const-string v3, "Agent_ReportTimeInterval"

    .line 215
    invoke-virtual {v2, v3}, Lcom/tencent/open/utils/f;->a(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1

    const/16 v2, 0x2710

    :cond_1
    const/16 v3, 0x3e9

    .line 221
    iget-object v4, p0, Lcom/tencent/open/a/g$2;->c:Lcom/tencent/open/a/g;

    const-string v5, "report_via"

    invoke-virtual {v4, v5, v1}, Lcom/tencent/open/a/g;->a(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/tencent/open/a/g$2;->b:Z

    if-eqz v1, :cond_2

    goto :goto_0

    .line 225
    :cond_2
    iget-object v1, p0, Lcom/tencent/open/a/g$2;->c:Lcom/tencent/open/a/g;

    iget-object v1, v1, Lcom/tencent/open/a/g;->f:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_4

    .line 226
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 227
    iput v3, v1, Landroid/os/Message;->what:I

    .line 228
    iget-object v3, p0, Lcom/tencent/open/a/g$2;->c:Lcom/tencent/open/a/g;

    iget-object v3, v3, Lcom/tencent/open/a/g;->f:Landroid/os/Handler;

    int-to-long v4, v2

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1

    .line 222
    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/tencent/open/a/g$2;->c:Lcom/tencent/open/a/g;

    invoke-virtual {v1}, Lcom/tencent/open/a/g;->e()V

    .line 223
    iget-object v1, p0, Lcom/tencent/open/a/g$2;->c:Lcom/tencent/open/a/g;

    iget-object v1, v1, Lcom/tencent/open/a/g;->f:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v2, "--> reporVia, exception in sub thread."

    .line 232
    invoke-static {v0, v2, v1}, Lcom/tencent/open/log/SLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    :goto_1
    return-void
.end method
