package com.tencent.turingfd.sdk.ams.ad;

import android.app.LocaleManager;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Build;

/* loaded from: classes2.dex */
public final class Lynx {
    public static Hydra a(Context context) {
        Hydra hydra = Hydra.b;
        int i = Build.VERSION.SDK_INT;
        if (i >= 33) {
            Object systemService = context.getSystemService("locale");
            return systemService != null ? new Hydra(new Leo(((LocaleManager) systemService).getSystemLocales())) : hydra;
        }
        Configuration configuration = Resources.getSystem().getConfiguration();
        if (i >= 24) {
            return Hydra.a(configuration.getLocales().toLanguageTags());
        }
        return i >= 21 ? Hydra.a(configuration.locale.toLanguageTag()) : Hydra.a(configuration.locale);
    }
}
