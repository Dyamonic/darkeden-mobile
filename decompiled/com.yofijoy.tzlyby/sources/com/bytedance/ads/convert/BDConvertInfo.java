package com.bytedance.ads.convert;

import com.bytedance.ads.convert.IClickIdReceiver;

/* loaded from: classes.dex */
public class BDConvertInfo {
    public String clickId;
    public String clickIdNature;
    public IClickIdReceiver.ClickIdFrom from;
    public String humeChannelId;

    public BDConvertInfo(String str, String str2, String str3, IClickIdReceiver.ClickIdFrom clickIdFrom) {
        this.clickId = str;
        this.clickIdNature = str2;
        this.humeChannelId = str3;
        this.from = clickIdFrom;
    }

    public static IClickIdReceiver.ClickIdFrom sourceToEnum(String str) {
        if (str == null) {
            return null;
        }
        try {
            return IClickIdReceiver.ClickIdFrom.valueOf(str);
        } catch (IllegalArgumentException e) {
            e.printStackTrace();
            return null;
        }
    }

    public String getSource() {
        IClickIdReceiver.ClickIdFrom clickIdFrom = this.from;
        if (clickIdFrom == null) {
            return null;
        }
        return clickIdFrom.name();
    }
}
