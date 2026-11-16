package com.tencent.turingfd.sdk.ams.ad;

/* loaded from: classes2.dex */
public interface ITuringDID {
    String getAIDCode();

    String getAIDTicket();

    int getErrorCode();

    long getExpiredTimestamp();

    String getOpenIdTicket();

    String getTAIDTicket();
}
