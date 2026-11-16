package com.vivo.identifier;

import android.content.Context;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;

/* loaded from: classes2.dex */
public class IdentifierIdClient {
    private static final String AAID_FLAG = "AAID";
    private static final String ID_APPID = "appid";
    private static final String ID_TYPE = "type";
    private static final String OAID_FLAG = "OAID";
    private static final String SYS_IDENTIFIERID = "persist.sys.identifierid";
    private static final String SYS_IDENTIFIERID_SUPPORTED = "persist.sys.identifierid.supported";
    private static final String TAG = "VMS_SDK_Client";
    private static final int TIME_FOR_QUERY = 2000;
    private static final int TYPE_AAID = 2;
    private static final int TYPE_OAID = 0;
    private static final int TYPE_OAIDSTATUS = 4;
    private static final int TYPE_QUERY = 11;
    private static final int TYPE_VAID = 1;
    private static final String URI_BASE = "content://com.vivo.vms.IdProvider/IdentifierId";
    private static final String VAID_FLAG = "VAID";
    private static final int VERSION_P = 28;
    private static final int VERSION_Q = 29;
    private static String mAAID;
    private static IdentifierIdObserver mAAIDObserver;
    private static Context mContext;
    private static volatile DataBaseOperation mDatabase;
    private static volatile IdentifierIdClient mInstance;
    private static boolean mIsSupported;
    private static Object mLock = new Object();
    private static String mOAID;
    private static IdentifierIdObserver mOAIDObserver;
    private static String mOAIDStatus;
    private static Handler mSqlHandler;
    private static HandlerThread mSqlThread;
    private static String mVAID;
    private static IdentifierIdObserver mVAIDObserver;

    /* renamed from: com.vivo.identifier.IdentifierIdClient$1, reason: invalid class name */
    /* loaded from: classes2.dex */
    public class AnonymousClass1 extends Handler {
        public AnonymousClass1(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public native void handleMessage(Message message);
    }

    private IdentifierIdClient() {
        initSqlThread();
        mDatabase = new DataBaseOperation(mContext);
    }

    private static native void checkSupported();

    public static native IdentifierIdClient getInstance(Context context);

    private static native String getProperty(String str, String str2);

    private static native synchronized void initObserver(Context context, int i, String str);

    private static native void initSqlThread();

    public static native boolean isSupported();

    private native void queryId(int i, String str);

    public native String getAAID();

    public native String getAAID(String str);

    public native String getOAID();

    public native String getOAIDSTATUS();

    public native String getVAID();

    public native String getVAID(String str);

    public native void sendMessageToDataBase(int i, String str);
}
