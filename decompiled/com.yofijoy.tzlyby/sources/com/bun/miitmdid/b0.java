package com.bun.miitmdid;

import android.os.AsyncTask;
import com.bun.lib.MsaIdInterface;

/* loaded from: classes.dex */
public class b0 extends AsyncTask<Void, Void, Boolean> {
    public d0 a;
    public MsaIdInterface b;

    public b0(MsaIdInterface msaIdInterface, d0 d0Var) {
        this.b = msaIdInterface;
        this.a = d0Var;
    }

    @Override // android.os.AsyncTask
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public native Boolean doInBackground(Void... voidArr);

    @Override // android.os.AsyncTask
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public native void onPostExecute(Boolean bool);
}
