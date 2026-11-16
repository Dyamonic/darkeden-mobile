package com.qq.gdt.action;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import com.qq.gdt.action.j.g;
import com.qq.gdt.action.j.o;

/* loaded from: classes.dex */
public class GDTInitProvider extends ContentProvider {
    /* JADX WARN: Code restructure failed: missing block: B:10:0x0068, code lost:
    
        com.qq.gdt.action.h.a.a(3302);
        com.qq.gdt.action.j.o.a("cp not match method ", new java.lang.Object[0]);
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0076, code lost:
    
        com.qq.gdt.action.h.a.a(3307);
        r6 = com.qq.gdt.action.multioprocess.d.a().a;
        com.qq.gdt.action.j.o.a("cp process get UserMessage = " + r6, new java.lang.Object[0]);
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0097, code lost:
    
        if (r6 == null) goto L20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0099, code lost:
    
        com.qq.gdt.action.j.o.a("cp memory UserMessage not null", new java.lang.Object[0]);
        com.qq.gdt.action.h.a.a(3401, r6);
        r7.putSerializable("result_user_info", r6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x00ab, code lost:
    
        com.qq.gdt.action.j.s.a(new com.qq.gdt.action.GDTInitProvider.AnonymousClass1(r5));
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0066, code lost:
    
        if (r1 == 1) goto L17;
     */
    @Override // android.content.ContentProvider
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.os.Bundle call(java.lang.String r6, java.lang.String r7, android.os.Bundle r8) {
        /*
            Method dump skipped, instructions count: 286
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.qq.gdt.action.GDTInitProvider.call(java.lang.String, java.lang.String, android.os.Bundle):android.os.Bundle");
    }

    @Override // android.content.ContentProvider
    public Bundle call(String str, String str2, String str3, Bundle bundle) {
        return super.call(str, str2, str3, bundle);
    }

    @Override // android.content.ContentProvider
    public int delete(Uri uri, String str, String[] strArr) {
        return 0;
    }

    @Override // android.content.ContentProvider
    public String getType(Uri uri) {
        return null;
    }

    @Override // android.content.ContentProvider
    public Uri insert(Uri uri, ContentValues contentValues) {
        return null;
    }

    @Override // android.content.ContentProvider
    public boolean onCreate() {
        try {
            o.a("GDTInitProvider", "MySDKInitProvider onCreate >>> " + hashCode(), new Object[0]);
            com.qq.gdt.action.j.g.a().a(true);
            com.qq.gdt.action.j.g.a().a = g.a.CP;
            return true;
        } catch (Exception e) {
            o.c("GDTInitProvider onCreate e = " + e.toString());
            return true;
        }
    }

    @Override // android.content.ContentProvider
    public Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        return null;
    }

    @Override // android.content.ContentProvider
    public int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        return 0;
    }
}
