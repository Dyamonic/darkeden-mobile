package com.tencent.turingfd.sdk.ams.ad;

import android.os.LocaleList;
import java.util.Locale;

/* loaded from: classes2.dex */
public final class Leo implements LeoMinor {
    public final LocaleList a;

    public Leo(Object obj) {
        this.a = (LocaleList) obj;
    }

    @Override // com.tencent.turingfd.sdk.ams.ad.LeoMinor
    public Locale a(int i) {
        return this.a.get(i);
    }

    public int hashCode() {
        return this.a.hashCode();
    }

    @Override // com.tencent.turingfd.sdk.ams.ad.LeoMinor
    public int a() {
        return this.a.size();
    }
}
