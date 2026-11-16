.class public Lcom/tencent/turingfd/sdk/ams/ad/TuringIDService$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/turingfd/sdk/ams/ad/Caelum;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/turingfd/sdk/ams/ad/TuringIDService;->getTuringDIDAsync(Landroid/content/Context;Lcom/tencent/turingfd/sdk/ams/ad/ITuringDIDCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/tencent/turingfd/sdk/ams/ad/ITuringDIDCallback;


# direct methods
.method public constructor <init>(Lcom/tencent/turingfd/sdk/ams/ad/ITuringDIDCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/tencent/turingfd/sdk/ams/ad/TuringIDService$do;->a:Lcom/tencent/turingfd/sdk/ams/ad/ITuringDIDCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
