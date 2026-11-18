.class public interface abstract Lcom/logic/proto/ChatProto$S2C_GetChatListOrBuilder;
.super Ljava/lang/Object;
.source "ChatProto.java"

# interfaces
.implements Lcom/google/protobuf/MessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/logic/proto/ChatProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "S2C_GetChatListOrBuilder"
.end annotation


# virtual methods
.method public abstract getChatList(I)Lcom/logic/proto/ChatProto$Chat;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation
.end method

.method public abstract getChatListCount()I
.end method

.method public abstract getChatListList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/logic/proto/ChatProto$Chat;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getChatListOrBuilder(I)Lcom/logic/proto/ChatProto$ChatOrBuilder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation
.end method

.method public abstract getChatListOrBuilderList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/logic/proto/ChatProto$ChatOrBuilder;",
            ">;"
        }
    .end annotation
.end method
