package rich;

import android.os.Handler;
import android.os.Looper;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Queue;
import java.util.Set;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes2.dex */
public class p {
    public AtomicInteger a;
    public final Map b;
    public final Set c;
    public final PriorityBlockingQueue d;
    public final PriorityBlockingQueue e;
    public final c f;
    public final h g;
    public final r h;
    public i[] i;
    public d j;
    public List k;

    /* loaded from: classes2.dex */
    public interface a {
        void a(o oVar);
    }

    public p(c cVar, h hVar) {
        f fVar = new f(new Handler(Looper.getMainLooper()));
        this.a = new AtomicInteger();
        this.b = new HashMap();
        this.c = new HashSet();
        this.d = new PriorityBlockingQueue();
        this.e = new PriorityBlockingQueue();
        this.k = new ArrayList();
        this.f = cVar;
        this.g = hVar;
        this.i = new i[4];
        this.h = fVar;
    }

    public o a(o oVar) {
        oVar.h = this;
        synchronized (this.c) {
            this.c.add(oVar);
        }
        oVar.g = Integer.valueOf(this.a.incrementAndGet());
        oVar.a("add-to-queue");
        if (!oVar.i) {
            this.e.add(oVar);
            return oVar;
        }
        synchronized (this.b) {
            String b = oVar.b();
            if (this.b.containsKey(b)) {
                Queue queue = (Queue) this.b.get(b);
                if (queue == null) {
                    queue = new LinkedList();
                }
                queue.add(oVar);
                this.b.put(b, queue);
                if (v.b) {
                    v.d("Request for cacheKey=%s is in flight, putting on hold.", b);
                }
            } else {
                this.b.put(b, null);
                this.d.add(oVar);
            }
        }
        return oVar;
    }

    public void b(o oVar) {
        synchronized (this.c) {
            this.c.remove(oVar);
        }
        synchronized (this.k) {
            Iterator it = this.k.iterator();
            while (it.hasNext()) {
                ((a) it.next()).a(oVar);
            }
        }
        if (oVar.i) {
            synchronized (this.b) {
                String b = oVar.b();
                Queue queue = (Queue) this.b.remove(b);
                if (queue != null) {
                    if (v.b) {
                        v.d("Releasing %d waiting requests for cacheKey=%s.", Integer.valueOf(queue.size()), b);
                    }
                    this.d.addAll(queue);
                }
            }
        }
    }
}
