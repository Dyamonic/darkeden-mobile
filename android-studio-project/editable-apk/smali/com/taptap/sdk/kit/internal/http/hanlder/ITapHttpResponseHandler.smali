.class public interface abstract Lcom/taptap/sdk/kit/internal/http/hanlder/ITapHttpResponseHandler;
.super Ljava/lang/Object;
.source "ITapHttpResponseHandler.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<DataBean:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008f\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u00020\u0002J.\u0010\u0003\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u00042\u000e\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006H&\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\u0002\u0008\u0008\u0082\u0002\u000f\n\u0002\u0008!\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008\u0019\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/taptap/sdk/kit/internal/http/hanlder/ITapHttpResponseHandler;",
        "DataBean",
        "",
        "handleResponse",
        "Lkotlin/Result;",
        "response",
        "Lcom/taptap/sdk/kit/internal/bean/TapHttpResponse;",
        "Lkotlinx/serialization/json/JsonObject;",
        "handleResponse-CmtIpJM",
        "tap-kit_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# virtual methods
.method public abstract handleResponse-CmtIpJM(Lcom/taptap/sdk/kit/internal/bean/TapHttpResponse;)Lkotlin/Result;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taptap/sdk/kit/internal/bean/TapHttpResponse<",
            "Lkotlinx/serialization/json/JsonObject;",
            ">;)",
            "Lkotlin/Result<",
            "TDataBean;>;"
        }
    .end annotation
.end method
