package com.bytedance.applog.event;

import com.bytedance.bdtracker.a;
import com.bytedance.bdtracker.x3;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;

/* loaded from: classes.dex */
public class EventBasicData {
    public final String abSdkVersion;
    public final long eventCreateTime;
    public final long eventIndex;
    public final String sessionId;
    public final String ssid;
    public final String uuid;
    public final String uuidType;

    public EventBasicData(x3 x3Var) {
        this.eventIndex = x3Var.d;
        this.eventCreateTime = x3Var.c;
        this.sessionId = x3Var.e;
        this.uuid = x3Var.g;
        this.uuidType = x3Var.h;
        this.ssid = x3Var.i;
        this.abSdkVersion = x3Var.j;
    }

    public String getAbSdkVersion() {
        return this.abSdkVersion;
    }

    public long getEventCreateTime() {
        return this.eventCreateTime;
    }

    public long getEventIndex() {
        return this.eventIndex;
    }

    public String getSessionId() {
        return this.sessionId;
    }

    public String getSsid() {
        return this.ssid;
    }

    public String getUuid() {
        return this.uuid;
    }

    public String getUuidType() {
        return this.uuidType;
    }

    public String toString() {
        StringBuilder a = a.a("EventBasisData{eventIndex=");
        a.append(this.eventIndex);
        a.append(", eventCreateTime=");
        a.append(this.eventCreateTime);
        a.append(", sessionId='");
        a.append(this.sessionId);
        a.append('\'');
        a.append(", uuid='");
        a.append(this.uuid);
        a.append('\'');
        a.append(", uuidType='");
        a.append(this.uuidType);
        a.append('\'');
        a.append(", ssid='");
        a.append(this.ssid);
        a.append('\'');
        a.append(", abSdkVersion='");
        a.append(this.abSdkVersion);
        a.append('\'');
        a.append(AbstractJsonLexerKt.END_OBJ);
        return a.toString();
    }
}
