.class public Lcom/qq/gdt/action/b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qq/gdt/action/b$a;
    }
.end annotation


# static fields
.field private static volatile a:Lcom/qq/gdt/action/b;

.field private static final b:Ljava/lang/Object;

.field private static final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private A:I

.field private B:I

.field private C:I

.field private D:I

.field private E:I

.field private F:I

.field private G:I

.field private H:I

.field private I:I

.field private J:I

.field private K:I

.field private L:I

.field private M:I

.field private N:I

.field private O:I

.field private P:I

.field private Q:I

.field private final e:Landroid/content/Context;

.field private final f:Ljava/util/Random;

.field private volatile g:Ljava/lang/String;

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private o:I

.field private p:I

.field private q:I

.field private r:I

.field private s:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private t:I

.field private u:I

.field private v:I

.field private w:I

.field private x:I

.field private y:I

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/qq/gdt/action/b;->b:Ljava/lang/Object;

    new-instance v0, Lcom/qq/gdt/action/b$1;

    invoke-direct {v0}, Lcom/qq/gdt/action/b$1;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/qq/gdt/action/b;->c:Ljava/util/Set;

    new-instance v0, Lcom/qq/gdt/action/b$2;

    invoke-direct {v0}, Lcom/qq/gdt/action/b$2;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/qq/gdt/action/b;->d:Ljava/util/Set;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    iput-object v0, p0, Lcom/qq/gdt/action/b;->f:Ljava/util/Random;

    const-string v0, "0.0.0"

    iput-object v0, p0, Lcom/qq/gdt/action/b;->g:Ljava/lang/String;

    const/16 v0, 0x7530

    iput v0, p0, Lcom/qq/gdt/action/b;->h:I

    const v0, 0xea60

    iput v0, p0, Lcom/qq/gdt/action/b;->i:I

    const/16 v0, 0x64

    iput v0, p0, Lcom/qq/gdt/action/b;->j:I

    iput v0, p0, Lcom/qq/gdt/action/b;->k:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/qq/gdt/action/b;->l:I

    const/4 v1, 0x4

    iput v1, p0, Lcom/qq/gdt/action/b;->m:I

    sget-object v1, Lcom/qq/gdt/action/b;->c:Ljava/util/Set;

    iput-object v1, p0, Lcom/qq/gdt/action/b;->n:Ljava/util/Set;

    const v1, 0xdbba00

    iput v1, p0, Lcom/qq/gdt/action/b;->o:I

    const v1, 0x1b7740

    iput v1, p0, Lcom/qq/gdt/action/b;->p:I

    const v1, 0x36ee80

    iput v1, p0, Lcom/qq/gdt/action/b;->q:I

    iput v1, p0, Lcom/qq/gdt/action/b;->r:I

    sget-object v1, Lcom/qq/gdt/action/b;->d:Ljava/util/Set;

    iput-object v1, p0, Lcom/qq/gdt/action/b;->s:Ljava/util/Set;

    iput v0, p0, Lcom/qq/gdt/action/b;->t:I

    iput v0, p0, Lcom/qq/gdt/action/b;->u:I

    const/4 v1, 0x1

    iput v1, p0, Lcom/qq/gdt/action/b;->v:I

    iput v0, p0, Lcom/qq/gdt/action/b;->w:I

    iput v1, p0, Lcom/qq/gdt/action/b;->x:I

    iput v0, p0, Lcom/qq/gdt/action/b;->y:I

    iput v0, p0, Lcom/qq/gdt/action/b;->z:I

    iput v0, p0, Lcom/qq/gdt/action/b;->A:I

    iput v0, p0, Lcom/qq/gdt/action/b;->B:I

    iput v0, p0, Lcom/qq/gdt/action/b;->C:I

    iput v0, p0, Lcom/qq/gdt/action/b;->D:I

    iput v0, p0, Lcom/qq/gdt/action/b;->E:I

    const/4 v2, 0x5

    iput v2, p0, Lcom/qq/gdt/action/b;->F:I

    const/16 v2, 0x5a0

    iput v2, p0, Lcom/qq/gdt/action/b;->G:I

    iput v1, p0, Lcom/qq/gdt/action/b;->H:I

    iput v0, p0, Lcom/qq/gdt/action/b;->I:I

    iput v0, p0, Lcom/qq/gdt/action/b;->J:I

    iput v0, p0, Lcom/qq/gdt/action/b;->K:I

    iput v0, p0, Lcom/qq/gdt/action/b;->L:I

    iput v0, p0, Lcom/qq/gdt/action/b;->M:I

    iput v0, p0, Lcom/qq/gdt/action/b;->N:I

    iput v0, p0, Lcom/qq/gdt/action/b;->O:I

    iput v0, p0, Lcom/qq/gdt/action/b;->P:I

    iput v0, p0, Lcom/qq/gdt/action/b;->Q:I

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/qq/gdt/action/b;->e:Landroid/content/Context;

    invoke-direct {p0}, Lcom/qq/gdt/action/b;->C()V

    return-void
