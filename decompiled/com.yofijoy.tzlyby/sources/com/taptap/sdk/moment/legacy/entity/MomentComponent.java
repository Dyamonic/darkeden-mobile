package com.taptap.sdk.moment.legacy.entity;

/* loaded from: classes.dex */
public enum MomentComponent {
    COMMON(0),
    MOMENT(1),
    VIDEO(2),
    USER(3),
    SCENE(4);

    public final int type;

    MomentComponent(int i) {
        this.type = i;
    }

    public static String toComponent(int i) {
        return i == MOMENT.type ? "moment-editor" : i == VIDEO.type ? "video-editor" : i == USER.type ? "user" : i == SCENE.type ? "entry" : "";
    }

    public static boolean isPublish(int i) {
        return i == VIDEO.type || i == MOMENT.type;
    }
}
