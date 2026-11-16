package com.bytedance.applog;

/* loaded from: classes.dex */
public interface IOaidObserver {

    /* loaded from: classes.dex */
    public static final class Oaid {
        public final String id;

        public Oaid(String str) {
            this.id = str;
        }
    }

    void onOaidLoaded(Oaid oaid);
}
