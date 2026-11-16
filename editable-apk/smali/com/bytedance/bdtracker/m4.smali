.class public abstract Lcom/bytedance/bdtracker/m4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/bytedance/applog/store/kv/IKVStore;


# instance fields
.field public final a:Landroid/content/SharedPreferences;

.field public final b:Ljava/lang/String;

.field public final c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bytedance/bdtracker/m4;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/bytedance/bdtracker/m4;->c:Landroid/content/Context;

    const/4 p1, 0x0

    invoke-static {p2, p3, p1}, Lcom/bytedance/bdtracker/j4;->a(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/bdtracker/m4;->a:Landroid/content/SharedPreferences;

    return-void
.end method


# virtual methods
.method public abstract a()Ljava/lang/String;
.end method

.method public abstract a(Ljava/lang/String;)V
.end method

.method public abstract a(Ljava/lang/String;I)V
.end method

.method public abstract a(Ljava/lang/String;J)V
.end method

.method public abstract a(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract a(Ljava/lang/String;Ljava/util/Set;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract a(Ljava/lang/String;Z)V
.end method

.method public clear()Lcom/bytedance/applog/store/kv/IKVStore;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/bdtracker/m4;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-object p0
.end method

.method public contains(Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lcom/bytedance/bdtracker/m4;->a:Landroid/content/SharedPreferences;

    .line 1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/bytedance/bdtracker/m4;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public getAll()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/bdtracker/m4;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public putBoolean(Ljava/lang/String;Z)Lcom/bytedance/applog/store/kv/IKVStore;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/bytedance/bdtracker/m4;->a(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/bdtracker/m4;->a(Ljava/lang/String;Z)V

    return-object p0
.end method

.method public putInt(Ljava/lang/String;I)Lcom/bytedance/applog/store/kv/IKVStore;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/bytedance/bdtracker/m4;->a(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/bdtracker/m4;->a(Ljava/lang/String;I)V

    return-object p0
.end method

.method public putLong(Ljava/lang/String;J)Lcom/bytedance/applog/store/kv/IKVStore;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/bytedance/bdtracker/m4;->a(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2, p3}, Lcom/bytedance/bdtracker/m4;->a(Ljava/lang/String;J)V

    return-object p0
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/applog/store/kv/IKVStore;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/bytedance/bdtracker/m4;->a(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/bdtracker/m4;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public putStringSet(Ljava/lang/String;Ljava/util/Set;)Lcom/bytedance/applog/store/kv/IKVStore;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/bytedance/applog/store/kv/IKVStore;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/bytedance/bdtracker/m4;->a(Ljava/lang/String;)V

    if-nez p2, :cond_0

    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/bytedance/bdtracker/m4;->a(Ljava/lang/String;Ljava/util/Set;)V

    return-object p0
.end method

.method public remove(Ljava/lang/String;)Lcom/bytedance/applog/store/kv/IKVStore;
    .locals 3

    iget-object v0, p0, Lcom/bytedance/bdtracker/m4;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/bytedance/bdtracker/m4;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-object p0
.end method
