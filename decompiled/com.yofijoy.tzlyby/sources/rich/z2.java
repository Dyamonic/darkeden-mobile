package rich;

import android.content.Context;
import android.text.TextPaint;
import android.text.style.ClickableSpan;
import android.view.View;
import java.util.ArrayList;

/* loaded from: classes2.dex */
public class z2 extends ClickableSpan {
    public final /* synthetic */ Context a;
    public final /* synthetic */ ArrayList b;

    public z2(Context context, ArrayList arrayList) {
        this.a = context;
        this.b = arrayList;
    }

    @Override // android.text.style.ClickableSpan
    public void onClick(View view) {
        if (this.b.get(0) == null || ((x2) this.b.get(0)).isShowing()) {
            return;
        }
        ((x2) this.b.get(0)).show();
    }

    @Override // android.text.style.ClickableSpan, android.text.style.CharacterStyle
    public void updateDrawState(TextPaint textPaint) {
        super.updateDrawState(textPaint);
        textPaint.setUnderlineText(false);
        try {
            textPaint.setColor(p0.b(this.a).c().e0);
        } catch (Exception unused) {
            textPaint.setColor(-16007674);
        }
    }
}
