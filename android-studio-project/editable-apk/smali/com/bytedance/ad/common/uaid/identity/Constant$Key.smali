.class public final Lcom/bytedance/ad/common/uaid/identity/Constant$Key;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/ad/common/uaid/identity/Constant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Key"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0006\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/bytedance/ad/common/uaid/identity/Constant$Key;",
        "",
        "()V",
        "SP_KEY_UID_CARRIER",
        "",
        "SP_KEY_UID_ERROR_CODE",
        "SP_KEY_UID_TIME",
        "SP_KEY_UID_TOKEN",
        "SP_KEY_UID_VENDOR",
        "SP_NAME_UID",
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
.field public static final INSTANCE:Lcom/bytedance/ad/common/uaid/identity/Constant$Key;

.field public static final SP_KEY_UID_CARRIER:Ljava/lang/String; = "uid_carrier"

.field public static final SP_KEY_UID_ERROR_CODE:Ljava/lang/String; = "uid_errCode"

.field public static final SP_KEY_UID_TIME:Ljava/lang/String; = "uid_time"

.field public static final SP_KEY_UID_TOKEN:Ljava/lang/String; = "uid_token"

.field public static final SP_KEY_UID_VENDOR:Ljava/lang/String; = "uid_vendor"

.field public static final SP_NAME_UID:Ljava/lang/String; = "sp_name_bd_convert_uid"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/bytedance/ad/common/uaid/identity/Constant$Key;

    invoke-direct {v0}, Lcom/bytedance/ad/common/uaid/identity/Constant$Key;-><init>()V

    sput-object v0, Lcom/bytedance/ad/common/uaid/identity/Constant$Key;->INSTANCE:Lcom/bytedance/ad/common/uaid/identity/Constant$Key;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
