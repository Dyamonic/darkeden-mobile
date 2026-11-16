.class public final Lcom/taptap/sdk/update/bean/UpdateResult;
.super Ljava/lang/Object;
.source "UpdateResult.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taptap/sdk/update/bean/UpdateResult$Companion;,
        Lcom/taptap/sdk/update/bean/UpdateResult$$serializer;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u00080\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0087\u0008\u0018\u0000 L2\u00020\u0001:\u0002KLB\u0087\u0001\u0008\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0001\u0010\u0004\u001a\u00020\u0003\u0012\n\u0008\u0001\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\n\u0008\u0001\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\n\u0008\u0001\u0010\u0008\u001a\u0004\u0018\u00010\u0006\u0012\n\u0008\u0001\u0010\t\u001a\u0004\u0018\u00010\u0006\u0012\n\u0008\u0001\u0010\n\u001a\u0004\u0018\u00010\u0006\u0012\u0010\u0008\u0001\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\r\u0018\u00010\u000c\u0012\n\u0008\u0001\u0010\u000e\u001a\u0004\u0018\u00010\u000f\u0012\u0008\u0008\u0001\u0010\u0010\u001a\u00020\u0011\u0012\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0013\u00a2\u0006\u0002\u0010\u0014Bg\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\u0006\u0012\u000e\u0008\u0002\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000c\u0012\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000f\u0012\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u0011\u00a2\u0006\u0002\u0010\u0015J\t\u00104\u001a\u00020\u0003H\u00c6\u0003J\t\u00105\u001a\u00020\u0006H\u00c6\u0003J\t\u00106\u001a\u00020\u0006H\u00c6\u0003J\t\u00107\u001a\u00020\u0006H\u00c6\u0003J\t\u00108\u001a\u00020\u0006H\u00c6\u0003J\t\u00109\u001a\u00020\u0006H\u00c6\u0003J\u000f\u0010:\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000cH\u00c6\u0003J\u000b\u0010;\u001a\u0004\u0018\u00010\u000fH\u00c6\u0003J\t\u0010<\u001a\u00020\u0011H\u00c6\u0003Jk\u0010=\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u00062\u0008\u0008\u0002\u0010\t\u001a\u00020\u00062\u0008\u0008\u0002\u0010\n\u001a\u00020\u00062\u000e\u0008\u0002\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000c2\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u0011H\u00c6\u0001J\u0013\u0010>\u001a\u00020\u00112\u0008\u0010?\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010@\u001a\u00020\u0003H\u00d6\u0001J\u0006\u0010A\u001a\u00020\u0011J\t\u0010B\u001a\u00020\u0006H\u00d6\u0001J\u0006\u0010C\u001a\u00020DJ!\u0010E\u001a\u00020D2\u0006\u0010F\u001a\u00020\u00002\u0006\u0010G\u001a\u00020H2\u0006\u0010I\u001a\u00020JH\u00c7\u0001R\u001c\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0016\u0010\u0017\u001a\u0004\u0008\u0018\u0010\u0019R\u0011\u0010\u001a\u001a\u00020\u00068F\u00a2\u0006\u0006\u001a\u0004\u0008\u001b\u0010\u001cR\u001c\u0010\n\u001a\u00020\u00068\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u001d\u0010\u0017\u001a\u0004\u0008\u001e\u0010\u001cR\u001e\u0010\u000e\u001a\u0004\u0018\u00010\u000f8\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u001f\u0010\u0017\u001a\u0004\u0008 \u0010!R\"\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000c8\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\"\u0010\u0017\u001a\u0004\u0008#\u0010$R\u001c\u0010\u0010\u001a\u00020\u00118\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008%\u0010\u0017\u001a\u0004\u0008&\u0010\'R$\u0010\u0005\u001a\u00020\u00068\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008(\u0010\u0017\u001a\u0004\u0008)\u0010\u001c\"\u0004\u0008*\u0010+R$\u0010\u0007\u001a\u00020\u00068\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008,\u0010\u0017\u001a\u0004\u0008-\u0010\u001c\"\u0004\u0008.\u0010+R\u001c\u0010\u0008\u001a\u00020\u00068\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008/\u0010\u0017\u001a\u0004\u00080\u0010\u001cR$\u0010\t\u001a\u00020\u00068\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u00081\u0010\u0017\u001a\u0004\u00082\u0010\u001c\"\u0004\u00083\u0010+\u00a8\u0006M"
    }
    d2 = {
        "Lcom/taptap/sdk/update/bean/UpdateResult;",
        "",
        "seen1",
        "",
        "appId",
        "updateUri",
        "",
        "updateUriTpl",
        "updateUrl",
        "updateUrlTpl",
        "developerName",
        "links",
        "",
        "Lcom/taptap/sdk/update/bean/UpdateFuncLink;",
        "download",
        "Lcom/taptap/sdk/update/bean/UpdateDownloadInfo;",
        "notify",
        "",
        "serializationConstructorMarker",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/taptap/sdk/update/bean/UpdateDownloadInfo;ZLkotlinx/serialization/internal/SerializationConstructorMarker;)V",
        "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/taptap/sdk/update/bean/UpdateDownloadInfo;Z)V",
        "getAppId$annotations",
        "()V",
        "getAppId",
        "()I",
        "appInfo",
        "getAppInfo",
        "()Ljava/lang/String;",
        "getDeveloperName$annotations",
        "getDeveloperName",
        "getDownload$annotations",
        "getDownload",
        "()Lcom/taptap/sdk/update/bean/UpdateDownloadInfo;",
        "getLinks$annotations",
        "getLinks",
        "()Ljava/util/List;",
        "getNotify$annotations",
        "getNotify",
        "()Z",
        "getUpdateUri$annotations",
        "getUpdateUri",
        "setUpdateUri",
        "(Ljava/lang/String;)V",
        "getUpdateUriTpl$annotations",
        "getUpdateUriTpl",
        "setUpdateUriTpl",
        "getUpdateUrl$annotations",
        "getUpdateUrl",
        "getUpdateUrlTpl$annotations",
        "getUpdateUrlTpl",
        "setUpdateUrlTpl",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "component8",
        "component9",
        "copy",
        "equals",
        "other",
        "hashCode",
        "isDataValid",
        "toString",
        "updateSessionId",
        "",
        "write$Self",
        "self",
        "output",
        "Lkotlinx/serialization/encoding/CompositeEncoder;",
        "serialDesc",
        "Lkotlinx/serialization/descriptors/SerialDescriptor;",
        "$serializer",
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

