.class public Lcom/vivo/identifier/IdentifierIdClient;
.super Ljava/lang/Object;


# static fields
.field private static final AAID_FLAG:Ljava/lang/String; = "AAID"

.field private static final ID_APPID:Ljava/lang/String; = "appid"

.field private static final ID_TYPE:Ljava/lang/String; = "type"

.field private static final OAID_FLAG:Ljava/lang/String; = "OAID"

.field private static final SYS_IDENTIFIERID:Ljava/lang/String; = "persist.sys.identifierid"

.field private static final SYS_IDENTIFIERID_SUPPORTED:Ljava/lang/String; = "persist.sys.identifierid.supported"

.field private static final TAG:Ljava/lang/String; = "VMS_SDK_Client"

.field private static final TIME_FOR_QUERY:I = 0x7d0

.field private static final TYPE_AAID:I = 0x2

.field private static final TYPE_OAID:I = 0x0

.field private static final TYPE_OAIDSTATUS:I = 0x4

.field private static final TYPE_QUERY:I = 0xb

.field private static final TYPE_VAID:I = 0x1

.field private static final URI_BASE:Ljava/lang/String; = "content://com.vivo.vms.IdProvider/IdentifierId"

.field private static final VAID_FLAG:Ljava/lang/String; = "VAID"

.field private static final VERSION_P:I = 0x1c

.field private static final VERSION_Q:I = 0x1d

.field private static mAAID:Ljava/lang/String;

.field private static mAAIDObserver:Lcom/vivo/identifier/IdentifierIdObserver;

.field private static mContext:Landroid/content/Context;

.field private static volatile mDatabase:Lcom/vivo/identifier/DataBaseOperation;

.field private static volatile mInstance:Lcom/vivo/identifier/IdentifierIdClient;

.field private static mIsSupported:Z

.field private static mLock:Ljava/lang/Object;

.field private static mOAID:Ljava/lang/String;

.field private static mOAIDObserver:Lcom/vivo/identifier/IdentifierIdObserver;

.field private static mOAIDStatus:Ljava/lang/String;

.field private static mSqlHandler:Landroid/os/Handler;

.field private static mSqlThread:Landroid/os/HandlerThread;

.field private static mVAID:Ljava/lang/String;

.field private static mVAIDObserver:Lcom/vivo/identifier/IdentifierIdObserver;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/vivo/identifier/IdentifierIdClient;->mLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/vivo/identifier/IdentifierIdClient;->initSqlThread()V

    new-instance v0, Lcom/vivo/identifier/DataBaseOperation;

    sget-object v1, Lcom/vivo/identifier/IdentifierIdClient;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/vivo/identifier/DataBaseOperation;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/vivo/identifier/IdentifierIdClient;->mDatabase:Lcom/vivo/identifier/DataBaseOperation;

    return-void
.end method

.method public static synthetic access$000()Lcom/vivo/identifier/DataBaseOperation;
    .locals 1

    sget-object v0, Lcom/vivo/identifier/IdentifierIdClient;->mDatabase:Lcom/vivo/identifier/DataBaseOperation;

    return-object v0
.end method

.method public static synthetic access$102(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sput-object p0, Lcom/vivo/identifier/IdentifierIdClient;->mOAID:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$202(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sput-object p0, Lcom/vivo/identifier/IdentifierIdClient;->mVAID:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$302(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sput-object p0, Lcom/vivo/identifier/IdentifierIdClient;->mAAID:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$402(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sput-object p0, Lcom/vivo/identifier/IdentifierIdClient;->mOAIDStatus:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$500()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/vivo/identifier/IdentifierIdClient;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method private static native checkSupported()V
.end method

.method public static native getInstance(Landroid/content/Context;)Lcom/vivo/identifier/IdentifierIdClient;
.end method

.method private static native getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method private static synchronized native initObserver(Landroid/content/Context;ILjava/lang/String;)V
.end method

.method private static native initSqlThread()V
.end method

.method public static native isSupported()Z
.end method

.method private native queryId(ILjava/lang/String;)V
.end method


# virtual methods
.method public native getAAID()Ljava/lang/String;
.end method

.method public native getAAID(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public native getOAID()Ljava/lang/String;
.end method

.method public native getOAIDSTATUS()Ljava/lang/String;
.end method

.method public native getVAID()Ljava/lang/String;
.end method

.method public native getVAID(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public native sendMessageToDataBase(ILjava/lang/String;)V
.end method
