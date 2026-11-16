package com.tencent.turingfd.sdk.ams.ad;

/* loaded from: classes2.dex */
public class Lichee implements ITuringDID {
    public final /* synthetic */ Canesatici a;

    public Lichee(Canesatici canesatici) {
        this.a = canesatici;
    }

    @Override // com.tencent.turingfd.sdk.ams.ad.ITuringDID
    public String getAIDCode() {
        return ((Ginkgo) this.a).g;
    }

    @Override // com.tencent.turingfd.sdk.ams.ad.ITuringDID
    public String getAIDTicket() {
        return ((Ginkgo) this.a).f;
    }

    @Override // com.tencent.turingfd.sdk.ams.ad.ITuringDID
    public int getErrorCode() {
        return ((Ginkgo) this.a).c;
    }

    @Override // com.tencent.turingfd.sdk.ams.ad.ITuringDID
    public long getExpiredTimestamp() {
        return ((Ginkgo) this.a).b;
    }

    @Override // com.tencent.turingfd.sdk.ams.ad.ITuringDID
    public String getOpenIdTicket() {
        return ((Ginkgo) this.a).a;
    }

    @Override // com.tencent.turingfd.sdk.ams.ad.ITuringDID
    public String getTAIDTicket() {
        return ((Ginkgo) this.a).e;
    }
}