.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final Companion:Lcom/taptap/sdk/update/bean/UpdateResult$Companion;


# instance fields
.field private final appId:I

.field private final developerName:Ljava/lang/String;

.field private final download:Lcom/taptap/sdk/update/bean/UpdateDownloadInfo;

.field private final links:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/taptap/sdk/update/bean/UpdateFuncLink;",
            ">;"
        }
    .end annotation
.end field

.field private final notify:Z

.field private updateUri:Ljava/lang/String;

.field private updateUriTpl:Ljava/lang/String;

.field private final updateUrl:Ljava/lang/String;

.field private updateUrlTpl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/taptap/sdk/update/bean/UpdateResult$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/taptap/sdk/update/bean/UpdateResult$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/taptap/sdk/update/bean/UpdateResult;->Companion:Lcom/taptap/sdk/update/bean/UpdateResult$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 12

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x1ff

    const/4 v11, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v11}, Lcom/taptap/sdk/update/bean/UpdateResult;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/taptap/sdk/update/bean/UpdateDownloadInfo;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/taptap/sdk/update/bean/UpdateDownloadInfo;ZLkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 1
    .param p2    # I
        .annotation runtime Lkotlinx/serialization/SerialName;
            value = "app_id"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lkotlinx/serialization/SerialName;
            value = "update_uri"
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Lkotlinx/serialization/SerialName;
            value = "update_uri_tpl"
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation runtime Lkotlinx/serialization/SerialName;
            value = "update_url"
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation runtime Lkotlinx/serialization/SerialName;
            value = "update_url_tpl"
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation runtime Lkotlinx/serialization/SerialName;
            value = "developer_name"
        .end annotation
    .end param
    .param p8    # Ljava/util/List;
        .annotation runtime Lkotlinx/serialization/SerialName;
            value = "links"
        .end annotation
    .end param
    .param p9    # Lcom/taptap/sdk/update/bean/UpdateDownloadInfo;
        .annotation runtime Lkotlinx/serialization/SerialName;
            value = "download"
        .end annotation
    .end param
    .param p10    # Z
        .annotation runtime Lkotlinx/serialization/SerialName;
            value = "notify"
        .end annotation
    .end param
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = "This synthesized declaration should not be used directly"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = ""
            imports = {}
        .end subannotation
    .end annotation

    and-int/lit8 p11, p1, 0x0

    const/4 v0, 0x0

    if-eqz p11, :cond_0

    .line 7
    sget-object p11, Lcom/taptap/sdk/update/bean/UpdateResult$$serializer;->INSTANCE:Lcom/taptap/sdk/update/bean/UpdateResult$$serializer;

    invoke-virtual {p11}, Lcom/taptap/sdk/update/bean/UpdateResult$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p11

    invoke-static {p1, v0, p11}, Lkotlinx/serialization/internal/PluginExceptionsKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    and-int/lit8 p11, p1, 0x1

    if-nez p11, :cond_1

    iput v0, p0, Lcom/taptap/sdk/update/bean/UpdateResult;->appId:I

    goto :goto_0

    :cond_1
    iput p2, p0, Lcom/taptap/sdk/update/bean/UpdateResult;->appId:I

    :goto_0
    and-int/lit8 p2, p1, 0x2

    const-string p11, ""

    if-nez p2, :cond_2

    iput-object p11, p0, Lcom/taptap/sdk/update/bean/UpdateResult;->updateUri:Ljava/lang/String;

    goto :goto_1

    :cond_2
    iput-object p3, p0, Lcom/taptap/sdk/update/bean/UpdateResult;->updateUri:Ljava/lang/String;

    :goto_1
    and-int/lit8 p2, p1, 0x4

    if-nez p2, :cond_3

    iput-object p11, p0, Lcom/taptap/sdk/update/bean/UpdateResult;->updateUriTpl:Ljava/lang/String;

    goto :goto_2

    :cond_3
    iput-object p4, p0, Lcom/taptap/sdk/update/bean/UpdateResult;->updateUriTpl:Ljava/lang/String;

    :goto_2
    and-int/lit8 p2, p1, 0x8

    if-nez p2, :cond_4

    iput-object p11, p0, Lcom/taptap/sdk/update/bean/UpdateResult;->updateUrl:Ljava/lang/String;

    goto :goto_3

    :cond_4
    iput-object p5, p0, Lcom/taptap/sdk/update/bean/UpdateResult;->updateUrl:Ljava/lang/String;

    :goto_3
    and-int/lit8 p2, p1, 0x10

    if-nez p2, :cond_5

    iput-object p11, p0, Lcom/taptap/sdk/update/bean/UpdateResult;->updateUrlTpl:Ljava/lang/String;

    goto :goto_4

    :cond_5
    iput-object p6, p0, Lcom/taptap/sdk/update/bean/UpdateResult;->updateUrlTpl:Ljava/lang/String;

    :goto_4
    and-int/lit8 p2, p1, 0x20

    if-nez p2, :cond_6

    iput-object p11, p0, Lcom/taptap/sdk/update/bean/UpdateResult;->developerName:Ljava/lang/String;

    goto :goto_5

    :cond_6
    iput-object p7, p0, Lcom/taptap/sdk/update/bean/UpdateResult;->developerName:Ljava/lang/String;

    :goto_5
    and-int/lit8 p2, p1, 0x40

    if-nez p2, :cond_7

    .line 28
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    check-cast p2, Ljava/util/List;

    .line 7
    iput-object p2, p0, Lcom/taptap/sdk/update/bean/UpdateResult;->links:Ljava/util/List;

    goto :goto_6

    :cond_7
    iput-object p8, p0, Lcom/taptap/sdk/update/bean/UpdateResult;->links:Ljava/util/List;

    :goto_6
    and-int/lit16 p2, p1, 0x80

    if-nez p2, :cond_8

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/taptap/sdk/update/bean/UpdateResult;->download:Lcom/taptap/sdk/update/bean/UpdateDownloadInfo;

    goto :goto_7

    :cond_8
    iput-object p9, p0, Lcom/taptap/sdk/update/bean/UpdateResult;->download:Lcom/taptap/sdk/update/bean/UpdateDownloadInfo;

    :goto_7
    and-int/lit16 p1, p1, 0x100

    if-nez p1, :cond_9

    iput-boolean v0, p0, Lcom/taptap/sdk/update/bean/UpdateResult;->notify:Z

    goto :goto_8

    :cond_9
    iput-boolean p10, p0, Lcom/taptap/sdk/update/bean/UpdateResult;->notify:Z

    :goto_8
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/taptap/sdk/update/bean/UpdateDownloadInfo;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/taptap/sdk/update/bean/UpdateFuncLink;",
            ">;",
            "Lcom/taptap/sdk/update/bean/UpdateDownloadInfo;",
            "Z)V"
        }
    .end annotation

    const-string v0, "updateUri"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "updateUriTpl"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "updateUrl"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "updateUrlTpl"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "developerName"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "links"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput p1, p0, Lcom/taptap/sdk/update/bean/UpdateResult;->appId:I

    .line 12
    iput-object p2, p0, Lcom/taptap/sdk/update/bean/UpdateResult;->updateUri:Ljava/lang/String;

    .line 15
    iput-object p3, p0, Lcom/taptap/sdk/update/bean/UpdateResult;->updateUriTpl:Ljava/lang/String;

    .line 18
    iput-object p4, p0, Lcom/taptap/sdk/update/bean/UpdateResult;->updateUrl:Ljava/lang/String;

    .line 21
    iput-object p5, p0, Lcom/taptap/sdk/update/bean/UpdateResult;->updateUrlTpl:Ljava/lang/String;

    .line 24
    iput-object p6, p0, Lcom/taptap/sdk/update/bean/UpdateResult;->developerName:Ljava/lang/String;

    .line 27
    iput-object p7, p0, Lcom/taptap/sdk/update/bean/UpdateResult;->links:Ljava/util/List;

    .line 30
    iput-object p8, p0, Lcom/taptap/sdk/update/bean/UpdateResult;->download:Lcom/taptap/sdk/update/bean/UpdateDownloadInfo;

    .line 33
    iput-boolean p9, p0, Lcom/taptap/sdk/update/bean/UpdateResult;->notify:Z

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/taptap/sdk/update/bean/UpdateDownloadInfo;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 10

    move/from16 v0, p10

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, p1

    :goto_0
    and-int/lit8 v3, v0, 0x2

    const-string v4, ""

    if-eqz v3, :cond_1

    move-object v3, v4

    goto :goto_1

    :cond_1
    move-object v3, p2

    :goto_1
    and-int/lit8 v5, v0, 0x4

    if-eqz v5, :cond_2

    move-object v5, v4

    goto :goto_2

    :cond_2
    move-object v5, p3

    :goto_2
    and-int/lit8 v6, v0, 0x8

    if-eqz v6, :cond_3

    move-object v6, v4

    goto :goto_3

    :cond_3
    move-object v6, p4

    :goto_3
    and-int/lit8 v7, v0, 0x10

    if-eqz v7, :cond_4

    move-object v7, v4

    goto :goto_4

    :cond_4
    move-object v7, p5

    :goto_4
    and-int/lit8 v8, v0, 0x20

    if-eqz v8, :cond_5

    goto :goto_5

    :cond_5
    move-object/from16 v4, p6

    :goto_5
    and-int/lit8 v8, v0, 0x40

    if-eqz v8, :cond_6

    .line 28
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    check-cast v8, Ljava/util/List;

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v0, 0x80

    if-eqz v9, :cond_7

    const/4 v9, 0x0

    goto :goto_7

    :cond_7
    move-object/from16 v9, p8

    :goto_7
    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_8

    goto :goto_8

    :cond_8
    move/from16 v2, p9

    :goto_8
    move-object p1, p0

    move p2, v1

    move-object p3, v3

    move-object p4, v5

    move-object p5, v6

    move-object/from16 p6, v7

    move-object/from16 p7, v4

    move-object/from16 p8, v8

    move-object/from16 p9, v9

    move/from16 p10, v2

    .line 8
    invoke-direct/range {p1 .. p10}, Lcom/taptap/sdk/update/bean/UpdateResult;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/taptap/sdk/update/bean/UpdateDownloadInfo;Z)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/taptap/sdk/update/bean/UpdateResult;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/taptap/sdk/update/bean/UpdateDownloadInfo;ZILjava/lang/Object;)Lcom/taptap/sdk/update/bean/UpdateResult;
    .locals 10

    move-object v0, p0

    move/from16 v1, p10

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget v2, v0, Lcom/taptap/sdk/update/bean/UpdateResult;->appId:I

    goto :goto_0

    :cond_0
    move v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/taptap/sdk/update/bean/UpdateResult;->updateUri:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/taptap/sdk/update/bean/UpdateResult;->updateUriTpl:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget-object v5, v0, Lcom/taptap/sdk/update/bean/UpdateResult;->updateUrl:Ljava/lang/String;

    goto :goto_3

    :cond_3
    move-object v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget-object v6, v0, Lcom/taptap/sdk/update/bean/UpdateResult;->updateUrlTpl:Ljava/lang/String;

    goto :goto_4

    :cond_4
    move-object v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget-object v7, v0, Lcom/taptap/sdk/update/bean/UpdateResult;->developerName:Ljava/lang/String;

    goto :goto_5

    :cond_5
    move-object/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget-object v8, v0, Lcom/taptap/sdk/update/bean/UpdateResult;->links:Ljava/util/List;

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_7

    iget-object v9, v0, Lcom/taptap/sdk/update/bean/UpdateResult;->download:Lcom/taptap/sdk/update/bean/UpdateDownloadInfo;

    goto :goto_7

    :cond_7
    move-object/from16 v9, p8

    :goto_7
    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_8

    iget-boolean v1, v0, Lcom/taptap/sdk/update/bean/UpdateResult;->notify:Z

    goto :goto_8

    :cond_8
    move/from16 v1, p9

    :goto_8
    move p1, v2

    move-object p2, v3

    move-object p3, v4

    move-object p4, v5

    move-object p5, v6

    move-object/from16 p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v9

    move/from16 p9, v1

    invoke-virtual/range {p0 .. p9}, Lcom/taptap/sdk/update/bean/UpdateResult;->copy(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/taptap/sdk/update/bean/UpdateDownloadInfo;Z)Lcom/taptap/sdk/update/bean/UpdateResult;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic getAppId$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "app_id"
    .end annotation

    return-void
