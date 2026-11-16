package com.taptap.sdk.review.internal;

import com.taptap.sdk.review.ReviewCrossAppCodeCallback;
import kotlin.Metadata;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.Job;

/* compiled from: TapReviewApi.kt */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0003\u001a\u00020\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006¨\u0006\u0007"}, d2 = {"Lcom/taptap/sdk/review/internal/TapReviewApi;", "", "()V", "fetchCrossAppCode", "Lkotlinx/coroutines/Job;", "callback", "Lcom/taptap/sdk/review/ReviewCrossAppCodeCallback;", "tap-review_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes2.dex */
public final class TapReviewApi {
    public static final TapReviewApi INSTANCE = new TapReviewApi();

    private TapReviewApi() {
    }

    public static /* synthetic */ Job fetchCrossAppCode$default(TapReviewApi tapReviewApi, ReviewCrossAppCodeCallback reviewCrossAppCodeCallback, int i, Object obj) {
        if ((i & 1) != 0) {
            reviewCrossAppCodeCallback = null;
        }
        return tapReviewApi.fetchCrossAppCode(reviewCrossAppCodeCallback);
    }

    public final Job fetchCrossAppCode(ReviewCrossAppCodeCallback callback) {
        Job launch$default;
        launch$default = BuildersKt__Builders_commonKt.launch$default(TapReviewApiKt.getReviewScope(), Dispatchers.getIO(), null, new TapReviewApi$fetchCrossAppCode$1(callback, null), 2, null);
        return launch$default;
    }
}
