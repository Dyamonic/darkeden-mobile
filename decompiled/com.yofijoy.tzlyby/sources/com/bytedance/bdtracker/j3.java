package com.bytedance.bdtracker;

import com.bytedance.applog.network.RangersHttpException;
import cz.msebera.android.httpclient.HttpStatus;

/* loaded from: classes.dex */
public class j3 extends RangersHttpException {
    public j3(String str) {
        super(HttpStatus.SC_REQUEST_TIMEOUT, str);
    }
}
