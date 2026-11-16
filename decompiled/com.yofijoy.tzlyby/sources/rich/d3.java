package rich;

import android.content.Context;
import android.view.View;
import android.widget.ImageButton;
import android.widget.RelativeLayout;
import android.widget.TextView;

/* loaded from: classes2.dex */
public class d3 {
    public static int a(Context context, float f) {
        if (f < 0.0f) {
            return (int) f;
        }
        try {
            return (int) ((f * context.getResources().getDisplayMetrics().density) + 0.5f);
        } catch (Exception unused) {
            return (int) f;
        }
    }

    public static RelativeLayout a(Context context, View view, int i, int i2, String str, View.OnClickListener onClickListener) {
        o2 c = p0.b(context).c();
        RelativeLayout relativeLayout = new RelativeLayout(context);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, view != null ? -2 : a(context, 49.0f));
        layoutParams.addRule(10, -1);
        relativeLayout.setLayoutParams(layoutParams);
        relativeLayout.setId(i);
        TextView textView = new TextView(context);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams2.addRule(13, -1);
        textView.setLayoutParams(layoutParams2);
        textView.setTextColor(c.i);
        textView.setTextSize(2, c.h);
        textView.setText(str);
        if (view != null) {
            relativeLayout.addView(view);
            relativeLayout.addView(textView);
            return relativeLayout;
        }
        relativeLayout.addView(textView);
        ImageButton imageButton = new ImageButton(context);
        RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(a(context, c.m), a(context, c.n));
        layoutParams3.addRule(9, -1);
        layoutParams3.addRule(15, -1);
        layoutParams3.setMargins(a(context, 12.0f), 0, 0, 0);
        imageButton.setLayoutParams(layoutParams3);
        imageButton.setId(i2);
        imageButton.setOnClickListener(onClickListener);
        imageButton.setBackgroundColor(0);
        relativeLayout.addView(imageButton);
        try {
            relativeLayout.setBackgroundColor(p0.b(context).c().j);
        } catch (Exception unused) {
            relativeLayout.setBackgroundColor(-16742704);
        }
        imageButton.setImageResource(b0.a(context, "umcsdk_return_bg"));
        return relativeLayout;
    }
}
