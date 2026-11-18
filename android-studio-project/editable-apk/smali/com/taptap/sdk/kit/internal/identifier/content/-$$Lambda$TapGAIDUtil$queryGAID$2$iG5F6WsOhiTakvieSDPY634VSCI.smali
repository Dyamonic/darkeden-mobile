.class public final synthetic Lcom/taptap/sdk/kit/internal/identifier/content/-$$Lambda$TapGAIDUtil$queryGAID$2$iG5F6WsOhiTakvieSDPY634VSCI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/taptap/sdk/kit/internal/identifier/content/TapGAIDUtil;

.field public final synthetic f$1:Lcom/taptap/sdk/kit/internal/identifier/TapIdentifierUtil$GAID;


# direct methods
.method public synthetic constructor <init>(Lcom/taptap/sdk/kit/internal/identifier/content/TapGAIDUtil;Lcom/taptap/sdk/kit/internal/identifier/TapIdentifierUtil$GAID;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/taptap/sdk/kit/internal/identifier/content/-$$Lambda$TapGAIDUtil$queryGAID$2$iG5F6WsOhiTakvieSDPY634VSCI;->f$0:Lcom/taptap/sdk/kit/internal/identifier/content/TapGAIDUtil;

    iput-object p2, p0, Lcom/taptap/sdk/kit/internal/identifier/content/-$$Lambda$TapGAIDUtil$queryGAID$2$iG5F6WsOhiTakvieSDPY634VSCI;->f$1:Lcom/taptap/sdk/kit/internal/identifier/TapIdentifierUtil$GAID;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/taptap/sdk/kit/internal/identifier/content/-$$Lambda$TapGAIDUtil$queryGAID$2$iG5F6WsOhiTakvieSDPY634VSCI;->f$0:Lcom/taptap/sdk/kit/internal/identifier/content/TapGAIDUtil;

    iget-object v1, p0, Lcom/taptap/sdk/kit/internal/identifier/content/-$$Lambda$TapGAIDUtil$queryGAID$2$iG5F6WsOhiTakvieSDPY634VSCI;->f$1:Lcom/taptap/sdk/kit/internal/identifier/TapIdentifierUtil$GAID;

    invoke-static {v0, v1}, Lcom/taptap/sdk/kit/internal/identifier/content/TapGAIDUtil$queryGAID$2;->lambda$iG5F6WsOhiTakvieSDPY634VSCI(Lcom/taptap/sdk/kit/internal/identifier/content/TapGAIDUtil;Lcom/taptap/sdk/kit/internal/identifier/TapIdentifierUtil$GAID;)V

    return-void
.end method
