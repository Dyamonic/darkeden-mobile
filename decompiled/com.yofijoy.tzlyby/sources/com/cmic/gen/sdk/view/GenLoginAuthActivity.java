package com.cmic.gen.sdk.view;

import android.R;
import android.app.Activity;
import android.app.AlertDialog;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.Point;
import android.graphics.Typeface;
import android.graphics.drawable.ColorDrawable;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.text.Spannable;
import android.text.SpannableString;
import android.text.TextUtils;
import android.text.method.LinkMovementMethod;
import android.util.DisplayMetrics;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.WindowManager;
import android.view.animation.AnimationUtils;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import androidx.core.view.InputDeviceCompat;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import org.json.JSONException;
import org.json.JSONObject;
import rich.a3;
import rich.b0;
import rich.b3;
import rich.c2;
import rich.c3;
import rich.d2;
import rich.d3;
import rich.f2;
import rich.k2;
import rich.l0;
import rich.l2;
import rich.n2;
import rich.n3;
import rich.o2;
import rich.p0;
import rich.p2;
import rich.q0;
import rich.r0;
import rich.r2;
import rich.s0;
import rich.s2;
import rich.t2;
import rich.u2;
import rich.v1;
import rich.w1;
import rich.x2;
import rich.y1;
import rich.y2;
import rich.z2;

/* loaded from: classes.dex */
public class GenLoginAuthActivity extends Activity implements View.OnClickListener {
    public static final String E = "GenLoginAuthActivity";
    public int A;
    public int B;
    public boolean C;
    public Dialog D;
    public Handler a;
    public Context b;
    public RelativeLayout c;
    public x2 d;
    public x2 e;
    public x2 f;
    public x2 g;
    public x2 h;
    public ArrayList i;
    public ArrayList j;
    public String[] k;
    public l0 l;
    public r0 m;
    public CheckBox o;
    public RelativeLayout p;
    public RelativeLayout q;
    public q0 u;
    public boolean v;
    public RelativeLayout w;
    public String x;
    public String y;
    public o2 z;
    public String n = "";
    public long r = 0;
    public int s = 0;
    public l t = null;

