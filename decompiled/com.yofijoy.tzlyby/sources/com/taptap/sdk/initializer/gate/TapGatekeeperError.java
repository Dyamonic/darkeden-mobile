package com.taptap.sdk.initializer.gate;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: TapGatekeeper.kt */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0080\b\u0018\u00002\u00020\u0001B\u0019\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0005J\u000b\u0010\t\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\n\u001a\u0004\u0018\u00010\u0003HÆ\u0003J!\u0010\u000b\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\u0013\u0010\f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u000f\u001a\u00020\u0010HÖ\u0001J\t\u0010\u0011\u001a\u00020\u0003HÖ\u0001R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\u0007¨\u0006\u0012"}, d2 = {"Lcom/taptap/sdk/initializer/gate/TapGatekeeperError;", "", "errorToast", "", "errorLog", "(Ljava/lang/String;Ljava/lang/String;)V", "getErrorLog", "()Ljava/lang/String;", "getErrorToast", "component1", "component2", "copy", "equals", "", "other", "hashCode", "", "toString", "tap-initializer_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes.dex */
public final /* data */ class TapGatekeeperError {
    private final String errorLog;
    private final String errorToast;

    public static /* synthetic */ TapGatekeeperError copy$default(TapGatekeeperError tapGatekeeperError, String str, String str2, int i, Object obj) {
        if ((i & 1) != 0) {
            str = tapGatekeeperError.errorToast;
        }
        if ((i & 2) != 0) {
            str2 = tapGatekeeperError.errorLog;
        }
        return tapGatekeeperError.copy(str, str2);
    }

    /* renamed from: component1, reason: from getter */
    public final String getErrorToast() {
        return this.errorToast;
    }

    /* renamed from: component2, reason: from getter */
    public final String getErrorLog() {
        return this.errorLog;
    }

    public final TapGatekeeperError copy(String errorToast, String errorLog) {
        return new TapGatekeeperError(errorToast, errorLog);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof TapGatekeeperError)) {
            return false;
        }
        TapGatekeeperError tapGatekeeperError = (TapGatekeeperError) other;
        return Intrinsics.areEqual(this.errorToast, tapGatekeeperError.errorToast) && Intrinsics.areEqual(this.errorLog, tapGatekeeperError.errorLog);
    }

    public int hashCode() {
        String str = this.errorToast;
        int hashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.errorLog;
        return hashCode + (str2 != null ? str2.hashCode() : 0);
    }

    public String toString() {
        return "TapGatekeeperError(errorToast=" + this.errorToast + ", errorLog=" + this.errorLog + ')';
    }

    public TapGatekeeperError(String str, String str2) {
        this.errorToast = str;
        this.errorLog = str2;
    }

    public final String getErrorToast() {
        return this.errorToast;
    }

    public final String getErrorLog() {
        return this.errorLog;
    }
}
