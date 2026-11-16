package com.bytedance.bdtracker;

import java.util.HashMap;
import java.util.HashSet;

/* loaded from: classes.dex */
public class g1 extends f1 {
    public g1(HashSet<String> hashSet, HashMap<String, HashSet<String>> hashMap) {
        super(hashSet, hashMap);
    }

    @Override // com.bytedance.bdtracker.f1
    public boolean a(String str) {
        return !this.a.contains(str);
    }

    @Override // com.bytedance.bdtracker.f1
    public boolean a(HashSet<String> hashSet, String str) {
        return !hashSet.contains(str);
    }
}
