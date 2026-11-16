package com.qq.gdt.action.e.a.a;

/* loaded from: classes.dex */
public class b {
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0053, code lost:
    
        r5.waitFor();
        r5 = r5.exitValue();
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x005a, code lost:
    
        if (r5 == 0) goto L26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x005c, code lost:
    
        java.lang.System.err.println("命令执行失败，退出值: " + r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:?, code lost:
    
        return "";
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:?, code lost:
    
        return "";
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String a(java.lang.String r5) {
        /*
            java.lang.System.currentTimeMillis()
            r0 = 4
            java.lang.String[] r0 = new java.lang.String[r0]     // Catch: java.lang.InterruptedException -> L73 java.io.IOException -> L75
            r1 = 0
            java.lang.String r2 = "/system/bin/stat"
            r0[r1] = r2     // Catch: java.lang.InterruptedException -> L73 java.io.IOException -> L75
            r1 = 1
            java.lang.String r2 = "-c"
            r0[r1] = r2     // Catch: java.lang.InterruptedException -> L73 java.io.IOException -> L75
            r1 = 2
            java.lang.String r2 = "%i"
            r0[r1] = r2     // Catch: java.lang.InterruptedException -> L73 java.io.IOException -> L75
            r1 = 3
            r0[r1] = r5     // Catch: java.lang.InterruptedException -> L73 java.io.IOException -> L75
            java.lang.Runtime r5 = java.lang.Runtime.getRuntime()     // Catch: java.lang.InterruptedException -> L73 java.io.IOException -> L75
            java.lang.Process r5 = r5.exec(r0)     // Catch: java.lang.InterruptedException -> L73 java.io.IOException -> L75
            java.io.BufferedReader r0 = new java.io.BufferedReader     // Catch: java.lang.InterruptedException -> L73 java.io.IOException -> L75
            java.io.InputStreamReader r1 = new java.io.InputStreamReader     // Catch: java.lang.InterruptedException -> L73 java.io.IOException -> L75
            java.io.InputStream r2 = r5.getInputStream()     // Catch: java.lang.InterruptedException -> L73 java.io.IOException -> L75
            r1.<init>(r2)     // Catch: java.lang.InterruptedException -> L73 java.io.IOException -> L75
            r0.<init>(r1)     // Catch: java.lang.InterruptedException -> L73 java.io.IOException -> L75
        L2e:
            java.lang.String r1 = r0.readLine()     // Catch: java.lang.InterruptedException -> L73 java.io.IOException -> L75
            if (r1 == 0) goto L53
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch: java.lang.NumberFormatException -> L4e java.lang.InterruptedException -> L73 java.io.IOException -> L75
            r2.<init>()     // Catch: java.lang.NumberFormatException -> L4e java.lang.InterruptedException -> L73 java.io.IOException -> L75
            java.lang.String r1 = r1.trim()     // Catch: java.lang.NumberFormatException -> L4e java.lang.InterruptedException -> L73 java.io.IOException -> L75
            long r3 = java.lang.Long.parseLong(r1)     // Catch: java.lang.NumberFormatException -> L4e java.lang.InterruptedException -> L73 java.io.IOException -> L75
            r2.append(r3)     // Catch: java.lang.NumberFormatException -> L4e java.lang.InterruptedException -> L73 java.io.IOException -> L75
            java.lang.String r1 = " "
            r2.append(r1)     // Catch: java.lang.NumberFormatException -> L4e java.lang.InterruptedException -> L73 java.io.IOException -> L75
            java.lang.String r5 = r2.toString()     // Catch: java.lang.NumberFormatException -> L4e java.lang.InterruptedException -> L73 java.io.IOException -> L75
            return r5
        L4e:
            r1 = move-exception
            r1.printStackTrace()     // Catch: java.lang.InterruptedException -> L73 java.io.IOException -> L75
            goto L2e
        L53:
            r5.waitFor()     // Catch: java.lang.InterruptedException -> L73 java.io.IOException -> L75
            int r5 = r5.exitValue()     // Catch: java.lang.InterruptedException -> L73 java.io.IOException -> L75
            if (r5 == 0) goto L79
            java.io.PrintStream r0 = java.lang.System.err     // Catch: java.lang.InterruptedException -> L73 java.io.IOException -> L75
            java.lang.StringBuilder r1 = new java.lang.StringBuilder     // Catch: java.lang.InterruptedException -> L73 java.io.IOException -> L75
            r1.<init>()     // Catch: java.lang.InterruptedException -> L73 java.io.IOException -> L75
            java.lang.String r2 = "命令执行失败，退出值: "
            r1.append(r2)     // Catch: java.lang.InterruptedException -> L73 java.io.IOException -> L75
            r1.append(r5)     // Catch: java.lang.InterruptedException -> L73 java.io.IOException -> L75
            java.lang.String r5 = r1.toString()     // Catch: java.lang.InterruptedException -> L73 java.io.IOException -> L75
            r0.println(r5)     // Catch: java.lang.InterruptedException -> L73 java.io.IOException -> L75
            goto L79
        L73:
            r5 = move-exception
            goto L76
        L75:
            r5 = move-exception
        L76:
            r5.printStackTrace()
        L79:
            java.lang.String r5 = ""
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.qq.gdt.action.e.a.a.b.a(java.lang.String):java.lang.String");
    }
}
