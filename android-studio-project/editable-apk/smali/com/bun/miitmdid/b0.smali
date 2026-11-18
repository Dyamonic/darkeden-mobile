.class public Lcom/bun/miitmdid/b0;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lcom/bun/miitmdid/d0;

.field public b:Lcom/bun/lib/MsaIdInterface;


# direct methods
.method public constructor <init>(Lcom/bun/lib/MsaIdInterface;Lcom/bun/miitmdid/d0;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lcom/bun/miitmdid/b0;->b:Lcom/bun/lib/MsaIdInterface;

    iput-object p2, p0, Lcom/bun/miitmdid/b0;->a:Lcom/bun/miitmdid/d0;

    return-void
.end method


# virtual methods
.method public varargs native a([Ljava/lang/Void;)Ljava/lang/Boolean;
.end method

.method public native a(Ljava/lang/Boolean;)V
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/bun/miitmdid/b0;->a([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/bun/miitmdid/b0;->a(Ljava/lang/Boolean;)V

    return-void
.end method
