.class public Lcom/taptap/sdk/moment/legacy/utils/permission/PermissionConfig;
.super Ljava/lang/Object;
.source "PermissionConfig.java"


# instance fields
.field public intentCancelText:Ljava/lang/String;

.field public intentConfirmText:Ljava/lang/String;

.field public intentReason:Ljava/lang/String;

.field public intentTitle:Ljava/lang/String;

.field public tipCancelText:Ljava/lang/String;

.field public tipConfirmText:Ljava/lang/String;

.field public tipReason:Ljava/lang/String;

.field public tipTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p6

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    .line 17
    invoke-direct/range {v0 .. v8}, Lcom/taptap/sdk/moment/legacy/utils/permission/PermissionConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/taptap/sdk/moment/legacy/utils/permission/PermissionConfig;->intentTitle:Ljava/lang/String;

    .line 22
    iput-object p2, p0, Lcom/taptap/sdk/moment/legacy/utils/permission/PermissionConfig;->intentReason:Ljava/lang/String;

    .line 23
    iput-object p3, p0, Lcom/taptap/sdk/moment/legacy/utils/permission/PermissionConfig;->intentCancelText:Ljava/lang/String;

    .line 24
    iput-object p4, p0, Lcom/taptap/sdk/moment/legacy/utils/permission/PermissionConfig;->intentConfirmText:Ljava/lang/String;

    .line 25
    iput-object p5, p0, Lcom/taptap/sdk/moment/legacy/utils/permission/PermissionConfig;->tipTitle:Ljava/lang/String;

    .line 26
    iput-object p6, p0, Lcom/taptap/sdk/moment/legacy/utils/permission/PermissionConfig;->tipReason:Ljava/lang/String;

    .line 27
    iput-object p7, p0, Lcom/taptap/sdk/moment/legacy/utils/permission/PermissionConfig;->tipCancelText:Ljava/lang/String;

    .line 28
    iput-object p8, p0, Lcom/taptap/sdk/moment/legacy/utils/permission/PermissionConfig;->tipConfirmText:Ljava/lang/String;

    return-void
.end method
