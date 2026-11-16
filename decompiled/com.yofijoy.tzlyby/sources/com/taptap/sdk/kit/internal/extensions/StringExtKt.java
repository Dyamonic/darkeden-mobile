package com.taptap.sdk.kit.internal.extensions;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.TimeZone;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: StringExt.kt */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\u001a\b\u0010\u0000\u001a\u00020\u0001H\u0002\u001a\u0006\u0010\u0002\u001a\u00020\u0001¨\u0006\u0003"}, d2 = {"generateRandomString", "", "generateSessionId", "tap-kit_release"}, k = 2, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes.dex */
public final class StringExtKt {
    public static final String generateSessionId() {
        StringBuilder sb = new StringBuilder();
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyMMdd", Locale.getDefault());
        simpleDateFormat.setTimeZone(TimeZone.getTimeZone("GMT+8"));
        sb.append(simpleDateFormat.format(new Date()));
        sb.append(generateRandomString());
        String sb2 = sb.toString();
        Intrinsics.checkNotNullExpressionValue(sb2, "sessionId.append(generat…andomString()).toString()");
        return sb2;
    }

    private static final String generateRandomString() {
        char[] charArray = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789".toCharArray();
        Intrinsics.checkNotNullExpressionValue(charArray, "this as java.lang.String).toCharArray()");
        StringBuilder sb = new StringBuilder();
        int length = charArray.length;
        for (int i = 0; i < 12; i++) {
            sb.append(charArray[(int) Math.floor(Math.random() * length)]);
        }
        String sb2 = sb.toString();
        Intrinsics.checkNotNullExpressionValue(sb2, "stringBuilder.toString()");
        return sb2;
    }
}
