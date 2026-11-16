package com.bytedance.bdtracker;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedList;

/* loaded from: classes.dex */
public class o1 {
    public final LinkedList<x3> a = new LinkedList<>();
    public final LinkedList<String> b = new LinkedList<>();

    public int a(ArrayList<x3> arrayList, d dVar, i0 i0Var) {
        int size;
        synchronized (this.a) {
            size = this.a.size();
            Iterator<x3> it = this.a.iterator();
            while (it.hasNext()) {
                x3 next = it.next();
                i0Var.a(dVar, next, arrayList);
                arrayList.add(next);
            }
            this.a.clear();
        }
        return size;
    }

    public void a(x3 x3Var) {
        synchronized (this.a) {
            if (this.a.size() > 300) {
                this.a.poll();
            }
            this.a.add(x3Var);
        }
    }

    public void a(String[] strArr) {
        synchronized (this.b) {
            if (this.b.size() > 300) {
                this.b.poll();
            }
            this.b.addAll(Arrays.asList(strArr));
        }
    }
}
