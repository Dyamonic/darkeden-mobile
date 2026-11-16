package com.taptap.sdk.kit.internal.identifier.content;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import androidx.core.app.NotificationCompat;
import com.taptap.sdk.kit.internal.TapLogger;
import com.taptap.sdk.kit.internal.TapTapKit;
import com.taptap.sdk.kit.internal.identifier.TapIdentifierUtil;
import com.taptap.sdk.kit.internal.utils.TapReflectionUtil;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingDeque;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.concurrent.ThreadsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: TapGAIDUtil.kt */
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0005\bÀ\u0002\u0018\u00002\u00020\u0001:\u0002\u0019\u001aB\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u000f\u001a\u00020\b2\u0006\u0010\u0010\u001a\u00020\u0011H\u0002J\u0012\u0010\u0012\u001a\u0004\u0018\u00010\b2\u0006\u0010\u0010\u001a\u00020\u0011H\u0002J\u0012\u0010\u0013\u001a\u0004\u0018\u00010\b2\u0006\u0010\u0010\u001a\u00020\u0011H\u0002J\n\u0010\u0014\u001a\u0004\u0018\u00010\bH\u0007J\u0010\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0010\u001a\u00020\u0011H\u0002J\u001c\u0010\u0017\u001a\u00020\u000e2\u0014\u0010\u0018\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\b\u0012\u0004\u0012\u00020\u000e0\rR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e¢\u0006\u0002\n\u0000R \u0010\u000b\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\u000e0\r0\fX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u001b"}, d2 = {"Lcom/taptap/sdk/kit/internal/identifier/content/TapGAIDUtil;", "", "()V", "CONNECTION_RESULT_SUCCESS", "", "TAG", "", "gaid", "Lcom/taptap/sdk/kit/internal/identifier/TapIdentifierUtil$GAID;", "isQuerying", "Ljava/util/concurrent/atomic/AtomicBoolean;", "waitingList", "", "Lkotlin/Function1;", "", "getAndroidId", "context", "Landroid/content/Context;", "getAndroidIdViaReflection", "getAndroidIdViaService", "getGAID", "isGooglePlayServicesAvailable", "", "queryGAID", "callback", "GoogleAdInfo", "GoogleAdServiceConnection", "tap-kit_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes.dex */
public final class TapGAIDUtil {
    private static final int CONNECTION_RESULT_SUCCESS = 0;
    private static final String TAG = "TapGAIDUtil";
    private static TapIdentifierUtil.GAID gaid;
    public static final TapGAIDUtil INSTANCE = new TapGAIDUtil();
    private static List<Function1<TapIdentifierUtil.GAID, Unit>> waitingList = new ArrayList();
    private static AtomicBoolean isQuerying = new AtomicBoolean(false);

    private TapGAIDUtil() {
    }

    public final void queryGAID(Function1<? super TapIdentifierUtil.GAID, Unit> callback) {
        Intrinsics.checkNotNullParameter(callback, "callback");
        synchronized (this) {
            TapIdentifierUtil.GAID gaid2 = gaid;
            if (gaid2 != null) {
                callback.invoke(gaid2);
                return;
            }
            waitingList.add(callback);
            if (isQuerying.get()) {
                return;
            }
            isQuerying.set(true);
            Unit unit = Unit.INSTANCE;
            ThreadsKt.thread$default(false, false, null, null, 0, new TapGAIDUtil$queryGAID$2(this), 31, null);
        }
    }

