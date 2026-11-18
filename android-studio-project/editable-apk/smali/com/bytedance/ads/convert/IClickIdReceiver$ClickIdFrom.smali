.class public final enum Lcom/bytedance/ads/convert/IClickIdReceiver$ClickIdFrom;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/ads/convert/IClickIdReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ClickIdFrom"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/bytedance/ads/convert/IClickIdReceiver$ClickIdFrom;",
        ">;"
    }
.end annotation


# static fields
.field private static final $VALUES:[Lcom/bytedance/ads/convert/IClickIdReceiver$ClickIdFrom;

.field public static final enum APK:Lcom/bytedance/ads/convert/IClickIdReceiver$ClickIdFrom;

.field public static final enum ContentProvider:Lcom/bytedance/ads/convert/IClickIdReceiver$ClickIdFrom;

.field public static final enum Jump:Lcom/bytedance/ads/convert/IClickIdReceiver$ClickIdFrom;

.field public static final enum StickyBroadcast:Lcom/bytedance/ads/convert/IClickIdReceiver$ClickIdFrom;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/bytedance/ads/convert/IClickIdReceiver$ClickIdFrom;

    const-string v1, "APK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/bytedance/ads/convert/IClickIdReceiver$ClickIdFrom;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bytedance/ads/convert/IClickIdReceiver$ClickIdFrom;->APK:Lcom/bytedance/ads/convert/IClickIdReceiver$ClickIdFrom;

    new-instance v1, Lcom/bytedance/ads/convert/IClickIdReceiver$ClickIdFrom;

    const-string v3, "Jump"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/bytedance/ads/convert/IClickIdReceiver$ClickIdFrom;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/bytedance/ads/convert/IClickIdReceiver$ClickIdFrom;->Jump:Lcom/bytedance/ads/convert/IClickIdReceiver$ClickIdFrom;

    new-instance v3, Lcom/bytedance/ads/convert/IClickIdReceiver$ClickIdFrom;

    const-string v5, "ContentProvider"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/bytedance/ads/convert/IClickIdReceiver$ClickIdFrom;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/bytedance/ads/convert/IClickIdReceiver$ClickIdFrom;->ContentProvider:Lcom/bytedance/ads/convert/IClickIdReceiver$ClickIdFrom;

    new-instance v5, Lcom/bytedance/ads/convert/IClickIdReceiver$ClickIdFrom;

    const-string v7, "StickyBroadcast"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/bytedance/ads/convert/IClickIdReceiver$ClickIdFrom;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/bytedance/ads/convert/IClickIdReceiver$ClickIdFrom;->StickyBroadcast:Lcom/bytedance/ads/convert/IClickIdReceiver$ClickIdFrom;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/bytedance/ads/convert/IClickIdReceiver$ClickIdFrom;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/bytedance/ads/convert/IClickIdReceiver$ClickIdFrom;->$VALUES:[Lcom/bytedance/ads/convert/IClickIdReceiver$ClickIdFrom;

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

.method public static valueOf(Ljava/lang/String;)Lcom/bytedance/ads/convert/IClickIdReceiver$ClickIdFrom;
    .locals 1

    const-class v0, Lcom/bytedance/ads/convert/IClickIdReceiver$ClickIdFrom;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/bytedance/ads/convert/IClickIdReceiver$ClickIdFrom;

    return-object p0
.end method

.method public static values()[Lcom/bytedance/ads/convert/IClickIdReceiver$ClickIdFrom;
    .locals 1

    sget-object v0, Lcom/bytedance/ads/convert/IClickIdReceiver$ClickIdFrom;->$VALUES:[Lcom/bytedance/ads/convert/IClickIdReceiver$ClickIdFrom;

    invoke-virtual {v0}, [Lcom/bytedance/ads/convert/IClickIdReceiver$ClickIdFrom;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bytedance/ads/convert/IClickIdReceiver$ClickIdFrom;

    return-object v0
.end method
