package com.tencent.turingfd.sdk.ams.ad;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import com.tencent.turingfd.sdk.ams.ad.Berry;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* renamed from: com.tencent.turingfd.sdk.ams.ad.const, reason: invalid class name */
/* loaded from: classes2.dex */
public class Cconst extends Handler {
    public final Nectarine a;
    public final List<Orion> b;

    public Cconst(Looper looper, Nectarine nectarine) {
        super(looper);
        this.b = new ArrayList();
        this.a = nectarine;
    }

    public final void a() {
        for (Orion orion : this.b) {
            orion.getClass();
            synchronized (Orion.i) {
                int i = Orion.j;
                if (i < 200) {
                    Orion.j = i + 1;
                    orion.a = Orion.k;
                    Orion.k = orion;
                }
            }
        }
        this.b.clear();
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        int i = message.what;
        Durian durian = null;
        if (i == 1) {
            Object obj = message.obj;
            if (obj instanceof String) {
                ((Berry.Cdo) this.a).a(new Cfinal((String) obj, 3, null));
                return;
            }
            return;
        }
        if (i != 2) {
            return;
        }
        Object obj2 = message.obj;
        if (obj2 instanceof Orion) {
            Orion orion = (Orion) obj2;
            String str = orion.b;
            if (TextUtils.isEmpty(str)) {
                return;
            }
            if (!this.b.isEmpty() && !this.b.get(0).b.equals(orion.b)) {
                a();
            }
            int i2 = orion.c;
            if (i2 == 0) {
                a();
                this.b.add(orion);
                return;
            }
            if (i2 != 1) {
                if (i2 != 2) {
                    if (i2 != 3) {
                        return;
                    }
                    a();
                    return;
                } else {
                    this.b.isEmpty();
                    this.b.add(orion);
                    return;
                }
            }
            if (this.b.isEmpty()) {
                return;
            }
            this.b.add(orion);
            List<Orion> list = this.b;
            ArrayList arrayList = new ArrayList();
            if (list.size() <= 8) {
                arrayList.addAll(list);
            } else {
                Orion orion2 = list.get(0);
                Orion orion3 = list.get(list.size() - 1);
                list.remove(orion2);
                list.remove(orion3);
                int ceil = (int) Math.ceil(list.size() / 6);
                arrayList.add(orion2);
                for (int i3 = 1; i3 < list.size(); i3 += ceil) {
                    arrayList.add(list.get(i3));
                }
                arrayList.add(orion3);
            }
            if (!arrayList.isEmpty()) {
                Orion orion4 = (Orion) arrayList.get(0);
                Durian durian2 = new Durian();
                long currentTimeMillis = System.currentTimeMillis();
                long j = orion4.h;
                durian2.b = (int) (currentTimeMillis - j);
                durian2.a = j;
                ArrayList<Fig> arrayList2 = new ArrayList<>();
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    Orion orion5 = (Orion) it.next();
                    Fig fig = new Fig();
                    int i4 = orion5.c;
                    if (i4 == 0) {
                        fig.a = 1;
                    } else if (i4 == 1) {
                        fig.a = 3;
                    } else if (i4 == 2) {
                        fig.a = 2;
                    } else if (i4 != 3) {
                        fig.a = 0;
                    } else {
                        fig.a = 4;
                    }
                    fig.d = orion5.f;
                    fig.e = orion5.g;
                    arrayList2.add(fig);
                }
                durian2.c = arrayList2;
                durian = durian2;
            }
            if (durian == null) {
                return;
            }
            if (orion.d <= 0) {
                durian.d |= 1;
            }
            if (orion.e == 0) {
                durian.d |= 2;
            }
            if (durian.d != 0) {
                ((Berry.Cdo) this.a).a(new Cfinal(str, 2, durian));
            } else {
                ((Berry.Cdo) this.a).a(new Cfinal(str, 1, durian));
            }
            a();
        }
    }
}
