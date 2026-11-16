.class public final Lcom/taptap/sdk/update/bean/UIInformation$Builder;
.super Ljava/lang/Object;
.source "UIInformation.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taptap/sdk/update/bean/UIInformation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u0013\u001a\u00020\u0014J\u0010\u0010\u0007\u001a\u00020\u00002\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0004J\u0016\u0010\u000e\u001a\u00020\u00002\u000e\u0010\t\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\nJ\u0010\u0010\u0015\u001a\u00020\u00002\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0004R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\"\u0010\t\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR\u001c\u0010\u0010\u001a\u0004\u0018\u00010\u0004X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0006\"\u0004\u0008\u0012\u0010\u0008\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/taptap/sdk/update/bean/UIInformation$Builder;",
        "",
        "()V",
        "appInfo",
        "",
        "getAppInfo",
        "()Ljava/lang/String;",
        "setAppInfo",
        "(Ljava/lang/String;)V",
        "linkList",
        "",
        "Lcom/taptap/sdk/update/bean/UpdateFuncLink;",
        "getLinkList",
        "()Ljava/util/List;",
        "setLinkList",
        "(Ljava/util/List;)V",
        "updateTitle",
        "getUpdateTitle$tap_update_release",
        "setUpdateTitle$tap_update_release",
        "build",
        "Lcom/taptap/sdk/update/bean/UIInformation;",
        "setUpdateTitle",
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


# instance fields
.field private appInfo:Ljava/lang/String;

.field private linkList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/taptap/sdk/update/bean/UpdateFuncLink;",
            ">;"
        }
    .end annotation
.end field

.field private updateTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lcom/taptap/sdk/update/bean/UIInformation;
    .locals 2

    .line 32
    new-instance v0, Lcom/taptap/sdk/update/bean/UIInformation;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/taptap/sdk/update/bean/UIInformation;-><init>(Lcom/taptap/sdk/update/bean/UIInformation$Builder;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public final getAppInfo()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/taptap/sdk/update/bean/UIInformation$Builder;->appInfo:Ljava/lang/String;

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

    .line 14
    iget-object v0, p0, Lcom/taptap/sdk/update/bean/UIInformation$Builder;->linkList:Ljava/util/List;

    return-object v0
.end method

.method public final getUpdateTitle$tap_update_release()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/taptap/sdk/update/bean/UIInformation$Builder;->updateTitle:Ljava/lang/String;

    return-object v0
.end method

.method public final setAppInfo(Ljava/lang/String;)Lcom/taptap/sdk/update/bean/UIInformation$Builder;
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/taptap/sdk/update/bean/UIInformation$Builder;->appInfo:Ljava/lang/String;

    return-object p0
.end method

.method public final setAppInfo(Ljava/lang/String;)V
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/taptap/sdk/update/bean/UIInformation$Builder;->appInfo:Ljava/lang/String;

    return-void
.end method

.method public final setLinkList(Ljava/util/List;)Lcom/taptap/sdk/update/bean/UIInformation$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/taptap/sdk/update/bean/UpdateFuncLink;",
            ">;)",
            "Lcom/taptap/sdk/update/bean/UIInformation$Builder;"
        }
    .end annotation

    .line 27
    iput-object p1, p0, Lcom/taptap/sdk/update/bean/UIInformation$Builder;->linkList:Ljava/util/List;

    return-object p0
.end method

.method public final setLinkList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/taptap/sdk/update/bean/UpdateFuncLink;",
            ">;)V"
        }
    .end annotation

    .line 14
    iput-object p1, p0, Lcom/taptap/sdk/update/bean/UIInformation$Builder;->linkList:Ljava/util/List;

    return-void
.end method

.method public final setUpdateTitle(Ljava/lang/String;)Lcom/taptap/sdk/update/bean/UIInformation$Builder;
    .locals 0

    .line 17
    iput-object p1, p0, Lcom/taptap/sdk/update/bean/UIInformation$Builder;->updateTitle:Ljava/lang/String;

    return-object p0
.end method

.method public final setUpdateTitle$tap_update_release(Ljava/lang/String;)V
    .locals 0

    .line 12
    iput-object p1, p0, Lcom/taptap/sdk/update/bean/UIInformation$Builder;->updateTitle:Ljava/lang/String;

    return-void
.end method
