package com.tencent.turingfd.sdk.ams.ad;

/* loaded from: classes2.dex */
public interface RiskDetectResp {
    String getDeviceToken();

    long getErrorCode();

    long getStagePackTimeMillis();

    long getStageReqTimeMillis();

    boolean isDowngrade();
}
