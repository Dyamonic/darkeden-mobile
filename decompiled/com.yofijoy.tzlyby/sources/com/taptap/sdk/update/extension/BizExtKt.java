package com.taptap.sdk.update.extension;

import android.content.Context;
import android.content.pm.PackageInfo;
import com.taptap.sdk.update.internal.TapUpdateInternal;
import java.io.File;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* compiled from: BizExt.kt */
@Metadata(d1 = {"\u0000$\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\u001a\u001a\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\bH\u0000\u001a\f\u0010\t\u001a\u00020\u0004*\u00020\u0006H\u0000\u001a\f\u0010\n\u001a\u00020\u000b*\u00020\u0006H\u0000\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0080T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0002\u001a\u00020\u0001X\u0080T¢\u0006\u0002\n\u0000¨\u0006\f"}, d2 = {"PACKAGE_NAME_CN", "", "PACKAGE_NAME_GLOBAL", "checkApkFile", "", "context", "Landroid/content/Context;", "file", "Ljava/io/File;", "getTapVersionCode", "isTapInstalled", "", "tap-update_release"}, k = 2, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes2.dex */
public final class BizExtKt {
    public static final String PACKAGE_NAME_CN = "com.taptap";
    public static final String PACKAGE_NAME_GLOBAL = "com.taptap.global";

    public static final boolean isTapInstalled(Context context) {
        Intrinsics.checkNotNullParameter(context, "<this>");
        try {
            return context.getPackageManager().getPackageInfo(TapUpdateInternal.INSTANCE.getRegionType() == 1 ? PACKAGE_NAME_GLOBAL : "com.taptap", 0) != null;
        } catch (Throwable unused) {
            return false;
        }
    }

    public static final int getTapVersionCode(Context context) {
        Intrinsics.checkNotNullParameter(context, "<this>");
        if (!isTapInstalled(context)) {
            return -1;
        }
        try {
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo(TapUpdateInternal.INSTANCE.getRegionType() == 1 ? PACKAGE_NAME_GLOBAL : "com.taptap", 0);
            if (packageInfo != null) {
                return packageInfo.versionCode;
            }
            return -1;
        } catch (Throwable unused) {
            return -1;
        }
    }

    public static final int checkApkFile(Context context, File file) {
        Intrinsics.checkNotNullParameter(context, "context");
        if (!(file != null && file.exists())) {
            return -1;
        }
        try {
            String fileName = file.getName();
            Intrinsics.checkNotNullExpressionValue(fileName, "fileName");
            String substring = fileName.substring(StringsKt.lastIndexOf$default((CharSequence) fileName, ".", 0, false, 6, (Object) null) + 1);
            Intrinsics.checkNotNullExpressionValue(substring, "this as java.lang.String).substring(startIndex)");
            if (Intrinsics.areEqual(substring, "apk")) {
                return context.getPackageManager().getPackageArchiveInfo(file.getPath(), 1) == null ? -2 : 0;
            }
            return -1;
        } catch (Exception e) {
            e.printStackTrace();
            return 0;
        }
    }
}
