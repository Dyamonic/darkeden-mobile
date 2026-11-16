.class public Lcom/yofi/sdk/imp/middle/manager/UserManager;
.super Ljava/lang/Object;
.source "UserManager.java"


# static fields
.field private static final GAME_STAGE:Ljava/lang/String; = "GAME_STAGE"

.field private static final SDK_STAGE:Ljava/lang/String; = "SDK_STAGE"

.field private static allUserInfo:Ljava/lang/String; = "LittleSDKAllUser"

.field private static shareUserInfo:Ljava/lang/String; = "LittleSDKUser"

.field private static sharedUserManager:Lcom/yofi/sdk/imp/middle/manager/UserManager;


# instance fields
.field private age:I

.field private authen:Z

.field private gameStage:I

.field private mContext:Landroid/content/Context;

.field private mEditor:Landroid/content/SharedPreferences$Editor;

.field private mKV:Landroid/content/SharedPreferences;

.field private phoneNumber:Ljava/lang/String;

.field private sdkStage:I

.field private tourist:Z

.field private user:Lorg/json/JSONObject;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x12

    .line 33
    iput v0, p0, Lcom/yofi/sdk/imp/middle/manager/UserManager;->age:I

    const-string v0, ""

    .line 34
    iput-object v0, p0, Lcom/yofi/sdk/imp/middle/manager/UserManager;->phoneNumber:Ljava/lang/String;

    const/4 v0, 0x0

    .line 37
    iput v0, p0, Lcom/yofi/sdk/imp/middle/manager/UserManager;->gameStage:I

    .line 38
    iput v0, p0, Lcom/yofi/sdk/imp/middle/manager/UserManager;->sdkStage:I

    return-void
.end method

