package com.tencent.turingfd.sdk.ams.ad;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* renamed from: com.tencent.turingfd.sdk.ams.ad.abstract, reason: invalid class name */
/* loaded from: classes2.dex */
public class Cabstract {
    public Map<Integer, Long> a = new HashMap();
    public Map<Integer, Long> b = new HashMap();

    public void a(int i, long j) {
        this.a.put(Integer.valueOf(i), Long.valueOf(j));
    }

    public String a() {
        StringBuilder sb = new StringBuilder();
        Iterator<Integer> it = this.a.keySet().iterator();
        while (it.hasNext()) {
            int intValue = it.next().intValue();
            if (sb.length() > 0) {
                sb.append(",");
            }
            sb.append(intValue);
            sb.append("_");
            sb.append(this.a.get(Integer.valueOf(intValue)));
        }
        Iterator<Integer> it2 = this.b.keySet().iterator();
        while (it2.hasNext()) {
            int intValue2 = it2.next().intValue();
            if (sb.length() > 0) {
                sb.append(",");
            }
            sb.append('s');
            sb.append(intValue2);
            sb.append("_");
            sb.append(this.b.get(Integer.valueOf(intValue2)));
        }
        return sb.toString();
    }
}
