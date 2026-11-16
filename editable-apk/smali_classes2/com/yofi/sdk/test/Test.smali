.class public Lcom/yofi/sdk/test/Test;
.super Ljava/lang/Object;
.source "Test.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vars"
        }
    .end annotation

    .line 8
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {}, Lcom/yofi/sdk/utils/CommonUtils;->instance()Lcom/yofi/sdk/utils/CommonUtils;

    move-result-object v0

    const-string v1, "c012782e9c322ccdbe6f67hc0d0c3595accountId10020amount1.01channelId3clientIp129.211.22.246deviceIdasfsasag45s6ag45orderNo20192465464productDesc\u6d4b\u8bd5\u5546\u54c1\u63cf\u8ff0productId1000productName\u6d4b\u8bd5\u5546\u54c1roleId1roleNameasgasgsserverId123123serverNamesafsafsatimestamp1574839815197c012782e9c322ccdbe6f67hc0d0c3595"

    invoke-virtual {v0, v1}, Lcom/yofi/sdk/utils/CommonUtils;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    return-void
.end method
