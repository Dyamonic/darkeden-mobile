.class public Lcom/heytap/openid/base/m_c$m_b;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heytap/openid/base/m_c;->m_b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic m_a:Lcom/heytap/openid/base/m_c;


# direct methods
.method public constructor <init>(Lcom/heytap/openid/base/m_c;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/heytap/openid/base/m_c$m_b;->m_a:Lcom/heytap/openid/base/m_c;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public native handleMessage(Landroid/os/Message;)V
.end method
