package com.bytedance.bdtracker;

import com.bytedance.applog.log.IAppLogLogger;
import com.bytedance.applog.log.LoggerImpl;
import kotlin.jvm.internal.Intrinsics;

/* loaded from: classes.dex */
public final class m0 extends Throwable {
    @Override // java.lang.Throwable
    public void printStackTrace() {
        String stackTraceElement;
        IAppLogLogger global = LoggerImpl.global();
        StringBuilder a = a.a("AppLog assert failed: ");
        Throwable cause = getCause();
        if (cause == null || (stackTraceElement = cause.getMessage()) == null) {
            StackTraceElement[] stackTrace = getStackTrace();
            Intrinsics.checkExpressionValueIsNotNull(stackTrace, "stackTrace");
            stackTraceElement = (stackTrace.length == 0) ^ true ? getStackTrace()[0].toString() : "function interrupt";
        }
        a.append((Object) stackTraceElement);
        global.ast(a.toString(), getCause(), new Object[0]);
    }
}
