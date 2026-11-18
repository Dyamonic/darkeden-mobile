.class public final enum Lcom/taptap/sdk/update/dialog/TapUpdateInstallConfirmDialog$TapUpdateConfirmDialogType;
.super Ljava/lang/Enum;
.source "TapUpdateInstallConfirmDialog.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taptap/sdk/update/dialog/TapUpdateInstallConfirmDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TapUpdateConfirmDialogType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/taptap/sdk/update/dialog/TapUpdateInstallConfirmDialog$TapUpdateConfirmDialogType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0004\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/taptap/sdk/update/dialog/TapUpdateInstallConfirmDialog$TapUpdateConfirmDialogType;",
        "",
        "(Ljava/lang/String;I)V",
        "INSTALL_CONFIRM",
        "INSTALL_FAIL",
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
.field private static final synthetic $VALUES:[Lcom/taptap/sdk/update/dialog/TapUpdateInstallConfirmDialog$TapUpdateConfirmDialogType;

.field public static final enum INSTALL_CONFIRM:Lcom/taptap/sdk/update/dialog/TapUpdateInstallConfirmDialog$TapUpdateConfirmDialogType;

.field public static final enum INSTALL_FAIL:Lcom/taptap/sdk/update/dialog/TapUpdateInstallConfirmDialog$TapUpdateConfirmDialogType;


# direct methods
.method private static final synthetic $values()[Lcom/taptap/sdk/update/dialog/TapUpdateInstallConfirmDialog$TapUpdateConfirmDialogType;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/taptap/sdk/update/dialog/TapUpdateInstallConfirmDialog$TapUpdateConfirmDialogType;

    sget-object v1, Lcom/taptap/sdk/update/dialog/TapUpdateInstallConfirmDialog$TapUpdateConfirmDialogType;->INSTALL_CONFIRM:Lcom/taptap/sdk/update/dialog/TapUpdateInstallConfirmDialog$TapUpdateConfirmDialogType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/taptap/sdk/update/dialog/TapUpdateInstallConfirmDialog$TapUpdateConfirmDialogType;->INSTALL_FAIL:Lcom/taptap/sdk/update/dialog/TapUpdateInstallConfirmDialog$TapUpdateConfirmDialogType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 143
    new-instance v0, Lcom/taptap/sdk/update/dialog/TapUpdateInstallConfirmDialog$TapUpdateConfirmDialogType;

    const-string v1, "INSTALL_CONFIRM"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/taptap/sdk/update/dialog/TapUpdateInstallConfirmDialog$TapUpdateConfirmDialogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taptap/sdk/update/dialog/TapUpdateInstallConfirmDialog$TapUpdateConfirmDialogType;->INSTALL_CONFIRM:Lcom/taptap/sdk/update/dialog/TapUpdateInstallConfirmDialog$TapUpdateConfirmDialogType;

    .line 144
    new-instance v0, Lcom/taptap/sdk/update/dialog/TapUpdateInstallConfirmDialog$TapUpdateConfirmDialogType;

    const-string v1, "INSTALL_FAIL"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/taptap/sdk/update/dialog/TapUpdateInstallConfirmDialog$TapUpdateConfirmDialogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taptap/sdk/update/dialog/TapUpdateInstallConfirmDialog$TapUpdateConfirmDialogType;->INSTALL_FAIL:Lcom/taptap/sdk/update/dialog/TapUpdateInstallConfirmDialog$TapUpdateConfirmDialogType;

    invoke-static {}, Lcom/taptap/sdk/update/dialog/TapUpdateInstallConfirmDialog$TapUpdateConfirmDialogType;->$values()[Lcom/taptap/sdk/update/dialog/TapUpdateInstallConfirmDialog$TapUpdateConfirmDialogType;

    move-result-object v0

    sput-object v0, Lcom/taptap/sdk/update/dialog/TapUpdateInstallConfirmDialog$TapUpdateConfirmDialogType;->$VALUES:[Lcom/taptap/sdk/update/dialog/TapUpdateInstallConfirmDialog$TapUpdateConfirmDialogType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 142
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/taptap/sdk/update/dialog/TapUpdateInstallConfirmDialog$TapUpdateConfirmDialogType;
    .locals 1

    const-class v0, Lcom/taptap/sdk/update/dialog/TapUpdateInstallConfirmDialog$TapUpdateConfirmDialogType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/taptap/sdk/update/dialog/TapUpdateInstallConfirmDialog$TapUpdateConfirmDialogType;

    return-object p0
.end method

.method public static values()[Lcom/taptap/sdk/update/dialog/TapUpdateInstallConfirmDialog$TapUpdateConfirmDialogType;
    .locals 1

    sget-object v0, Lcom/taptap/sdk/update/dialog/TapUpdateInstallConfirmDialog$TapUpdateConfirmDialogType;->$VALUES:[Lcom/taptap/sdk/update/dialog/TapUpdateInstallConfirmDialog$TapUpdateConfirmDialogType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/taptap/sdk/update/dialog/TapUpdateInstallConfirmDialog$TapUpdateConfirmDialogType;

    return-object v0
.end method
