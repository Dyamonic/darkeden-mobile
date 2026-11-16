package com.bytedance.bdtracker;

import android.content.Context;
import android.os.Build;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import cz.msebera.android.httpclient.HttpStatus;
import java.lang.reflect.Method;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class a2 extends q1 {
    public final Context e;
    public final d f;

    public a2(d dVar, Context context) {
        super(true, false);
        this.f = dVar;
        this.e = context;
    }

    @Override // com.bytedance.bdtracker.q1
    public String a() {
        return "Display";
    }

    @Override // com.bytedance.bdtracker.q1
    public boolean a(JSONObject jSONObject) {
        String str;
        int i;
        int i2;
        int i3;
        int i4 = this.e.getResources().getDisplayMetrics().densityDpi;
        switch (i4) {
            case 120:
                str = "ldpi";
                break;
            case 240:
                str = "hdpi";
                break;
            case 260:
            case 280:
            case HttpStatus.SC_MULTIPLE_CHOICES /* 300 */:
            case 320:
                str = "xhdpi";
                break;
            case 340:
            case 360:
            case HttpStatus.SC_BAD_REQUEST /* 400 */:
            case HttpStatus.SC_METHOD_FAILURE /* 420 */:
            case 440:
            case 480:
                str = "xxhdpi";
                break;
            case 560:
            case 640:
                str = "xxxhdpi";
                break;
            default:
                str = "mdpi";
                break;
        }
        jSONObject.put("density_dpi", i4);
        jSONObject.put("display_density", str);
        WindowManager windowManager = (WindowManager) this.e.getSystemService("window");
        DisplayMetrics displayMetrics = new DisplayMetrics();
        Display defaultDisplay = windowManager.getDefaultDisplay();
        if (defaultDisplay != null) {
            try {
            } catch (Throwable th) {
                th = th;
                i = 0;
            }
            if (Build.VERSION.SDK_INT >= 17) {
                defaultDisplay.getRealMetrics(displayMetrics);
                i = displayMetrics.widthPixels;
                try {
                    i2 = displayMetrics.heightPixels;
                    i3 = i;
                } catch (Throwable th2) {
                    th = th2;
                    this.f.D.error("Get screen pixels failed", th, new Object[0]);
                    i3 = i;
                    i2 = 0;
                    int[] iArr = {i3, i2};
                    jSONObject.put("resolution", iArr[1] + "x" + iArr[0]);
                    return true;
                }
                int[] iArr2 = {i3, i2};
                jSONObject.put("resolution", iArr2[1] + "x" + iArr2[0]);
                return true;
            }
        }
        Method method = Display.class.getMethod("getRawHeight", new Class[0]);
        Method method2 = Display.class.getMethod("getRawWidth", new Class[0]);
        i3 = method2 != null ? ((Integer) method2.invoke(defaultDisplay, new Object[0])).intValue() : 0;
        if (method != null) {
            try {
                i2 = ((Integer) method.invoke(defaultDisplay, new Object[0])).intValue();
                i = i3;
                i3 = i;
            } catch (Throwable th3) {
                th = th3;
                i = i3;
                this.f.D.error("Get screen pixels failed", th, new Object[0]);
                i3 = i;
                i2 = 0;
                int[] iArr22 = {i3, i2};
                jSONObject.put("resolution", iArr22[1] + "x" + iArr22[0]);
                return true;
            }
            int[] iArr222 = {i3, i2};
            jSONObject.put("resolution", iArr222[1] + "x" + iArr222[0]);
            return true;
        }
        i2 = 0;
        int[] iArr2222 = {i3, i2};
        jSONObject.put("resolution", iArr2222[1] + "x" + iArr2222[0]);
        return true;
    }
}
