.class public final Lcom/bytedance/ad/common/uaid/identity/Constant$StatusCode;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/ad/common/uaid/identity/Constant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StatusCode"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u000c\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/bytedance/ad/common/uaid/identity/Constant$StatusCode;",
        "",
        "()V",
        "ERR_ANDROID_VERSION",
        "",
        "ERR_DISABLE",
        "ERR_FAIL_GET_URL",
        "ERR_FAIL_ON_DEVICE",
        "ERR_NO_CELLULAR_NETWORK",
        "ERR_NO_PERMISSION",
        "ERR_NO_VALID_CARD",
        "ERR_OHTER",
        "GET_TOKEN_SUCC",
        "GET_URL_SUCC",
        "INIT",
        "PERMISSION_CHECK_SUCC",
        "uaid_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# static fields
.field public static final ERR_ANDROID_VERSION:Ljava/lang/String; = "71128"

.field public static final ERR_DISABLE:Ljava/lang/String; = "101128"

.field public static final ERR_FAIL_GET_URL:Ljava/lang/String; = "61128"

.field public static final ERR_FAIL_ON_DEVICE:Ljava/lang/String; = "91128"

.field public static final ERR_NO_CELLULAR_NETWORK:Ljava/lang/String; = "21128"

.field public static final ERR_NO_PERMISSION:Ljava/lang/String; = "31128"

.field public static final ERR_NO_VALID_CARD:Ljava/lang/String; = "11128"

.field public static final ERR_OHTER:Ljava/lang/String; = "51128"

.field public static final GET_TOKEN_SUCC:Ljava/lang/String; = "01128"

.field public static final GET_URL_SUCC:Ljava/lang/String; = "81128"

.field public static final INIT:Ljava/lang/String; = "-11128"

.field public static final INSTANCE:Lcom/bytedance/ad/common/uaid/identity/Constant$StatusCode;

.field public static final PERMISSION_CHECK_SUCC:Ljava/lang/String; = "41128"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/bytedance/ad/common/uaid/identity/Constant$StatusCode;

    invoke-direct {v0}, Lcom/bytedance/ad/common/uaid/identity/Constant$StatusCode;-><init>()V

    sput-object v0, Lcom/bytedance/ad/common/uaid/identity/Constant$StatusCode;->INSTANCE:Lcom/bytedance/ad/common/uaid/identity/Constant$StatusCode;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
