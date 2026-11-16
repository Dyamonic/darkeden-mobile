package com.bytedance.bdtracker;

import com.taptap.sdk.moment.constant.Constant;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class z extends b0 {
    public long g;
    public JSONObject h;

    public z(d0 d0Var) {
        super(d0Var);
        this.g = 0L;
        this.h = null;
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x00d8 A[Catch: all -> 0x0107, TryCatch #1 {, blocks: (B:3:0x0001, B:5:0x000e, B:7:0x0014, B:9:0x001c, B:15:0x002a, B:19:0x005a, B:22:0x0096, B:24:0x00a9, B:28:0x00be, B:30:0x00d8, B:32:0x00fd, B:39:0x00c6, B:41:0x0102, B:42:0x0104, B:45:0x004f, B:21:0x0092, B:18:0x0035), top: B:2:0x0001, inners: #0, #2 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public synchronized org.json.JSONObject a(int r14) {
        /*
            Method dump skipped, instructions count: 266
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.bdtracker.z.a(int):org.json.JSONObject");
    }

    @Override // com.bytedance.bdtracker.b0
    public boolean c() {
        try {
            return a(Constant.CALLBACK_CODE_LOGIN_SUCCESS) != null;
        } catch (Throwable th) {
            this.f.D.error(2, "Do fetch config failed", th, new Object[0]);
            return false;
        }
    }

    @Override // com.bytedance.bdtracker.b0
    public String d() {
        return "AbConfigure";
    }

    @Override // com.bytedance.bdtracker.b0
    public long[] e() {
        return g0.h;
    }

    @Override // com.bytedance.bdtracker.b0
    public boolean f() {
        return true;
    }

    @Override // com.bytedance.bdtracker.b0
    public long g() {
        long j = this.e.e.f.getLong("abtest_fetch_interval", 0L);
        if (j < 600000) {
            return 600000L;
        }
        return j;
    }
}
