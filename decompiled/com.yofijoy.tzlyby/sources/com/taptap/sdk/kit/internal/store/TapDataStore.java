package com.taptap.sdk.kit.internal.store;

import com.taptap.sdk.kit.internal.TapLogger;
import com.taptap.sdk.kit.internal.store.ITapData;
import java.io.ByteArrayOutputStream;
import java.io.ObjectOutputStream;
import java.nio.MappedByteBuffer;
import java.util.Comparator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.io.CloseableKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: TapDataStore.kt */
@Metadata(d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u0004\u0018\u0000 \"*\u000e\b\u0000\u0010\u0001*\b\u0012\u0004\u0012\u0002H\u00010\u00022\u00020\u0003:\u0001\"B%\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b¢\u0006\u0002\u0010\fJ\u0017\u0010\u0016\u001a\u0004\u0018\u00018\u00002\u0006\u0010\u0017\u001a\u00028\u0000H\u0007¢\u0006\u0002\u0010\u0018J\u0010\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001cH\u0007J\u0006\u0010\u001d\u001a\u00020\tJ\u0018\u0010\u001e\u001a\b\u0012\u0004\u0012\u00028\u00000\u001f2\b\b\u0002\u0010 \u001a\u00020\tH\u0007J\b\u0010!\u001a\u00020\u001aH\u0003R\u0014\u0010\r\u001a\b\u0012\u0004\u0012\u00028\u00000\u000eX\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u000f\u001a\b\u0012\u0004\u0012\u00028\u00000\u000eX\u0082\u0004¢\u0006\u0002\n\u0000R\u0011\u0010\n\u001a\u00020\u000b¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u0010\u0010\u0012\u001a\u0004\u0018\u00010\u0013X\u0082\u000e¢\u0006\u0002\n\u0000R\u0011\u0010\b\u001a\u00020\t¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0015¨\u0006#"}, d2 = {"Lcom/taptap/sdk/kit/internal/store/TapDataStore;", "T", "Lcom/taptap/sdk/kit/internal/store/ITapData;", "", "context", "Landroid/content/Context;", "storeFileName", "", "maxAccumulatedData", "", "mapSize", "", "(Landroid/content/Context;Ljava/lang/String;IJ)V", "accumulatedData", "Ljava/util/concurrent/CopyOnWriteArrayList;", "inFlightData", "getMapSize", "()J", "mappedByteBuffer", "Ljava/nio/MappedByteBuffer;", "getMaxAccumulatedData", "()I", "addData", "data", "(Lcom/taptap/sdk/kit/internal/store/ITapData;)Lcom/taptap/sdk/kit/internal/store/ITapData;", "clearInFlightAndStats", "", "moveToAccumulated", "", "getAccumulatedDataCount", "obtainData", "", "maxCount", "syncData", "Companion", "tap-kit_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes.dex */
public final class TapDataStore<T extends ITapData<T>> {
    private static final String TAG = "TapDataStore";
    private CopyOnWriteArrayList<T> accumulatedData;
    private final CopyOnWriteArrayList<T> inFlightData;
    private final long mapSize;
    private MappedByteBuffer mappedByteBuffer;
    private final int maxAccumulatedData;

    /* JADX WARN: Removed duplicated region for block: B:12:0x0060  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0059  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public TapDataStore(android.content.Context r8, java.lang.String r9, int r10, long r11) {
        /*
            r7 = this;
            java.lang.String r0 = "context"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r8, r0)
            java.lang.String r0 = "storeFileName"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r9, r0)
            r7.<init>()
            r7.maxAccumulatedData = r10
            r7.mapSize = r11
            java.util.concurrent.CopyOnWriteArrayList r10 = new java.util.concurrent.CopyOnWriteArrayList
            r10.<init>()
            r7.accumulatedData = r10
            java.util.concurrent.CopyOnWriteArrayList r10 = new java.util.concurrent.CopyOnWriteArrayList
            r10.<init>()
            r7.inFlightData = r10
            java.lang.String r10 = "TapDataStore"
            java.lang.String r0 = "initialize start"
            com.taptap.sdk.kit.internal.TapLogger.logd(r10, r0)
            java.io.File r0 = new java.io.File
            java.io.File r8 = r8.getFilesDir()
            r0.<init>(r8, r9)
            boolean r8 = r0.exists()
            if (r8 != 0) goto L38
            r0.createNewFile()
        L38:
            java.io.RandomAccessFile r8 = new java.io.RandomAccessFile
            java.lang.String r9 = "rw"
            r8.<init>(r0, r9)
            java.nio.channels.FileChannel r1 = r8.getChannel()
            r8 = 0
            if (r1 == 0) goto L56
            java.nio.channels.FileChannel$MapMode r2 = java.nio.channels.FileChannel.MapMode.READ_WRITE     // Catch: java.lang.Exception -> L50
            r3 = 0
            r5 = r11
            java.nio.MappedByteBuffer r9 = r1.map(r2, r3, r5)     // Catch: java.lang.Exception -> L50
            goto L57
        L50:
            r9 = move-exception
            java.lang.Throwable r9 = (java.lang.Throwable) r9
            com.taptap.sdk.kit.internal.TapLogger.logd(r10, r9)
        L56:
            r9 = r8
        L57:
            if (r9 != 0) goto L60
            r9 = 4
            java.lang.String r11 = "initialize failure MappedByteBuffer = null"
            com.taptap.sdk.kit.internal.TapLogger.loge$default(r10, r11, r8, r9, r8)
            goto La3
        L60:
            java.util.List r11 = kotlin.collections.CollectionsKt.emptyList()
            int r12 = r9.remaining()     // Catch: java.lang.Exception -> L8c
            byte[] r12 = new byte[r12]     // Catch: java.lang.Exception -> L8c
            r9.get(r12)     // Catch: java.lang.Exception -> L8c
            java.io.ByteArrayInputStream r0 = new java.io.ByteArrayInputStream     // Catch: java.lang.Exception -> L8c
            r0.<init>(r12)     // Catch: java.lang.Exception -> L8c
            java.io.ObjectInputStream r12 = new java.io.ObjectInputStream     // Catch: java.lang.Exception -> L8c
            java.io.InputStream r0 = (java.io.InputStream) r0     // Catch: java.lang.Exception -> L8c
            r12.<init>(r0)     // Catch: java.lang.Exception -> L8c
            java.lang.Object r12 = r12.readObject()     // Catch: java.lang.Exception -> L8c
            boolean r0 = r12 instanceof java.util.List     // Catch: java.lang.Exception -> L8c
            if (r0 == 0) goto L84
            r8 = r12
            java.util.List r8 = (java.util.List) r8     // Catch: java.lang.Exception -> L8c
        L84:
            if (r8 != 0) goto L8a
            java.util.List r8 = kotlin.collections.CollectionsKt.emptyList()     // Catch: java.lang.Exception -> L8c
        L8a:
            r11 = r8
            goto L94
        L8c:
            r8 = move-exception
            java.lang.Throwable r8 = (java.lang.Throwable) r8
            java.lang.String r12 = "If this is the first time you start, you can ignore this error message."
            com.taptap.sdk.kit.internal.TapLogger.logd(r10, r12, r8)
        L94:
            java.util.concurrent.CopyOnWriteArrayList<T extends com.taptap.sdk.kit.internal.store.ITapData<T>> r8 = r7.accumulatedData
            java.lang.Iterable r11 = (java.lang.Iterable) r11
            java.util.List r11 = kotlin.collections.CollectionsKt.distinct(r11)
            java.util.Collection r11 = (java.util.Collection) r11
            r8.addAll(r11)
            r7.mappedByteBuffer = r9
        La3:
            java.lang.StringBuilder r8 = new java.lang.StringBuilder
            r8.<init>()
            java.lang.String r9 = "initialize end accumulatedData.size = "
            r8.append(r9)
            java.util.concurrent.CopyOnWriteArrayList<T extends com.taptap.sdk.kit.internal.store.ITapData<T>> r9 = r7.accumulatedData
            int r9 = r9.size()
            r8.append(r9)
            java.lang.String r8 = r8.toString()
            com.taptap.sdk.kit.internal.TapLogger.logd(r10, r8)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.taptap.sdk.kit.internal.store.TapDataStore.<init>(android.content.Context, java.lang.String, int, long):void");
    }

    public final int getMaxAccumulatedData() {
        return this.maxAccumulatedData;
    }

    public final long getMapSize() {
        return this.mapSize;
    }

    public final int getAccumulatedDataCount() {
        return this.accumulatedData.size();
    }

    public final T addData(T data) {
        Intrinsics.checkNotNullParameter(data, "data");
        T t = this.accumulatedData.size() + this.inFlightData.size() >= this.maxAccumulatedData ? (T) CollectionsKt.removeFirst(this.accumulatedData) : null;
        this.accumulatedData.add(data);
        syncData();
        return t;
    }

    public static /* synthetic */ List obtainData$default(TapDataStore tapDataStore, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = 200;
        }
        return tapDataStore.obtainData(i);
    }

    public final List<T> obtainData(int maxCount) {
        if (this.accumulatedData.size() > maxCount) {
            List<T> subList = this.accumulatedData.subList(0, maxCount);
            Intrinsics.checkNotNullExpressionValue(subList, "accumulatedData.subList(0, maxCount)");
            List<T> list = subList;
            this.inFlightData.addAll(list);
            this.accumulatedData.removeAll(list);
        } else {
            this.inFlightData.addAll(this.accumulatedData);
            this.accumulatedData.clear();
        }
        syncData();
        return this.inFlightData;
    }

    public final void clearInFlightAndStats(boolean moveToAccumulated) {
        if (moveToAccumulated) {
            this.accumulatedData.addAll(this.inFlightData);
            List distinct = CollectionsKt.distinct(this.accumulatedData);
            this.accumulatedData.clear();
            this.accumulatedData.addAll(distinct);
            CopyOnWriteArrayList<T> copyOnWriteArrayList = this.accumulatedData;
            final TapDataStore$clearInFlightAndStats$1 tapDataStore$clearInFlightAndStats$1 = new Function2<T, T, Integer>() { // from class: com.taptap.sdk.kit.internal.store.TapDataStore$clearInFlightAndStats$1
                /* JADX WARN: Incorrect types in method signature: (TT;TT;)Ljava/lang/Integer; */
                @Override // kotlin.jvm.functions.Function2
                public final Integer invoke(ITapData iTapData, ITapData p1) {
                    Intrinsics.checkNotNullExpressionValue(p1, "p1");
                    return Integer.valueOf(iTapData.compareTo(p1));
                }
            };
            CollectionsKt.sortWith(copyOnWriteArrayList, new Comparator() { // from class: com.taptap.sdk.kit.internal.store.-$$Lambda$TapDataStore$UoV_Fqr3-qEbssIQCQe-7yP8AXA
                @Override // java.util.Comparator
                public final int compare(Object obj, Object obj2) {
                    int clearInFlightAndStats$lambda$0;
                    clearInFlightAndStats$lambda$0 = TapDataStore.clearInFlightAndStats$lambda$0(Function2.this, obj, obj2);
                    return clearInFlightAndStats$lambda$0;
                }
            });
        }
        this.inFlightData.clear();
        syncData();
    }

    public static final int clearInFlightAndStats$lambda$0(Function2 tmp0, Object obj, Object obj2) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return ((Number) tmp0.invoke(obj, obj2)).intValue();
    }

    private final synchronized void syncData() {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            ObjectOutputStream objectOutputStream = new ObjectOutputStream(byteArrayOutputStream);
            try {
                objectOutputStream.writeObject(CollectionsKt.toList(this.accumulatedData));
                byte[] byteArray = byteArrayOutputStream.toByteArray();
                int length = byteArray.length;
                MappedByteBuffer mappedByteBuffer = this.mappedByteBuffer;
                if (length < (mappedByteBuffer != null ? mappedByteBuffer.capacity() : 0)) {
                    MappedByteBuffer mappedByteBuffer2 = this.mappedByteBuffer;
                    if (mappedByteBuffer2 != null) {
                        mappedByteBuffer2.clear();
                    }
                    MappedByteBuffer mappedByteBuffer3 = this.mappedByteBuffer;
                    if (mappedByteBuffer3 != null) {
                        mappedByteBuffer3.put(byteArray);
                    }
                } else {
                    StringBuilder sb = new StringBuilder();
                    sb.append("syncData failure Not enough space， capacity = ");
                    MappedByteBuffer mappedByteBuffer4 = this.mappedByteBuffer;
                    sb.append(mappedByteBuffer4 != null ? Integer.valueOf(mappedByteBuffer4.capacity()) : null);
                    sb.append(", byteArray = ");
                    sb.append(byteArray.length);
                    TapLogger.logd(TAG, sb.toString());
                    Unit unit = Unit.INSTANCE;
                }
                CloseableKt.closeFinally(objectOutputStream, null);
            } finally {
            }
        } catch (Exception e) {
            TapLogger.logd(TAG, e);
        }
    }
}
