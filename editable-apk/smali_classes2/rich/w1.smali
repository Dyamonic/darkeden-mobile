.class public Lrich/w1;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrich/w1$b;
    }
.end annotation


# static fields
.field public static a:Lrich/w1$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lrich/w1$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lrich/w1$b;-><init>(Lrich/w1$a;)V

    sput-object v0, Lrich/w1;->a:Lrich/w1$b;

    return-void
.end method

.method public static a()V
    .locals 3

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lrich/w1;->a:Lrich/w1$b;

    const-string v2, "authPageIn"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lrich/w1;->a:Lrich/w1$b;

    const-string v2, "authPageOut"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lrich/w1;->a:Lrich/w1$b;

    const-string v2, "authClickFailed"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lrich/w1;->a:Lrich/w1$b;

    const-string v2, "authClickSuccess"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lrich/w1;->a:Lrich/w1$b;

    const-string v2, "timeOnAuthPage"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lrich/w1;->a:Lrich/w1$b;

    const-string v2, "PrivacyNotSelectedToast"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lrich/w1;->a:Lrich/w1$b;

    const-string v2, "PrivacyNotSelectedPopup"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lrich/w1;->a:Lrich/w1$b;

    const-string v2, "PrivacyNotSelectedCustom"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lrich/w1;->a:Lrich/w1$b;

    const-string v2, "PrivacyNotSelectedShake"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static a(Landroid/content/Context;Lrich/l0;)V
    .locals 24

    move-object/from16 v1, p1

    const-string v2, "appid"

    const-string v0, "authPrivacyState"

    const-string v3, "PrivacyNotSelectedCustom"

    const-string v4, "PrivacyNotSelectedShake"

    const-string v5, "PrivacyNotSelectedPopup"

    const-string v6, "PrivacyNotSelectedToast"

    const-string v7, "timeOnAuthPage"

    const-string v8, "authClickFailed"

    const-string v9, "authClickSuccess"

    const-string v10, "authPageOut"

    const-string v11, "authPageIn"

    const-string v12, ""

    invoke-virtual/range {p1 .. p1}, Lrich/l0;->b()Lrich/h0;

    move-result-object v13

    .line 1
    :try_start_0
    iget-boolean v13, v13, Lrich/h0;->j:Z

    if-eqz v13, :cond_0

    return-void

    :cond_0
    const/4 v13, 0x0

    .line 2
    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    sget-object v15, Lrich/w1;->a:Lrich/w1$b;

    .line 3
    invoke-virtual {v15, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1

    invoke-virtual {v15, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    if-eqz v16, :cond_1

    invoke-virtual {v15, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    goto :goto_0

    :cond_1
    move-object v15, v14

    .line 4
    :goto_0
    check-cast v15, Ljava/lang/String;

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    const/16 v16, 0x0

    if-nez v15, :cond_2

    sget-object v15, Lrich/w1;->a:Lrich/w1$b;

    invoke-virtual {v15, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    goto :goto_1

    :cond_2
    move-object/from16 v15, v16

    :goto_1
    sget-object v13, Lrich/w1;->a:Lrich/w1$b;

    .line 5
    invoke-virtual {v13, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_3

    invoke-virtual {v13, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    if-eqz v17, :cond_3

    invoke-virtual {v13, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    goto :goto_2

    :cond_3
    move-object v13, v14

    .line 6
    :goto_2
    check-cast v13, Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_4

    sget-object v13, Lrich/w1;->a:Lrich/w1$b;

    invoke-virtual {v13, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    goto :goto_3

    :cond_4
    move-object/from16 v13, v16

    :goto_3
    sget-object v1, Lrich/w1;->a:Lrich/w1$b;

    .line 7
    invoke-virtual {v1, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_5

    invoke-virtual {v1, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    if-eqz v17, :cond_5

    invoke-virtual {v1, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_4

    :cond_5
    move-object v1, v14

    .line 8
    :goto_4
    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    sget-object v1, Lrich/w1;->a:Lrich/w1$b;

    invoke-virtual {v1, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object/from16 v17, v2

    goto :goto_5

    :cond_6
    move-object/from16 v17, v2

    move-object/from16 v1, v16

    :goto_5
    sget-object v2, Lrich/w1;->a:Lrich/w1$b;

    .line 9
    invoke-virtual {v2, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_7

    invoke-virtual {v2, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    if-eqz v18, :cond_7

    invoke-virtual {v2, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_6

    :cond_7
    move-object v2, v14

    .line 10
    :goto_6
    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    sget-object v2, Lrich/w1;->a:Lrich/w1$b;

    invoke-virtual {v2, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v18, v12

    goto :goto_7

    :cond_8
    move-object/from16 v18, v12

    move-object/from16 v2, v16

    :goto_7
    sget-object v12, Lrich/w1;->a:Lrich/w1$b;

    .line 11
    invoke-virtual {v12, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_9

    invoke-virtual {v12, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    if-eqz v19, :cond_9

    invoke-virtual {v12, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    goto :goto_8

    :cond_9
    move-object v12, v14

    .line 12
    :goto_8
    check-cast v12, Ljava/lang/String;

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_a

    sget-object v12, Lrich/w1;->a:Lrich/w1$b;

    invoke-virtual {v12, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    move-object/from16 v19, v2

    goto :goto_9

    :cond_a
    move-object/from16 v19, v2

    move-object/from16 v12, v16

    :goto_9
    sget-object v2, Lrich/w1;->a:Lrich/w1$b;

    .line 13
    invoke-virtual {v2, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_b

    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    if-eqz v20, :cond_b

    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_a

    :cond_b
    move-object v2, v14

    .line 14
    :goto_a
    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    sget-object v2, Lrich/w1;->a:Lrich/w1$b;

    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v20, v2

    goto :goto_b

    :cond_c
    move-object/from16 v20, v16

    :goto_b
    sget-object v2, Lrich/w1;->a:Lrich/w1$b;

    .line 15
    invoke-virtual {v2, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_d

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    if-eqz v21, :cond_d

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_c

    :cond_d
    move-object v2, v14

    .line 16
    :goto_c
    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    sget-object v2, Lrich/w1;->a:Lrich/w1$b;

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v21, v2

    goto :goto_d

    :cond_e
    move-object/from16 v21, v16

    :goto_d
    sget-object v2, Lrich/w1;->a:Lrich/w1$b;

    .line 17
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_f

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    if-eqz v22, :cond_f

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_e

    :cond_f
    move-object v2, v14

    .line 18
    :goto_e
    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    sget-object v2, Lrich/w1;->a:Lrich/w1$b;

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v22, v2

    goto :goto_f

    :cond_10
    move-object/from16 v22, v16

    :goto_f
    sget-object v2, Lrich/w1;->a:Lrich/w1$b;

    .line 19
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_11

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    if-eqz v23, :cond_11

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_10

    :cond_11
    move-object v2, v14

    .line 20
    :goto_10
    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    sget-object v2, Lrich/w1;->a:Lrich/w1$b;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Ljava/lang/String;

    :cond_12
    move-object/from16 v2, v16

    move-object/from16 v16, v14

    sget-object v14, Lrich/w1;->a:Lrich/w1$b;

    .line 21
    invoke-virtual {v14, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_13

    invoke-virtual {v14, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    if-eqz v23, :cond_13

    invoke-virtual {v14, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    goto :goto_11

    :cond_13
    move-object/from16 v14, v16

    .line 22
    :goto_11
    check-cast v14, Ljava/lang/String;

    move-object/from16 v16, v2

    .line 23
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {v2, v10, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v2, v11, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v2, v9, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v2, v7, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-object/from16 v1, v19

    invoke-virtual {v2, v8, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v2, v0, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-object/from16 v0, v20

    invoke-virtual {v2, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-object/from16 v0, v21

    invoke-virtual {v2, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-object/from16 v0, v22

    invoke-virtual {v2, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-object/from16 v0, v16

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_12

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 24
    :goto_12
    new-instance v0, Lrich/y1;

    invoke-direct {v0}, Lrich/y1;-><init>()V

    move-object/from16 v1, p1

    move-object/from16 v4, v17

    move-object/from16 v3, v18

    invoke-virtual {v1, v4, v3}, Lrich/l0;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 25
    iput-object v5, v0, Lrich/x1;->a:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    const-string v5, "traceId"

    .line 26
    :try_start_3
    invoke-virtual {v1, v5, v3}, Lrich/l0;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 27
    iput-object v5, v0, Lrich/x1;->b:Ljava/lang/String;

    .line 28
    invoke-virtual {v1, v4, v3}, Lrich/l0;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 29
    iput-object v4, v0, Lrich/x1;->a:Ljava/lang/String;

    .line 30
    invoke-static/range {p0 .. p0}, Lrich/b0;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 31
    iput-object v4, v0, Lrich/x1;->c:Ljava/lang/String;

    .line 32
    invoke-static/range {p0 .. p0}, Lrich/b0;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 33
    iput-object v4, v0, Lrich/x1;->d:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    const-string v4, "timeOut"

    .line 34
    :try_start_4
    invoke-virtual {v1, v4, v3}, Lrich/l0;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 35
    iput-object v4, v0, Lrich/x1;->e:Ljava/lang/String;

    .line 36
    sget-object v4, Lrich/w1;->a:Lrich/w1$b;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    const-string v5, "authPageInTime"

    .line 37
    :try_start_5
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_14

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_14

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_13

    :cond_14
    move-object v4, v3

    .line 38
    :goto_13
    check-cast v4, Ljava/lang/String;

    .line 39
    iput-object v4, v0, Lrich/x1;->f:Ljava/lang/String;

    .line 40
    sget-object v4, Lrich/w1;->a:Lrich/w1$b;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    const-string v5, "authPageOutTime"

    .line 41
    :try_start_6
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_15

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_15

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_14

    :cond_15
    move-object v4, v3

    .line 42
    :goto_14
    check-cast v4, Ljava/lang/String;

    .line 43
    iput-object v4, v0, Lrich/x1;->g:Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    const-string v4, "eventTracking5"

    .line 44
    :try_start_7
    iput-object v4, v0, Lrich/x1;->i:Ljava/lang/String;

    const-string v4, "operatortype"

    .line 45
    invoke-virtual {v1, v4, v3}, Lrich/l0;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 46
    iput-object v4, v0, Lrich/x1;->o:Ljava/lang/String;

    .line 47
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "networktype"

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Lrich/l0;->b(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 48
    iput-object v4, v0, Lrich/x1;->p:Ljava/lang/String;

    .line 49
    sget-object v4, Lrich/j2;->a:Ljava/lang/String;

    .line 50
    iput-object v4, v0, Lrich/x1;->q:Ljava/lang/String;

    .line 51
    sget-object v4, Lrich/j2;->b:Ljava/lang/String;

    .line 52
    iput-object v4, v0, Lrich/x1;->r:Ljava/lang/String;

    .line 53
    sget-object v4, Lrich/j2;->c:Ljava/lang/String;

    .line 54
    iput-object v4, v0, Lrich/x1;->s:Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    const-string v4, "simCardNum"

    .line 55
    :try_start_8
    invoke-virtual {v1, v4, v3}, Lrich/l0;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 56
    iput-object v4, v0, Lrich/x1;->t:Ljava/lang/String;

    .line 57
    iput-object v2, v0, Lrich/y1;->B:Lorg/json/JSONObject;

    const-string v2, "imsiState"

    const-string v4, "0"

    .line 58
    invoke-virtual {v1, v2, v4}, Lrich/l0;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 59
    iput-object v2, v0, Lrich/x1;->u:Ljava/lang/String;

    .line 60
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-string v6, "methodTimes"

    const-wide/16 v7, 0x0

    invoke-virtual {v1, v6, v7, v8}, Lrich/l0;->b(Ljava/lang/String;J)J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 61
    iput-object v2, v0, Lrich/x1;->h:Ljava/lang/String;

    .line 62
    new-instance v2, Lrich/w1$a;

    invoke-direct {v2, v0, v1}, Lrich/w1$a;-><init>(Lrich/y1;Lrich/l0;)V

    invoke-static {v2}, Lrich/k2;->a(Lrich/k2$a;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_15

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_15
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 3

    :try_start_0
    sget-object v0, Lrich/w1;->a:Lrich/w1$b;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    sget-object v0, Lrich/w1;->a:Lrich/w1$b;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lrich/w1;->a:Lrich/w1$b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "Time"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lrich/b0;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
