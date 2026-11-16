package rich;

import android.content.Context;
import android.text.TextPaint;
import android.text.style.ClickableSpan;
import android.view.View;
import java.util.ArrayList;

/* loaded from: classes2.dex */
public class b3 extends ClickableSpan {
    public final /* synthetic */ Context a;
    public final /* synthetic */ ArrayList b;

    public b3(Context context, ArrayList arrayList) {
        this.a = context;
        this.b = arrayList;
    }

    @Override // android.text.style.ClickableSpan
    public void onClick(View view) {
        if (this.b.get(2) == null || ((x2) this.b.get(2)).isShowing()) {
            return;
        }
        ((x2) this.b.get(2)).show();
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
