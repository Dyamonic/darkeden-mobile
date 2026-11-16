package com.tencent.turingfd.sdk.ams.ad;

import java.util.ArrayList;
import java.util.List;
import java.util.Set;

/* loaded from: classes2.dex */
public class UrsaMajor {
    public static final List<String> a = new ArrayList();

    public static synchronized List<String> a(ITuringPkgProvider iTuringPkgProvider) {
        List<String> list;
        List<String> pkgs;
        synchronized (UrsaMajor.class) {
            list = a;
            if (((ArrayList) list).isEmpty() && iTuringPkgProvider != null && (pkgs = iTuringPkgProvider.getPkgs()) != null && !pkgs.isEmpty()) {
                ((ArrayList) list).addAll(pkgs);
            }
        }
        return list;
    }

    public static String a(Set<String> set) {
        StringBuilder sb = new StringBuilder();
        try {
            for (String str : set) {
                if (sb.length() > 0) {
                    sb.append("|");
                }
                sb.append(str);
            }
        } catch (Throwable unused) {
        }
        return sb.toString();
    }
}
