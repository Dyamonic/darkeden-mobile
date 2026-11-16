.class final Lcom/logic/proto/ChatProto$ID$1;
.super Ljava/lang/Object;
.source "ChatProto.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLiteMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/logic/proto/ChatProto$ID;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/protobuf/Internal$EnumLiteMap<",
        "Lcom/logic/proto/ChatProto$ID;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 329
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic findValueByNumber(I)Lcom/google/protobuf/Internal$EnumLite;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "number"
        }
    .end annotation

    .line 329
    invoke-virtual {p0, p1}, Lcom/logic/proto/ChatProto$ID$1;->findValueByNumber(I)Lcom/logic/proto/ChatProto$ID;

    move-result-object p1

    return-object p1
.end method

.method public findValueByNumber(I)Lcom/logic/proto/ChatProto$ID;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "number"
        }
    .end annotation

    .line 331
    invoke-static {p1}, Lcom/logic/proto/ChatProto$ID;->forNumber(I)Lcom/logic/proto/ChatProto$ID;

    move-result-object p1

    return-object p1
.end method
