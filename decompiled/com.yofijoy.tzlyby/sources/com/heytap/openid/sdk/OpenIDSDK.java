package com.heytap.openid.sdk;

import android.content.Context;
import com.heytap.openid.bean.OpenIDInfo;
import java.util.HashMap;

/* loaded from: classes.dex */
public class OpenIDSDK {
    @Deprecated
    public static void clear(Context context) {
        m_h.m_a(context.getPackageName() + " 2007");
    }

    @Deprecated
    public static String getAAID(Context context) {
        m_h.m_a("2005");
        return m_g.m_a(context, 2, "AUID");
    }

    public static native OpenIDInfo getIds(Context context, int i);

    @Deprecated
    public static String getOAID(Context context) {
        m_h.m_a("2003");
        return m_g.m_a(context, 8, "OUID");
    }

    @Deprecated
    public static boolean getOAIDStatus(Context context) {
        m_h.m_a("2002");
        HashMap<String, String> m_a = m_d.m_a(context, 32);
        return "TRUE".equalsIgnoreCase(m_a.get("OUID_STATUS") == null ? "FALSE" : m_a.get("OUID_STATUS"));
    }

    @Deprecated
    public static String getUDID(Context context) {
        m_h.m_a("2001");
        return m_g.m_a(context, 16, "GUID");
    }

    @Deprecated
    public static String getVAID(Context context) {
        m_h.m_a("2004");
        return m_g.m_a(context, 4, "DUID");
    }

    public static native void init(Context context);

    public static native boolean isSupported();

    public static native void setLoggable(boolean z);
}
