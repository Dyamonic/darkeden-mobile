.class public Lcom/rich/oauth/core/RichAuth$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/rich/oauth/callback/InitCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rich/oauth/core/RichAuth;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>(Lcom/rich/oauth/core/RichAuth;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitFailure(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onInitSuccess()V
    .locals 0

    return-void
.end method
