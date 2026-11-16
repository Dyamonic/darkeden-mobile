package com.alibaba.fastjson.parser;

/* loaded from: classes.dex */
public class ThrowableDeserializer extends JavaBeanDeserializer {
    public ThrowableDeserializer(ParserConfig parserConfig, Class<?> cls) {
        super(parserConfig, cls, cls);
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0032, code lost:
    
        if (java.lang.Throwable.class.isAssignableFrom(r2) != false) goto L18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x00d5, code lost:
    
        if (r2 != null) goto L112;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x00d7, code lost:
    
        r3 = (T) new java.lang.Exception(r11, r10);
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0162, code lost:
    
        if (r12 == null) goto L89;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x0164, code lost:
    
        ((java.lang.Throwable) r3).setStackTrace(r12);
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x0167, code lost:
    
        if (r4 == null) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x0169, code lost:
    
        if (r2 == null) goto L97;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x016d, code lost:
    
        if (r2 != r17.clazz) goto L94;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x016f, code lost:
    
        r6 = r17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x0180, code lost:
    
        if (r6 == null) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x0182, code lost:
    
        r0 = r4.entrySet().iterator();
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x018e, code lost:
    
        if (r0.hasNext() == false) goto L125;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x0190, code lost:
    
        r2 = (java.util.Map.Entry) r0.next();
        r4 = (java.lang.String) r2.getKey();
        r2 = r2.getValue();
        r4 = r6.getFieldDeserializer(r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x01a4, code lost:
    
        if (r4 == null) goto L127;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x01a6, code lost:
    
        r4.setValue(r3, r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x0171, code lost:
    
        r0 = r18.config.getDeserializer(r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x0179, code lost:
    
        if ((r0 instanceof com.alibaba.fastjson.parser.JavaBeanDeserializer) == false) goto L97;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x017b, code lost:
    
        r6 = (com.alibaba.fastjson.parser.JavaBeanDeserializer) r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x017f, code lost:
    
        r6 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x01aa, code lost:
    
        return (T) r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x00de, code lost:
    
        r3 = r2.getConstructors();
        r5 = r3.length;
        r8 = r6;
        r9 = r8;
        r13 = r9;
        r7 = 0;
        r8 = r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x00e8, code lost:
    
        if (r7 >= r5) goto L129;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x00ea, code lost:
    
        r15 = r3[r7];
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x00f1, code lost:
    
        if (r15.getParameterTypes().length != 0) goto L65;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x00f3, code lost:
    
        r13 = r15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x0129, code lost:
    
        r7 = r7 + 1;
        r8 = r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x00fa, code lost:
    
        if (r15.getParameterTypes().length != 1) goto L70;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x0106, code lost:
    
        if (r15.getParameterTypes()[0] != java.lang.String.class) goto L70;
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x0108, code lost:
    
        r9 = r15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x0110, code lost:
    
        if (r15.getParameterTypes().length != 2) goto L133;
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x011b, code lost:
    
        if (r15.getParameterTypes()[0] != java.lang.String.class) goto L134;
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x0126, code lost:
    
        if (r15.getParameterTypes()[1] != java.lang.Throwable.class) goto L135;
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x0128, code lost:
    
        r8 = r15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:87:0x012d, code lost:
    
        if (r8 == 0) goto L80;
     */
    /* JADX WARN: Code restructure failed: missing block: B:88:0x012f, code lost:
    
        r3 = (T) ((java.lang.Throwable) r8.newInstance(r11, r10));
     */
    /* JADX WARN: Code restructure failed: missing block: B:89:0x015b, code lost:
    
        if (r3 != null) goto L87;
     */
    /* JADX WARN: Code restructure failed: missing block: B:90:0x015d, code lost:
    
        r3 = (T) new java.lang.Exception(r11, r10);
     */
    /* JADX WARN: Code restructure failed: missing block: B:92:0x013f, code lost:
    
        if (r9 == null) goto L82;
     */
    /* JADX WARN: Code restructure failed: missing block: B:93:0x0141, code lost:
    
        r3 = (java.lang.Throwable) r9.newInstance(r11);
     */
    /* JADX WARN: Code restructure failed: missing block: B:94:0x014e, code lost:
    
        if (r13 == null) goto L84;
     */
    /* JADX WARN: Code restructure failed: missing block: B:95:0x0150, code lost:
    
        r3 = (java.lang.Throwable) r13.newInstance(new java.lang.Object[0]);
     */
    /* JADX WARN: Code restructure failed: missing block: B:96:0x015a, code lost:
    
        r3 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:97:0x01ab, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:99:0x01b3, code lost:
    
        throw new com.alibaba.fastjson.JSONException("create instance error", r0);
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r8v5 */
    @Override // com.alibaba.fastjson.parser.JavaBeanDeserializer, com.alibaba.fastjson.parser.deserializer.ObjectDeserializer
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public <T> T deserialze(com.alibaba.fastjson.parser.DefaultJSONParser r18, java.lang.reflect.Type r19, java.lang.Object r20) {
        /*
            Method dump skipped, instructions count: 447
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.parser.ThrowableDeserializer.deserialze(com.alibaba.fastjson.parser.DefaultJSONParser, java.lang.reflect.Type, java.lang.Object):java.lang.Object");
    }
}