    public final TapIdentifierUtil.GAID getGAID() {
        TapIdentifierUtil.GAID gaid2 = gaid;
        return gaid2 != null ? gaid2 : getAndroidId(TapTapKit.INSTANCE.getContext());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final TapIdentifierUtil.GAID getAndroidId(Context context) {
        TapIdentifierUtil.GAID androidIdViaReflection = getAndroidIdViaReflection(context);
        if (androidIdViaReflection != null) {
            return androidIdViaReflection;
        }
        TapIdentifierUtil.GAID androidIdViaService = getAndroidIdViaService(context);
        return androidIdViaService == null ? new TapIdentifierUtil.GAID(null, false, 3, null) : androidIdViaService;
    }

    private final boolean isGooglePlayServicesAvailable(Context context) {
        Method methodQuietly = TapReflectionUtil.getMethodQuietly("com.google.android.gms.common.GooglePlayServicesUtil", "isGooglePlayServicesAvailable", (Class<?>[]) new Class[]{Context.class});
        if (methodQuietly == null) {
            return false;
        }
        Object invokeMethodQuietly = TapReflectionUtil.invokeMethodQuietly(null, methodQuietly, context);
        return (invokeMethodQuietly instanceof Integer) && Intrinsics.areEqual(invokeMethodQuietly, (Object) 0);
    }

    private final TapIdentifierUtil.GAID getAndroidIdViaService(Context context) {
        GoogleAdServiceConnection googleAdServiceConnection = new GoogleAdServiceConnection();
        Intent intent = new Intent("com.google.android.gms.ads.identifier.service.START");
        intent.setPackage("com.google.android.gms");
        try {
            try {
                if (context.bindService(intent, googleAdServiceConnection, 1)) {
                    GoogleAdInfo googleAdInfo = new GoogleAdInfo(googleAdServiceConnection.getBinder());
                    TapIdentifierUtil.GAID gaid2 = new TapIdentifierUtil.GAID(null, false, 3, null);
                    gaid2.setAndroidAdvertiserIdValue(googleAdInfo.getAdvertiserId());
                    gaid2.setTrackingLimited(googleAdInfo.isTrackingLimited());
                    return gaid2;
                }
            } catch (Exception e) {
                TapLogger.loge(TAG, "getAndroidIdViaService", e);
            } finally {
                context.unbindService(googleAdServiceConnection);
            }
        } catch (SecurityException unused) {
        }
        return null;
    }

    private final TapIdentifierUtil.GAID getAndroidIdViaReflection(Context context) {
        Object invokeMethodQuietly;
        try {
            if (!isGooglePlayServicesAvailable(context)) {
                return null;
            }
            Method methodQuietly = TapReflectionUtil.getMethodQuietly("com.google.android.gms.ads.identifier.AdvertisingIdClient", "getAdvertisingIdInfo", (Class<?>[]) new Class[]{Context.class});
            if (methodQuietly == null || (invokeMethodQuietly = TapReflectionUtil.invokeMethodQuietly(null, methodQuietly, context)) == null) {
                return null;
            }
            Method methodQuietly2 = TapReflectionUtil.getMethodQuietly(invokeMethodQuietly.getClass(), "getId", (Class<?>[]) new Class[0]);
            Method methodQuietly3 = TapReflectionUtil.getMethodQuietly(invokeMethodQuietly.getClass(), "isLimitAdTrackingEnabled", (Class<?>[]) new Class[0]);
            if (methodQuietly2 != null && methodQuietly3 != null) {
                TapIdentifierUtil.GAID gaid2 = new TapIdentifierUtil.GAID(null, false, 3, null);
                gaid2.setAndroidAdvertiserIdValue((String) TapReflectionUtil.invokeMethodQuietly(invokeMethodQuietly, methodQuietly2, new Object[0]));
                Boolean bool = (Boolean) TapReflectionUtil.invokeMethodQuietly(invokeMethodQuietly, methodQuietly3, new Object[0]);
                gaid2.setTrackingLimited(bool != null ? bool.booleanValue() : false);
                return gaid2;
            }
            return null;
        } catch (Exception e) {
            TapLogger.loge(TAG, "getAndroidIdViaReflection", e);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: TapGAIDUtil.kt */
    @Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0002\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u001c\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0004H\u0016J\u0012\u0010\u0010\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0016R\u0011\u0010\u0003\u001a\u00020\u00048F¢\u0006\u0006\u001a\u0004\b\u0005\u0010\u0006R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00040\nX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0011"}, d2 = {"Lcom/taptap/sdk/kit/internal/identifier/content/TapGAIDUtil$GoogleAdServiceConnection;", "Landroid/content/ServiceConnection;", "()V", "binder", "Landroid/os/IBinder;", "getBinder", "()Landroid/os/IBinder;", "consumed", "Ljava/util/concurrent/atomic/AtomicBoolean;", "queue", "Ljava/util/concurrent/BlockingQueue;", "onServiceConnected", "", "name", "Landroid/content/ComponentName;", NotificationCompat.CATEGORY_SERVICE, "onServiceDisconnected", "tap-kit_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes.dex */
    public static final class GoogleAdServiceConnection implements ServiceConnection {
        private final AtomicBoolean consumed = new AtomicBoolean(false);
        private final BlockingQueue<IBinder> queue = new LinkedBlockingDeque();

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName name) {
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName name, IBinder service) {
            if (service != null) {
                try {
                    this.queue.put(service);
                } catch (InterruptedException e) {
                    TapLogger.loge(TapGAIDUtil.TAG, "onServiceConnected", e);
                }
            }
        }

        public final IBinder getBinder() throws InterruptedException {
            if (!(!this.consumed.compareAndSet(true, true))) {
                throw new IllegalStateException("Binder already consumed".toString());
            }
            IBinder take = this.queue.take();
            Intrinsics.checkNotNullExpressionValue(take, "queue.take()");
            return take;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: TapGAIDUtil.kt */
    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0002\u0018\u0000 \r2\u00020\u0001:\u0001\rB\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010\f\u001a\u00020\u0003H\u0016R\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u00068F¢\u0006\u0006\u001a\u0004\b\u0007\u0010\bR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0011\u0010\t\u001a\u00020\n8F¢\u0006\u0006\u001a\u0004\b\t\u0010\u000b¨\u0006\u000e"}, d2 = {"Lcom/taptap/sdk/kit/internal/identifier/content/TapGAIDUtil$GoogleAdInfo;", "Landroid/os/IInterface;", "binder", "Landroid/os/IBinder;", "(Landroid/os/IBinder;)V", "advertiserId", "", "getAdvertiserId", "()Ljava/lang/String;", "isTrackingLimited", "", "()Z", "asBinder", "Companion", "tap-kit_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes.dex */
    public static final class GoogleAdInfo implements IInterface {
        private static final int FIRST_TRANSACTION_CODE = 1;
        private static final int SECOND_TRANSACTION_CODE = 2;
        private final IBinder binder;

        public GoogleAdInfo(IBinder binder) {
            Intrinsics.checkNotNullParameter(binder, "binder");
            this.binder = binder;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this.binder;
        }

        public final String getAdvertiserId() throws RemoteException {
            Parcel obtain = Parcel.obtain();
            Intrinsics.checkNotNullExpressionValue(obtain, "obtain()");
            Parcel obtain2 = Parcel.obtain();
            Intrinsics.checkNotNullExpressionValue(obtain2, "obtain()");
            try {
                obtain.writeInterfaceToken("com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
                this.binder.transact(1, obtain, obtain2, 0);
                obtain2.readException();
                return obtain2.readString();
            } finally {
                obtain2.recycle();
                obtain.recycle();
            }
        }

        public final boolean isTrackingLimited() throws RemoteException {
            Parcel obtain = Parcel.obtain();
            Intrinsics.checkNotNullExpressionValue(obtain, "obtain()");
            Parcel obtain2 = Parcel.obtain();
            Intrinsics.checkNotNullExpressionValue(obtain2, "obtain()");
            try {
                obtain.writeInterfaceToken("com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
                obtain.writeInt(1);
                this.binder.transact(2, obtain, obtain2, 0);
                obtain2.readException();
                return obtain2.readInt() != 0;
            } finally {
                obtain2.recycle();
                obtain.recycle();
            }
        }
    }
}
