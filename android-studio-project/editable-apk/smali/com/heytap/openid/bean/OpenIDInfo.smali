.class public final Lcom/heytap/openid/bean/OpenIDInfo;
.super Ljava/lang/Object;


# static fields
.field public static Type_AAID:I = 0x2

.field public static Type_OAID:I = 0x8

.field public static Type_VAID:I = 0x4


# instance fields
.field public final AAID:Ljava/lang/String;

.field public final OAID:Ljava/lang/String;

.field public final OAIDStatus:Z

.field public final VAID:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/heytap/openid/bean/OpenIDInfo;->OAID:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/heytap/openid/bean/OpenIDInfo;->OAIDStatus:Z

    iput-object p3, p0, Lcom/heytap/openid/bean/OpenIDInfo;->VAID:Ljava/lang/String;

    iput-object p4, p0, Lcom/heytap/openid/bean/OpenIDInfo;->AAID:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public native getAAID()Ljava/lang/String;
.end method

.method public native getOAID()Ljava/lang/String;
.end method

.method public native getOAIDStatus()Z
.end method

.method public native getVAID()Ljava/lang/String;
.end method
