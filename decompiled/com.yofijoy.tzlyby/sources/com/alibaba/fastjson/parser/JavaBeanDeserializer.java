package com.alibaba.fastjson.parser;

import com.alibaba.fastjson.JSONException;
import com.alibaba.fastjson.JSONObject;
import com.alibaba.fastjson.parser.deserializer.ExtraProcessable;
import com.alibaba.fastjson.parser.deserializer.ExtraProcessor;
import com.alibaba.fastjson.parser.deserializer.ExtraTypeProvider;
import com.alibaba.fastjson.parser.deserializer.FieldDeserializer;
import com.alibaba.fastjson.parser.deserializer.ObjectDeserializer;
import com.alibaba.fastjson.util.FieldInfo;
import com.alibaba.fastjson.util.TypeUtils;
import com.taptap.sdk.login.internal.handlers.web.WebLoginFragment;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.lang.reflect.Type;
import java.util.Arrays;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;

/* loaded from: classes.dex */
public class JavaBeanDeserializer implements ObjectDeserializer {
    private final Map<String, FieldDeserializer> alterNameFieldDeserializers;
    public final JavaBeanInfo beanInfo;
    protected final Class<?> clazz;
    private ConcurrentMap<String, Object> extraFieldDeserializers;
    private final FieldDeserializer[] fieldDeserializers;
    private transient long[] smartMatchHashArray;
    private transient int[] smartMatchHashArrayMapping;
    private final FieldDeserializer[] sortedFieldDeserializers;

    public JavaBeanDeserializer(ParserConfig parserConfig, Class<?> cls, Type type) {
        this(parserConfig, cls, type, JavaBeanInfo.build(cls, cls.getModifiers(), type, false, true, true, true, parserConfig.propertyNamingStrategy));
    }

