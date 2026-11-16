package com.bytedance.bdtracker;

import android.content.Context;
import com.bytedance.applog.InitConfig;
import com.bytedance.applog.store.kv.IKVStore;
import com.qq.gdt.action.ActionUtils;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;
import org.json.JSONObject;

@Metadata(bv = {1, 0, 3}, d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0004\u0018\u0000 \u001e2\u00020\u0001:\u0001\u001eB\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ-\u0010\u000f\u001a\u0004\u0018\u0001H\u0010\"\b\b\u0000\u0010\u0010*\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00072\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u0002H\u00100\u0014¢\u0006\u0002\u0010\u0015J\u0010\u0010\u0016\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u0012\u001a\u00020\u0007J\u001e\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0012\u001a\u00020\u00072\u0006\u0010\u0019\u001a\u00020\u00112\u0006\u0010\u001a\u001a\u00020\u001bJ \u0010\u001c\u001a\u00020\u00182\u0006\u0010\u0012\u001a\u00020\u00072\b\u0010\u001d\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u001a\u001a\u00020\u001bR\u001b\u0010\t\u001a\u00020\n8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000b\u0010\f¨\u0006\u001f"}, d2 = {"Lcom/bytedance/applog/alink/ALinkCache;", "", "config", "Lcom/bytedance/applog/InitConfig;", "context", "Landroid/content/Context;", "spName", "", "(Lcom/bytedance/applog/InitConfig;Landroid/content/Context;Ljava/lang/String;)V", "aLinkKVStore", "Lcom/bytedance/applog/store/kv/IKVStore;", "getALinkKVStore", "()Lcom/bytedance/applog/store/kv/IKVStore;", "aLinkKVStore$delegate", "Lkotlin/Lazy;", "getData", "T", "Lcom/bytedance/applog/alink/model/BaseData;", "key", "clazz", "Ljava/lang/Class;", "(Ljava/lang/String;Ljava/lang/Class;)Lcom/bytedance/applog/alink/model/BaseData;", "getString", "putData", "", "data", "expireTs", "", "putString", ActionUtils.PAYMENT_AMOUNT, "Companion", "agent_liteChinaRelease"}, k = 1, mv = {1, 1, 16})
/* loaded from: classes.dex */
public final class h {
    public static final /* synthetic */ KProperty[] b = {Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(h.class), "aLinkKVStore", "getALinkKVStore()Lcom/bytedance/applog/store/kv/IKVStore;"))};
    public final Lazy a;

    /* loaded from: classes.dex */
    public static final class a extends Lambda implements Function0<IKVStore> {
        public final /* synthetic */ InitConfig a;
        public final /* synthetic */ Context b;
        public final /* synthetic */ String c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(InitConfig initConfig, Context context, String str) {
            super(0);
            this.a = initConfig;
            this.b = context;
            this.c = str;
        }

        @Override // kotlin.jvm.functions.Function0
        public IKVStore invoke() {
            return o4.a(this.a, this.b, this.c);
        }
    }

    public h(InitConfig config, Context context, String spName) {
        Intrinsics.checkParameterIsNotNull(config, "config");
        Intrinsics.checkParameterIsNotNull(context, "context");
        Intrinsics.checkParameterIsNotNull(spName, "spName");
        this.a = LazyKt.lazy(new a(config, context, spName));
    }

    public final IKVStore a() {
        Lazy lazy = this.a;
        KProperty kProperty = b[0];
        return (IKVStore) lazy.getValue();
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x003a A[Catch: all -> 0x0048, TryCatch #0 {all -> 0x0048, blocks: (B:3:0x000b, B:5:0x0015, B:9:0x002c, B:14:0x003a, B:17:0x0041), top: B:2:0x000b }] */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0041 A[Catch: all -> 0x0048, TRY_LEAVE, TryCatch #0 {all -> 0x0048, blocks: (B:3:0x000b, B:5:0x0015, B:9:0x002c, B:14:0x003a, B:17:0x0041), top: B:2:0x000b }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final <T extends com.bytedance.bdtracker.p> T a(java.lang.String r8, java.lang.Class<T> r9) {
        /*
            r7 = this;
            java.lang.String r0 = "key"
            kotlin.jvm.internal.Intrinsics.checkParameterIsNotNull(r8, r0)
            java.lang.String r0 = "clazz"
            kotlin.jvm.internal.Intrinsics.checkParameterIsNotNull(r9, r0)
            r0 = 0
            com.bytedance.applog.store.kv.IKVStore r1 = r7.a()     // Catch: java.lang.Throwable -> L48
            java.lang.String r1 = r1.getString(r8, r0)     // Catch: java.lang.Throwable -> L48
            if (r1 == 0) goto L48
            org.json.JSONObject r2 = new org.json.JSONObject     // Catch: java.lang.Throwable -> L48
            r2.<init>(r1)     // Catch: java.lang.Throwable -> L48
            java.lang.String r1 = "expire_ts"
            long r3 = r2.optLong(r1)     // Catch: java.lang.Throwable -> L48
            r5 = -1
            int r1 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            if (r1 == 0) goto L37
            r5 = 0
            int r1 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            if (r1 <= 0) goto L35
            long r5 = java.lang.System.currentTimeMillis()     // Catch: java.lang.Throwable -> L48
            int r1 = (r5 > r3 ? 1 : (r5 == r3 ? 0 : -1))
            if (r1 >= 0) goto L35
            goto L37
        L35:
            r1 = 0
            goto L38
        L37:
            r1 = 1
        L38:
            if (r1 == 0) goto L41
            com.bytedance.bdtracker.p$a r8 = com.bytedance.bdtracker.p.a     // Catch: java.lang.Throwable -> L48
            com.bytedance.bdtracker.p r0 = r8.a(r2, r9)     // Catch: java.lang.Throwable -> L48
            goto L48
        L41:
            com.bytedance.applog.store.kv.IKVStore r9 = r7.a()     // Catch: java.lang.Throwable -> L48
            r9.remove(r8)     // Catch: java.lang.Throwable -> L48
        L48:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.bdtracker.h.a(java.lang.String, java.lang.Class):com.bytedance.bdtracker.p");
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0035 A[Catch: all -> 0x0043, TryCatch #0 {all -> 0x0043, blocks: (B:3:0x0006, B:5:0x0010, B:9:0x0027, B:14:0x0035, B:17:0x003c), top: B:2:0x0006 }] */
    /* JADX WARN: Removed duplicated region for block: B:17:0x003c A[Catch: all -> 0x0043, TRY_LEAVE, TryCatch #0 {all -> 0x0043, blocks: (B:3:0x0006, B:5:0x0010, B:9:0x0027, B:14:0x0035, B:17:0x003c), top: B:2:0x0006 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String a(java.lang.String r8) {
        /*
            r7 = this;
            java.lang.String r0 = "key"
            kotlin.jvm.internal.Intrinsics.checkParameterIsNotNull(r8, r0)
            r0 = 0
            com.bytedance.applog.store.kv.IKVStore r1 = r7.a()     // Catch: java.lang.Throwable -> L43
            java.lang.String r1 = r1.getString(r8, r0)     // Catch: java.lang.Throwable -> L43
            if (r1 == 0) goto L43
            org.json.JSONObject r2 = new org.json.JSONObject     // Catch: java.lang.Throwable -> L43
            r2.<init>(r1)     // Catch: java.lang.Throwable -> L43
            java.lang.String r1 = "expire_ts"
            long r3 = r2.optLong(r1)     // Catch: java.lang.Throwable -> L43
            r5 = -1
            int r1 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            if (r1 == 0) goto L32
            r5 = 0
            int r1 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            if (r1 <= 0) goto L30
            long r5 = java.lang.System.currentTimeMillis()     // Catch: java.lang.Throwable -> L43
            int r1 = (r5 > r3 ? 1 : (r5 == r3 ? 0 : -1))
            if (r1 >= 0) goto L30
            goto L32
        L30:
            r1 = 0
            goto L33
        L32:
            r1 = 1
        L33:
            if (r1 == 0) goto L3c
            java.lang.String r8 = "data"
            java.lang.String r0 = r2.optString(r8)     // Catch: java.lang.Throwable -> L43
            goto L43
        L3c:
            com.bytedance.applog.store.kv.IKVStore r1 = r7.a()     // Catch: java.lang.Throwable -> L43
            r1.remove(r8)     // Catch: java.lang.Throwable -> L43
        L43:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.bdtracker.h.a(java.lang.String):java.lang.String");
    }

    public final void a(String key, p data, long j) {
        Intrinsics.checkParameterIsNotNull(key, "key");
        Intrinsics.checkParameterIsNotNull(data, "data");
        JSONObject a2 = data.a();
        a2.put("expire_ts", j != -1 ? System.currentTimeMillis() + j : -1L);
        a().putString(key, a2.toString());
    }

    public final void a(String key, String str, long j) {
        Intrinsics.checkParameterIsNotNull(key, "key");
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("data", str);
        jSONObject.put("expire_ts", j != -1 ? System.currentTimeMillis() + j : -1L);
        a().putString(key, jSONObject.toString());
    }
}
