package com.taptap.sdk.moment;

import android.os.Bundle;
import com.bytedance.applog.aggregation.MetricsSQLiteCacheKt;
import com.taptap.sdk.moment.legacy.utils.TapTapMomentPlatform;
import com.taptap.sdk.moment.legacy.widget.FilePicker;
import com.taptap.sdk.moment.legacy.widget.dialog.Alert;
import com.taptap.sdk.moment.legacy.widget.dialog.BottomSheet;
import com.taptap.sdk.moment.model.PublishMetaData;
import com.taptap.sdk.update.download.core.breakpoint.BreakpointSQLiteKey;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONArray;
import org.json.JSONObject;

/* compiled from: Moment.kt */
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\bÀ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0006\u0010\u0003\u001a\u00020\u0004J\u0014\u0010\u0003\u001a\u00020\u00042\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006J\"\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\tH\u0086@ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002ø\u0001\u0002¢\u0006\u0004\b\u000b\u0010\fJ\u0012\u0010\r\u001a\u0004\u0018\u00010\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010J&\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0012\u001a\u00020\u00132\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u000e2\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u000eJ\u000e\u0010\u0016\u001a\u00020\u000e2\u0006\u0010\u0017\u001a\u00020\u0018\u0082\u0002\u000f\n\u0002\b!\n\u0005\b¡\u001e0\u0001\n\u0002\b\u0019¨\u0006\u0019"}, d2 = {"Lcom/taptap/sdk/moment/Moment;", "", "()V", "closeMomentWithConfirmDialog", "", "createAlertDialog", "Lkotlin/Function0;", "Lcom/taptap/sdk/moment/legacy/widget/dialog/Alert;", "getNoticeData", "Lkotlin/Result;", "Lcom/taptap/sdk/moment/legacy/entity/NoticeInfo;", "getNoticeData-IoAF18A", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "idToJSONObject", "Lorg/json/JSONObject;", BreakpointSQLiteKey.ID, "", "openTapMoment", "type", "", "mediaData", MetricsSQLiteCacheKt.METRICS_PARAMS, "videoMetaDataToJSONObject", "publishMetaData", "Lcom/taptap/sdk/moment/model/PublishMetaData;", "tap-moment_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes.dex */
public final class Moment {
    public static final Moment INSTANCE = new Moment();

    private Moment() {
    }

    public static /* synthetic */ void openTapMoment$default(Moment moment, int i, JSONObject jSONObject, JSONObject jSONObject2, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            jSONObject = null;
        }
        if ((i2 & 4) != 0) {
            jSONObject2 = null;
        }
        moment.openTapMoment(i, jSONObject, jSONObject2);
    }

    public final void openTapMoment(int type, JSONObject mediaData, JSONObject params) {
        Bundle bundle = new Bundle();
        bundle.putString("type", "moment");
        bundle.putString("client_id", TapMomentInternal.INSTANCE.getClientId());
        bundle.putInt("show_type", type);
        if (mediaData != null) {
            bundle.putString("data", mediaData.toString());
        }
        if (params != null) {
            bundle.putString(MetricsSQLiteCacheKt.METRICS_PARAMS, params.toString());
        }
        TapTapMomentPlatform.showMomentDialog(bundle);
    }

    public final void closeMomentWithConfirmDialog(Function0<? extends Alert> createAlertDialog) {
        Intrinsics.checkNotNullParameter(createAlertDialog, "createAlertDialog");
        final Alert invoke = createAlertDialog.invoke();
        if (TapTapMomentPlatform.isShowing()) {
            invoke.show(TapTapMomentPlatform.getActivity().getFragmentManager(), Alert.TAG);
        } else {
            TapTapMomentPlatform.setMomentShowCallback(new Runnable() { // from class: com.taptap.sdk.moment.-$$Lambda$Moment$Pe0o9xxEixT1tWcybZNeLCIC1M0
                @Override // java.lang.Runnable
                public final void run() {
                    Moment.closeMomentWithConfirmDialog$lambda$2(Alert.this);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void closeMomentWithConfirmDialog$lambda$2(Alert alert) {
        Intrinsics.checkNotNullParameter(alert, "$alert");
        alert.show(TapTapMomentPlatform.getActivity().getFragmentManager(), Alert.TAG);
    }

    public final void closeMomentWithConfirmDialog() {
        boolean z = !TapTapMomentPlatform.isShowing();
        if (z) {
            TapTapMomentPlatform.setMomentShowCallback(new Runnable() { // from class: com.taptap.sdk.moment.-$$Lambda$Moment$l6zNT2A1ReShfgFJR1Ny5pWihak
                @Override // java.lang.Runnable
                public final void run() {
                    Moment.closeMomentWithConfirmDialog$lambda$3();
                }
            });
        } else {
            if (z) {
                return;
            }
            BottomSheet.dismissWhenShow();
            TapTapMomentPlatform.closeMomentDialog();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void closeMomentWithConfirmDialog$lambda$3() {
        BottomSheet.dismissWhenShow();
        TapTapMomentPlatform.closeMomentDialog();
    }

    public final JSONObject idToJSONObject(String id) {
        if (id == null) {
            return null;
        }
        JSONObject jSONObject = new JSONObject();
        jSONObject.put(BreakpointSQLiteKey.ID, id);
        return jSONObject;
    }

    public final JSONObject videoMetaDataToJSONObject(PublishMetaData publishMetaData) {
        Intrinsics.checkNotNullParameter(publishMetaData, "publishMetaData");
        JSONObject jSONObject = new JSONObject();
        JSONArray fileValidPathArray = FilePicker.getFileValidPathArray((String[]) publishMetaData.getVideoPaths().toArray(new String[0]), TapTapMomentPlatform.getActivity());
        JSONArray fileValidPathArray2 = FilePicker.getFileValidPathArray((String[]) publishMetaData.getImagePaths().toArray(new String[0]), TapTapMomentPlatform.getActivity());
        if (fileValidPathArray != null && fileValidPathArray.length() > 0) {
            jSONObject.put("video_paths", fileValidPathArray);
        }
        if (fileValidPathArray2 != null && fileValidPathArray2.length() > 0) {
            jSONObject.put("image_paths", fileValidPathArray2);
        }
        jSONObject.put("content", publishMetaData.getContent());
        return jSONObject;
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0038  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0024  */
    /* renamed from: getNoticeData-IoAF18A, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m23getNoticeDataIoAF18A(kotlin.coroutines.Continuation<? super kotlin.Result<com.taptap.sdk.moment.legacy.entity.NoticeInfo>> r5) {
        /*
            r4 = this;
            boolean r0 = r5 instanceof com.taptap.sdk.moment.Moment$getNoticeData$1
            if (r0 == 0) goto L14
            r0 = r5
            com.taptap.sdk.moment.Moment$getNoticeData$1 r0 = (com.taptap.sdk.moment.Moment$getNoticeData$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r1 = r1 & r2
            if (r1 == 0) goto L14
            int r5 = r0.label
            int r5 = r5 - r2
            r0.label = r5
            goto L19
        L14:
            com.taptap.sdk.moment.Moment$getNoticeData$1 r0 = new com.taptap.sdk.moment.Moment$getNoticeData$1
            r0.<init>(r4, r5)
        L19:
            java.lang.Object r5 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L38
            if (r2 != r3) goto L30
            kotlin.ResultKt.throwOnFailure(r5)
            kotlin.Result r5 = (kotlin.Result) r5
            java.lang.Object r5 = r5.getValue()
            goto L4c
        L30:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r0)
            throw r5
        L38:
            kotlin.ResultKt.throwOnFailure(r5)
            com.taptap.sdk.moment.wrapper.NoticeUtils$Companion r5 = com.taptap.sdk.moment.wrapper.NoticeUtils.INSTANCE
            com.taptap.sdk.moment.TapMomentInternal r2 = com.taptap.sdk.moment.TapMomentInternal.INSTANCE
            java.lang.String r2 = r2.getClientId()
            r0.label = r3
            java.lang.Object r5 = r5.m26getNoticeInfogIAlus(r2, r0)
            if (r5 != r1) goto L4c
            return r1
        L4c:
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.taptap.sdk.moment.Moment.m23getNoticeDataIoAF18A(kotlin.coroutines.Continuation):java.lang.Object");
    }
}
