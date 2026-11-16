package com.taptap.sdk.login.internal.legacy;

import android.text.TextUtils;
import java.util.Arrays;
import java.util.HashSet;
import java.util.List;
import java.util.ListIterator;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.text.Regex;

/* compiled from: MigrationHelper.kt */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\"\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0006\u001a\u00020\u0005H\u0002J\u0018\u0010\u0007\u001a\u0004\u0018\u00010\b2\u0006\u0010\t\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u0005¨\u0006\u000b"}, d2 = {"Lcom/taptap/sdk/login/internal/legacy/MigrationHelper;", "", "()V", "convertScopeStringToSet", "", "", "scopesString", "migrate", "Lcom/taptap/sdk/login/TapTapAccount;", "tokenString", "profileString", "tap-login_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes.dex */
public final class MigrationHelper {
    public static final MigrationHelper INSTANCE = new MigrationHelper();

    private MigrationHelper() {
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0052 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:18:0x00c5 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:19:0x00c6  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0100 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0101 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0051 A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.taptap.sdk.login.TapTapAccount migrate(java.lang.String r24, java.lang.String r25) {
        /*
            Method dump skipped, instructions count: 379
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.taptap.sdk.login.internal.legacy.MigrationHelper.migrate(java.lang.String, java.lang.String):com.taptap.sdk.login.TapTapAccount");
    }

    private final Set<String> convertScopeStringToSet(String scopesString) {
        List emptyList;
        HashSet hashSet = new HashSet();
        if (!TextUtils.isEmpty(scopesString)) {
            try {
                List<String> split = new Regex("\\s+").split(scopesString, 0);
                if (!split.isEmpty()) {
                    ListIterator<String> listIterator = split.listIterator(split.size());
                    while (listIterator.hasPrevious()) {
                        if (!(listIterator.previous().length() == 0)) {
                            emptyList = CollectionsKt.take(split, listIterator.nextIndex() + 1);
                            break;
                        }
                    }
                }
                emptyList = CollectionsKt.emptyList();
                String[] strArr = (String[]) emptyList.toArray(new String[0]);
                hashSet = new HashSet(Arrays.asList(Arrays.copyOf(strArr, strArr.length)));
            } catch (Exception unused) {
            }
        }
        return hashSet;
    }
}
