.class Lcom/taptap/sdk/okhttp3/EventListener$2;
.super Ljava/lang/Object;
.source "EventListener.java"

# interfaces
.implements Lcom/taptap/sdk/okhttp3/EventListener$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taptap/sdk/okhttp3/EventListener;->factory(Lcom/taptap/sdk/okhttp3/EventListener;)Lcom/taptap/sdk/okhttp3/EventListener$Factory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:Lcom/taptap/sdk/okhttp3/EventListener;


# direct methods
.method constructor <init>(Lcom/taptap/sdk/okhttp3/EventListener;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/taptap/sdk/okhttp3/EventListener$2;->val$listener:Lcom/taptap/sdk/okhttp3/EventListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Lcom/taptap/sdk/okhttp3/Call;)Lcom/taptap/sdk/okhttp3/EventListener;
    .locals 0

    .line 59
    iget-object p1, p0, Lcom/taptap/sdk/okhttp3/EventListener$2;->val$listener:Lcom/taptap/sdk/okhttp3/EventListener;

    return-object p1
.end method
