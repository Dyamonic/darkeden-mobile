package com.bytedance.bdtracker;

import com.bytedance.bdtracker.b;

/* loaded from: classes.dex */
public final class u implements b.e {
    public final /* synthetic */ h4 a;

    public u(h4 h4Var) {
        this.a = h4Var;
    }

    @Override // com.bytedance.bdtracker.b.e
    public boolean a(d dVar) {
        if (!b.b.a(dVar) || dVar.isAutoTrackPageIgnored(this.a.E)) {
            return false;
        }
        if (this.a.D) {
            return dVar.getInitConfig() == null || dVar.getInitConfig().isAutoTrackFragmentEnabled();
        }
        return true;
    }
}