    /* loaded from: classes.dex */
    public class a implements View.OnClickListener {
        public a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GenLoginAuthActivity.this.o.setChecked(!r2.isChecked());
        }
    }

    /* loaded from: classes.dex */
    public class b extends LinkMovementMethod {
        public b(GenLoginAuthActivity genLoginAuthActivity) {
        }

        @Override // android.text.method.LinkMovementMethod, android.text.method.ScrollingMovementMethod, android.text.method.BaseMovementMethod, android.text.method.MovementMethod
        public boolean onTouchEvent(TextView textView, Spannable spannable, MotionEvent motionEvent) {
            boolean onTouchEvent = super.onTouchEvent(textView, spannable, motionEvent);
            if (!onTouchEvent && motionEvent.getAction() == 1) {
                ViewParent parent = textView.getParent();
                if (parent instanceof ViewGroup) {
                    return ((ViewGroup) parent).performClick();
                }
            }
            return onTouchEvent;
        }
    }

    /* loaded from: classes.dex */
    public class c implements DialogInterface.OnKeyListener {
        public c() {
        }

        @Override // android.content.DialogInterface.OnKeyListener
        public boolean onKey(DialogInterface dialogInterface, int i, KeyEvent keyEvent) {
            if (i == 4 && keyEvent.getAction() == 1 && keyEvent.getRepeatCount() == 0) {
                GenLoginAuthActivity.this.d.a();
            }
            return true;
        }
    }

    /* loaded from: classes.dex */
    public class d implements AuthLoginCallBack {
        public d() {
        }

        @Override // com.cmic.gen.sdk.view.AuthLoginCallBack
        public void onAuthLoginCallBack(boolean z) {
            if (z) {
                GenLoginAuthActivity.this.o.setChecked(true);
                GenLoginAuthActivity genLoginAuthActivity = GenLoginAuthActivity.this;
                genLoginAuthActivity.s++;
                genLoginAuthActivity.l();
            }
        }
    }

    /* loaded from: classes.dex */
    public class e implements DialogInterface.OnKeyListener {
        public e(GenLoginAuthActivity genLoginAuthActivity) {
        }

        @Override // android.content.DialogInterface.OnKeyListener
        public boolean onKey(DialogInterface dialogInterface, int i, KeyEvent keyEvent) {
            return i == 4;
        }
    }

    /* loaded from: classes.dex */
    public class f implements DialogInterface.OnKeyListener {
        public f() {
        }

        @Override // android.content.DialogInterface.OnKeyListener
        public boolean onKey(DialogInterface dialogInterface, int i, KeyEvent keyEvent) {
            if (i == 4 && keyEvent.getAction() == 1 && keyEvent.getRepeatCount() == 0) {
                GenLoginAuthActivity.this.e.a();
            }
            return true;
        }
    }

    /* loaded from: classes.dex */
    public class g implements DialogInterface.OnKeyListener {
        public g() {
        }

        @Override // android.content.DialogInterface.OnKeyListener
        public boolean onKey(DialogInterface dialogInterface, int i, KeyEvent keyEvent) {
            if (i == 4 && keyEvent.getAction() == 1 && keyEvent.getRepeatCount() == 0) {
                GenLoginAuthActivity.this.f.a();
            }
            return true;
        }
    }

    /* loaded from: classes.dex */
    public class h implements DialogInterface.OnKeyListener {
        public h() {
        }

        @Override // android.content.DialogInterface.OnKeyListener
        public boolean onKey(DialogInterface dialogInterface, int i, KeyEvent keyEvent) {
            if (i == 4 && keyEvent.getAction() == 1 && keyEvent.getRepeatCount() == 0) {
                GenLoginAuthActivity.this.g.a();
            }
            return true;
        }
    }

    /* loaded from: classes.dex */
    public class i implements DialogInterface.OnKeyListener {
        public i() {
        }

        @Override // android.content.DialogInterface.OnKeyListener
        public boolean onKey(DialogInterface dialogInterface, int i, KeyEvent keyEvent) {
            if (i == 4 && keyEvent.getAction() == 1 && keyEvent.getRepeatCount() == 0) {
                GenLoginAuthActivity.this.h.a();
            }
            return true;
        }
    }

    /* loaded from: classes.dex */
    public class j implements u2.a {
        public j() {
        }

        public void a() {
            GenLoginAuthActivity.this.a.removeCallbacksAndMessages(null);
            x2 x2Var = GenLoginAuthActivity.this.d;
            if (x2Var != null && x2Var.isShowing()) {
                GenLoginAuthActivity.this.d.dismiss();
            }
            x2 x2Var2 = GenLoginAuthActivity.this.e;
            if (x2Var2 != null && x2Var2.isShowing()) {
                GenLoginAuthActivity.this.e.dismiss();
            }
            GenLoginAuthActivity.this.b();
        }
    }

    /* loaded from: classes.dex */
    public class k implements CompoundButton.OnCheckedChangeListener {
        public k() {
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            CheckBox checkBox;
            StringBuilder a;
            GenLoginAuthActivity genLoginAuthActivity;
            r2 r2Var = GenLoginAuthActivity.this.z.L;
            if (r2Var != null) {
                r2Var.a(z);
            }
            if (z) {
                GenLoginAuthActivity.this.c.setEnabled(true);
                try {
                    CheckBox checkBox2 = GenLoginAuthActivity.this.o;
                    GenLoginAuthActivity genLoginAuthActivity2 = GenLoginAuthActivity.this;
                    checkBox2.setBackgroundResource(b0.a(genLoginAuthActivity2, genLoginAuthActivity2.z.N));
                } catch (Exception unused) {
                    GenLoginAuthActivity genLoginAuthActivity3 = GenLoginAuthActivity.this;
                    genLoginAuthActivity3.o.setBackgroundResource(b0.a(genLoginAuthActivity3, "umcsdk_check_image"));
                }
                checkBox = GenLoginAuthActivity.this.o;
                a = rich.a.a("复选框 已勾选 ");
                genLoginAuthActivity = GenLoginAuthActivity.this;
            } else {
                GenLoginAuthActivity genLoginAuthActivity4 = GenLoginAuthActivity.this;
                genLoginAuthActivity4.c.setEnabled(genLoginAuthActivity4.m());
                try {
                    CheckBox checkBox3 = GenLoginAuthActivity.this.o;
                    GenLoginAuthActivity genLoginAuthActivity5 = GenLoginAuthActivity.this;
                    checkBox3.setBackgroundResource(b0.a(genLoginAuthActivity5, genLoginAuthActivity5.z.O));
                } catch (Exception unused2) {
                    GenLoginAuthActivity genLoginAuthActivity6 = GenLoginAuthActivity.this;
                    genLoginAuthActivity6.o.setBackgroundResource(b0.a(genLoginAuthActivity6, "umcsdk_uncheck_image"));
                }
                checkBox = GenLoginAuthActivity.this.o;
                a = rich.a.a("复选框 请双击勾选 ");
                genLoginAuthActivity = GenLoginAuthActivity.this;
            }
            a.append(genLoginAuthActivity.y);
            checkBox.setContentDescription(a.toString());
        }
    }

    /* loaded from: classes.dex */
    public static class l extends Handler {
        public WeakReference a;

        public l(GenLoginAuthActivity genLoginAuthActivity) {
            this.a = new WeakReference(genLoginAuthActivity);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            try {
                GenLoginAuthActivity genLoginAuthActivity = (GenLoginAuthActivity) this.a.get();
                if (genLoginAuthActivity == null || message.what != 1) {
                    return;
                }
                genLoginAuthActivity.d();
                genLoginAuthActivity.k();
            } catch (Exception e) {
                y1.D.add(e);
                e.printStackTrace();
            }
        }
    }

    /* loaded from: classes.dex */
    public class n implements Runnable {
        public l0 a;
        public boolean b;

        public n(l0 l0Var) {
            this.a = l0Var;
        }

        public final synchronized boolean a(boolean z) {
            boolean z2;
            z2 = this.b;
            this.b = z;
            return !z2;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (a(true)) {
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put("resultCode", "102507");
                    jSONObject.put("resultString", "请求超时");
                } catch (JSONException e) {
                    e.printStackTrace();
                }
                GenLoginAuthActivity.this.v = false;
                w1.a("authClickFailed");
                GenLoginAuthActivity.this.t.sendEmptyMessage(1);
                long b = this.a.b("loginTime", 0L);
                if (b != 0) {
                    this.a.a("loginTime", System.currentTimeMillis() - b);
                }
                GenLoginAuthActivity.this.a("102507", "请求超时", this.a, jSONObject);
            }
        }
    }

    public void a() {
        String str;
        this.a.removeCallbacksAndMessages(null);
        x2 x2Var = this.d;
        if (x2Var != null && x2Var.isShowing()) {
            this.d.dismiss();
        }
        x2 x2Var2 = this.e;
        if (x2Var2 != null && x2Var2.isShowing()) {
            this.e.dismiss();
        }
        d();
        this.D = null;
        RelativeLayout relativeLayout = this.p;
        if (relativeLayout != null) {
            relativeLayout.clearAnimation();
        }
        u2.a().b = 0;
        finish();
        o2 o2Var = this.z;
        if (o2Var.o0 == null || (str = o2Var.p0) == null) {
            return;
        }
        overridePendingTransition(b0.b(this, str), b0.b(this, this.z.o0));
    }

    public final void b() {
        try {
            w1.a("authPageOut");
            a("200020", "登录页面关闭", this.l, null);
        } catch (Exception e2) {
            y1.D.add(e2);
            e2.printStackTrace();
        }
    }

    public void c() {
        c2.a(E, "loginClickStart");
        try {
            this.C = true;
            if (this.z.J != null) {
                s2 s2Var = this.z.J;
                Context context = this.b;
                n3.h hVar = (n3.h) s2Var;
                if (n3.this.c.getAuthLoginClickListener() != null) {
                    n3.this.c.getAuthLoginClickListener().onLoginClickStart(context, null);
                }
            } else {
                Dialog dialog = this.D;
                if (dialog != null) {
                    dialog.show();
                    return;
                }
                AlertDialog create = new AlertDialog.Builder(this).create();
                this.D = create;
                create.setCancelable(false);
                this.D.setCanceledOnTouchOutside(false);
                this.D.setOnKeyListener(new e(this));
                RelativeLayout relativeLayout = new RelativeLayout(this.D.getContext());
                relativeLayout.setLayoutParams(new RelativeLayout.LayoutParams(-1, -2));
                ImageView imageView = new ImageView(this.D.getContext());
                imageView.setImageResource(b0.a(this.b, "umcsdk_dialog_loading"));
                RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(80, 80);
                layoutParams.addRule(13, -1);
                relativeLayout.addView(imageView, layoutParams);
                if (this.D.getWindow() != null) {
                    this.D.getWindow().setDimAmount(0.0f);
                }
                this.D.setContentView(relativeLayout);
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        c2.a(E, "loginClickStart");
    }

    public void d() {
        try {
            c2.a(E, "loginClickComplete");
            if (this.z.J != null && this.C) {
                this.C = false;
                s2 s2Var = this.z.J;
                Context context = this.b;
                n3.h hVar = (n3.h) s2Var;
                if (n3.this.c.getAuthLoginClickListener() != null) {
                    n3.this.c.getAuthLoginClickListener().onLoginClickComplete(context, null);
                }
            } else {
                Dialog dialog = this.D;
                if (dialog != null && dialog.isShowing()) {
                    this.D.dismiss();
                }
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public final void e() {
        String str;
        l0 c2 = d2.c(getIntent().getStringExtra("traceId"));
        this.l = c2;
        if (c2 == null) {
            this.l = new l0(0);
        }
        this.u = d2.b(this.l.b("traceId", ""));
        getWindowManager().getDefaultDisplay().getMetrics(new DisplayMetrics());
        this.a = new Handler(getMainLooper());
        this.t = new l(this);
        this.n = this.l.b("securityphone", "");
        String str2 = E;
        StringBuilder a2 = rich.a.a("mSecurityPhone value is ");
        a2.append(this.n);
        c2.b(str2, a2.toString());
        String b2 = this.l.b("operatortype", "");
        c2.b(str2, "operator value is " + b2);
        int i2 = this.z.x0;
        if (i2 == 1) {
            this.k = v1.b;
            String str3 = v1.e[1];
        } else if (i2 == 2) {
            this.k = v1.c;
            String str4 = v1.e[2];
        } else {
            this.k = v1.a;
            String str5 = v1.e[0];
        }
        if (b2.equals("1")) {
            this.x = this.k[0];
            str = "https://wap.cmpassport.com/uni-access/contactCm.html";
        } else if (b2.equals("3")) {
            this.x = this.k[1];
            str = "https://wap.cmpassport.com/uni-access/contactCt.html";
        } else {
            this.x = this.k[2];
            str = "https://wap.cmpassport.com/uni-access/contactCu.html";
        }
        int i3 = this.z.w0;
        if (i3 == -1) {
            i3 = 16973840;
        }
        x2 x2Var = new x2(this.b, i3, this.x, str);
        this.d = x2Var;
        x2Var.setOnKeyListener(new c());
        this.i = new ArrayList();
        this.j = new ArrayList();
        if (!TextUtils.isEmpty(this.z.U)) {
            Context context = this.b;
            o2 o2Var = this.z;
            x2 x2Var2 = new x2(context, i3, o2Var.T, o2Var.U);
            this.e = x2Var2;
            x2Var2.setOnKeyListener(new f());
            this.i.add(this.e);
            this.j.add(this.z.T);
        }
        if (!TextUtils.isEmpty(this.z.W)) {
            Context context2 = this.b;
            o2 o2Var2 = this.z;
            x2 x2Var3 = new x2(context2, i3, o2Var2.V, o2Var2.W);
            this.f = x2Var3;
            x2Var3.setOnKeyListener(new g());
            this.i.add(this.f);
            this.j.add(this.z.V);
        }
        if (!TextUtils.isEmpty(this.z.Y)) {
            Context context3 = this.b;
            o2 o2Var3 = this.z;
            x2 x2Var4 = new x2(context3, i3, o2Var3.X, o2Var3.Y);
            this.g = x2Var4;
            x2Var4.setOnKeyListener(new h());
            this.i.add(this.g);
            this.j.add(this.z.X);
        }
        if (!TextUtils.isEmpty(this.z.a0)) {
            Context context4 = this.b;
            o2 o2Var4 = this.z;
            x2 x2Var5 = new x2(context4, R.style.Theme.Translucent.NoTitleBar, o2Var4.Z, o2Var4.a0);
            this.h = x2Var5;
            x2Var5.setOnKeyListener(new i());
            this.i.add(this.h);
            this.j.add(this.z.Z);
        }
        o2 o2Var5 = this.z;
        this.y = o2Var5.S;
        if (o2Var5.l0) {
            this.x = String.format("《%s》", this.x);
        }
        if (this.y.contains("$$运营商条款$$")) {
            this.y = this.y.replace("$$运营商条款$$", this.x);
        }
        if (this.z.l0) {
            for (int i4 = 0; i4 < this.j.size(); i4++) {
                String format = String.format("《%s》", this.j.get(i4));
                this.y = this.y.replaceFirst((String) this.j.get(i4), format);
                this.j.set(i4, format);
            }
        }
        u2 a3 = u2.a();
        j jVar = new j();
        a3.b = 1;
        a3.a = jVar;
    }

    public final void f() {
        int i2;
        int i3;
        int i4;
        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.q.getLayoutParams();
        o2 o2Var = this.z;
        if (o2Var.s <= 0 && (i4 = o2Var.t) >= 0) {
            if (i4 <= 0 || (this.A - this.q.getMeasuredHeight()) - d3.a(this.b, this.z.t) <= 0) {
                layoutParams.addRule(10, -1);
            } else {
                c2.b(E, "numberField_bottom");
                layoutParams.addRule(12, -1);
                layoutParams.setMargins(0, 0, 0, d3.a(this.b, this.z.t));
            }
        } else {
            int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
            this.q.measure(makeMeasureSpec, makeMeasureSpec);
            String str = E;
            StringBuilder a2 = rich.a.a("mPhoneLayout.getMeasuredHeight()=");
            a2.append(this.q.getMeasuredHeight());
            c2.b(str, a2.toString());
            if (this.z.s <= 0 || (this.A - this.q.getMeasuredHeight()) - d3.a(this.b, this.z.s) <= 0) {
                layoutParams.addRule(12, -1);
            } else {
                c2.b(str, "numberField_top");
                layoutParams.addRule(10, -1);
                layoutParams.setMargins(0, d3.a(this.b, this.z.s), 0, 0);
            }
        }
        this.q.setLayoutParams(layoutParams);
        RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) this.c.getLayoutParams();
        int max = Math.max(this.z.C, 0);
        int max2 = Math.max(this.z.D, 0);
        o2 o2Var2 = this.z;
        if (o2Var2.E <= 0 && (i3 = o2Var2.F) >= 0) {
            if (i3 <= 0 || this.A - d3.a(this.b, o2Var2.B + i3) <= 0) {
                layoutParams2.addRule(10, -1);
                layoutParams2.setMargins(d3.a(this.b, max), 0, d3.a(this.b, max2), 0);
            } else {
                c2.b(E, "logBtn_bottom");
                layoutParams2.addRule(12, -1);
                layoutParams2.setMargins(d3.a(this.b, max), 0, d3.a(this.b, max2), d3.a(this.b, this.z.F));
            }
        } else {
            if (this.z.E <= 0 || this.A - d3.a(this.b, r7.B + r8) <= 0) {
                layoutParams2.addRule(12, -1);
                layoutParams2.setMargins(d3.a(this.b, max), 0, d3.a(this.b, max2), 0);
            } else {
                c2.b(E, "logBtn_top");
                layoutParams2.addRule(10, -1);
                layoutParams2.setMargins(d3.a(this.b, max), d3.a(this.b, this.z.E), d3.a(this.b, max2), 0);
            }
        }
        this.c.setLayoutParams(layoutParams2);
        RelativeLayout.LayoutParams layoutParams3 = (RelativeLayout.LayoutParams) this.p.getLayoutParams();
        o2 o2Var3 = this.z;
        int i5 = o2Var3.h0;
        if (i5 >= 0) {
            int i6 = o2Var3.P;
            if (i6 <= 30) {
                i5 -= 30 - i6;
            }
        } else {
            int i7 = o2Var3.P;
            i5 = i7 > 30 ? 0 : -(30 - i7);
        }
        int max3 = Math.max(this.z.i0, 0);
        int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(0, 0);
        this.p.measure(makeMeasureSpec2, makeMeasureSpec2);
        o2 o2Var4 = this.z;
        if (o2Var4.j0 <= 0 && (i2 = o2Var4.k0) >= 0) {
            if (i2 <= 0 || (this.A - this.p.getMeasuredHeight()) - d3.a(this.b, this.z.k0) <= 0) {
                layoutParams3.addRule(10, -1);
                layoutParams3.setMargins(d3.a(this.b, i5), 0, d3.a(this.b, max3), 0);
                c2.b(E, "privacy_top");
            } else {
                String str2 = E;
                StringBuilder a3 = rich.a.a("privacy_bottom=");
                a3.append(this.p.getMeasuredHeight());
                c2.b(str2, a3.toString());
                layoutParams3.addRule(12, -1);
                layoutParams3.setMargins(d3.a(this.b, i5), 0, d3.a(this.b, max3), d3.a(this.b, this.z.k0));
            }
        } else if (this.z.j0 <= 0 || (this.A - this.p.getMeasuredHeight()) - d3.a(this.b, this.z.j0) <= 0) {
            c2.b(E, "privacy_bottom=" + i5);
            layoutParams3.addRule(12, -1);
            layoutParams3.setMargins(d3.a(this.b, (float) i5), 0, d3.a(this.b, (float) max3), 0);
        } else {
            String str3 = E;
            StringBuilder a4 = rich.a.a("privacy_top = ");
            a4.append(this.p.getMeasuredHeight());
            c2.b(str3, a4.toString());
            layoutParams3.addRule(10, -1);
            layoutParams3.setMargins(d3.a(this.b, i5), d3.a(this.b, this.z.j0), d3.a(this.b, max3), 0);
        }
        this.p.setLayoutParams(layoutParams3);
    }

    public final void g() {
        CheckBox checkBox;
        StringBuilder sb;
        if (Build.VERSION.SDK_INT >= 21) {
            getWindow().addFlags(67108864);
            getWindow().addFlags(134217728);
            if (this.z.b != 0) {
                getWindow().addFlags(Integer.MIN_VALUE);
                getWindow().clearFlags(67108864);
                getWindow().setStatusBarColor(this.z.b);
                getWindow().setNavigationBarColor(this.z.b);
            }
        }
        int i2 = (Build.VERSION.SDK_INT < 23 || !this.z.c) ? 0 : 8192;
        if (this.z.k) {
            i2 |= InputDeviceCompat.SOURCE_TOUCHSCREEN;
        }
        getWindow().getDecorView().setSystemUiVisibility(i2);
        RelativeLayout relativeLayout = new RelativeLayout(this);
        relativeLayout.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
        o2 o2Var = this.z;
        View view = o2Var.d;
        if (view != null) {
            ViewParent parent = view.getParent();
            if (parent != null) {
                ((ViewGroup) parent).removeView(view);
            }
            relativeLayout.addView(view);
        } else if (o2Var.e != -1) {
            getLayoutInflater().inflate(this.z.e, relativeLayout);
        }
        setContentView(relativeLayout);
        int requestedOrientation = getRequestedOrientation();
        WindowManager windowManager = (WindowManager) this.b.getSystemService("window");
        DisplayMetrics displayMetrics = new DisplayMetrics();
        if (windowManager != null) {
            windowManager.getDefaultDisplay().getMetrics(displayMetrics);
        }
        this.A = displayMetrics.heightPixels;
        WindowManager windowManager2 = (WindowManager) this.b.getSystemService("window");
        DisplayMetrics displayMetrics2 = new DisplayMetrics();
        if (windowManager2 != null) {
            windowManager2.getDefaultDisplay().getMetrics(displayMetrics2);
        }
        int i3 = displayMetrics2.widthPixels;
        this.B = i3;
        if ((requestedOrientation == 1 && i3 > this.A) || (requestedOrientation == 0 && i3 < this.A)) {
            this.B = this.A;
            this.A = i3;
        }
        c2.b(E, "orientation = " + requestedOrientation + "--screenWidth = " + this.B + "--screenHeight = " + this.A);
        WindowManager.LayoutParams attributes = getWindow().getAttributes();
        if (this.z.q0 != 0) {
            getWindow().getWindowManager().getDefaultDisplay().getMetrics(new DisplayMetrics());
            getWindowManager().getDefaultDisplay().getSize(new Point());
            attributes.width = d3.a(this.b, this.z.q0);
            attributes.height = d3.a(this.b, this.z.r0);
            this.B = attributes.width;
            this.A = attributes.height;
            attributes.x = d3.a(this.b, this.z.s0);
            if (this.z.u0 == 1) {
                getWindow().setGravity(80);
            } else {
                attributes.y = d3.a(this.b, r3.t0);
            }
            getWindow().setAttributes(attributes);
        }
        relativeLayout.setFitsSystemWindows(this.z.y0);
        relativeLayout.setClipToPadding(true);
        try {
            h();
            relativeLayout.addView(this.q);
            relativeLayout.addView(i());
            relativeLayout.addView(j());
            f();
            this.c.setOnClickListener(this);
            this.w.setOnClickListener(this);
            this.o.setOnCheckedChangeListener(new k());
            this.c.setClickable(true);
            this.o.setClickable(true);
            try {
                if (this.z.R) {
                    this.o.setChecked(true);
                    this.o.setBackgroundResource(b0.a(this, this.z.N));
                    this.c.setEnabled(true);
                    checkBox = this.o;
                    sb = new StringBuilder();
                    sb.append("复选框 已勾选 ");
                    sb.append(this.y);
                } else {
                    this.o.setChecked(false);
                    this.c.setEnabled(m());
                    this.o.setBackgroundResource(b0.a(this, this.z.O));
                    checkBox = this.o;
                    sb = new StringBuilder();
                    sb.append("复选框 请双击勾选 ");
                    sb.append(this.y);
                }
                checkBox.setContentDescription(sb.toString());
            } catch (Exception unused) {
                this.o.setChecked(false);
            }
        } catch (Exception e2) {
            y1.D.add(e2);
            e2.printStackTrace();
            c2.a(E, e2.toString());
            a("200040", "UI资源加载异常", this.l, null);
        }
    }

    /* JADX WARN: Can't wrap try/catch for region: R(13:1|(1:3)(11:(2:22|(1:24)(1:25))|5|6|7|8|(1:10)|11|12|13|14|15)|4|5|6|7|8|(0)|11|12|13|14|15) */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x00a1, code lost:
    
        r0.setTextColor(-13421773);
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x007a, code lost:
    
        r0.setTextSize(2, 18.0f);
     */
    /* JADX WARN: Removed duplicated region for block: B:10:0x008a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void h() {
        /*
            r7 = this;
            android.widget.RelativeLayout r0 = new android.widget.RelativeLayout
            r0.<init>(r7)
            r7.q = r0
            r1 = 13107(0x3333, float:1.8367E-41)
            r0.setId(r1)
            android.widget.RelativeLayout$LayoutParams r0 = new android.widget.RelativeLayout$LayoutParams
            r1 = -1
            r2 = -2
            r0.<init>(r1, r2)
            android.widget.RelativeLayout r1 = r7.q
            r1.setLayoutParams(r0)
            android.widget.TextView r0 = new android.widget.TextView
            r0.<init>(r7)
            android.widget.RelativeLayout$LayoutParams r1 = new android.widget.RelativeLayout$LayoutParams
            r1.<init>(r2, r2)
            r2 = 15
            r0.setGravity(r2)
            rich.o2 r2 = r7.z
            int r2 = r2.r
            r3 = 0
            if (r2 != 0) goto L34
            r2 = 13
        L30:
            r1.addRule(r2)
            goto L5b
        L34:
            if (r2 <= 0) goto L5b
            int r4 = r7.B
            int r5 = r0.getWidth()
            int r4 = r4 - r5
            android.content.Context r5 = r7.b
            float r2 = (float) r2
            int r5 = rich.d3.a(r5, r2)
            int r4 = r4 - r5
            if (r4 <= 0) goto L51
            android.content.Context r4 = r7.b
            int r2 = rich.d3.a(r4, r2)
            r1.setMargins(r2, r3, r3, r3)
            goto L5b
        L51:
            java.lang.String r2 = com.cmic.gen.sdk.view.GenLoginAuthActivity.E
            java.lang.String r4 = "RelativeLayout.ALIGN_PARENT_RIGHT"
            rich.c2.b(r2, r4)
            r2 = 11
            goto L30
        L5b:
            r2 = 2
            rich.o2 r4 = r7.z     // Catch: java.lang.Exception -> L7a
            int r4 = r4.o     // Catch: java.lang.Exception -> L7a
            float r4 = (float) r4     // Catch: java.lang.Exception -> L7a
            r0.setTextSize(r2, r4)     // Catch: java.lang.Exception -> L7a
            java.lang.String r4 = r7.n     // Catch: java.lang.Exception -> L7a
            java.lang.String r5 = "****"
            java.lang.String r6 = "星星星星"
            java.lang.String r4 = r4.replace(r5, r6)     // Catch: java.lang.Exception -> L7a
            java.lang.String r5 = "(.{1})"
            java.lang.String r6 = "$1 "
            java.lang.String r4 = r4.replaceAll(r5, r6)     // Catch: java.lang.Exception -> L7a
            r0.setContentDescription(r4)     // Catch: java.lang.Exception -> L7a
            goto L7f
        L7a:
            r4 = 1099956224(0x41900000, float:18.0)
            r0.setTextSize(r2, r4)
        L7f:
            java.lang.String r2 = r7.n
            r0.setText(r2)
            rich.o2 r2 = r7.z
            boolean r2 = r2.p
            if (r2 == 0) goto L8f
            android.graphics.Typeface r2 = android.graphics.Typeface.DEFAULT_BOLD
            r0.setTypeface(r2)
        L8f:
            r2 = 30583(0x7777, float:4.2856E-41)
            r0.setId(r2)
            android.widget.RelativeLayout r2 = r7.q
            r2.addView(r0, r1)
            rich.o2 r1 = r7.z     // Catch: java.lang.Exception -> La1
            int r1 = r1.q     // Catch: java.lang.Exception -> La1
            r0.setTextColor(r1)     // Catch: java.lang.Exception -> La1
            goto La7
        La1:
            r1 = -13421773(0xffffffffff333333, float:-2.3819765E38)
            r0.setTextColor(r1)
        La7:
            int r0 = android.view.View.MeasureSpec.makeMeasureSpec(r3, r3)
            android.widget.RelativeLayout r1 = r7.q
            r1.measure(r0, r0)
            java.lang.String r0 = com.cmic.gen.sdk.view.GenLoginAuthActivity.E
            java.lang.String r1 = "mPhoneLayout.getMeasuredHeight()="
            java.lang.StringBuilder r1 = rich.a.a(r1)
            android.widget.RelativeLayout r2 = r7.q
            int r2 = r2.getMeasuredHeight()
            r1.append(r2)
            java.lang.String r1 = r1.toString()
            rich.c2.b(r0, r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.cmic.gen.sdk.view.GenLoginAuthActivity.h():void");
    }

    public final RelativeLayout i() {
        RelativeLayout relativeLayout = new RelativeLayout(this);
        this.c = relativeLayout;
        relativeLayout.setId(17476);
        this.c.setLayoutParams(new RelativeLayout.LayoutParams(d3.a(this.b, this.z.A), d3.a(this.b, this.z.B)));
        TextView textView = new TextView(this);
        textView.setTextSize(2, this.z.w);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(13);
        textView.setLayoutParams(layoutParams);
        if (this.z.x) {
            textView.setTypeface(Typeface.DEFAULT_BOLD);
        }
        this.c.addView(textView);
        o2 o2Var = this.z;
        if (o2Var.v) {
            int i2 = o2Var.x0;
            o2Var.u = i2 == 1 ? "本機號碼登錄" : i2 == 2 ? "Login" : o2Var.u;
        }
        textView.setText(o2Var.u);
        try {
            textView.setTextColor(this.z.y);
        } catch (Exception unused) {
            textView.setTextColor(-1);
        }
        try {
            this.c.setBackgroundResource(b0.a(this.b, this.z.z));
        } catch (Exception e2) {
            e2.printStackTrace();
            this.c.setBackgroundResource(b0.a(this.b, "umcsdk_login_btn_bg"));
        }
        return this.c;
    }

    public final RelativeLayout j() {
        int i2;
        RelativeLayout relativeLayout = new RelativeLayout(this);
        this.p = relativeLayout;
        relativeLayout.setHorizontalGravity(1);
        this.p.setLayoutParams(new RelativeLayout.LayoutParams(-1, -2));
        int i3 = this.z.P;
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(d3.a(this.b, Math.max(i3, 30)), d3.a(this.b, Math.max(r0.Q, 30)));
        if (this.z.g0 == 1) {
            layoutParams.addRule(15, -1);
        }
        RelativeLayout relativeLayout2 = new RelativeLayout(this);
        this.w = relativeLayout2;
        relativeLayout2.setId(34952);
        this.w.setLayoutParams(layoutParams);
        CheckBox checkBox = new CheckBox(this);
        this.o = checkBox;
        checkBox.setChecked(false);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(d3.a(this.b, this.z.P), d3.a(this.b, this.z.Q));
        layoutParams2.setMargins(d3.a(this.b, i3 > 30 ? 0.0f : 30 - i3), 0, 0, 0);
        layoutParams2.addRule(11, -1);
        if (this.z.g0 == 1) {
            layoutParams2.addRule(15, -1);
        }
        this.o.setLayoutParams(layoutParams2);
        this.w.addView(this.o);
        this.p.addView(this.w);
        TextView textView = new TextView(this);
        textView.setTextSize(2, this.z.b0);
        RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams3.setMargins(d3.a(this.b, 5.0f), 0, 0, d3.a(this.b, 5.0f));
        layoutParams3.addRule(1, 34952);
        textView.setLayoutParams(layoutParams3);
        this.p.addView(textView);
        textView.setTextColor(this.z.d0);
        String str = this.y;
        String str2 = this.x;
        x2 x2Var = this.d;
        ArrayList arrayList = this.i;
        ArrayList arrayList2 = this.j;
        c2.b("getClauseSpannableString", str);
        SpannableString spannableString = new SpannableString(str);
        try {
            y2 y2Var = new y2(this, x2Var);
            z2 z2Var = arrayList.size() >= 1 ? new z2(this, arrayList) : null;
            a3 a3Var = arrayList.size() >= 2 ? new a3(this, arrayList) : null;
            b3 b3Var = arrayList.size() >= 3 ? new b3(this, arrayList) : null;
            c3 c3Var = arrayList.size() == 4 ? new c3(this, arrayList) : null;
            p0.b((Context) this).c();
            int indexOf = str.indexOf(str2);
            spannableString.setSpan(y2Var, indexOf, str2.length() + indexOf, 34);
            if (arrayList.size() >= 1) {
                String str3 = (String) arrayList2.get(0);
                i2 = str.indexOf(str3);
                spannableString.setSpan(z2Var, i2, str3.length() + i2, 34);
            } else {
                i2 = 0;
            }
            if (arrayList.size() >= 2) {
                int length = i2 + ((String) arrayList2.get(0)).length();
                String str4 = (String) arrayList2.get(1);
                i2 = str.indexOf(str4, length);
                spannableString.setSpan(a3Var, i2, str4.length() + i2, 34);
            }
            if (arrayList.size() >= 3) {
                int length2 = ((String) arrayList2.get(1)).length() + i2;
                String str5 = (String) arrayList2.get(2);
                int indexOf2 = str.indexOf(str5, length2);
                spannableString.setSpan(b3Var, indexOf2, str5.length() + indexOf2, 34);
            }
            if (arrayList.size() == 4) {
                int length3 = i2 + ((String) arrayList2.get(2)).length();
                String str6 = (String) arrayList2.get(3);
                int indexOf3 = str.indexOf(str6, length3);
                spannableString.setSpan(c3Var, indexOf3, str6.length() + indexOf3, 34);
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        textView.setText(spannableString);
        textView.setLineSpacing(8.0f, 1.0f);
        textView.setIncludeFontPadding(false);
        if (this.z.c0) {
            textView.setTypeface(Typeface.DEFAULT_BOLD);
        }
        if (this.z.f0) {
            textView.setGravity(17);
        }
        textView.setHighlightColor(getResources().getColor(R.color.transparent));
        this.p.setOnClickListener(new a());
        textView.setMovementMethod(new b(this));
        this.o.setButtonDrawable(new ColorDrawable());
        try {
            this.o.setBackgroundResource(b0.a(this, this.z.O));
        } catch (Exception unused) {
            this.o.setBackgroundResource(b0.a(this, "umcsdk_uncheck_image"));
        }
        return this.p;
    }

    public final void k() {
        this.c.setClickable(true);
        this.o.setClickable(true);
    }

    public final void l() {
        try {
            if (this.s >= 5) {
                Toast.makeText(this.b, "网络不稳定,请返回重试其他登录方式", 1).show();
                this.c.setClickable(true);
                return;
            }
            StackTraceElement[] stackTrace = Thread.currentThread().getStackTrace();
            StringBuilder sb = new StringBuilder();
            for (StackTraceElement stackTraceElement : stackTrace) {
                c2.a("stack", stackTraceElement.getClassName());
                String className = stackTraceElement.getClassName();
                if (!TextUtils.isEmpty(className) && className.contains("com.cmic.gen.sdk.activity") && !sb.toString().contains(className)) {
                    sb.append(className);
                    sb.append(";");
                }
            }
            this.l.a("loginTime", System.currentTimeMillis());
            String b2 = this.l.b("traceId", "");
            if (!TextUtils.isEmpty(b2) && d2.a(b2)) {
                String c2 = l2.c();
                this.l.a("traceId", c2);
                d2.a.put(c2, this.u);
            }
            c();
            this.c.setClickable(false);
            this.o.setClickable(false);
            n nVar = new n(this.l);
            this.a.postDelayed(nVar, p0.b((Context) this).c);
            k2.a(new m(this, nVar));
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public final boolean m() {
        if (!TextUtils.isEmpty(this.z.a())) {
            return true;
        }
        o2 o2Var = this.z;
        return (o2Var.K == null && o2Var.A0 == null && o2Var.M == null) ? false : true;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        try {
            int id = view.getId();
            if (id != 17476) {
                if (id == 26214) {
                    b();
                    return;
                } else {
                    if (id != 34952) {
                        return;
                    }
                    if (this.o.isChecked()) {
                        this.o.setChecked(false);
                        return;
                    } else {
                        this.o.setChecked(true);
                        return;
                    }
                }
            }
            if (!this.o.isChecked()) {
                if (this.z.M != null) {
                    w1.a("PrivacyNotSelectedCustom");
                    n2 n2Var = this.z.M;
                    Context context = this.b;
                    d dVar = new d();
                    n3.k kVar = (n3.k) n2Var;
                    if (n3.this.c.getUnCheckDialogAuthLoginListener() != null) {
                        n3.this.c.getUnCheckDialogAuthLoginListener().onUncheckedAuthLoginListener(context, dVar);
                        return;
                    }
                    return;
                }
                if (this.z.A0 != null) {
                    w1.a("PrivacyNotSelectedShake");
                    Context context2 = this.b;
                    this.p.startAnimation(AnimationUtils.loadAnimation(context2, b0.b(context2, this.z.A0)));
                    return;
                }
                if (this.z.K != null) {
                    w1.a("PrivacyNotSelectedPopup");
                    this.z.K.a(this.b, null);
                    return;
                } else if (!TextUtils.isEmpty(this.z.a())) {
                    w1.a("PrivacyNotSelectedToast");
                    Toast.makeText(this.b, this.z.a(), 1).show();
                    return;
                }
            }
            this.s++;
            l();
        } catch (Exception e2) {
            y1.D.add(e2);
            e2.printStackTrace();
        }
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (bundle != null) {
            try {
                finish();
            } catch (Exception e2) {
                if (this.l == null) {
                    this.l = new l0(0);
                }
                this.l.a().A.add(e2);
                c2.a(E, e2.toString());
                e2.printStackTrace();
                a("200025", "发生未知错误", this.l, null);
                return;
            }
        }
        this.b = this;
        o2 c2 = p0.b((Context) this).c();
        this.z = c2;
        if (c2 != null) {
            if (c2.v0 != -1) {
                setTheme(this.z.v0);
            }
            if (this.z.m0 != null && this.z.n0 != null) {
                overridePendingTransition(b0.b(this, this.z.m0), b0.b(this, this.z.n0));
            }
        }
        w1.a("authPageIn");
        this.r = System.currentTimeMillis();
        this.m = r0.a(this);
        e();
        g();
    }

    @Override // android.app.Activity
    public void onDestroy() {
        w1.b bVar;
        String str;
        try {
            this.a.removeCallbacksAndMessages(null);
            w1.a.put("timeOnAuthPage", (System.currentTimeMillis() - this.r) + "");
            if (this.o.isChecked()) {
                bVar = w1.a;
                str = "1";
            } else {
                bVar = w1.a;
                str = "0";
            }
            bVar.put("authPrivacyState", str);
            w1.a(this.b.getApplicationContext(), this.l);
            w1.a();
            this.D = null;
            u2 a2 = u2.a();
            if (a2.a != null && a2.b != 1) {
                a2.a = null;
                c2.b("LoginProxy", "mLoginAuthProxy == null");
            }
            this.t.removeCallbacksAndMessages(null);
        } catch (Exception e2) {
            c2.a(E, "GenLoginAuthActivity clear failed");
            y1.D.add(e2);
            e2.printStackTrace();
        }
        super.onDestroy();
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyUp(int i2, KeyEvent keyEvent) {
        if (i2 != 4 || keyEvent.isCanceled() || keyEvent.getRepeatCount() != 0) {
            return true;
        }
        p2 p2Var = this.z.I;
        if (p2Var != null) {
            n3.g gVar = (n3.g) p2Var;
            if (n3.this.c.getPressBackListener() != null) {
                n3.this.c.getPressBackListener().onPressBackListener();
            }
        }
        o2 o2Var = this.z;
        if (o2Var.q0 != 0 && !o2Var.z0) {
            return true;
        }
        b();
        return true;
    }

    @Override // android.app.Activity
    public void onResume() {
        super.onResume();
        try {
            l0 l0Var = this.l;
            if (l0Var != null) {
                l0Var.a("loginMethod", "loginAuth");
            }
            t2 t2Var = p0.b((Context) this).i;
            if (t2Var != null) {
                ((n3.d) t2Var).a("200087", null);
            }
        } catch (Exception e2) {
            e2.printStackTrace();
            this.l.a().A.add(e2);
            a("200025", "发生未知错误", this.l, null);
        }
    }

    /* loaded from: classes.dex */
    public static class m extends k2.a {
        public WeakReference b;
        public WeakReference c;

        /* loaded from: classes.dex */
        public class a implements s0 {
            public final /* synthetic */ GenLoginAuthActivity a;

            public a(GenLoginAuthActivity genLoginAuthActivity) {
                this.a = genLoginAuthActivity;
            }

            @Override // rich.s0
            public void a(String str, String str2, l0 l0Var, JSONObject jSONObject) {
                if (m.a(m.this)) {
                    long b = l0Var.b("loginTime", 0L);
                    String b2 = l0Var.b("phonescrip", "");
                    if (b != 0) {
                        l0Var.a("loginTime", System.currentTimeMillis() - b);
                    }
                    if (!"103000".equals(str) || TextUtils.isEmpty(b2)) {
                        this.a.v = false;
                        w1.a("authClickFailed");
                    } else {
                        w1.a("authClickSuccess");
                        this.a.v = true;
                    }
                    this.a.a(str, str2, l0Var, jSONObject);
                    try {
                        Thread.sleep(1000L);
                    } catch (InterruptedException e) {
                        e.printStackTrace();
                    }
                    this.a.t.sendEmptyMessage(1);
                }
            }
        }

        public m(GenLoginAuthActivity genLoginAuthActivity, n nVar) {
            this.b = new WeakReference(genLoginAuthActivity);
            this.c = new WeakReference(nVar);
        }

        @Override // rich.k2.a
        public void a() {
            GenLoginAuthActivity genLoginAuthActivity = (GenLoginAuthActivity) this.b.get();
            genLoginAuthActivity.l.a("logintype", 1);
            f2.a(true, false);
            genLoginAuthActivity.m.b(genLoginAuthActivity.l, new a(genLoginAuthActivity));
        }

        public static /* synthetic */ boolean a(m mVar) {
            n nVar = (n) mVar.c.get();
            if (mVar.b.get() == null || nVar == null) {
                return false;
            }
            return nVar.a(false);
        }
    }

    public final void a(String str, String str2, l0 l0Var, JSONObject jSONObject) {
        try {
            if (this.a == null) {
                this.a = new Handler(getMainLooper());
                this.t = new l(this);
            }
            this.a.removeCallbacksAndMessages(null);
            if ("103000".equals(str)) {
                if (p0.b((Context) this) == null || d2.b(l0Var.b("traceId", "")) == null) {
                    return;
                } else {
                    l0Var.a("keepListener", true);
                }
            } else {
                if ("200020".equals(str)) {
                    if (p0.b((Context) this) != null) {
                        if (d2.b(l0Var.b("traceId", "")) != null) {
                            p0.b((Context) this).a(str, str2, l0Var, jSONObject);
                        }
                        a();
                        return;
                    }
                    return;
                }
                l0Var.a("keepListener", true);
            }
            p0.b((Context) this).a(str, str2, l0Var, jSONObject);
        } catch (Exception e2) {
            c2.a(E, "CallbackResult:未知错误");
            e2.printStackTrace();
        }
    }
}
