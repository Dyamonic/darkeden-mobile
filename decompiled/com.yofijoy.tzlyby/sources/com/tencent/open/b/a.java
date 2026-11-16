package com.tencent.open.b;

import android.app.Activity;
import android.content.Context;
import android.graphics.Rect;
import android.view.View;
import android.widget.RelativeLayout;

/* compiled from: ProGuard */
/* loaded from: classes2.dex */
public class a extends RelativeLayout {
    private static final String a = "com.tencent.open.b.a";
    private Rect b;
    private boolean c;
    private InterfaceC0047a d;

    /* compiled from: ProGuard */
    /* renamed from: com.tencent.open.b.a$a, reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public interface InterfaceC0047a {
        void a();

        void a(int i);
    }

    public a(Context context) {
        super(context);
        this.b = null;
        this.c = false;
        this.d = null;
        this.b = new Rect();
    }

    public void a(InterfaceC0047a interfaceC0047a) {
        this.d = interfaceC0047a;
    }

    @Override // android.widget.RelativeLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        int size = View.MeasureSpec.getSize(i2);
        Activity activity = (Activity) getContext();
        activity.getWindow().getDecorView().getWindowVisibleDisplayFrame(this.b);
        int height = (activity.getWindowManager().getDefaultDisplay().getHeight() - this.b.top) - size;
        InterfaceC0047a interfaceC0047a = this.d;
        if (interfaceC0047a != null && size != 0) {
            if (height > 100) {
                interfaceC0047a.a((Math.abs(this.b.height()) - getPaddingBottom()) - getPaddingTop());
            } else {
                interfaceC0047a.a();
            }
        }
        super.onMeasure(i, i2);
    }
}
