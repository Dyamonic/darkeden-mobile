.class public final enum Lcom/qq/gdt/action/ChannelType;
.super Ljava/lang/Enum;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/qq/gdt/action/ChannelType;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final enum CHANNEL_ALIBABA:Lcom/qq/gdt/action/ChannelType;

.field public static final enum CHANNEL_BAIDU:Lcom/qq/gdt/action/ChannelType;

.field public static final enum CHANNEL_BYTEDANCE:Lcom/qq/gdt/action/ChannelType;

.field public static final enum CHANNEL_KUAISHOU:Lcom/qq/gdt/action/ChannelType;

.field public static final enum CHANNEL_NATURAL:Lcom/qq/gdt/action/ChannelType;

.field public static final enum CHANNEL_OTHERS:Lcom/qq/gdt/action/ChannelType;

.field public static final enum CHANNEL_TENCENT:Lcom/qq/gdt/action/ChannelType;

.field public static final enum CHANNEL_UNKNOWN:Lcom/qq/gdt/action/ChannelType;

.field private static final synthetic a:[Lcom/qq/gdt/action/ChannelType;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Lcom/qq/gdt/action/ChannelType;

    const-string v1, "CHANNEL_UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/qq/gdt/action/ChannelType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qq/gdt/action/ChannelType;->CHANNEL_UNKNOWN:Lcom/qq/gdt/action/ChannelType;

    new-instance v1, Lcom/qq/gdt/action/ChannelType;

    const-string v3, "CHANNEL_NATURAL"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/qq/gdt/action/ChannelType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/qq/gdt/action/ChannelType;->CHANNEL_NATURAL:Lcom/qq/gdt/action/ChannelType;

    new-instance v3, Lcom/qq/gdt/action/ChannelType;

    const-string v5, "CHANNEL_TENCENT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/qq/gdt/action/ChannelType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/qq/gdt/action/ChannelType;->CHANNEL_TENCENT:Lcom/qq/gdt/action/ChannelType;

    new-instance v5, Lcom/qq/gdt/action/ChannelType;

    const-string v7, "CHANNEL_BYTEDANCE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/qq/gdt/action/ChannelType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/qq/gdt/action/ChannelType;->CHANNEL_BYTEDANCE:Lcom/qq/gdt/action/ChannelType;

    new-instance v7, Lcom/qq/gdt/action/ChannelType;

    const-string v9, "CHANNEL_KUAISHOU"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/qq/gdt/action/ChannelType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/qq/gdt/action/ChannelType;->CHANNEL_KUAISHOU:Lcom/qq/gdt/action/ChannelType;

    new-instance v9, Lcom/qq/gdt/action/ChannelType;

    const-string v11, "CHANNEL_ALIBABA"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/qq/gdt/action/ChannelType;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/qq/gdt/action/ChannelType;->CHANNEL_ALIBABA:Lcom/qq/gdt/action/ChannelType;

    new-instance v11, Lcom/qq/gdt/action/ChannelType;

    const-string v13, "CHANNEL_BAIDU"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/qq/gdt/action/ChannelType;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/qq/gdt/action/ChannelType;->CHANNEL_BAIDU:Lcom/qq/gdt/action/ChannelType;

    new-instance v13, Lcom/qq/gdt/action/ChannelType;

    const-string v15, "CHANNEL_OTHERS"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/qq/gdt/action/ChannelType;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/qq/gdt/action/ChannelType;->CHANNEL_OTHERS:Lcom/qq/gdt/action/ChannelType;

    const/16 v15, 0x8

    new-array v15, v15, [Lcom/qq/gdt/action/ChannelType;

    aput-object v0, v15, v2

    aput-object v1, v15, v4

    aput-object v3, v15, v6

    aput-object v5, v15, v8

    aput-object v7, v15, v10

    aput-object v9, v15, v12

    const/4 v0, 0x6

    aput-object v11, v15, v0

    aput-object v13, v15, v14

    sput-object v15, Lcom/qq/gdt/action/ChannelType;->a:[Lcom/qq/gdt/action/ChannelType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/qq/gdt/action/ChannelType;
    .locals 1

    const-class v0, Lcom/qq/gdt/action/ChannelType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/qq/gdt/action/ChannelType;

    return-object p0
.end method

.method public static values()[Lcom/qq/gdt/action/ChannelType;
    .locals 1

    sget-object v0, Lcom/qq/gdt/action/ChannelType;->a:[Lcom/qq/gdt/action/ChannelType;

    invoke-virtual {v0}, [Lcom/qq/gdt/action/ChannelType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/qq/gdt/action/ChannelType;

    return-object v0
.end method