.method private aes_decode(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "src"
        }
    .end annotation

    .line 48
    new-instance v0, Lcom/yofi/sdk/utils/AES;

    const-string v1, "GGOD_WHO_K#@*&^M321_ as:N+~s(w@"

    invoke-direct {v0, v1}, Lcom/yofi/sdk/utils/AES;-><init>(Ljava/lang/String;)V

    .line 49
    invoke-virtual {v0, p1}, Lcom/yofi/sdk/utils/AES;->InvCipher(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private aes_encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "src"
        }
    .end annotation

    .line 43
    new-instance v0, Lcom/yofi/sdk/utils/AES;

    const-string v1, "GGOD_WHO_K#@*&^M321_ as:N+~s(w@"

    invoke-direct {v0, v1}, Lcom/yofi/sdk/utils/AES;-><init>(Ljava/lang/String;)V

    .line 44
    invoke-virtual {v0, p1}, Lcom/yofi/sdk/utils/AES;->Cipher(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getUserInfo()Lorg/json/JSONObject;
    .locals 6

    const-string v0, "tourist_pass"

    const-string v1, ""

    const-string v2, "tourist_user"

    .line 148
    iget-object v3, p0, Lcom/yofi/sdk/imp/middle/manager/UserManager;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/yofi/sdk/imp/middle/manager/UserManager;->shareUserInfo:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 149
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 152
    :try_start_0
    invoke-interface {v3, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 153
    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 156
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-object v4
.end method

.method public static instance()Lcom/yofi/sdk/imp/middle/manager/UserManager;
    .locals 1

    .line 53
    sget-object v0, Lcom/yofi/sdk/imp/middle/manager/UserManager;->sharedUserManager:Lcom/yofi/sdk/imp/middle/manager/UserManager;

    if-nez v0, :cond_0

    .line 54
    new-instance v0, Lcom/yofi/sdk/imp/middle/manager/UserManager;

    invoke-direct {v0}, Lcom/yofi/sdk/imp/middle/manager/UserManager;-><init>()V

    sput-object v0, Lcom/yofi/sdk/imp/middle/manager/UserManager;->sharedUserManager:Lcom/yofi/sdk/imp/middle/manager/UserManager;

    .line 57
    :cond_0
    sget-object v0, Lcom/yofi/sdk/imp/middle/manager/UserManager;->sharedUserManager:Lcom/yofi/sdk/imp/middle/manager/UserManager;

    return-object v0
.end method


# virtual methods
.method public clearSession()V
    .locals 2

    const/4 v0, 0x0

    .line 167
    iput v0, p0, Lcom/yofi/sdk/imp/middle/manager/UserManager;->age:I

    const-string v1, ""

    .line 168
    iput-object v1, p0, Lcom/yofi/sdk/imp/middle/manager/UserManager;->phoneNumber:Ljava/lang/String;

    const/4 v1, 0x1

    .line 169
    iput-boolean v1, p0, Lcom/yofi/sdk/imp/middle/manager/UserManager;->tourist:Z

    .line 170
    iput-boolean v0, p0, Lcom/yofi/sdk/imp/middle/manager/UserManager;->authen:Z

    return-void
.end method

.method public commit()V
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/manager/UserManager;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public getAge()I
    .locals 1

    .line 112
    iget v0, p0, Lcom/yofi/sdk/imp/middle/manager/UserManager;->age:I

    return v0
.end method

.method public getGameStage()I
    .locals 1

    .line 130
    iget v0, p0, Lcom/yofi/sdk/imp/middle/manager/UserManager;->gameStage:I

    return v0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/manager/UserManager;->phoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getSdkStage()I
    .locals 1

    .line 133
    iget v0, p0, Lcom/yofi/sdk/imp/middle/manager/UserManager;->sdkStage:I

    return v0
.end method

.method public getTouristPassword()Ljava/lang/String;
    .locals 3

    const-string v0, ""

    .line 88
    :try_start_0
    iget-object v1, p0, Lcom/yofi/sdk/imp/middle/manager/UserManager;->user:Lorg/json/JSONObject;

    if-eqz v1, :cond_0

    const-string v2, "tourist_pass"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/yofi/sdk/imp/middle/manager/UserManager;->aes_decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object v0

    :catch_0
    move-exception v1

    .line 90
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    return-object v0
.end method

.method public getTouristUser()Ljava/lang/String;
    .locals 3

    const-string v0, ""

    .line 79
    :try_start_0
    iget-object v1, p0, Lcom/yofi/sdk/imp/middle/manager/UserManager;->user:Lorg/json/JSONObject;

    if-eqz v1, :cond_0

    const-string v2, "tourist_user"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/yofi/sdk/imp/middle/manager/UserManager;->aes_decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object v0

    :catch_0
    move-exception v1

    .line 81
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    return-object v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 61
    iput-object p1, p0, Lcom/yofi/sdk/imp/middle/manager/UserManager;->mContext:Landroid/content/Context;

    .line 62
    sget-object v0, Lcom/yofi/sdk/imp/middle/manager/UserManager;->allUserInfo:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/yofi/sdk/imp/middle/manager/UserManager;->mKV:Landroid/content/SharedPreferences;

    .line 63
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iput-object p1, p0, Lcom/yofi/sdk/imp/middle/manager/UserManager;->mEditor:Landroid/content/SharedPreferences$Editor;

    .line 64
    iget-object p1, p0, Lcom/yofi/sdk/imp/middle/manager/UserManager;->mKV:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object p1

    const-string v0, "GAME_STAGE"

    .line 65
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 66
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/yofi/sdk/imp/middle/manager/UserManager;->gameStage:I

    :cond_0
    const-string v0, "SDK_STAGE"

    .line 68
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 69
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/yofi/sdk/imp/middle/manager/UserManager;->sdkStage:I

    .line 72
    :cond_1
    invoke-direct {p0}, Lcom/yofi/sdk/imp/middle/manager/UserManager;->getUserInfo()Lorg/json/JSONObject;

    move-result-object p1

    iput-object p1, p0, Lcom/yofi/sdk/imp/middle/manager/UserManager;->user:Lorg/json/JSONObject;

    return-void
.end method

.method public isAuthened()Z
    .locals 1

    .line 98
    iget-boolean v0, p0, Lcom/yofi/sdk/imp/middle/manager/UserManager;->authen:Z

    return v0
.end method

.method public isTourist()Z
    .locals 1

    .line 108
    iget-boolean v0, p0, Lcom/yofi/sdk/imp/middle/manager/UserManager;->tourist:Z

    return v0
.end method

.method public setAge(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "age"
        }
    .end annotation

    .line 116
    iput p1, p0, Lcom/yofi/sdk/imp/middle/manager/UserManager;->age:I

    return-void
.end method

.method public setAuthen(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "authen"
        }
    .end annotation

    .line 102
    iput-boolean p1, p0, Lcom/yofi/sdk/imp/middle/manager/UserManager;->authen:Z

    return-void
.end method

.method public setGameStage(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameStage"
        }
    .end annotation

    .line 137
    iput p1, p0, Lcom/yofi/sdk/imp/middle/manager/UserManager;->gameStage:I

    .line 138
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/manager/UserManager;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "GAME_STAGE"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 139
    invoke-virtual {p0}, Lcom/yofi/sdk/imp/middle/manager/UserManager;->commit()V

    return-void
.end method

.method public setPhoneNumber(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "phoneNumber"
        }
    .end annotation

    .line 124
    iput-object p1, p0, Lcom/yofi/sdk/imp/middle/manager/UserManager;->phoneNumber:Ljava/lang/String;

    return-void
.end method

.method public setSdkStage(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sdkStage"
        }
    .end annotation

    .line 142
    iput p1, p0, Lcom/yofi/sdk/imp/middle/manager/UserManager;->sdkStage:I

    .line 143
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/manager/UserManager;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "SDK_STAGE"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 144
    invoke-virtual {p0}, Lcom/yofi/sdk/imp/middle/manager/UserManager;->commit()V

    return-void
.end method

.method public setTourist(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tourist"
        }
    .end annotation

    .line 105
    iput-boolean p1, p0, Lcom/yofi/sdk/imp/middle/manager/UserManager;->tourist:Z

    return-void
.end method