.end method

.method private C()V
    .locals 3

    :try_start_0
    invoke-direct {p0}, Lcom/qq/gdt/action/b;->D()Lcom/qq/gdt/action/b$a;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/qq/gdt/action/b$a;->c:Ljava/lang/String;

    invoke-static {v1}, Lcom/qq/gdt/action/j/i;->b(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/qq/gdt/action/j/u;->a([B)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/qq/gdt/action/b$a;->b:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/qq/gdt/action/j/l;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/qq/gdt/action/b$a;->a:Ljava/lang/String;

    iget-object v0, v0, Lcom/qq/gdt/action/b$a;->c:Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcom/qq/gdt/action/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "Fail to verify local config file"

    invoke-static {v0}, Lcom/qq/gdt/action/j/o;->c(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "Load SDKConfig from local exception"

    invoke-static {v1, v0}, Lcom/qq/gdt/action/j/o;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private D()Lcom/qq/gdt/action/b$a;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/qq/gdt/action/b;->E()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "SDKConfig file not exist"

    invoke-static {v1, v0}, Lcom/qq/gdt/action/j/o;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v1, Ljava/util/Scanner;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v1}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Ljava/util/Scanner;->close()V

    new-instance v1, Lcom/qq/gdt/action/b$a;

    invoke-direct {v1, v0, v2, v3}, Lcom/qq/gdt/action/b$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method private E()Ljava/io/File;
    .locals 3

    new-instance v0, Ljava/io/File;

    invoke-direct {p0}, Lcom/qq/gdt/action/b;->G()Ljava/io/File;

    move-result-object v1

    const-string v2, "sdk.conf"

    invoke-direct {p0, v2}, Lcom/qq/gdt/action/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private F()Ljava/io/File;
    .locals 3

    new-instance v0, Ljava/io/File;

    invoke-direct {p0}, Lcom/qq/gdt/action/b;->G()Ljava/io/File;

    move-result-object v1

    const-string v2, "sdk.conf.tmp"

    invoke-direct {p0, v2}, Lcom/qq/gdt/action/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private G()Ljava/io/File;
    .locals 3

    iget-object v0, p0, Lcom/qq/gdt/action/b;->e:Landroid/content/Context;

    const-string v1, "a_gdt_qq_com_conf"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Lcom/qq/gdt/action/b;
    .locals 2

    sget-object v0, Lcom/qq/gdt/action/b;->a:Lcom/qq/gdt/action/b;

    if-nez v0, :cond_1

    const-class v0, Lcom/qq/gdt/action/b;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/qq/gdt/action/b;->a:Lcom/qq/gdt/action/b;

    if-nez v1, :cond_0

    new-instance v1, Lcom/qq/gdt/action/b;

    invoke-direct {v1, p0}, Lcom/qq/gdt/action/b;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/qq/gdt/action/b;->a:Lcom/qq/gdt/action/b;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    sget-object p0, Lcom/qq/gdt/action/b;->a:Lcom/qq/gdt/action/b;

    return-object p0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    sget-object v0, Lcom/qq/gdt/action/b;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/lang/String;

    invoke-static {p2}, Lcom/qq/gdt/action/j/i;->b(Ljava/lang/String;)[B

    move-result-object p2

    invoke-direct {v1, p2}, Ljava/lang/String;-><init>([B)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "======>UpdateSDKConfig:\nversion = "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\noriginal_config_str = \n"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/qq/gdt/action/j/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {p2, v3}, Lcom/qq/gdt/action/j/o;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/qq/gdt/action/b;->g:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/qq/gdt/action/b;->b(Lorg/json/JSONObject;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object p1, Lcom/qq/gdt/action/b;->c:Ljava/util/Set;

    :cond_0
    iput-object p1, p0, Lcom/qq/gdt/action/b;->n:Ljava/util/Set;

    invoke-direct {p0, p2}, Lcom/qq/gdt/action/b;->c(Lorg/json/JSONObject;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/qq/gdt/action/b;->s:Ljava/util/Set;

    const-string p1, "flush_interval"

    const/16 v1, 0x7530

    invoke-virtual {p2, p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/qq/gdt/action/b;->h:I

    const-string p1, "ticket_interval"

    const v1, 0xea60

    invoke-virtual {p2, p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/qq/gdt/action/b;->i:I

    const-string p1, "his_report_rate"

    const/16 v1, 0x64

    invoke-virtual {p2, p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/qq/gdt/action/b;->j:I

    const-string p1, "dp3_report_rate"

    invoke-virtual {p2, p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/qq/gdt/action/b;->k:I

    const-string p1, "oaid_flush_interval"

    const v1, 0xdbba00

    invoke-virtual {p2, p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/qq/gdt/action/b;->o:I

    const-string p1, "oaid_err_flush_interval"

    const v1, 0x1b7740

    invoke-virtual {p2, p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/qq/gdt/action/b;->p:I

    const-string p1, "app_waid_flush_interval"

    const v1, 0x36ee80

    invoke-virtual {p2, p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/qq/gdt/action/b;->q:I

    const-string p1, "open_device_identifier_flushInterval"

    invoke-virtual {p2, p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/qq/gdt/action/b;->r:I

    const-string p1, "action_record_strategy"

    invoke-virtual {p2, p1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/qq/gdt/action/b;->l:I

    const-string p1, "event_record_strategy"

    const/4 v1, 0x4

    invoke-virtual {p2, p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/qq/gdt/action/b;->m:I

    const-string p1, "content_provider_inited"

    invoke-virtual {p2, p1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/qq/gdt/action/b;->u:I

    const-string p1, "read_build_config"

    invoke-virtual {p2, p1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/qq/gdt/action/b;->t:I

    const-string p1, "ylh_ext_enabled"

    const/4 v3, 0x1

    invoke-virtual {p2, p1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/qq/gdt/action/b;->v:I

    const-string p1, "bssid_open_value"

    invoke-virtual {p2, p1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/qq/gdt/action/b;->w:I

    const-string p1, "imsi_open_value"

    invoke-virtual {p2, p1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/qq/gdt/action/b;->x:I

    const-string p1, "imei_open_value"

    invoke-virtual {p2, p1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/qq/gdt/action/b;->y:I

    const-string p1, "meid_open_value"

    invoke-virtual {p2, p1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/qq/gdt/action/b;->z:I

    const-string p1, "deviceid_open_value"

    invoke-virtual {p2, p1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/qq/gdt/action/b;->B:I

    const-string p1, "androidid_open_value"

    invoke-virtual {p2, p1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/qq/gdt/action/b;->A:I

    const-string p1, "eventid_report_value"

    invoke-virtual {p2, p1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/qq/gdt/action/b;->C:I

    const-string p1, "dp3_report_value"

    invoke-virtual {p2, p1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/qq/gdt/action/b;->D:I

    const-string p1, "harmony_collect_value"

    invoke-virtual {p2, p1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/qq/gdt/action/b;->E:I

    const-string p1, "client_ipc_interval_time"

    const/4 v4, 0x5

    invoke-virtual {p2, p1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/qq/gdt/action/b;->F:I

    const-string p1, "before_init_interval_time"

    const/16 v5, 0x5a0

    invoke-virtual {p2, p1, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/qq/gdt/action/b;->G:I

    const-string p1, "sensitive_id_collect_times"

    invoke-virtual {p2, p1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/qq/gdt/action/b;->H:I

    const-string p1, "fill_process_info_value"

    invoke-virtual {p2, p1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/qq/gdt/action/b;->I:I

    const-string p1, "get_mobile_info_value"

    invoke-virtual {p2, p1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/qq/gdt/action/b;->J:I

    const-string p1, "get_app_info_value"

    invoke-virtual {p2, p1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/qq/gdt/action/b;->K:I

    const-string p1, "get_sdk_info_value"

    invoke-virtual {p2, p1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/qq/gdt/action/b;->L:I

    const-string p1, "auto_init_value"

    invoke-virtual {p2, p1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/qq/gdt/action/b;->M:I

    const-string p1, "action_enable_https"

    invoke-virtual {p2, p1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/qq/gdt/action/b;->N:I

    const-string p1, "event_enable_https"

    invoke-virtual {p2, p1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/qq/gdt/action/b;->O:I

    const-string p1, "disable_clickid"

    invoke-virtual {p2, p1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/qq/gdt/action/b;->P:I

    const-string p1, "disable_acaid"

    invoke-virtual {p2, p1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/qq/gdt/action/b;->Q:I

    const-string p1, "=====>Apply config:\nversion = %s\nflushInterval = %d\nhisReportRate = %d\ndp3ReportRate = %d\nimportantActionTypes = %s\nactionRecordStrategy = %d\neventRecordStrategy = %d\ninstallPackageNames = %s\noaidFlushInterval = %d\noaidErrorFlushInterval = %d\nappWaidFlushInterval = %d\nopenDeviceIdentifierFlushInterval = %d\ncpInited = %d\nreadBudConfig = %d\nbssidOpen = %d\neventidReport = %d\ndp3Report = %d\nharmonyCollect = %d\nclientIpcIntervalTime = %d\nbeforeInitIntervalTime = %d\nsensitive_id_collect_times = %d\nfill_process_info = %d\nget_mobile_info = %d\nget_app_info = %d\nget_sdk_info = %d\nauto_init = %d\nmeidOpen = %d\nimeiOpen = %d\ndeviceidOpen = %d\nandroididOpen = %d\nimsiOpen = %d\naction_enable_https = %d\nevent_enable_https = %d\ndisable_clickid = %d\ndisable_acaid = %d"

    const/16 p2, 0x23

    new-array p2, p2, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/qq/gdt/action/b;->g:Ljava/lang/String;

    aput-object v5, p2, v2

    iget v5, p0, Lcom/qq/gdt/action/b;->h:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, p2, v3

    const/4 v3, 0x2

    iget v5, p0, Lcom/qq/gdt/action/b;->j:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, p2, v3

    const/4 v3, 0x3

    iget v5, p0, Lcom/qq/gdt/action/b;->k:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, p2, v3

    iget-object v3, p0, Lcom/qq/gdt/action/b;->n:Ljava/util/Set;

    aput-object v3, p2, v1

    iget v1, p0, Lcom/qq/gdt/action/b;->l:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p2, v4

    const/4 v1, 0x6

    iget v3, p0, Lcom/qq/gdt/action/b;->m:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, p2, v1

    const/4 v1, 0x7

    iget-object v3, p0, Lcom/qq/gdt/action/b;->s:Ljava/util/Set;

    aput-object v3, p2, v1

    const/16 v1, 0x8

    iget v3, p0, Lcom/qq/gdt/action/b;->o:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, p2, v1

    const/16 v1, 0x9

    iget v3, p0, Lcom/qq/gdt/action/b;->p:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, p2, v1

    const/16 v1, 0xa

    iget v3, p0, Lcom/qq/gdt/action/b;->q:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, p2, v1

    const/16 v1, 0xb

    iget v3, p0, Lcom/qq/gdt/action/b;->r:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, p2, v1

    const/16 v1, 0xc

    iget v3, p0, Lcom/qq/gdt/action/b;->u:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, p2, v1

    const/16 v1, 0xd

    iget v3, p0, Lcom/qq/gdt/action/b;->t:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, p2, v1

    const/16 v1, 0xe

    iget v3, p0, Lcom/qq/gdt/action/b;->w:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, p2, v1

    const/16 v1, 0xf

    iget v3, p0, Lcom/qq/gdt/action/b;->C:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, p2, v1

    const/16 v1, 0x10

    iget v3, p0, Lcom/qq/gdt/action/b;->D:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, p2, v1

    const/16 v1, 0x11

    iget v3, p0, Lcom/qq/gdt/action/b;->E:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, p2, v1

    const/16 v1, 0x12

    iget v3, p0, Lcom/qq/gdt/action/b;->F:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, p2, v1

    const/16 v1, 0x13

    iget v3, p0, Lcom/qq/gdt/action/b;->G:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, p2, v1

    const/16 v1, 0x14

    iget v3, p0, Lcom/qq/gdt/action/b;->H:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, p2, v1

    const/16 v1, 0x15

    iget v3, p0, Lcom/qq/gdt/action/b;->I:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, p2, v1

    const/16 v1, 0x16

    iget v3, p0, Lcom/qq/gdt/action/b;->J:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, p2, v1

    const/16 v1, 0x17

    iget v3, p0, Lcom/qq/gdt/action/b;->K:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, p2, v1

    const/16 v1, 0x18

    iget v3, p0, Lcom/qq/gdt/action/b;->L:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, p2, v1

    const/16 v1, 0x19

    iget v3, p0, Lcom/qq/gdt/action/b;->M:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, p2, v1

    const/16 v1, 0x1a

    iget v3, p0, Lcom/qq/gdt/action/b;->z:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, p2, v1

    const/16 v1, 0x1b

    iget v3, p0, Lcom/qq/gdt/action/b;->y:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, p2, v1

    const/16 v1, 0x1c

    iget v3, p0, Lcom/qq/gdt/action/b;->B:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, p2, v1

    const/16 v1, 0x1d

    iget v3, p0, Lcom/qq/gdt/action/b;->A:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, p2, v1

    const/16 v1, 0x1e

    iget v3, p0, Lcom/qq/gdt/action/b;->x:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, p2, v1

    const/16 v1, 0x1f

    iget v3, p0, Lcom/qq/gdt/action/b;->N:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, p2, v1

    const/16 v1, 0x20

    iget v3, p0, Lcom/qq/gdt/action/b;->O:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, p2, v1

    const/16 v1, 0x21

    iget v3, p0, Lcom/qq/gdt/action/b;->P:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, p2, v1

    const/16 v1, 0x22

    iget v3, p0, Lcom/qq/gdt/action/b;->Q:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, p2, v1

    invoke-static {p1, p2}, Lcom/qq/gdt/action/j/v;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array p2, v2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/qq/gdt/action/j/o;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_2
    const-string p2, "Json parse exception"

    invoke-static {p2, p1}, Lcom/qq/gdt/action/j/o;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u914d\u7f6e\u66f4\u65b0 update version = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " sign = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " data = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/qq/gdt/action/j/o;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p3}, Lcom/qq/gdt/action/j/i;->b(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/qq/gdt/action/j/u;->a([B)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/qq/gdt/action/j/l;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/qq/gdt/action/b;->F()Ljava/io/File;

    move-result-object v0

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/io/PrintWriter;

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v3, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v3, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/qq/gdt/action/b;->E()Ljava/io/File;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/qq/gdt/action/j/k;->a(Ljava/io/File;Ljava/io/File;)Z

    invoke-direct {p0, p1, p3}, Lcom/qq/gdt/action/b;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x1

    :try_start_2
    invoke-virtual {v3}, Ljava/io/PrintWriter;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    return p1

    :catchall_0
    move-exception p1

    move-object v2, v3

    goto :goto_1

    :catch_1
    move-object v2, v3

    goto :goto_0

    :catchall_1
    move-exception p1

    goto :goto_1

    :catch_2
    :goto_0
    :try_start_3
    const-string p1, "Exception while persist config"

    invoke-static {p1}, Lcom/qq/gdt/action/j/o;->c(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v2, :cond_0

    :try_start_4
    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    :catch_3
    :cond_0
    return v1

    :goto_1
    if-eqz v2, :cond_1

    :try_start_5
    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    :catch_4
    :cond_1
    throw p1

    :cond_2
    const-string p1, "Fail to update conf for sign check error"

    invoke-static {p1}, Lcom/qq/gdt/action/j/o;->c(Ljava/lang/String;)V

    return v1
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/qq/gdt/action/e;->a()Lcom/qq/gdt/action/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/qq/gdt/action/e;->r()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qq/gdt/action/j/u;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private b(Lorg/json/JSONObject;)Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "action_type"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private c(Lorg/json/JSONObject;)Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "package_name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/qq/gdt/action/b;->d:Ljava/util/Set;

    :cond_1
    return-object v0
.end method


# virtual methods
.method public A()Z
    .locals 2

    iget v0, p0, Lcom/qq/gdt/action/b;->P:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public B()Z
    .locals 2

    iget v0, p0, Lcom/qq/gdt/action/b;->Q:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/qq/gdt/action/b;->g:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/qq/gdt/action/b;->n:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public a(Lorg/json/JSONObject;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const-string v1, "conf_version"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "sig"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "data"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1}, Lcom/qq/gdt/action/j/v;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {v2}, Lcom/qq/gdt/action/j/v;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {p1}, Lcom/qq/gdt/action/j/v;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0, v1, v2, p1}, Lcom/qq/gdt/action/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    return v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/qq/gdt/action/b;->h:I

    return v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcom/qq/gdt/action/b;->i:I

    return v0
.end method

.method public d()Z
    .locals 2

    iget-object v0, p0, Lcom/qq/gdt/action/b;->f:Ljava/util/Random;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    iget v1, p0, Lcom/qq/gdt/action/b;->k:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public e()I
    .locals 1

    iget v0, p0, Lcom/qq/gdt/action/b;->m:I

    return v0
.end method

.method public f()I
    .locals 1

    iget v0, p0, Lcom/qq/gdt/action/b;->o:I

    return v0
.end method

.method public g()I
    .locals 1

    iget v0, p0, Lcom/qq/gdt/action/b;->w:I

    return v0
.end method

.method public h()I
    .locals 1

    iget v0, p0, Lcom/qq/gdt/action/b;->x:I

    return v0
.end method

.method public i()I
    .locals 1

    iget v0, p0, Lcom/qq/gdt/action/b;->y:I

    return v0
.end method

.method public j()I
    .locals 1

    iget v0, p0, Lcom/qq/gdt/action/b;->z:I

    return v0
.end method

.method public k()I
    .locals 1

    iget v0, p0, Lcom/qq/gdt/action/b;->A:I

    return v0
.end method

.method public l()I
    .locals 1

    iget v0, p0, Lcom/qq/gdt/action/b;->B:I

    return v0
.end method

.method public m()I
    .locals 1

    iget v0, p0, Lcom/qq/gdt/action/b;->C:I

    return v0
.end method

.method public n()I
    .locals 1

    iget v0, p0, Lcom/qq/gdt/action/b;->E:I

    return v0
.end method

.method public o()I
    .locals 1

    iget v0, p0, Lcom/qq/gdt/action/b;->F:I

    mul-int/lit16 v0, v0, 0x3e8

    mul-int/lit8 v0, v0, 0x3c

    return v0
.end method

.method public p()I
    .locals 1

    iget v0, p0, Lcom/qq/gdt/action/b;->H:I

    return v0
.end method

.method public q()I
    .locals 1

    iget v0, p0, Lcom/qq/gdt/action/b;->I:I

    return v0
.end method

.method public r()I
    .locals 1

    iget v0, p0, Lcom/qq/gdt/action/b;->J:I

    return v0
.end method

.method public s()I
    .locals 1

    iget v0, p0, Lcom/qq/gdt/action/b;->K:I

    return v0
.end method

.method public t()I
    .locals 1

    iget v0, p0, Lcom/qq/gdt/action/b;->L:I

    return v0
.end method

.method public u()I
    .locals 1

    iget v0, p0, Lcom/qq/gdt/action/b;->N:I

    return v0
.end method

.method public v()I
    .locals 1

    iget v0, p0, Lcom/qq/gdt/action/b;->O:I

    return v0
.end method

.method public w()I
    .locals 1

    iget v0, p0, Lcom/qq/gdt/action/b;->r:I

    return v0
.end method

.method public x()I
    .locals 1

    iget v0, p0, Lcom/qq/gdt/action/b;->p:I

    return v0
.end method

.method public y()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/qq/gdt/action/b;->s:Ljava/util/Set;

    return-object v0
.end method

.method public z()Z
    .locals 2

    iget v0, p0, Lcom/qq/gdt/action/b;->v:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
