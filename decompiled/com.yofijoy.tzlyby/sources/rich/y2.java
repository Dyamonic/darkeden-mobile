package rich;

import android.content.Context;
import android.text.TextPaint;
import android.text.style.ClickableSpan;
import android.view.View;

/* loaded from: classes2.dex */
public class y2 extends ClickableSpan {
    public final /* synthetic */ Context a;
    public final /* synthetic */ x2 b;

    public y2(Context context, x2 x2Var) {
        this.a = context;
        this.b = x2Var;
    }

    @Override // android.text.style.ClickableSpan
    public void onClick(View view) {
        x2 x2Var = this.b;
        if (x2Var == null || x2Var.isShowing()) {
            return;
        }
        this.b.show();
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
