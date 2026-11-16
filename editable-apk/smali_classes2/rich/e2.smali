.class public Lrich/e2;
.super Lrich/k2$a;
.source ""


# instance fields
.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lrich/e2;->b:Landroid/content/Context;

    iput-object p2, p0, Lrich/e2;->c:Ljava/lang/String;

    iput-object p3, p0, Lrich/e2;->d:Ljava/lang/String;

    invoke-direct {p0}, Lrich/k2$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 7

    const-string v0, "PhoneScripUtils"

    const-string v1, "start save scrip to sp in sub thread"

    invoke-static {v0, v1}, Lrich/c2;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lrich/e2;->b:Landroid/content/Context;

    iget-object v1, p0, Lrich/e2;->c:Ljava/lang/String;

    .line 1
    sget-wide v2, Lrich/f2;->c:J

    .line 2
    iget-object v4, p0, Lrich/e2;->d:Ljava/lang/String;

    .line 3
    invoke-static {}, Lrich/b2;->a()V

    invoke-static {v0}, Lrich/b2;->a(Landroid/content/Context;)[B

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v5, Lrich/b2;->a:[B

    invoke-static {v0, v1, v5}, Lrich/b0;->a([BLjava/lang/String;[B)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {}, Lrich/b2;->a()V

    const/4 v0, 0x0

    .line 4
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lrich/b0;->a()Lrich/i2;

    move-result-object v1

    .line 5
    iget-object v5, v1, Lrich/i2;->a:Landroid/content/SharedPreferences$Editor;

    const-string v6, "phonescripcache"

    invoke-static {v6}, Lrich/b0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v0, "phonescripstarttime"

    .line 6
    invoke-virtual {v1, v0, v2, v3}, Lrich/i2;->a(Ljava/lang/String;J)V

    .line 7
    iget-object v0, v1, Lrich/i2;->a:Landroid/content/SharedPreferences$Editor;

    const-string v2, "phonescripversion"

    invoke-static {v2}, Lrich/b0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 8
    iget-object v0, v1, Lrich/i2;->a:Landroid/content/SharedPreferences$Editor;

    const-string v2, "pre_sim_key"

    invoke-static {v2}, Lrich/b0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 9
    iget-object v0, v1, Lrich/i2;->a:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_1
    return-void
.end method
