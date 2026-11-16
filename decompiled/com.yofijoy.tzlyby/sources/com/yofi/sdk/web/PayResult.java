package com.yofi.sdk.web;

import android.text.TextUtils;
import java.util.Map;

/* loaded from: classes2.dex */
public class PayResult {
    private String memo;
    private String result;
    private String resultStatus;

    public PayResult(Map<String, String> rawResult) {
        if (rawResult == null) {
            return;
        }
        for (String str : rawResult.keySet()) {
            if (TextUtils.equals(str, "resultStatus")) {
                this.resultStatus = rawResult.get(str);
            } else if (TextUtils.equals(str, "result")) {
                this.result = rawResult.get(str);
            } else if (TextUtils.equals(str, "memo")) {
                this.memo = rawResult.get(str);
            }
        }
    }

    public String toString() {
        return "resultStatus={" + this.resultStatus + "};memo={" + this.memo + "};result={" + this.result + "}";
    }

    public String getResultStatus() {
        return this.resultStatus;
    }

    public String getMemo() {
        return this.memo;
    }

    public String getResult() {
        return this.result;
    }
}
