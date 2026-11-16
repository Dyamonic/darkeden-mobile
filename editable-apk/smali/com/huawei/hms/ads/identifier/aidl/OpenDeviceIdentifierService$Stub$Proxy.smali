.class public Lcom/huawei/hms/ads/identifier/aidl/OpenDeviceIdentifierService$Stub$Proxy;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/huawei/hms/ads/identifier/aidl/OpenDeviceIdentifierService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/hms/ads/identifier/aidl/OpenDeviceIdentifierService$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Proxy"
.end annotation


# instance fields
.field private mBinderRemote:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/huawei/hms/ads/identifier/aidl/OpenDeviceIdentifierService$Stub$Proxy;->mBinderRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public native asBinder()Landroid/os/IBinder;
.end method

.method public native getInterfaceDescriptor()Ljava/lang/String;
.end method

.method public native getOaid()Ljava/lang/String;
.end method

.method public native isOaidTrackLimited()Z
.end method
