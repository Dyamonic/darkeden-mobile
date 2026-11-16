package com.taptap.sdk.db.internal;

import android.content.Context;
import com.taptap.sdk.db.event.utils.TapEventLogger;
import com.taptap.sdk.initializer.api.option.TapTapSdkOptions;
import com.taptap.sdk.startup.task.InitializeTask;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: DBInitializeTask.kt */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0007\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0016¨\u0006\t"}, d2 = {"Lcom/taptap/sdk/db/internal/DBInitializeTask;", "Lcom/taptap/sdk/startup/task/InitializeTask;", "()V", "execute", "", "context", "Landroid/content/Context;", "options", "Lcom/taptap/sdk/initializer/api/option/TapTapSdkOptions;", "tap-db_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes.dex */
public final class DBInitializeTask implements InitializeTask {
    @Override // com.taptap.sdk.startup.task.InitializeTask
    public void execute(Context context, TapTapSdkOptions options) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(options, "options");
        TapEventLogger.initialize$tap_db_release(context, options);
    }
}
