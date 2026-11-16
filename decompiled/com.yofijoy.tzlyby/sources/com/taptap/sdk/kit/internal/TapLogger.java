package com.taptap.sdk.kit.internal;

import android.util.Log;
import com.taptap.sdk.kit.internal.exception.TapInvalidDataException;
import com.taptap.sdk.kit.internal.exception.TapSdkException;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;

/* compiled from: TapLogger.kt */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0007\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001c\u0010\u000b\u001a\u00020\u00042\b\u0010\f\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u000eJ\u001a\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00042\b\u0010\f\u001a\u0004\u0018\u00010\u0004H\u0007J$\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00042\b\u0010\f\u001a\u0004\u0018\u00010\u00042\b\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0007J\u001a\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00042\b\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0007J*\u0010\u0012\u001a\u00020\u00102\b\b\u0002\u0010\u0011\u001a\u00020\u00042\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0007J\u001c\u0010\u0013\u001a\u00020\u00102\b\b\u0002\u0010\u0011\u001a\u00020\u00042\b\u0010\f\u001a\u0004\u0018\u00010\u0004H\u0007J\u001a\u0010\u0014\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00042\b\u0010\f\u001a\u0004\u0018\u00010\u0004H\u0007J$\u0010\u0015\u001a\u00020\u00102\b\b\u0002\u0010\u0011\u001a\u00020\u00042\u0006\u0010\f\u001a\u00020\u00042\b\b\u0002\u0010\u0016\u001a\u00020\u0006H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\n¨\u0006\u0017"}, d2 = {"Lcom/taptap/sdk/kit/internal/TapLogger;", "", "()V", "TAG", "", "enableLog", "", "getEnableLog", "()Z", "setEnableLog", "(Z)V", "buildWrapString", "msg", "e", "", "logd", "", "tag", "loge", "logi", "logv", "logw", "needWrap", "tap-kit_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes.dex */
public final class TapLogger {
    public static final TapLogger INSTANCE = new TapLogger();
    public static final String TAG = "TapTapSdk";
    private static boolean enableLog;

    @JvmStatic
    public static final void loge() {
        loge$default(null, null, null, 7, null);
    }

    @JvmStatic
    public static final void loge(String tag) {
        Intrinsics.checkNotNullParameter(tag, "tag");
        loge$default(tag, null, null, 6, null);
    }

    @JvmStatic
    public static final void loge(String tag, String str) {
        Intrinsics.checkNotNullParameter(tag, "tag");
        loge$default(tag, str, null, 4, null);
    }

    @JvmStatic
    public static final void logi(String str) {
        logi$default(null, str, 1, null);
    }

    private TapLogger() {
    }

    public final boolean getEnableLog() {
        return enableLog;
    }

    public final void setEnableLog(boolean z) {
        enableLog = z;
    }

    public static /* synthetic */ void loge$default(String str, String str2, Throwable th, int i, Object obj) {
        if ((i & 1) != 0) {
            str = TAG;
        }
        if ((i & 2) != 0) {
            str2 = null;
        }
        if ((i & 4) != 0) {
            th = null;
        }
        loge(str, str2, th);
    }

    @JvmStatic
    public static final void loge(String tag, String msg, Throwable e) {
        Intrinsics.checkNotNullParameter(tag, "tag");
        if (e instanceof TapInvalidDataException ? true : e instanceof TapSdkException) {
            Log.e(tag, INSTANCE.buildWrapString(msg, e), e);
        } else {
            Log.e(tag, INSTANCE.buildWrapString(msg, e), e);
        }
    }