    public JavaBeanDeserializer(ParserConfig parserConfig, Class<?> cls, Type type, JavaBeanInfo javaBeanInfo) {
        this.clazz = cls;
        this.beanInfo = javaBeanInfo;
        this.sortedFieldDeserializers = new FieldDeserializer[javaBeanInfo.sortedFields.length];
        int length = javaBeanInfo.sortedFields.length;
        HashMap hashMap = null;
        for (int i = 0; i < length; i++) {
            FieldInfo fieldInfo = javaBeanInfo.sortedFields[i];
            FieldDeserializer createFieldDeserializer = parserConfig.createFieldDeserializer(parserConfig, cls, fieldInfo);
            this.sortedFieldDeserializers[i] = createFieldDeserializer;
            for (String str : fieldInfo.alternateNames) {
                if (hashMap == null) {
                    hashMap = new HashMap();
                }
                hashMap.put(str, createFieldDeserializer);
            }
        }
        this.alterNameFieldDeserializers = hashMap;
        this.fieldDeserializers = new FieldDeserializer[javaBeanInfo.fields.length];
        int length2 = javaBeanInfo.fields.length;
        for (int i2 = 0; i2 < length2; i2++) {
            this.fieldDeserializers[i2] = getFieldDeserializer(javaBeanInfo.fields[i2].name);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Object createInstance(DefaultJSONParser defaultJSONParser, Type type) {
        Object newInstance;
        if ((type instanceof Class) && this.clazz.isInterface()) {
            return Proxy.newProxyInstance(Thread.currentThread().getContextClassLoader(), new Class[]{(Class) type}, new JSONObject((defaultJSONParser.lexer.features & Feature.OrderedField.mask) != 0));
        }
        if (this.beanInfo.defaultConstructor == null && this.beanInfo.factoryMethod == null) {
            return null;
        }
        if (this.beanInfo.factoryMethod != null && this.beanInfo.defaultConstructorParameterSize > 0) {
            return null;
        }
        try {
            Constructor<?> constructor = this.beanInfo.defaultConstructor;
            if (this.beanInfo.defaultConstructorParameterSize != 0) {
                newInstance = constructor.newInstance(defaultJSONParser.contex.object);
            } else if (constructor != null) {
                newInstance = constructor.newInstance(new Object[0]);
            } else {
                newInstance = this.beanInfo.factoryMethod.invoke(null, new Object[0]);
            }
            if (defaultJSONParser != null && (defaultJSONParser.lexer.features & Feature.InitStringFieldAsEmpty.mask) != 0) {
                for (FieldInfo fieldInfo : this.beanInfo.fields) {
                    if (fieldInfo.fieldClass == String.class) {
                        fieldInfo.set(newInstance, "");
                    }
                }
            }
            return newInstance;
        } catch (Exception e) {
            throw new JSONException("create instance error, class " + this.clazz.getName(), e);
        }
    }

    @Override // com.alibaba.fastjson.parser.deserializer.ObjectDeserializer
    public <T> T deserialze(DefaultJSONParser defaultJSONParser, Type type, Object obj) {
        return (T) deserialze(defaultJSONParser, type, obj, null);
    }

    private <T> T deserialzeArrayMapping(DefaultJSONParser defaultJSONParser, Type type, Object obj, Object obj2) {
        Enum r8;
        String str;
        JSONLexer jSONLexer = defaultJSONParser.lexer;
        T t = (T) createInstance(defaultJSONParser, type);
        int length = this.sortedFieldDeserializers.length;
        int i = 0;
        while (i < length) {
            char c = i == length + (-1) ? ']' : ',';
            FieldDeserializer fieldDeserializer = this.sortedFieldDeserializers[i];
            FieldInfo fieldInfo = fieldDeserializer.fieldInfo;
            Class<?> cls = fieldInfo.fieldClass;
            try {
                if (cls == Integer.TYPE) {
                    int scanLongValue = (int) jSONLexer.scanLongValue();
                    if (fieldInfo.fieldAccess) {
                        fieldInfo.field.setInt(t, scanLongValue);
                    } else {
                        fieldDeserializer.setValue(t, new Integer(scanLongValue));
                    }
                    if (jSONLexer.ch == ',') {
                        int i2 = jSONLexer.bp + 1;
                        jSONLexer.bp = i2;
                        jSONLexer.ch = i2 >= jSONLexer.len ? JSONLexer.EOI : jSONLexer.text.charAt(i2);
                        jSONLexer.token = 16;
                    } else if (jSONLexer.ch == ']') {
                        int i3 = jSONLexer.bp + 1;
                        jSONLexer.bp = i3;
                        jSONLexer.ch = i3 >= jSONLexer.len ? JSONLexer.EOI : jSONLexer.text.charAt(i3);
                        jSONLexer.token = 15;
                    } else {
                        jSONLexer.nextToken();
                    }
                } else if (cls == String.class) {
                    if (jSONLexer.ch == '\"') {
                        str = jSONLexer.scanStringValue('\"');
                    } else if (jSONLexer.ch == 'n' && jSONLexer.text.startsWith("null", jSONLexer.bp)) {
                        jSONLexer.bp += 4;
                        jSONLexer.ch = jSONLexer.bp >= jSONLexer.len ? JSONLexer.EOI : jSONLexer.text.charAt(jSONLexer.bp);
                        str = null;
                    } else {
                        throw new JSONException("not match string. feild : " + obj);
                    }
                    if (fieldInfo.fieldAccess) {
                        fieldInfo.field.set(t, str);
                    } else {
                        fieldDeserializer.setValue(t, str);
                    }
                    if (jSONLexer.ch == ',') {
                        int i4 = jSONLexer.bp + 1;
                        jSONLexer.bp = i4;
                        jSONLexer.ch = i4 >= jSONLexer.len ? JSONLexer.EOI : jSONLexer.text.charAt(i4);
                        jSONLexer.token = 16;
                    } else if (jSONLexer.ch == ']') {
                        int i5 = jSONLexer.bp + 1;
                        jSONLexer.bp = i5;
                        jSONLexer.ch = i5 >= jSONLexer.len ? JSONLexer.EOI : jSONLexer.text.charAt(i5);
                        jSONLexer.token = 15;
                    } else {
                        jSONLexer.nextToken();
                    }
                } else {
                    if (cls == Long.TYPE) {
                        long scanLongValue2 = jSONLexer.scanLongValue();
                        if (fieldInfo.fieldAccess) {
                            fieldInfo.field.setLong(t, scanLongValue2);
                        } else {
                            fieldDeserializer.setValue(t, new Long(scanLongValue2));
                        }
                        if (jSONLexer.ch == ',') {
                            int i6 = jSONLexer.bp + 1;
                            jSONLexer.bp = i6;
                            jSONLexer.ch = i6 >= jSONLexer.len ? JSONLexer.EOI : jSONLexer.text.charAt(i6);
                            jSONLexer.token = 16;
                        } else if (jSONLexer.ch == ']') {
                            int i7 = jSONLexer.bp + 1;
                            jSONLexer.bp = i7;
                            jSONLexer.ch = i7 >= jSONLexer.len ? JSONLexer.EOI : jSONLexer.text.charAt(i7);
                            jSONLexer.token = 15;
                        } else {
                            jSONLexer.nextToken();
                        }
                    } else if (cls == Boolean.TYPE) {
                        boolean scanBoolean = jSONLexer.scanBoolean();
                        if (fieldInfo.fieldAccess) {
                            fieldInfo.field.setBoolean(t, scanBoolean);
                        } else {
                            fieldDeserializer.setValue(t, Boolean.valueOf(scanBoolean));
                        }
                        if (jSONLexer.ch == ',') {
                            int i8 = jSONLexer.bp + 1;
                            jSONLexer.bp = i8;
                            jSONLexer.ch = i8 >= jSONLexer.len ? JSONLexer.EOI : jSONLexer.text.charAt(i8);
                            jSONLexer.token = 16;
                        } else if (jSONLexer.ch == ']') {
                            int i9 = jSONLexer.bp + 1;
                            jSONLexer.bp = i9;
                            jSONLexer.ch = i9 >= jSONLexer.len ? JSONLexer.EOI : jSONLexer.text.charAt(i9);
                            jSONLexer.token = 15;
                        } else {
                            jSONLexer.nextToken();
                        }
                    } else if (cls.isEnum()) {
                        char c2 = jSONLexer.ch;
                        if (c2 == '\"') {
                            String scanSymbol = jSONLexer.scanSymbol(defaultJSONParser.symbolTable);
                            r8 = scanSymbol == null ? null : Enum.valueOf(cls, scanSymbol);
                        } else if (c2 >= '0' && c2 <= '9') {
                            r8 = ((EnumDeserializer) ((DefaultFieldDeserializer) fieldDeserializer).getFieldValueDeserilizer(defaultJSONParser.config)).ordinalEnums[(int) jSONLexer.scanLongValue()];
                        } else {
                            throw new JSONException("illegal enum." + jSONLexer.info());
                        }
                        fieldDeserializer.setValue(t, r8);
                        if (jSONLexer.ch == ',') {
                            int i10 = jSONLexer.bp + 1;
                            jSONLexer.bp = i10;
                            jSONLexer.ch = i10 >= jSONLexer.len ? JSONLexer.EOI : jSONLexer.text.charAt(i10);
                            jSONLexer.token = 16;
                        } else if (jSONLexer.ch == ']') {
                            int i11 = jSONLexer.bp + 1;
                            jSONLexer.bp = i11;
                            jSONLexer.ch = i11 >= jSONLexer.len ? JSONLexer.EOI : jSONLexer.text.charAt(i11);
                            jSONLexer.token = 15;
                        } else {
                            jSONLexer.nextToken();
                        }
                    } else if (cls == Date.class && jSONLexer.ch == '1') {
                        fieldDeserializer.setValue(t, new Date(jSONLexer.scanLongValue()));
                        if (jSONLexer.ch == ',') {
                            int i12 = jSONLexer.bp + 1;
                            jSONLexer.bp = i12;
                            jSONLexer.ch = i12 >= jSONLexer.len ? JSONLexer.EOI : jSONLexer.text.charAt(i12);
                            jSONLexer.token = 16;
                        } else if (jSONLexer.ch == ']') {
                            int i13 = jSONLexer.bp + 1;
                            jSONLexer.bp = i13;
                            jSONLexer.ch = i13 >= jSONLexer.len ? JSONLexer.EOI : jSONLexer.text.charAt(i13);
                            jSONLexer.token = 15;
                        } else {
                            jSONLexer.nextToken();
                        }
                    } else {
                        if (jSONLexer.ch == '[') {
                            int i14 = jSONLexer.bp + 1;
                            jSONLexer.bp = i14;
                            jSONLexer.ch = i14 >= jSONLexer.len ? JSONLexer.EOI : jSONLexer.text.charAt(i14);
                            jSONLexer.token = 14;
                        } else if (jSONLexer.ch == '{') {
                            int i15 = jSONLexer.bp + 1;
                            jSONLexer.bp = i15;
                            jSONLexer.ch = i15 >= jSONLexer.len ? JSONLexer.EOI : jSONLexer.text.charAt(i15);
                            jSONLexer.token = 12;
                        } else {
                            jSONLexer.nextToken();
                        }
                        fieldDeserializer.parseField(defaultJSONParser, t, fieldInfo.fieldType, null);
                        if (c == ']') {
                            if (jSONLexer.token != 15) {
                                throw new JSONException("syntax error");
                            }
                        } else if (c == ',' && jSONLexer.token != 16) {
                            throw new JSONException("syntax error");
                        }
                    }
                    i++;
                }
                i++;
            } catch (IllegalAccessException e) {
                throw new JSONException("set " + fieldInfo.name + WebLoginFragment.QUERY_KEY_ERROR, e);
            }
        }
        if (jSONLexer.ch == ',') {
            int i16 = jSONLexer.bp + 1;
            jSONLexer.bp = i16;
            jSONLexer.ch = i16 >= jSONLexer.len ? JSONLexer.EOI : jSONLexer.text.charAt(i16);
            jSONLexer.token = 16;
        } else {
            jSONLexer.nextToken();
        }
        return t;
    }

    /* JADX WARN: Code restructure failed: missing block: B:100:0x02fc, code lost:
    
        r10.nextTokenWithChar(kotlinx.serialization.json.internal.AbstractJsonLexerKt.COLON);
        r0 = r10.token;
     */
    /* JADX WARN: Code restructure failed: missing block: B:101:0x0302, code lost:
    
        if (r0 != 4) goto L271;
     */
    /* JADX WARN: Code restructure failed: missing block: B:102:0x0304, code lost:
    
        r0 = r10.stringVal();
     */
    /* JADX WARN: Code restructure failed: missing block: B:103:0x030e, code lost:
    
        if ("@".equals(r0) == false) goto L241;
     */
    /* JADX WARN: Code restructure failed: missing block: B:105:0x0312, code lost:
    
        r1 = (T) r14.object;
     */
    /* JADX WARN: Code restructure failed: missing block: B:106:0x035f, code lost:
    
        r10.nextToken(13);
     */
    /* JADX WARN: Code restructure failed: missing block: B:107:0x0366, code lost:
    
        if (r10.token != 13) goto L268;
     */
    /* JADX WARN: Code restructure failed: missing block: B:108:0x0368, code lost:
    
        r10.nextToken(16);
        r39.setContext(r14, r1, r41);
     */
    /* JADX WARN: Code restructure failed: missing block: B:109:0x0370, code lost:
    
        r2 = r20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:110:0x0372, code lost:
    
        if (r2 == null) goto L266;
     */
    /* JADX WARN: Code restructure failed: missing block: B:111:0x0374, code lost:
    
        r2.object = r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:112:0x0376, code lost:
    
        r39.setContext(r14);
     */
    /* JADX WARN: Code restructure failed: missing block: B:113:0x0379, code lost:
    
        return (T) r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:117:0x0383, code lost:
    
        throw new com.alibaba.fastjson.JSONException("illegal ref");
     */
    /* JADX WARN: Code restructure failed: missing block: B:119:0x031a, code lost:
    
        if ("..".equals(r0) == false) goto L248;
     */
    /* JADX WARN: Code restructure failed: missing block: B:120:0x031c, code lost:
    
        r2 = r14.parent;
     */
    /* JADX WARN: Code restructure failed: missing block: B:121:0x0320, code lost:
    
        if (r2.object == null) goto L246;
     */
    /* JADX WARN: Code restructure failed: missing block: B:122:0x0322, code lost:
    
        r1 = (T) r2.object;
     */
    /* JADX WARN: Code restructure failed: missing block: B:123:0x0325, code lost:
    
        r39.addResolveTask(new com.alibaba.fastjson.parser.DefaultJSONParser.ResolveTask(r2, r0));
        r39.resolveStatus = 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:125:0x0337, code lost:
    
        if ("$".equals(r0) == false) goto L259;
     */
    /* JADX WARN: Code restructure failed: missing block: B:126:0x0339, code lost:
    
        r2 = r14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:128:0x033c, code lost:
    
        if (r2.parent == null) goto L552;
     */
    /* JADX WARN: Code restructure failed: missing block: B:129:0x033e, code lost:
    
        r2 = r2.parent;
     */
    /* JADX WARN: Code restructure failed: missing block: B:132:0x0343, code lost:
    
        if (r2.object == null) goto L257;
     */
    /* JADX WARN: Code restructure failed: missing block: B:133:0x0345, code lost:
    
        r1 = (T) r2.object;
     */
    /* JADX WARN: Code restructure failed: missing block: B:134:0x0348, code lost:
    
        r39.addResolveTask(new com.alibaba.fastjson.parser.DefaultJSONParser.ResolveTask(r2, r0));
        r39.resolveStatus = 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:135:0x0354, code lost:
    
        r39.addResolveTask(new com.alibaba.fastjson.parser.DefaultJSONParser.ResolveTask(r14, r0));
        r39.resolveStatus = 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:137:0x03a0, code lost:
    
        throw new com.alibaba.fastjson.JSONException("illegal ref, " + com.alibaba.fastjson.parser.JSONToken.name(r0));
     */
    /* JADX WARN: Code restructure failed: missing block: B:195:0x06ee, code lost:
    
        throw new com.alibaba.fastjson.JSONException("syntax error, unexpect token " + com.alibaba.fastjson.parser.JSONToken.name(r10.token));
     */
    /* JADX WARN: Code restructure failed: missing block: B:199:0x05d6, code lost:
    
        r2 = r20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:358:0x03f1, code lost:
    
        r5 = getSeeAlso(r39.config, r38.beanInfo, r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:359:0x03f9, code lost:
    
        if (r5 != null) goto L302;
     */
    /* JADX WARN: Code restructure failed: missing block: B:360:0x03fb, code lost:
    
        r5 = r39.config.checkAutoType(r4, r38.clazz, r10.features);
        r0 = com.alibaba.fastjson.util.TypeUtils.getClass(r40);
     */
    /* JADX WARN: Code restructure failed: missing block: B:361:0x0409, code lost:
    
        if (r0 == null) goto L301;
     */
    /* JADX WARN: Code restructure failed: missing block: B:362:0x040b, code lost:
    
        if (r5 == null) goto L299;
     */
    /* JADX WARN: Code restructure failed: missing block: B:364:0x0411, code lost:
    
        if (r0.isAssignableFrom(r5) == false) goto L299;
     */
    /* JADX WARN: Code restructure failed: missing block: B:367:0x041b, code lost:
    
        throw new com.alibaba.fastjson.JSONException("type not match");
     */
    /* JADX WARN: Code restructure failed: missing block: B:368:0x041c, code lost:
    
        r5 = r39.config.getDeserializer(r5);
        r0 = r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:370:0x042b, code lost:
    
        if ((r5 instanceof com.alibaba.fastjson.parser.JavaBeanDeserializer) == false) goto L308;
     */
    /* JADX WARN: Code restructure failed: missing block: B:371:0x042d, code lost:
    
        r5 = r5;
        r0 = (T) r5.deserialze(r39, r0, r41, null);
     */
    /* JADX WARN: Code restructure failed: missing block: B:372:0x0434, code lost:
    
        if (r3 == null) goto L309;
     */
    /* JADX WARN: Code restructure failed: missing block: B:373:0x0436, code lost:
    
        r5.getFieldDeserializer(r3).setValue(r0, r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:374:0x0442, code lost:
    
        if (r2 == null) goto L311;
     */
    /* JADX WARN: Code restructure failed: missing block: B:375:0x0444, code lost:
    
        r2.object = r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:376:0x0446, code lost:
    
        r39.setContext(r14);
     */
    /* JADX WARN: Code restructure failed: missing block: B:377:0x0449, code lost:
    
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:378:0x043e, code lost:
    
        r0 = (T) r5.deserialze(r39, r0, r41);
     */
    /* JADX WARN: Code restructure failed: missing block: B:379:0x0428, code lost:
    
        r0 = null;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:144:0x0463 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:147:0x046b A[Catch: all -> 0x047d, TryCatch #9 {all -> 0x047d, blocks: (B:209:0x05e2, B:242:0x0631, B:243:0x0639, B:245:0x063f, B:248:0x0651, B:116:0x037c, B:117:0x0383, B:136:0x0384, B:137:0x03a0, B:385:0x03a6, B:343:0x03b0, B:345:0x03b8, B:347:0x03c5, B:349:0x03d2, B:355:0x03d8, B:358:0x03f1, B:360:0x03fb, B:363:0x040d, B:366:0x0414, B:367:0x041b, B:368:0x041c, B:369:0x0429, B:371:0x042d, B:373:0x0436, B:378:0x043e, B:382:0x044a, B:383:0x0451, B:145:0x0465, B:147:0x046b, B:149:0x0477), top: B:384:0x03a6 }] */
    /* JADX WARN: Removed duplicated region for block: B:149:0x0477 A[Catch: all -> 0x047d, TRY_LEAVE, TryCatch #9 {all -> 0x047d, blocks: (B:209:0x05e2, B:242:0x0631, B:243:0x0639, B:245:0x063f, B:248:0x0651, B:116:0x037c, B:117:0x0383, B:136:0x0384, B:137:0x03a0, B:385:0x03a6, B:343:0x03b0, B:345:0x03b8, B:347:0x03c5, B:349:0x03d2, B:355:0x03d8, B:358:0x03f1, B:360:0x03fb, B:363:0x040d, B:366:0x0414, B:367:0x041b, B:368:0x041c, B:369:0x0429, B:371:0x042d, B:373:0x0436, B:378:0x043e, B:382:0x044a, B:383:0x0451, B:145:0x0465, B:147:0x046b, B:149:0x0477), top: B:384:0x03a6 }] */
    /* JADX WARN: Removed duplicated region for block: B:153:0x0486  */
    /* JADX WARN: Removed duplicated region for block: B:182:0x05c8  */
    /* JADX WARN: Removed duplicated region for block: B:186:0x05cd A[Catch: all -> 0x06f7, TryCatch #5 {all -> 0x06f7, blocks: (B:328:0x0488, B:180:0x05c2, B:186:0x05cd, B:198:0x05d3, B:189:0x06b8, B:191:0x06be, B:194:0x06d2, B:195:0x06ee, B:155:0x0495, B:160:0x049e, B:165:0x04a7, B:170:0x04b0, B:176:0x04d5, B:177:0x058c, B:267:0x04bc, B:268:0x04c4, B:269:0x04cc, B:270:0x04d1, B:275:0x04e6, B:280:0x04f0, B:285:0x04f9, B:290:0x0502, B:295:0x050b, B:296:0x0512, B:298:0x0516, B:300:0x051a, B:301:0x051f, B:302:0x0528, B:304:0x052c, B:306:0x0530, B:307:0x0534, B:308:0x053d, B:310:0x0541, B:312:0x0545, B:313:0x054b, B:314:0x0555, B:316:0x0559, B:318:0x055d, B:319:0x0563, B:273:0x0587, B:322:0x056e, B:323:0x0586, B:329:0x0594, B:331:0x05ac, B:335:0x05b2, B:336:0x05bc, B:339:0x06ef, B:340:0x06f6), top: B:327:0x0488, inners: #6 }] */
    /* JADX WARN: Removed duplicated region for block: B:262:0x0701  */
    /* JADX WARN: Removed duplicated region for block: B:329:0x0594 A[Catch: all -> 0x06f7, TryCatch #5 {all -> 0x06f7, blocks: (B:328:0x0488, B:180:0x05c2, B:186:0x05cd, B:198:0x05d3, B:189:0x06b8, B:191:0x06be, B:194:0x06d2, B:195:0x06ee, B:155:0x0495, B:160:0x049e, B:165:0x04a7, B:170:0x04b0, B:176:0x04d5, B:177:0x058c, B:267:0x04bc, B:268:0x04c4, B:269:0x04cc, B:270:0x04d1, B:275:0x04e6, B:280:0x04f0, B:285:0x04f9, B:290:0x0502, B:295:0x050b, B:296:0x0512, B:298:0x0516, B:300:0x051a, B:301:0x051f, B:302:0x0528, B:304:0x052c, B:306:0x0530, B:307:0x0534, B:308:0x053d, B:310:0x0541, B:312:0x0545, B:313:0x054b, B:314:0x0555, B:316:0x0559, B:318:0x055d, B:319:0x0563, B:273:0x0587, B:322:0x056e, B:323:0x0586, B:329:0x0594, B:331:0x05ac, B:335:0x05b2, B:336:0x05bc, B:339:0x06ef, B:340:0x06f6), top: B:327:0x0488, inners: #6 }] */
    /* JADX WARN: Removed duplicated region for block: B:32:0x005f A[Catch: all -> 0x0040, TRY_LEAVE, TryCatch #0 {all -> 0x0040, blocks: (B:17:0x0030, B:19:0x0035, B:25:0x004a, B:27:0x0050, B:32:0x005f, B:39:0x006e, B:44:0x007a, B:46:0x0084, B:49:0x008b, B:51:0x00a0, B:52:0x00a8, B:53:0x00b1, B:58:0x00b7), top: B:15:0x002e }] */
    /* JADX WARN: Removed duplicated region for block: B:345:0x03b8 A[Catch: all -> 0x047d, TryCatch #9 {all -> 0x047d, blocks: (B:209:0x05e2, B:242:0x0631, B:243:0x0639, B:245:0x063f, B:248:0x0651, B:116:0x037c, B:117:0x0383, B:136:0x0384, B:137:0x03a0, B:385:0x03a6, B:343:0x03b0, B:345:0x03b8, B:347:0x03c5, B:349:0x03d2, B:355:0x03d8, B:358:0x03f1, B:360:0x03fb, B:363:0x040d, B:366:0x0414, B:367:0x041b, B:368:0x041c, B:369:0x0429, B:371:0x042d, B:373:0x0436, B:378:0x043e, B:382:0x044a, B:383:0x0451, B:145:0x0465, B:147:0x046b, B:149:0x0477), top: B:384:0x03a6 }] */
    /* JADX WARN: Removed duplicated region for block: B:381:0x044a A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:398:0x0458 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:535:0x02b5  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x0110 A[Catch: all -> 0x00e5, TryCatch #4 {all -> 0x00e5, blocks: (B:539:0x00d0, B:541:0x00d6, B:66:0x00f3, B:69:0x0110, B:74:0x0121, B:81:0x012f, B:92:0x02d7, B:393:0x02df, B:104:0x0310, B:120:0x031c, B:122:0x0322, B:123:0x0325, B:127:0x033a, B:129:0x033e, B:131:0x0341, B:133:0x0345, B:134:0x0348, B:400:0x013f, B:404:0x0143, B:408:0x0153, B:411:0x015c, B:414:0x0160, B:415:0x0164, B:420:0x016e, B:425:0x0178, B:430:0x0182, B:432:0x0186, B:434:0x0190, B:436:0x0198, B:438:0x019f, B:442:0x01a3, B:445:0x01b8, B:448:0x01c2, B:451:0x01c6, B:454:0x01ce, B:457:0x01d8, B:460:0x01dc, B:463:0x01e4, B:466:0x01ee, B:469:0x01f2, B:472:0x01fa, B:475:0x0204, B:478:0x0208, B:481:0x0210, B:484:0x021a, B:487:0x021e, B:488:0x0222, B:495:0x0233, B:499:0x023c, B:503:0x0240, B:504:0x0244, B:506:0x0252, B:509:0x0256, B:510:0x0259, B:513:0x0267, B:516:0x026b, B:517:0x026e, B:521:0x0289, B:525:0x028d, B:526:0x0293, B:530:0x02a4, B:534:0x02a8, B:536:0x0103), top: B:538:0x00d0 }] */
    /* JADX WARN: Removed duplicated region for block: B:87:0x02cb  */
    /* JADX WARN: Type inference failed for: r0v56, types: [com.alibaba.fastjson.parser.deserializer.ObjectDeserializer] */
    /* JADX WARN: Type inference failed for: r39v0, types: [com.alibaba.fastjson.parser.DefaultJSONParser] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private <T> T deserialze(com.alibaba.fastjson.parser.DefaultJSONParser r39, java.lang.reflect.Type r40, java.lang.Object r41, java.lang.Object r42) {
        /*
            Method dump skipped, instructions count: 1804
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.parser.JavaBeanDeserializer.deserialze(com.alibaba.fastjson.parser.DefaultJSONParser, java.lang.reflect.Type, java.lang.Object, java.lang.Object):java.lang.Object");
    }

    protected FieldDeserializer getFieldDeserializerByHash(long j) {
        int i = 0;
        while (true) {
            FieldDeserializer[] fieldDeserializerArr = this.sortedFieldDeserializers;
            if (i >= fieldDeserializerArr.length) {
                return null;
            }
            FieldDeserializer fieldDeserializer = fieldDeserializerArr[i];
            if (fieldDeserializer.fieldInfo.nameHashCode == j) {
                return fieldDeserializer;
            }
            i++;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public FieldDeserializer getFieldDeserializer(String str) {
        if (str == null) {
            return null;
        }
        int i = 0;
        if (!this.beanInfo.ordered) {
            int length = this.sortedFieldDeserializers.length - 1;
            while (i <= length) {
                int i2 = (i + length) >>> 1;
                int compareTo = this.sortedFieldDeserializers[i2].fieldInfo.name.compareTo(str);
                if (compareTo < 0) {
                    i = i2 + 1;
                } else {
                    if (compareTo <= 0) {
                        return this.sortedFieldDeserializers[i2];
                    }
                    length = i2 - 1;
                }
            }
            Map<String, FieldDeserializer> map = this.alterNameFieldDeserializers;
            if (map != null) {
                return map.get(str);
            }
            return null;
        }
        while (true) {
            FieldDeserializer[] fieldDeserializerArr = this.sortedFieldDeserializers;
            if (i >= fieldDeserializerArr.length) {
                return null;
            }
            FieldDeserializer fieldDeserializer = fieldDeserializerArr[i];
            if (fieldDeserializer.fieldInfo.name.equalsIgnoreCase(str)) {
                return fieldDeserializer;
            }
            i++;
        }
    }

    private boolean parseField(DefaultJSONParser defaultJSONParser, String str, Object obj, Type type, Map<String, Object> map) {
        boolean z;
        JSONLexer jSONLexer = defaultJSONParser.lexer;
        FieldDeserializer fieldDeserializer = getFieldDeserializer(str);
        if (fieldDeserializer == null) {
            long fnv_64_lower = TypeUtils.fnv_64_lower(str);
            if (this.smartMatchHashArray == null) {
                long[] jArr = new long[this.sortedFieldDeserializers.length];
                int i = 0;
                while (true) {
                    FieldDeserializer[] fieldDeserializerArr = this.sortedFieldDeserializers;
                    if (i >= fieldDeserializerArr.length) {
                        break;
                    }
                    jArr[i] = TypeUtils.fnv_64_lower(fieldDeserializerArr[i].fieldInfo.name);
                    i++;
                }
                Arrays.sort(jArr);
                this.smartMatchHashArray = jArr;
            }
            int binarySearch = Arrays.binarySearch(this.smartMatchHashArray, fnv_64_lower);
            if (binarySearch < 0) {
                z = str.startsWith("is");
                if (z) {
                    binarySearch = Arrays.binarySearch(this.smartMatchHashArray, TypeUtils.fnv_64_lower(str.substring(2)));
                }
            } else {
                z = false;
            }
            if (binarySearch >= 0) {
                if (this.smartMatchHashArrayMapping == null) {
                    int[] iArr = new int[this.smartMatchHashArray.length];
                    Arrays.fill(iArr, -1);
                    int i2 = 0;
                    while (true) {
                        FieldDeserializer[] fieldDeserializerArr2 = this.sortedFieldDeserializers;
                        if (i2 >= fieldDeserializerArr2.length) {
                            break;
                        }
                        int binarySearch2 = Arrays.binarySearch(this.smartMatchHashArray, TypeUtils.fnv_64_lower(fieldDeserializerArr2[i2].fieldInfo.name));
                        if (binarySearch2 >= 0) {
                            iArr[binarySearch2] = i2;
                        }
                        i2++;
                    }
                    this.smartMatchHashArrayMapping = iArr;
                }
                int i3 = this.smartMatchHashArrayMapping[binarySearch];
                if (i3 != -1) {
                    fieldDeserializer = this.sortedFieldDeserializers[i3];
                    Class<?> cls = fieldDeserializer.fieldInfo.fieldClass;
                    if (z && cls != Boolean.TYPE && cls != Boolean.class) {
                        fieldDeserializer = null;
                    }
                }
            }
        }
        int i4 = Feature.SupportNonPublicField.mask;
        if (fieldDeserializer == null && ((defaultJSONParser.lexer.features & i4) != 0 || (i4 & this.beanInfo.parserFeatures) != 0)) {
            if (this.extraFieldDeserializers == null) {
                ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap(1, 0.75f, 1);
                for (Class<?> cls2 = this.clazz; cls2 != null && cls2 != Object.class; cls2 = cls2.getSuperclass()) {
                    for (Field field : cls2.getDeclaredFields()) {
                        String name = field.getName();
                        if (getFieldDeserializer(name) == null) {
                            int modifiers = field.getModifiers();
                            if ((modifiers & 16) == 0 && (modifiers & 8) == 0) {
                                concurrentHashMap.put(name, field);
                            }
                        }
                    }
                }
                this.extraFieldDeserializers = concurrentHashMap;
            }
            Object obj2 = this.extraFieldDeserializers.get(str);
            if (obj2 != null) {
                if (obj2 instanceof FieldDeserializer) {
                    fieldDeserializer = (FieldDeserializer) obj2;
                } else {
                    Field field2 = (Field) obj2;
                    field2.setAccessible(true);
                    fieldDeserializer = new DefaultFieldDeserializer(defaultJSONParser.config, this.clazz, new FieldInfo(str, field2.getDeclaringClass(), field2.getType(), field2.getGenericType(), field2, 0, 0));
                    this.extraFieldDeserializers.put(str, fieldDeserializer);
                }
            }
        }
        if (fieldDeserializer == null) {
            parseExtra(defaultJSONParser, obj, str);
            return false;
        }
        jSONLexer.nextTokenWithChar(AbstractJsonLexerKt.COLON);
        fieldDeserializer.parseField(defaultJSONParser, obj, type, map);
        return true;
    }

    void parseExtra(DefaultJSONParser defaultJSONParser, Object obj, String str) {
        Object parseObject;
        JSONLexer jSONLexer = defaultJSONParser.lexer;
        if ((defaultJSONParser.lexer.features & Feature.IgnoreNotMatch.mask) == 0) {
            throw new JSONException("setter not found, class " + this.clazz.getName() + ", property " + str);
        }
        jSONLexer.nextTokenWithChar(AbstractJsonLexerKt.COLON);
        Type type = null;
        List<ExtraTypeProvider> list = defaultJSONParser.extraTypeProviders;
        if (list != null) {
            Iterator<ExtraTypeProvider> it = list.iterator();
            while (it.hasNext()) {
                type = it.next().getExtraType(obj, str);
            }
        }
        if (type == null) {
            parseObject = defaultJSONParser.parse();
        } else {
            parseObject = defaultJSONParser.parseObject(type);
        }
        if (obj instanceof ExtraProcessable) {
            ((ExtraProcessable) obj).processExtra(str, parseObject);
            return;
        }
        List<ExtraProcessor> list2 = defaultJSONParser.extraProcessors;
        if (list2 != null) {
            Iterator<ExtraProcessor> it2 = list2.iterator();
            while (it2.hasNext()) {
                it2.next().processExtra(obj, str, parseObject);
            }
        }
    }

    public Object createInstance(Map<String, Object> map, ParserConfig parserConfig) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        if (this.beanInfo.creatorConstructor == null) {
            Object createInstance = createInstance((DefaultJSONParser) null, this.clazz);
            for (Map.Entry<String, Object> entry : map.entrySet()) {
                FieldDeserializer fieldDeserializer = getFieldDeserializer(entry.getKey());
                if (fieldDeserializer != null) {
                    Object value = entry.getValue();
                    Method method = fieldDeserializer.fieldInfo.method;
                    if (method != null) {
                        method.invoke(createInstance, TypeUtils.cast(value, method.getGenericParameterTypes()[0], parserConfig));
                    } else {
                        fieldDeserializer.fieldInfo.field.set(createInstance, TypeUtils.cast(value, fieldDeserializer.fieldInfo.fieldType, parserConfig));
                    }
                }
            }
            return createInstance;
        }
        FieldInfo[] fieldInfoArr = this.beanInfo.fields;
        int length = fieldInfoArr.length;
        Object[] objArr = new Object[length];
        for (int i = 0; i < length; i++) {
            FieldInfo fieldInfo = fieldInfoArr[i];
            Object obj = map.get(fieldInfo.name);
            if (obj == null) {
                obj = TypeUtils.defaultValue(fieldInfo.fieldClass);
            }
            objArr[i] = obj;
        }
        if (this.beanInfo.creatorConstructor == null) {
            return null;
        }
        try {
            return this.beanInfo.creatorConstructor.newInstance(objArr);
        } catch (Exception e) {
            throw new JSONException("create instance error, " + this.beanInfo.creatorConstructor.toGenericString(), e);
        }
    }

    protected JavaBeanDeserializer getSeeAlso(ParserConfig parserConfig, JavaBeanInfo javaBeanInfo, String str) {
        if (javaBeanInfo.jsonType == null) {
            return null;
        }
        for (Class<?> cls : javaBeanInfo.jsonType.seeAlso()) {
            ObjectDeserializer deserializer = parserConfig.getDeserializer(cls);
            if (deserializer instanceof JavaBeanDeserializer) {
                JavaBeanDeserializer javaBeanDeserializer = (JavaBeanDeserializer) deserializer;
                JavaBeanInfo javaBeanInfo2 = javaBeanDeserializer.beanInfo;
                if (javaBeanInfo2.typeName.equals(str)) {
                    return javaBeanDeserializer;
                }
                JavaBeanDeserializer seeAlso = getSeeAlso(parserConfig, javaBeanInfo2, str);
                if (seeAlso != null) {
                    return seeAlso;
                }
            }
        }
        return null;
    }
}
