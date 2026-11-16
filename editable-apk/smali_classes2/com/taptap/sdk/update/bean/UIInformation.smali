.class public final Lcom/taptap/sdk/update/bean/UIInformation;
.super Ljava/lang/Object;
.source "UIInformation.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taptap/sdk/update/bean/UIInformation$Builder;,
        Lcom/taptap/sdk/update/bean/UIInformation$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u0000 \u00112\u00020\u0001:\u0002\u0010\u0011B\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0019\u0010\t\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0013\u0010\u000e\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0008\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/taptap/sdk/update/bean/UIInformation;",
        "",
        "builder",
        "Lcom/taptap/sdk/update/bean/UIInformation$Builder;",
        "(Lcom/taptap/sdk/update/bean/UIInformation$Builder;)V",
        "appInfo",
        "",
        "getAppInfo",
        "()Ljava/lang/String;",
        "linkList",
        "",
        "Lcom/taptap/sdk/update/bean/UpdateFuncLink;",
        "getLinkList",
        "()Ljava/util/List;",
        "updateTitle",
        "getUpdateTitle",
        "Builder",
        "Companion",
        "tap-update_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/taptap/sdk/update/bean/UIInformation$Companion;


# instance fields
.field private final appInfo:Ljava/lang/String;

.field private final linkList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/taptap/sdk/update/bean/UpdateFuncLink;",
            ">;"
        }
    .end annotation
.end field

.field private final updateTitle:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/taptap/sdk/update/bean/UIInformation$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/taptap/sdk/update/bean/UIInformation$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/taptap/sdk/update/bean/UIInformation;->Companion:Lcom/taptap/sdk/update/bean/UIInformation$Companion;

    return-void
.end method

.method private constructor <init>(Lcom/taptap/sdk/update/bean/UIInformation$Builder;)V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    invoke-virtual {p1}, Lcom/taptap/sdk/update/bean/UIInformation$Builder;->getUpdateTitle$tap_update_release()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/taptap/sdk/update/bean/UIInformation;->updateTitle:Ljava/lang/String;

    .line 8
    invoke-virtual {p1}, Lcom/taptap/sdk/update/bean/UIInformation$Builder;->getAppInfo()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/taptap/sdk/update/bean/UIInformation;->appInfo:Ljava/lang/String;

    .line 9
    invoke-virtual {p1}, Lcom/taptap/sdk/update/bean/UIInformation$Builder;->getLinkList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/taptap/sdk/update/bean/UIInformation;->linkList:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/taptap/sdk/update/bean/UIInformation$Builder;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/taptap/sdk/update/bean/UIInformation;-><init>(Lcom/taptap/sdk/update/bean/UIInformation$Builder;)V

    return-void
.end method


# virtual methods
.method public final getAppInfo()Ljava/lang/String;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/taptap/sdk/update/bean/UIInformation;->appInfo:Ljava/lang/String;

    return-object v0
.end method

.method public final getLinkList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/taptap/sdk/update/bean/UpdateFuncLink;",
            ">;"
        }
    .end annotation

    .line 9
    iget-object v0, p0, Lcom/taptap/sdk/update/bean/UIInformation;->linkList:Ljava/util/List;

    return-object v0
.end method

.method public final getUpdateTitle()Ljava/lang/String;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/taptap/sdk/update/bean/UIInformation;->updateTitle:Ljava/lang/String;

    return-object v0
.end method
