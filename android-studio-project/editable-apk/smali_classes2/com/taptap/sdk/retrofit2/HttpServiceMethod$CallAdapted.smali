.class final Lcom/taptap/sdk/retrofit2/HttpServiceMethod$CallAdapted;
.super Lcom/taptap/sdk/retrofit2/HttpServiceMethod;
.source "HttpServiceMethod.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taptap/sdk/retrofit2/HttpServiceMethod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "CallAdapted"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ResponseT:",
        "Ljava/lang/Object;",
        "ReturnT:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/taptap/sdk/retrofit2/HttpServiceMethod<",
        "TResponseT;TReturnT;>;"
    }
.end annotation


# instance fields
.field private final callAdapter:Lcom/taptap/sdk/retrofit2/CallAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/taptap/sdk/retrofit2/CallAdapter<",
            "TResponseT;TReturnT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/taptap/sdk/retrofit2/RequestFactory;Lcom/taptap/sdk/okhttp3/Call$Factory;Lcom/taptap/sdk/retrofit2/Converter;Lcom/taptap/sdk/retrofit2/CallAdapter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taptap/sdk/retrofit2/RequestFactory;",
            "Lcom/taptap/sdk/okhttp3/Call$Factory;",
            "Lcom/taptap/sdk/retrofit2/Converter<",
            "Lcom/taptap/sdk/okhttp3/ResponseBody;",
            "TResponseT;>;",
            "Lcom/taptap/sdk/retrofit2/CallAdapter<",
            "TResponseT;TReturnT;>;)V"
        }
    .end annotation

    .line 173
    invoke-direct {p0, p1, p2, p3}, Lcom/taptap/sdk/retrofit2/HttpServiceMethod;-><init>(Lcom/taptap/sdk/retrofit2/RequestFactory;Lcom/taptap/sdk/okhttp3/Call$Factory;Lcom/taptap/sdk/retrofit2/Converter;)V

    .line 174
    iput-object p4, p0, Lcom/taptap/sdk/retrofit2/HttpServiceMethod$CallAdapted;->callAdapter:Lcom/taptap/sdk/retrofit2/CallAdapter;

    return-void
.end method


# virtual methods
.method protected adapt(Lcom/taptap/sdk/retrofit2/Call;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taptap/sdk/retrofit2/Call<",
            "TResponseT;>;[",
            "Ljava/lang/Object;",
            ")TReturnT;"
        }
    .end annotation

    .line 179
    iget-object p2, p0, Lcom/taptap/sdk/retrofit2/HttpServiceMethod$CallAdapted;->callAdapter:Lcom/taptap/sdk/retrofit2/CallAdapter;

    invoke-interface {p2, p1}, Lcom/taptap/sdk/retrofit2/CallAdapter;->adapt(Lcom/taptap/sdk/retrofit2/Call;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
