package com.heytap.openid.sdk;

import android.content.Context;
import com.heytap.openid.sdk.m_c;
import com.heytap.openid.sdk.m_i;
import java.util.List;

/* loaded from: classes.dex */
public class m_b extends com.heytap.openid.base.m_b {
    public static m_b m_c;

    public static native m_b m_a();

    @Override // com.heytap.openid.base.m_b
    public void m_a(Context context, List<String> list, boolean z) {
        (this.m_b.equals("OP_APP") ? m_c.m_b.m_a : m_i.m_b.m_a).m_a(context, list, z);
    }
}