.end method

.method public static synthetic getDeveloperName$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "developer_name"
    .end annotation

    return-void
.end method

.method public static synthetic getDownload$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "download"
    .end annotation

    return-void
.end method

.method public static synthetic getLinks$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "links"
    .end annotation

    return-void
.end method

.method public static synthetic getNotify$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "notify"
    .end annotation

    return-void
.end method

.method public static synthetic getUpdateUri$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "update_uri"
    .end annotation

    return-void
.end method

.method public static synthetic getUpdateUriTpl$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "update_uri_tpl"
    .end annotation

    return-void
.end method

.method public static synthetic getUpdateUrl$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "update_url"
    .end annotation

    return-void
.end method

.method public static synthetic getUpdateUrlTpl$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "update_url_tpl"
    .end annotation

    return-void
.end method

.method public static final write$Self(Lcom/taptap/sdk/update/bean/UpdateResult;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "self"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "output"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serialDesc"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 7
    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    :goto_0
    move v1, v2

    goto :goto_1

    :cond_0
    iget v1, p0, Lcom/taptap/sdk/update/bean/UpdateResult;->appId:I

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_1
    if-eqz v1, :cond_2

    iget v1, p0, Lcom/taptap/sdk/update/bean/UpdateResult;->appId:I

    invoke-interface {p1, p2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;II)V

    :cond_2
    invoke-interface {p1, p2, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v1

    const-string v3, ""

    if-eqz v1, :cond_3

    :goto_2
    move v1, v2

    goto :goto_3

    :cond_3
    iget-object v1, p0, Lcom/taptap/sdk/update/bean/UpdateResult;->updateUri:Ljava/lang/String;

    .line 13
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_2

    :cond_4
    move v1, v0

    :goto_3
    if-eqz v1, :cond_5

    .line 7
    iget-object v1, p0, Lcom/taptap/sdk/update/bean/UpdateResult;->updateUri:Ljava/lang/String;

    invoke-interface {p1, p2, v2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    :cond_5
    const/4 v1, 0x2

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v4

    if-eqz v4, :cond_6

    :goto_4
    move v4, v2

    goto :goto_5

    :cond_6
    iget-object v4, p0, Lcom/taptap/sdk/update/bean/UpdateResult;->updateUriTpl:Ljava/lang/String;

    .line 16
    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    goto :goto_4

    :cond_7
    move v4, v0

    :goto_5
    if-eqz v4, :cond_8

    .line 7
    iget-object v4, p0, Lcom/taptap/sdk/update/bean/UpdateResult;->updateUriTpl:Ljava/lang/String;

    invoke-interface {p1, p2, v1, v4}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    :cond_8
    const/4 v1, 0x3

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v4

    if-eqz v4, :cond_9

    :goto_6
    move v4, v2

    goto :goto_7

    :cond_9
    iget-object v4, p0, Lcom/taptap/sdk/update/bean/UpdateResult;->updateUrl:Ljava/lang/String;

    .line 19
    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    goto :goto_6

    :cond_a
    move v4, v0

    :goto_7
    if-eqz v4, :cond_b

    .line 7
    iget-object v4, p0, Lcom/taptap/sdk/update/bean/UpdateResult;->updateUrl:Ljava/lang/String;

    invoke-interface {p1, p2, v1, v4}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    :cond_b
    const/4 v1, 0x4

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v4

    if-eqz v4, :cond_c

    :goto_8
    move v4, v2

    goto :goto_9

    :cond_c
    iget-object v4, p0, Lcom/taptap/sdk/update/bean/UpdateResult;->updateUrlTpl:Ljava/lang/String;

    .line 22
    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d

    goto :goto_8

    :cond_d
    move v4, v0

    :goto_9
    if-eqz v4, :cond_e

    .line 7
    iget-object v4, p0, Lcom/taptap/sdk/update/bean/UpdateResult;->updateUrlTpl:Ljava/lang/String;

    invoke-interface {p1, p2, v1, v4}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    :cond_e
    const/4 v1, 0x5

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v4

    if-eqz v4, :cond_f

    :goto_a
    move v3, v2

    goto :goto_b

    :cond_f
    iget-object v4, p0, Lcom/taptap/sdk/update/bean/UpdateResult;->developerName:Ljava/lang/String;

    .line 25
    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10

    goto :goto_a

    :cond_10
    move v3, v0

    :goto_b
    if-eqz v3, :cond_11

    .line 7
    iget-object v3, p0, Lcom/taptap/sdk/update/bean/UpdateResult;->developerName:Ljava/lang/String;

    invoke-interface {p1, p2, v1, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    :cond_11
    const/4 v1, 0x6

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v3

    if-eqz v3, :cond_12

    :goto_c
    move v3, v2

    goto :goto_d

    :cond_12
    iget-object v3, p0, Lcom/taptap/sdk/update/bean/UpdateResult;->links:Ljava/util/List;

    .line 28
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    check-cast v4, Ljava/util/List;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_13

    goto :goto_c

    :cond_13
    move v3, v0

    :goto_d
    if-eqz v3, :cond_14

    .line 7
    new-instance v3, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v4, Lcom/taptap/sdk/update/bean/UpdateFuncLink$$serializer;->INSTANCE:Lcom/taptap/sdk/update/bean/UpdateFuncLink$$serializer;

    check-cast v4, Lkotlinx/serialization/KSerializer;

    invoke-direct {v3, v4}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    check-cast v3, Lkotlinx/serialization/SerializationStrategy;

    iget-object v4, p0, Lcom/taptap/sdk/update/bean/UpdateResult;->links:Ljava/util/List;

    invoke-interface {p1, p2, v1, v3, v4}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_14
    const/4 v1, 0x7

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v3

    if-eqz v3, :cond_15

    :goto_e
    move v3, v2

    goto :goto_f

    :cond_15
    iget-object v3, p0, Lcom/taptap/sdk/update/bean/UpdateResult;->download:Lcom/taptap/sdk/update/bean/UpdateDownloadInfo;

    if-eqz v3, :cond_16

    goto :goto_e

    :cond_16
    move v3, v0

    :goto_f
    if-eqz v3, :cond_17

    sget-object v3, Lcom/taptap/sdk/update/bean/UpdateDownloadInfo$$serializer;->INSTANCE:Lcom/taptap/sdk/update/bean/UpdateDownloadInfo$$serializer;

    check-cast v3, Lkotlinx/serialization/SerializationStrategy;

    iget-object v4, p0, Lcom/taptap/sdk/update/bean/UpdateResult;->download:Lcom/taptap/sdk/update/bean/UpdateDownloadInfo;

    invoke-interface {p1, p2, v1, v3, v4}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_17
    const/16 v1, 0x8

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v3

    if-eqz v3, :cond_18

    :goto_10
    move v0, v2

    goto :goto_11

    :cond_18
    iget-boolean v3, p0, Lcom/taptap/sdk/update/bean/UpdateResult;->notify:Z

    if-eqz v3, :cond_19

    goto :goto_10

    :cond_19
    :goto_11
    if-eqz v0, :cond_1a

    iget-boolean p0, p0, Lcom/taptap/sdk/update/bean/UpdateResult;->notify:Z

    invoke-interface {p1, p2, v1, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    :cond_1a
    return-void
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/taptap/sdk/update/bean/UpdateResult;->appId:I

    return v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/taptap/sdk/update/bean/UpdateResult;->updateUri:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/taptap/sdk/update/bean/UpdateResult;->updateUriTpl:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/taptap/sdk/update/bean/UpdateResult;->updateUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/taptap/sdk/update/bean/UpdateResult;->updateUrlTpl:Ljava/lang/String;

    return-object v0
.end method

.method public final component6()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/taptap/sdk/update/bean/UpdateResult;->developerName:Ljava/lang/String;

    return-object v0
.end method

.method public final component7()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/taptap/sdk/update/bean/UpdateFuncLink;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/taptap/sdk/update/bean/UpdateResult;->links:Ljava/util/List;

    return-object v0
.end method

.method public final component8()Lcom/taptap/sdk/update/bean/UpdateDownloadInfo;
    .locals 1

    iget-object v0, p0, Lcom/taptap/sdk/update/bean/UpdateResult;->download:Lcom/taptap/sdk/update/bean/UpdateDownloadInfo;

    return-object v0
.end method

.method public final component9()Z
    .locals 1

    iget-boolean v0, p0, Lcom/taptap/sdk/update/bean/UpdateResult;->notify:Z

    return v0
.end method

.method public final copy(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/taptap/sdk/update/bean/UpdateDownloadInfo;Z)Lcom/taptap/sdk/update/bean/UpdateResult;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/taptap/sdk/update/bean/UpdateFuncLink;",
            ">;",
            "Lcom/taptap/sdk/update/bean/UpdateDownloadInfo;",
            "Z)",
            "Lcom/taptap/sdk/update/bean/UpdateResult;"
        }
    .end annotation

    const-string v0, "updateUri"

    move-object v3, p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "updateUriTpl"

    move-object v4, p3

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "updateUrl"

    move-object v5, p4

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "updateUrlTpl"

    move-object/from16 v6, p5

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "developerName"

    move-object/from16 v7, p6

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "links"

    move-object/from16 v8, p7

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/taptap/sdk/update/bean/UpdateResult;

    move-object v1, v0

    move v2, p1

    move-object/from16 v9, p8

    move/from16 v10, p9

    invoke-direct/range {v1 .. v10}, Lcom/taptap/sdk/update/bean/UpdateResult;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/taptap/sdk/update/bean/UpdateDownloadInfo;Z)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/taptap/sdk/update/bean/UpdateResult;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/taptap/sdk/update/bean/UpdateResult;

    iget v1, p0, Lcom/taptap/sdk/update/bean/UpdateResult;->appId:I

    iget v3, p1, Lcom/taptap/sdk/update/bean/UpdateResult;->appId:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/taptap/sdk/update/bean/UpdateResult;->updateUri:Ljava/lang/String;

    iget-object v3, p1, Lcom/taptap/sdk/update/bean/UpdateResult;->updateUri:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/taptap/sdk/update/bean/UpdateResult;->updateUriTpl:Ljava/lang/String;

    iget-object v3, p1, Lcom/taptap/sdk/update/bean/UpdateResult;->updateUriTpl:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/taptap/sdk/update/bean/UpdateResult;->updateUrl:Ljava/lang/String;

    iget-object v3, p1, Lcom/taptap/sdk/update/bean/UpdateResult;->updateUrl:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/taptap/sdk/update/bean/UpdateResult;->updateUrlTpl:Ljava/lang/String;

    iget-object v3, p1, Lcom/taptap/sdk/update/bean/UpdateResult;->updateUrlTpl:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/taptap/sdk/update/bean/UpdateResult;->developerName:Ljava/lang/String;

    iget-object v3, p1, Lcom/taptap/sdk/update/bean/UpdateResult;->developerName:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/taptap/sdk/update/bean/UpdateResult;->links:Ljava/util/List;

    iget-object v3, p1, Lcom/taptap/sdk/update/bean/UpdateResult;->links:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/taptap/sdk/update/bean/UpdateResult;->download:Lcom/taptap/sdk/update/bean/UpdateDownloadInfo;

    iget-object v3, p1, Lcom/taptap/sdk/update/bean/UpdateResult;->download:Lcom/taptap/sdk/update/bean/UpdateDownloadInfo;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-boolean v1, p0, Lcom/taptap/sdk/update/bean/UpdateResult;->notify:Z

    iget-boolean p1, p1, Lcom/taptap/sdk/update/bean/UpdateResult;->notify:Z

    if-eq v1, p1, :cond_a

    return v2

    :cond_a
    return v0
.end method

.method public final getAppId()I
    .locals 1

    .line 10
    iget v0, p0, Lcom/taptap/sdk/update/bean/UpdateResult;->appId:I

    return v0
.end method

.method public final getAppInfo()Ljava/lang/String;
    .locals 3

    .line 39
    iget-object v0, p0, Lcom/taptap/sdk/update/bean/UpdateResult;->download:Lcom/taptap/sdk/update/bean/UpdateDownloadInfo;

    if-eqz v0, :cond_0

    .line 40
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/taptap/sdk/update/bean/UpdateResult;->developerName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " \u7248\u672c\u53f7: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/taptap/sdk/update/bean/UpdateDownloadInfo;->getVersionName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/taptap/sdk/update/bean/UpdateResult;->developerName:Ljava/lang/String;

    :cond_1
    return-object v0
.end method

.method public final getDeveloperName()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/taptap/sdk/update/bean/UpdateResult;->developerName:Ljava/lang/String;

    return-object v0
.end method

.method public final getDownload()Lcom/taptap/sdk/update/bean/UpdateDownloadInfo;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/taptap/sdk/update/bean/UpdateResult;->download:Lcom/taptap/sdk/update/bean/UpdateDownloadInfo;

    return-object v0
.end method

.method public final getLinks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/taptap/sdk/update/bean/UpdateFuncLink;",
            ">;"
        }
    .end annotation

    .line 28
    iget-object v0, p0, Lcom/taptap/sdk/update/bean/UpdateResult;->links:Ljava/util/List;

    return-object v0
.end method

.method public final getNotify()Z
    .locals 1

    .line 34
    iget-boolean v0, p0, Lcom/taptap/sdk/update/bean/UpdateResult;->notify:Z

    return v0
.end method

.method public final getUpdateUri()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/taptap/sdk/update/bean/UpdateResult;->updateUri:Ljava/lang/String;

    return-object v0
.end method

.method public final getUpdateUriTpl()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/taptap/sdk/update/bean/UpdateResult;->updateUriTpl:Ljava/lang/String;

    return-object v0
.end method

.method public final getUpdateUrl()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/taptap/sdk/update/bean/UpdateResult;->updateUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getUpdateUrlTpl()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/taptap/sdk/update/bean/UpdateResult;->updateUrlTpl:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/taptap/sdk/update/bean/UpdateResult;->appId:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/taptap/sdk/update/bean/UpdateResult;->updateUri:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/taptap/sdk/update/bean/UpdateResult;->updateUriTpl:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/taptap/sdk/update/bean/UpdateResult;->updateUrl:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/taptap/sdk/update/bean/UpdateResult;->updateUrlTpl:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/taptap/sdk/update/bean/UpdateResult;->developerName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/taptap/sdk/update/bean/UpdateResult;->links:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/taptap/sdk/update/bean/UpdateResult;->download:Lcom/taptap/sdk/update/bean/UpdateDownloadInfo;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/taptap/sdk/update/bean/UpdateDownloadInfo;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/taptap/sdk/update/bean/UpdateResult;->notify:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method

.method public final isDataValid()Z
    .locals 4

    .line 45
    iget-object v0, p0, Lcom/taptap/sdk/update/bean/UpdateResult;->updateUriTpl:Ljava/lang/String;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/taptap/sdk/update/bean/UpdateResult;->updateUrlTpl:Ljava/lang/String;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    if-eqz v0, :cond_8

    .line 46
    iget-object v0, p0, Lcom/taptap/sdk/update/bean/UpdateResult;->download:Lcom/taptap/sdk/update/bean/UpdateDownloadInfo;

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/taptap/sdk/update/bean/UpdateDownloadInfo;->getUrlTpl()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_2
    move-object v0, v3

    :goto_2
    check-cast v0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_3

    goto :goto_3

    :cond_3
    move v0, v2

    goto :goto_4

    :cond_4
    :goto_3
    move v0, v1

    :goto_4
    if-nez v0, :cond_8

    .line 47
    iget-object v0, p0, Lcom/taptap/sdk/update/bean/UpdateResult;->download:Lcom/taptap/sdk/update/bean/UpdateDownloadInfo;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/taptap/sdk/update/bean/UpdateDownloadInfo;->getVersionName()Ljava/lang/String;

    move-result-object v3

    :cond_5
    check-cast v3, Ljava/lang/CharSequence;

    if-eqz v3, :cond_7

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_6

    goto :goto_5

    :cond_6
    move v0, v2

    goto :goto_6

    :cond_7
    :goto_5
    move v0, v1

    :goto_6
    if-nez v0, :cond_8

    goto :goto_7

    :cond_8
    move v1, v2

    :goto_7
    return v1
.end method

.method public final setUpdateUri(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    iput-object p1, p0, Lcom/taptap/sdk/update/bean/UpdateResult;->updateUri:Ljava/lang/String;

    return-void
.end method

.method public final setUpdateUriTpl(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    iput-object p1, p0, Lcom/taptap/sdk/update/bean/UpdateResult;->updateUriTpl:Ljava/lang/String;

    return-void
.end method

.method public final setUpdateUrlTpl(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    iput-object p1, p0, Lcom/taptap/sdk/update/bean/UpdateResult;->updateUrlTpl:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UpdateResult(appId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/taptap/sdk/update/bean/UpdateResult;->appId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", updateUri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/taptap/sdk/update/bean/UpdateResult;->updateUri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", updateUriTpl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/taptap/sdk/update/bean/UpdateResult;->updateUriTpl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", updateUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/taptap/sdk/update/bean/UpdateResult;->updateUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", updateUrlTpl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/taptap/sdk/update/bean/UpdateResult;->updateUrlTpl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", developerName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/taptap/sdk/update/bean/UpdateResult;->developerName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", links="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/taptap/sdk/update/bean/UpdateResult;->links:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", download="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/taptap/sdk/update/bean/UpdateResult;->download:Lcom/taptap/sdk/update/bean/UpdateDownloadInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", notify="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/taptap/sdk/update/bean/UpdateResult;->notify:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final updateSessionId()V
    .locals 5

    .line 51
    sget-object v0, Lcom/taptap/sdk/update/internal/UpdateTracker;->INSTANCE:Lcom/taptap/sdk/update/internal/UpdateTracker;

    invoke-virtual {v0}, Lcom/taptap/sdk/update/internal/UpdateTracker;->getSessionId()Ljava/lang/String;

    move-result-object v0

    .line 52
    iget-object v1, p0, Lcom/taptap/sdk/update/bean/UpdateResult;->updateUriTpl:Ljava/lang/String;

    const-string v2, "{SID}"

    const/4 v3, 0x1

    invoke-static {v1, v2, v0, v3}, Lkotlin/text/StringsKt;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/taptap/sdk/update/bean/UpdateResult;->updateUriTpl:Ljava/lang/String;

    .line 53
    iget-object v1, p0, Lcom/taptap/sdk/update/bean/UpdateResult;->updateUrlTpl:Ljava/lang/String;

    invoke-static {v1, v2, v0, v3}, Lkotlin/text/StringsKt;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/taptap/sdk/update/bean/UpdateResult;->updateUrlTpl:Ljava/lang/String;

    .line 54
    iget-object v1, p0, Lcom/taptap/sdk/update/bean/UpdateResult;->download:Lcom/taptap/sdk/update/bean/UpdateDownloadInfo;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/taptap/sdk/update/bean/UpdateDownloadInfo;->getUrlTpl()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-static {v4, v2, v0, v3}, Lkotlin/text/StringsKt;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_1
    const-string v0, ""

    :cond_2
    invoke-virtual {v1, v0}, Lcom/taptap/sdk/update/bean/UpdateDownloadInfo;->setUrlTpl(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
