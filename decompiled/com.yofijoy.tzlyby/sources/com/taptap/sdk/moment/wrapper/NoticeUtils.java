package com.taptap.sdk.moment.wrapper;

import com.taptap.sdk.moment.TapMomentInternal;
import java.net.URLEncoder;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: NoticeUtils.kt */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\u0018\u0000 \u00032\u00020\u0001:\u0001\u0003B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0004"}, d2 = {"Lcom/taptap/sdk/moment/wrapper/NoticeUtils;", "", "()V", "Companion", "tap-moment_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes.dex */
public final class NoticeUtils {

    /* renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    private NoticeUtils() {
    }

    /* compiled from: NoticeUtils.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\n\u0010\u0003\u001a\u0004\u0018\u00010\u0004H\u0002J*\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u00062\u0006\u0010\b\u001a\u00020\u0004H\u0086@ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002ø\u0001\u0002¢\u0006\u0004\b\t\u0010\n\u0082\u0002\u000f\n\u0002\b!\n\u0005\b¡\u001e0\u0001\n\u0002\b\u0019¨\u0006\u000b"}, d2 = {"Lcom/taptap/sdk/moment/wrapper/NoticeUtils$Companion;", "", "()V", "encodeXua", "", "getNoticeInfo", "Lkotlin/Result;", "Lcom/taptap/sdk/moment/legacy/entity/NoticeInfo;", "clientId", "getNoticeInfo-gIAlu-s", "(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "tap-moment_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:14:0x003a  */
        /* JADX WARN: Removed duplicated region for block: B:8:0x0025  */
        /* renamed from: getNoticeInfo-gIAlu-s, reason: not valid java name */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object m26getNoticeInfogIAlus(java.lang.String r13, kotlin.coroutines.Continuation<? super kotlin.Result<com.taptap.sdk.moment.legacy.entity.NoticeInfo>> r14) {
            /*
                Method dump skipped, instructions count: 262
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.taptap.sdk.moment.wrapper.NoticeUtils.Companion.m26getNoticeInfogIAlus(java.lang.String, kotlin.coroutines.Continuation):java.lang.Object");
        }

        private final String encodeXua() {
            String str = TapMomentInternal.INSTANCE.getRegionType() == 0 ? "itkMoments" : "itkMomentsIntl";
            StringBuilder sb = new StringBuilder();
            sb.append("V=1&PN=" + str);
            sb.append("&VN_CODE=405040000");
            sb.append("&VN=4.5.4");
            sb.append("&LANG=" + Locale.getDefault().getLanguage());
            sb.append("&LOC=" + Locale.getDefault().getCountry());
            String sb2 = sb.toString();
            Intrinsics.checkNotNullExpressionValue(sb2, "StringBuilder().apply(builderAction).toString()");
            return URLEncoder.encode(sb2, "UTF-8");
        }
    }
}
