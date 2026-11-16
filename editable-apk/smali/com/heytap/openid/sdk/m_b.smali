.class public Lcom/heytap/openid/sdk/m_b;
.super Lcom/heytap/openid/base/m_b;


# static fields
.field public static m_c:Lcom/heytap/openid/sdk/m_b;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/heytap/openid/base/m_b;-><init>()V

    return-void
.end method

.method public static native m_a()Lcom/heytap/openid/sdk/m_b;
.end method


# virtual methods
.method public m_a(Landroid/content/Context;Ljava/util/List;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/heytap/openid/base/m_b;->m_b:Ljava/lang/String;

    const-string v1, "OP_APP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/heytap/openid/sdk/m_c$m_b;->m_a:Lcom/heytap/openid/sdk/m_c;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/heytap/openid/sdk/m_i$m_b;->m_a:Lcom/heytap/openid/sdk/m_i;

    :goto_0
    invoke-virtual {v0, p1, p2, p3}, Lcom/heytap/openid/base/m_c;->m_a(Landroid/content/Context;Ljava/util/List;Z)V

    return-void
.end method
