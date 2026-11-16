package com.bytedance.bdtracker;

import com.bytedance.applog.IEventObserver;
import com.bytedance.applog.IPresetEventObserver;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class l0 implements IPresetEventObserver, IEventObserver {
    public final IEventObserver a;
    public final IPresetEventObserver b;

    public /* synthetic */ l0(IEventObserver iEventObserver, IPresetEventObserver iPresetEventObserver, a aVar) {
        this.a = iEventObserver;
        this.b = iPresetEventObserver;
    }

    @Override // com.bytedance.applog.IEventObserver
    public void onEvent(String str, String str2, String str3, long j, long j2, String str4) {
        IEventObserver iEventObserver = this.a;
        if (iEventObserver == null) {
            return;
        }
        iEventObserver.onEvent(str, str2, str3, j, j2, str4);
    }

    @Override // com.bytedance.applog.IEventObserver
    public void onEventV3(String str, JSONObject jSONObject) {
        IEventObserver iEventObserver = this.a;
        if (iEventObserver == null) {
            return;
        }
        iEventObserver.onEventV3(str, jSONObject);
    }

    @Override // com.bytedance.applog.IPresetEventObserver
    public void onLaunch(JSONObject jSONObject) {
        IPresetEventObserver iPresetEventObserver = this.b;
        if (iPresetEventObserver == null) {
            return;
        }
        iPresetEventObserver.onLaunch(jSONObject);
    }

    @Override // com.bytedance.applog.IPresetEventObserver
    public void onPageEnter(JSONObject jSONObject) {
        IPresetEventObserver iPresetEventObserver = this.b;
        if (iPresetEventObserver == null) {
            return;
        }
        iPresetEventObserver.onPageEnter(jSONObject);
    }

    @Override // com.bytedance.applog.IPresetEventObserver
    public void onPageLeave(JSONObject jSONObject) {
        IPresetEventObserver iPresetEventObserver = this.b;
        if (iPresetEventObserver == null) {
            return;
        }
        iPresetEventObserver.onPageLeave(jSONObject);
    }
}
