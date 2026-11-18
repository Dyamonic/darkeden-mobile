.class final Lcom/taptap/sdk/retrofit2/BuiltInConverters$VoidResponseBodyConverter;
.super Ljava/lang/Object;
.source "BuiltInConverters.java"

# interfaces
.implements Lcom/taptap/sdk/retrofit2/Converter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taptap/sdk/retrofit2/BuiltInConverters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "VoidResponseBodyConverter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/taptap/sdk/retrofit2/Converter<",
        "Lcom/taptap/sdk/okhttp3/ResponseBody;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field static final INSTANCE:Lcom/taptap/sdk/retrofit2/BuiltInConverters$VoidResponseBodyConverter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 59
    new-instance v0, Lcom/taptap/sdk/retrofit2/BuiltInConverters$VoidResponseBodyConverter;

    invoke-direct {v0}, Lcom/taptap/sdk/retrofit2/BuiltInConverters$VoidResponseBodyConverter;-><init>()V

    sput-object v0, Lcom/taptap/sdk/retrofit2/BuiltInConverters$VoidResponseBodyConverter;->INSTANCE:Lcom/taptap/sdk/retrofit2/BuiltInConverters$VoidResponseBodyConverter;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic convert(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 58
    check-cast p1, Lcom/taptap/sdk/okhttp3/ResponseBody;

    invoke-virtual {p0, p1}, Lcom/taptap/sdk/retrofit2/BuiltInConverters$VoidResponseBodyConverter;->convert(Lcom/taptap/sdk/okhttp3/ResponseBody;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public convert(Lcom/taptap/sdk/okhttp3/ResponseBody;)Ljava/lang/Void;
    .locals 0

    .line 63
    invoke-virtual {p1}, Lcom/taptap/sdk/okhttp3/ResponseBody;->close()V

    const/4 p1, 0x0

    return-object p1
.end method
