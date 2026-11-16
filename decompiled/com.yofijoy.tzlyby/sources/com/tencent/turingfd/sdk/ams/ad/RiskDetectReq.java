package com.tencent.turingfd.sdk.ams.ad;

import java.util.Map;

/* loaded from: classes2.dex */
public final class RiskDetectReq extends Blueberry {

    /* loaded from: classes2.dex */
    public static final class Builder {
        public Map<Integer, String> a = null;
        public boolean b = true;
        public int c = 0;
        public int d = 0;

        public RiskDetectReq build() {
            return new RiskDetectReq(this);
        }

        public Builder cache(boolean z) {
            this.b = z;
            return this;
        }

        public Builder inputParam(Map<Integer, String> map) {
            this.a = map;
            return this;
        }

        public Builder packTimeoutMillis(int i) {
            this.d = i;
            return this;
        }

        public Builder reqTimeoutMillis(int i) {
            this.c = i;
            return this;
        }
    }

    public RiskDetectReq(Builder builder) {
        super(builder.a, builder.b, builder.c, builder.d);
    }
}
