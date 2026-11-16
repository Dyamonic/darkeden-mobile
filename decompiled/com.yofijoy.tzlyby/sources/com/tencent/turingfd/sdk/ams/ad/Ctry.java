package com.tencent.turingfd.sdk.ams.ad;

import android.accessibilityservice.AccessibilityServiceInfo;
import android.content.pm.ApplicationInfo;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.os.Build;
import android.text.TextUtils;

/* renamed from: com.tencent.turingfd.sdk.ams.ad.try, reason: invalid class name */
/* loaded from: classes2.dex */
public class Ctry {
    public static boolean a(AccessibilityServiceInfo accessibilityServiceInfo) {
        ServiceInfo serviceInfo;
        ApplicationInfo applicationInfo;
        ResolveInfo resolveInfo = accessibilityServiceInfo.getResolveInfo();
        if (resolveInfo != null && (serviceInfo = resolveInfo.serviceInfo) != null && (applicationInfo = serviceInfo.applicationInfo) != null) {
            if (applicationInfo.uid < 10000) {
                return true;
            }
            if (!TextUtils.isEmpty(applicationInfo.sourceDir) && !applicationInfo.sourceDir.startsWith("/data/")) {
                return true;
            }
            Object a = Almond.a(ApplicationInfo.class, "seInfo", applicationInfo);
            if (a instanceof String) {
                String str = (String) a;
                if (str.contains("partition=product") || str.contains("partition=system_ext")) {
                    return true;
                }
            }
        }
        return false;
    }

    public static void a(StringBuilder sb, AccessibilityServiceInfo accessibilityServiceInfo) {
        sb.append(Integer.toHexString(accessibilityServiceInfo.eventTypes));
        sb.append(":");
        sb.append(Integer.toHexString(accessibilityServiceInfo.feedbackType));
        sb.append(":");
        sb.append(Integer.toHexString(accessibilityServiceInfo.flags));
        sb.append(":");
        if (Build.VERSION.SDK_INT >= 18) {
            sb.append(Integer.toHexString(accessibilityServiceInfo.getCapabilities()));
        }
        sb.append(":");
        sb.append(accessibilityServiceInfo.getId());
    }
}
