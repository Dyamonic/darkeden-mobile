.class final Lcom/taptap/sdk/retrofit2/BuiltInConverters$UnitResponseBodyConverter;
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
    name = "UnitResponseBodyConverter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/taptap/sdk/retrofit2/Converter<",
        "Lcom/taptap/sdk/okhttp3/ResponseBody;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# static fields
.field static final INSTANCE:Lcom/taptap/sdk/retrofit2/BuiltInConverters$UnitResponseBodyConverter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 69
    new-instance v0, Lcom/taptap/sdk/retrofit2/BuiltInConverters$UnitResponseBodyConverter;

    invoke-direct {v0}, Lcom/taptap/sdk/retrofit2/BuiltInConverters$UnitResponseBodyConverter;-><init>()V

    sput-object v0, Lcom/taptap/sdk/retrofit2/BuiltInConverters$UnitResponseBodyConverter;->INSTANCE:Lcom/taptap/sdk/retrofit2/BuiltInConverters$UnitResponseBodyConverter;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 68
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

    .line 68
    check-cast p1, Lcom/taptap/sdk/okhttp3/ResponseBody;

    invoke-virtual {p0, p1}, Lcom/taptap/sdk/retrofit2/BuiltInConverters$UnitResponseBodyConverter;->convert(Lcom/taptap/sdk/okhttp3/ResponseBody;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method

.method public convert(Lcom/taptap/sdk/okhttp3/ResponseBody;)Lkotlin/Unit;
    .locals 0

    .line 73
    invoke-virtual {p1}, Lcom/taptap/sdk/okhttp3/ResponseBody;->close()V

    .line 74
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
