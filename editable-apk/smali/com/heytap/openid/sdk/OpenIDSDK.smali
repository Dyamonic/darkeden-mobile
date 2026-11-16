.class public Lcom/heytap/openid/sdk/OpenIDSDK;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clear(Landroid/content/Context;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " 2007"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/heytap/openid/sdk/m_h;->m_a(Ljava/lang/String;)V

    return-void
.end method

.method public static getAAID(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "2005"

    invoke-static {v0}, Lcom/heytap/openid/sdk/m_h;->m_a(Ljava/lang/String;)V

    const/4 v0, 0x2

    const-string v1, "AUID"

    invoke-static {p0, v0, v1}, Lcom/heytap/openid/sdk/m_g;->m_a(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static native getIds(Landroid/content/Context;I)Lcom/heytap/openid/bean/OpenIDInfo;
.end method

.method public static getOAID(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "2003"

    invoke-static {v0}, Lcom/heytap/openid/sdk/m_h;->m_a(Ljava/lang/String;)V

    const/16 v0, 0x8

    const-string v1, "OUID"

    invoke-static {p0, v0, v1}, Lcom/heytap/openid/sdk/m_g;->m_a(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getOAIDStatus(Landroid/content/Context;)Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "2002"

    invoke-static {v0}, Lcom/heytap/openid/sdk/m_h;->m_a(Ljava/lang/String;)V

    const/16 v0, 0x20

    invoke-static {p0, v0}, Lcom/heytap/openid/sdk/m_d;->m_a(Landroid/content/Context;I)Ljava/util/HashMap;

    move-result-object p0

    const-string v0, "OUID_STATUS"

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    const-string p0, "FALSE"

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    :goto_0
    const-string v0, "TRUE"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static getUDID(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "2001"

    invoke-static {v0}, Lcom/heytap/openid/sdk/m_h;->m_a(Ljava/lang/String;)V

    const/16 v0, 0x10

    const-string v1, "GUID"

    invoke-static {p0, v0, v1}, Lcom/heytap/openid/sdk/m_g;->m_a(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getVAID(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "2004"

    invoke-static {v0}, Lcom/heytap/openid/sdk/m_h;->m_a(Ljava/lang/String;)V

    const/4 v0, 0x4

    const-string v1, "DUID"

    invoke-static {p0, v0, v1}, Lcom/heytap/openid/sdk/m_g;->m_a(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static native init(Landroid/content/Context;)V
.end method

.method public static native isSupported()Z
.end method

.method public static native setLoggable(Z)V
.end method
