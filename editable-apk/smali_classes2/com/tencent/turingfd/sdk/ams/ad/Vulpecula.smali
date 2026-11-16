.class public Lcom/tencent/turingfd/sdk/ams/ad/Vulpecula;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a()Z
    .locals 3

    .line 1
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3
    invoke-static {v0}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/NetworkInterface;

    .line 6
    invoke-virtual {v1}, Ljava/net/NetworkInterface;->isUp()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/net/NetworkInterface;->getInterfaceAddresses()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 10
    :cond_1
    invoke-virtual {v1}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "tun\\d+"

    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    return v0

    :catchall_0
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 8

    .line 11
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v4, 0xe

    if-ge v0, v4, :cond_1

    .line 12
    invoke-static {p0}, Landroid/net/Proxy;->getHost(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Landroid/net/Proxy;->getPort(Landroid/content/Context;)I

    move-result p0

    if-eq p0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    return v2

    :cond_1
    const-string v4, "http.proxyHost"

    .line 14
    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "http.proxyPort"

    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "-1"

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    return v2

    .line 19
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "wifi"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiManager;

    const-string v5, "android.permission.ACCESS_WIFI_STATE"

    .line 20
    invoke-static {p0, v5}, Lcom/tencent/turingfd/sdk/ams/ad/Triangulum;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_3

    return v3

    .line 26
    :cond_3
    :try_start_0
    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz p0, :cond_a

    .line 31
    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v5

    if-ne v5, v1, :cond_4

    goto/16 :goto_5

    :cond_4
    const/4 v1, 0x0

    .line 39
    :try_start_1
    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-object v4, v1

    :goto_1
    if-nez v4, :cond_5

    return v3

    .line 47
    :cond_5
    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result p0

    .line 48
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/WifiConfiguration;

    .line 49
    iget v6, v5, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-eq v6, p0, :cond_6

    goto :goto_2

    :cond_6
    const/16 p0, 0x15

    if-ge v0, p0, :cond_7

    .line 56
    const-class p0, Landroid/net/wifi/WifiConfiguration;

    const-string v1, "proxySettings"

    invoke-static {p0, v1, v5}, Lcom/tencent/turingfd/sdk/ams/ad/Apple;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-string v1, "android.net.wifi.WifiConfiguration$ProxySettings"

    goto :goto_4

    .line 59
    :cond_7
    const-class p0, Landroid/net/wifi/WifiConfiguration;

    const-string v4, "getProxySettings"

    sget-object v6, Lcom/tencent/turingfd/sdk/ams/ad/Apple;->a:Ljava/util/HashMap;

    :try_start_2
    new-array v6, v3, [Ljava/lang/Class;

    .line 60
    invoke-static {p0, v4, v6}, Lcom/tencent/turingfd/sdk/ams/ad/Apple;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    if-nez p0, :cond_8

    goto :goto_3

    :cond_8
    new-array v4, v3, [Ljava/lang/Object;

    .line 66
    invoke-virtual {p0, v5, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception p0

    .line 68
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_3
    const-string p0, "android.net.IpConfiguration$ProxySettings"

    move-object v7, v1

    move-object v1, p0

    move-object p0, v7

    :goto_4
    const-string v4, "STATIC"

    .line 73
    invoke-static {v1, v4}, Lcom/tencent/turingfd/sdk/ams/ad/Apple;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_9

    if-ne v4, p0, :cond_9

    return v2

    :cond_9
    const/16 v4, 0x13

    if-lt v0, v4, :cond_a

    const-string v0, "PAC"

    .line 80
    invoke-static {v1, v0}, Lcom/tencent/turingfd/sdk/ams/ad/Apple;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_a

    if-ne v0, p0, :cond_a

    return v2

    :catchall_2
    :cond_a
    :goto_5
    return v3
.end method