    public static /* synthetic */ void logw$default(String str, String str2, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            str = TAG;
        }
        if ((i & 4) != 0) {
            z = true;
        }
        logw(str, str2, z);
    }

    @JvmStatic
    public static final void logw(String tag, String msg, boolean needWrap) {
        Intrinsics.checkNotNullParameter(tag, "tag");
        Intrinsics.checkNotNullParameter(msg, "msg");
        TapLogger tapLogger = INSTANCE;
        if (enableLog) {
            if (needWrap) {
                Log.w(tag, buildWrapString$default(tapLogger, msg, null, 2, null));
            } else {
                Log.w(tag, msg);
            }
        }
    }

    public static /* synthetic */ String buildWrapString$default(TapLogger tapLogger, String str, Throwable th, int i, Object obj) {
        if ((i & 2) != 0) {
            th = null;
        }
        return tapLogger.buildWrapString(str, th);
    }

    /* JADX WARN: Code restructure failed: missing block: B:45:0x00cf, code lost:
    
        r5.append("┃   ");
        r5.append(r13);
        r13 = r4 - r13.length();
        r1 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x00dc, code lost:
    
        if (r1 >= r13) goto L77;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x00de, code lost:
    
        r5.append(" ");
        r1 = r1 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x00e4, code lost:
    
        r5.append("   ┃\n");
     */
    /* JADX WARN: Removed duplicated region for block: B:14:0x001a A[Catch: Exception -> 0x0109, TryCatch #0 {Exception -> 0x0109, blocks: (B:3:0x0002, B:5:0x0009, B:14:0x001a, B:16:0x0022, B:18:0x002f, B:21:0x0037, B:22:0x0075, B:26:0x0084, B:28:0x008a, B:29:0x0095, B:32:0x00a1, B:34:0x00b6, B:36:0x00bc, B:38:0x00c0, B:40:0x00c5, B:45:0x00cf, B:47:0x00de, B:49:0x00e4, B:50:0x00e7, B:52:0x00ee, B:54:0x00f4, B:57:0x003e, B:59:0x004b, B:60:0x0055, B:62:0x005b, B:71:0x006b, B:72:0x0071, B:74:0x0103, B:75:0x0108, B:76:0x002b), top: B:2:0x0002 }] */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0035  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0084 A[Catch: Exception -> 0x0109, LOOP:0: B:24:0x0080->B:26:0x0084, LOOP_END, TRY_ENTER, TryCatch #0 {Exception -> 0x0109, blocks: (B:3:0x0002, B:5:0x0009, B:14:0x001a, B:16:0x0022, B:18:0x002f, B:21:0x0037, B:22:0x0075, B:26:0x0084, B:28:0x008a, B:29:0x0095, B:32:0x00a1, B:34:0x00b6, B:36:0x00bc, B:38:0x00c0, B:40:0x00c5, B:45:0x00cf, B:47:0x00de, B:49:0x00e4, B:50:0x00e7, B:52:0x00ee, B:54:0x00f4, B:57:0x003e, B:59:0x004b, B:60:0x0055, B:62:0x005b, B:71:0x006b, B:72:0x0071, B:74:0x0103, B:75:0x0108, B:76:0x002b), top: B:2:0x0002 }] */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00a1 A[Catch: Exception -> 0x0109, TRY_ENTER, TryCatch #0 {Exception -> 0x0109, blocks: (B:3:0x0002, B:5:0x0009, B:14:0x001a, B:16:0x0022, B:18:0x002f, B:21:0x0037, B:22:0x0075, B:26:0x0084, B:28:0x008a, B:29:0x0095, B:32:0x00a1, B:34:0x00b6, B:36:0x00bc, B:38:0x00c0, B:40:0x00c5, B:45:0x00cf, B:47:0x00de, B:49:0x00e4, B:50:0x00e7, B:52:0x00ee, B:54:0x00f4, B:57:0x003e, B:59:0x004b, B:60:0x0055, B:62:0x005b, B:71:0x006b, B:72:0x0071, B:74:0x0103, B:75:0x0108, B:76:0x002b), top: B:2:0x0002 }] */
    /* JADX WARN: Removed duplicated region for block: B:52:0x00ee A[Catch: Exception -> 0x0109, LOOP:4: B:51:0x00ec->B:52:0x00ee, LOOP_END, TryCatch #0 {Exception -> 0x0109, blocks: (B:3:0x0002, B:5:0x0009, B:14:0x001a, B:16:0x0022, B:18:0x002f, B:21:0x0037, B:22:0x0075, B:26:0x0084, B:28:0x008a, B:29:0x0095, B:32:0x00a1, B:34:0x00b6, B:36:0x00bc, B:38:0x00c0, B:40:0x00c5, B:45:0x00cf, B:47:0x00de, B:49:0x00e4, B:50:0x00e7, B:52:0x00ee, B:54:0x00f4, B:57:0x003e, B:59:0x004b, B:60:0x0055, B:62:0x005b, B:71:0x006b, B:72:0x0071, B:74:0x0103, B:75:0x0108, B:76:0x002b), top: B:2:0x0002 }] */
    /* JADX WARN: Removed duplicated region for block: B:57:0x003e A[Catch: Exception -> 0x0109, TryCatch #0 {Exception -> 0x0109, blocks: (B:3:0x0002, B:5:0x0009, B:14:0x001a, B:16:0x0022, B:18:0x002f, B:21:0x0037, B:22:0x0075, B:26:0x0084, B:28:0x008a, B:29:0x0095, B:32:0x00a1, B:34:0x00b6, B:36:0x00bc, B:38:0x00c0, B:40:0x00c5, B:45:0x00cf, B:47:0x00de, B:49:0x00e4, B:50:0x00e7, B:52:0x00ee, B:54:0x00f4, B:57:0x003e, B:59:0x004b, B:60:0x0055, B:62:0x005b, B:71:0x006b, B:72:0x0071, B:74:0x0103, B:75:0x0108, B:76:0x002b), top: B:2:0x0002 }] */
    /* JADX WARN: Removed duplicated region for block: B:77:0x001f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String buildWrapString(java.lang.String r12, java.lang.Throwable r13) {
        /*
            Method dump skipped, instructions count: 273
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.taptap.sdk.kit.internal.TapLogger.buildWrapString(java.lang.String, java.lang.Throwable):java.lang.String");
    }

    public static /* synthetic */ void logi$default(String str, String str2, int i, Object obj) {
        if ((i & 1) != 0) {
            str = TAG;
        }
        logi(str, str2);
    }

    @JvmStatic
    public static final void logi(String tag, String msg) {
        Intrinsics.checkNotNullParameter(tag, "tag");
        if (enableLog) {
            Log.i(tag, AbstractJsonLexerKt.BEGIN_LIST + Thread.currentThread().getName() + "] " + msg);
        }
    }

    @JvmStatic
    public static final void logd(String tag, String msg) {
        Intrinsics.checkNotNullParameter(tag, "tag");
        if (enableLog) {
            Log.d(tag, AbstractJsonLexerKt.BEGIN_LIST + Thread.currentThread().getName() + "] " + msg);
        }
    }

    @JvmStatic
    public static final void logd(String tag, Throwable e) {
        Intrinsics.checkNotNullParameter(tag, "tag");
        if (enableLog) {
            String name = Thread.currentThread().getName();
            StringBuilder sb = new StringBuilder();
            sb.append(AbstractJsonLexerKt.BEGIN_LIST);
            sb.append(name);
            sb.append("] ");
            sb.append(e != null ? e.getMessage() : null);
            Log.d(tag, sb.toString(), e);
        }
    }

    @JvmStatic
    public static final void logd(String tag, String msg, Throwable e) {
        Intrinsics.checkNotNullParameter(tag, "tag");
        if (enableLog) {
            Log.d(tag, AbstractJsonLexerKt.BEGIN_LIST + Thread.currentThread().getName() + "] " + msg, e);
        }
    }

    @JvmStatic
    public static final void logv(String tag, String msg) {
        Intrinsics.checkNotNullParameter(tag, "tag");
        if (enableLog) {
            Log.v(tag, AbstractJsonLexerKt.BEGIN_LIST + Thread.currentThread().getName() + "] " + msg);
        }
    }
}
