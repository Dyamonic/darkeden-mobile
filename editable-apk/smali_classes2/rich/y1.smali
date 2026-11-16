.class public Lrich/y1;
.super Lrich/x1;
.source ""


# static fields
.field public static D:Ljava/util/ArrayList;


# instance fields
.field public B:Lorg/json/JSONObject;

.field public C:Lorg/json/JSONArray;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lrich/y1;->D:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lrich/x1;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lrich/y1;->B:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONArray;)V
    .locals 0

    iput-object p1, p0, Lrich/y1;->C:Lorg/json/JSONArray;

    return-void
.end method

.method public b()Lorg/json/JSONObject;
    .locals 3

    invoke-super {p0}, Lrich/x1;->b()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "event"

    :try_start_0
    iget-object v2, p0, Lrich/y1;->B:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "exceptionStackTrace"

    :try_start_1
    iget-object v2, p0, Lrich/y1;->C:Lorg/json/JSONArray;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-object v0
.end method
