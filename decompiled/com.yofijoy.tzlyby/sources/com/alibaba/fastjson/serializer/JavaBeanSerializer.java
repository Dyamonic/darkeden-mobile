package com.alibaba.fastjson.serializer;

import com.alibaba.fastjson.PropertyNamingStrategy;
import com.alibaba.fastjson.annotation.JSONType;
import com.alibaba.fastjson.util.FieldInfo;
import com.alibaba.fastjson.util.TypeUtils;
import com.rich.oauth.util.LogToFile;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;

/* loaded from: classes.dex */
public class JavaBeanSerializer implements ObjectSerializer {
    protected int features;
    private final FieldSerializer[] getters;
    private final FieldSerializer[] sortedGetters;
    protected final String typeKey;
    protected final String typeName;
    private static final char[] true_chars = {'t', 'r', AbstractJsonLexerKt.UNICODE_ESC, LogToFile.ERROR};
    private static final char[] false_chars = {'f', 'a', 'l', 's', LogToFile.ERROR};

    public JavaBeanSerializer(Class<?> cls) {
        this(cls, (PropertyNamingStrategy) null);
    }

    public JavaBeanSerializer(Class<?> cls, PropertyNamingStrategy propertyNamingStrategy) {
        this(cls, cls.getModifiers(), (Map) null, false, true, true, true, propertyNamingStrategy);
    }

    public JavaBeanSerializer(Class<?> cls, String... strArr) {
        this(cls, cls.getModifiers(), map(strArr), false, true, true, true, null);
    }

    private static Map<String, String> map(String... strArr) {
        HashMap hashMap = new HashMap();
        for (String str : strArr) {
            hashMap.put(str, str);
        }
        return hashMap;
    }

    public JavaBeanSerializer(Class<?> cls, int i, Map<String, String> map, boolean z, boolean z2, boolean z3, boolean z4, PropertyNamingStrategy propertyNamingStrategy) {
        PropertyNamingStrategy propertyNamingStrategy2;
        String str;
        String str2;
        PropertyNamingStrategy naming;
        this.features = 0;
        JSONType jSONType = z2 ? (JSONType) cls.getAnnotation(JSONType.class) : null;
        if (jSONType != null) {
            this.features = SerializerFeature.of(jSONType.serialzeFeatures());
            str = jSONType.typeName();
            if (str.length() == 0) {
                str = null;
                str2 = null;
            } else {
                str2 = null;
                for (Class<? super Object> superclass = cls.getSuperclass(); superclass != null && superclass != Object.class; superclass = superclass.getSuperclass()) {
                    JSONType jSONType2 = (JSONType) superclass.getAnnotation(JSONType.class);
                    if (jSONType2 == null) {
                        break;
                    }
                    str2 = jSONType2.typeKey();
                    if (str2.length() != 0) {
                        break;
                    }
                }
                for (Class<?> cls2 : cls.getInterfaces()) {
                    JSONType jSONType3 = (JSONType) cls2.getAnnotation(JSONType.class);
                    if (jSONType3 != null) {
                        str2 = jSONType3.typeKey();
                        if (str2.length() != 0) {
                            break;
                        }
                    }
                }
                if (str2 != null && str2.length() == 0) {
                    str2 = null;
                }
            }
            propertyNamingStrategy2 = (propertyNamingStrategy != null || (naming = jSONType.naming()) == PropertyNamingStrategy.CamelCase) ? propertyNamingStrategy : naming;
        } else {
            propertyNamingStrategy2 = propertyNamingStrategy;
            str = null;
            str2 = null;
        }
        this.typeName = str;
        this.typeKey = str2;
        List<FieldInfo> computeGetters = TypeUtils.computeGetters(cls, i, z, jSONType, map, false, z3, z4, propertyNamingStrategy2);
        ArrayList arrayList = new ArrayList();
        Iterator<FieldInfo> it = computeGetters.iterator();
        while (it.hasNext()) {
            arrayList.add(new FieldSerializer(it.next()));
        }
        FieldSerializer[] fieldSerializerArr = (FieldSerializer[]) arrayList.toArray(new FieldSerializer[arrayList.size()]);
        this.getters = fieldSerializerArr;
        String[] orders = jSONType != null ? jSONType.orders() : null;
        if (orders != null && orders.length != 0) {
            List<FieldInfo> computeGetters2 = TypeUtils.computeGetters(cls, i, z, jSONType, map, true, z3, z4, propertyNamingStrategy2);
            ArrayList arrayList2 = new ArrayList();
            Iterator<FieldInfo> it2 = computeGetters2.iterator();
            while (it2.hasNext()) {
                arrayList2.add(new FieldSerializer(it2.next()));
            }
            this.sortedGetters = (FieldSerializer[]) arrayList2.toArray(new FieldSerializer[arrayList2.size()]);
            return;
        }
        FieldSerializer[] fieldSerializerArr2 = new FieldSerializer[fieldSerializerArr.length];
        System.arraycopy(fieldSerializerArr, 0, fieldSerializerArr2, 0, fieldSerializerArr.length);
        Arrays.sort(fieldSerializerArr2);
        if (Arrays.equals(fieldSerializerArr2, fieldSerializerArr)) {
            this.sortedGetters = fieldSerializerArr;
        } else {
            this.sortedGetters = fieldSerializerArr2;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:124:0x0226  */
    /* JADX WARN: Removed duplicated region for block: B:138:0x026d  */
    /* JADX WARN: Removed duplicated region for block: B:139:0x026f  */
    /* JADX WARN: Removed duplicated region for block: B:196:0x03d6 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:222:0x0418 A[Catch: all -> 0x05b7, Exception -> 0x05bd, TryCatch #7 {Exception -> 0x05bd, all -> 0x05b7, blocks: (B:92:0x017b, B:94:0x0196, B:96:0x019a, B:104:0x019f, B:106:0x01a3, B:110:0x01ac, B:111:0x01b0, B:113:0x01b6, B:118:0x01d1, B:120:0x01d8, B:122:0x01dc, B:125:0x0228, B:127:0x022e, B:129:0x0249, B:130:0x024d, B:132:0x0253, B:142:0x0275, B:144:0x0279, B:146:0x0281, B:148:0x0285, B:149:0x028a, B:151:0x028e, B:152:0x0293, B:153:0x029a, B:155:0x02a0, B:160:0x02ba, B:162:0x02be, B:164:0x02c5, B:166:0x02c9, B:167:0x02ce, B:169:0x02d2, B:170:0x02d7, B:171:0x02de, B:173:0x02e4, B:181:0x0303, B:183:0x0311, B:185:0x031c, B:187:0x0320, B:190:0x032b, B:192:0x032f, B:198:0x03da, B:200:0x03de, B:202:0x03e2, B:204:0x03e6, B:206:0x03ea, B:208:0x03ee, B:210:0x0400, B:212:0x0404, B:214:0x0408, B:216:0x03f2, B:218:0x03f6, B:222:0x0418, B:224:0x0421, B:226:0x0425, B:227:0x0429, B:228:0x042d, B:230:0x0440, B:233:0x044a, B:234:0x044e, B:240:0x0458, B:241:0x045b, B:244:0x0463, B:246:0x046e, B:248:0x0472, B:250:0x0477, B:254:0x0497, B:257:0x04a1, B:260:0x04a8, B:264:0x04b2, B:268:0x04be, B:272:0x04c4, B:274:0x04c8, B:275:0x04ca, B:277:0x04d2, B:279:0x04d6, B:280:0x04da, B:282:0x04e9, B:270:0x04f3, B:285:0x04f6, B:287:0x04fa, B:288:0x0503, B:291:0x0509, B:292:0x0514, B:296:0x0525, B:298:0x052c, B:300:0x0535, B:303:0x053d, B:304:0x0542, B:305:0x0547, B:307:0x054b, B:308:0x0550, B:309:0x0557, B:312:0x055f, B:314:0x0568, B:318:0x057c, B:319:0x0581, B:321:0x0586, B:322:0x0591, B:323:0x0596, B:324:0x059b, B:326:0x0334, B:330:0x0341, B:332:0x034c, B:334:0x0350, B:337:0x0357, B:339:0x035b, B:342:0x0363, B:344:0x036b, B:346:0x0376, B:348:0x037a, B:351:0x0381, B:353:0x0385, B:355:0x038a, B:356:0x0390, B:358:0x0398, B:360:0x03a3, B:362:0x03a7, B:365:0x03ae, B:367:0x03b2, B:369:0x03b7, B:371:0x03bf, B:373:0x03c3, B:381:0x0235, B:383:0x0239, B:384:0x023e, B:386:0x0242, B:389:0x01ec, B:391:0x01f0, B:393:0x01fc, B:395:0x0200, B:396:0x0210, B:398:0x0217, B:423:0x05d2, B:424:0x05d8, B:426:0x05de, B:432:0x05f0, B:434:0x05f9, B:437:0x0608, B:439:0x060c, B:440:0x0610), top: B:91:0x017b }] */
    /* JADX WARN: Removed duplicated region for block: B:232:0x0448  */
    /* JADX WARN: Removed duplicated region for block: B:238:0x0454  */
    /* JADX WARN: Removed duplicated region for block: B:282:0x04e9 A[Catch: all -> 0x05b7, Exception -> 0x05bd, TryCatch #7 {Exception -> 0x05bd, all -> 0x05b7, blocks: (B:92:0x017b, B:94:0x0196, B:96:0x019a, B:104:0x019f, B:106:0x01a3, B:110:0x01ac, B:111:0x01b0, B:113:0x01b6, B:118:0x01d1, B:120:0x01d8, B:122:0x01dc, B:125:0x0228, B:127:0x022e, B:129:0x0249, B:130:0x024d, B:132:0x0253, B:142:0x0275, B:144:0x0279, B:146:0x0281, B:148:0x0285, B:149:0x028a, B:151:0x028e, B:152:0x0293, B:153:0x029a, B:155:0x02a0, B:160:0x02ba, B:162:0x02be, B:164:0x02c5, B:166:0x02c9, B:167:0x02ce, B:169:0x02d2, B:170:0x02d7, B:171:0x02de, B:173:0x02e4, B:181:0x0303, B:183:0x0311, B:185:0x031c, B:187:0x0320, B:190:0x032b, B:192:0x032f, B:198:0x03da, B:200:0x03de, B:202:0x03e2, B:204:0x03e6, B:206:0x03ea, B:208:0x03ee, B:210:0x0400, B:212:0x0404, B:214:0x0408, B:216:0x03f2, B:218:0x03f6, B:222:0x0418, B:224:0x0421, B:226:0x0425, B:227:0x0429, B:228:0x042d, B:230:0x0440, B:233:0x044a, B:234:0x044e, B:240:0x0458, B:241:0x045b, B:244:0x0463, B:246:0x046e, B:248:0x0472, B:250:0x0477, B:254:0x0497, B:257:0x04a1, B:260:0x04a8, B:264:0x04b2, B:268:0x04be, B:272:0x04c4, B:274:0x04c8, B:275:0x04ca, B:277:0x04d2, B:279:0x04d6, B:280:0x04da, B:282:0x04e9, B:270:0x04f3, B:285:0x04f6, B:287:0x04fa, B:288:0x0503, B:291:0x0509, B:292:0x0514, B:296:0x0525, B:298:0x052c, B:300:0x0535, B:303:0x053d, B:304:0x0542, B:305:0x0547, B:307:0x054b, B:308:0x0550, B:309:0x0557, B:312:0x055f, B:314:0x0568, B:318:0x057c, B:319:0x0581, B:321:0x0586, B:322:0x0591, B:323:0x0596, B:324:0x059b, B:326:0x0334, B:330:0x0341, B:332:0x034c, B:334:0x0350, B:337:0x0357, B:339:0x035b, B:342:0x0363, B:344:0x036b, B:346:0x0376, B:348:0x037a, B:351:0x0381, B:353:0x0385, B:355:0x038a, B:356:0x0390, B:358:0x0398, B:360:0x03a3, B:362:0x03a7, B:365:0x03ae, B:367:0x03b2, B:369:0x03b7, B:371:0x03bf, B:373:0x03c3, B:381:0x0235, B:383:0x0239, B:384:0x023e, B:386:0x0242, B:389:0x01ec, B:391:0x01f0, B:393:0x01fc, B:395:0x0200, B:396:0x0210, B:398:0x0217, B:423:0x05d2, B:424:0x05d8, B:426:0x05de, B:432:0x05f0, B:434:0x05f9, B:437:0x0608, B:439:0x060c, B:440:0x0610), top: B:91:0x017b }] */
    /* JADX WARN: Removed duplicated region for block: B:325:0x0444  */
    /* JADX WARN: Removed duplicated region for block: B:388:0x0268  */
    /* JADX WARN: Removed duplicated region for block: B:413:0x0638 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:421:0x05cc  */
    /* JADX WARN: Removed duplicated region for block: B:432:0x05f0 A[Catch: all -> 0x05b7, Exception -> 0x05bd, TRY_ENTER, TryCatch #7 {Exception -> 0x05bd, all -> 0x05b7, blocks: (B:92:0x017b, B:94:0x0196, B:96:0x019a, B:104:0x019f, B:106:0x01a3, B:110:0x01ac, B:111:0x01b0, B:113:0x01b6, B:118:0x01d1, B:120:0x01d8, B:122:0x01dc, B:125:0x0228, B:127:0x022e, B:129:0x0249, B:130:0x024d, B:132:0x0253, B:142:0x0275, B:144:0x0279, B:146:0x0281, B:148:0x0285, B:149:0x028a, B:151:0x028e, B:152:0x0293, B:153:0x029a, B:155:0x02a0, B:160:0x02ba, B:162:0x02be, B:164:0x02c5, B:166:0x02c9, B:167:0x02ce, B:169:0x02d2, B:170:0x02d7, B:171:0x02de, B:173:0x02e4, B:181:0x0303, B:183:0x0311, B:185:0x031c, B:187:0x0320, B:190:0x032b, B:192:0x032f, B:198:0x03da, B:200:0x03de, B:202:0x03e2, B:204:0x03e6, B:206:0x03ea, B:208:0x03ee, B:210:0x0400, B:212:0x0404, B:214:0x0408, B:216:0x03f2, B:218:0x03f6, B:222:0x0418, B:224:0x0421, B:226:0x0425, B:227:0x0429, B:228:0x042d, B:230:0x0440, B:233:0x044a, B:234:0x044e, B:240:0x0458, B:241:0x045b, B:244:0x0463, B:246:0x046e, B:248:0x0472, B:250:0x0477, B:254:0x0497, B:257:0x04a1, B:260:0x04a8, B:264:0x04b2, B:268:0x04be, B:272:0x04c4, B:274:0x04c8, B:275:0x04ca, B:277:0x04d2, B:279:0x04d6, B:280:0x04da, B:282:0x04e9, B:270:0x04f3, B:285:0x04f6, B:287:0x04fa, B:288:0x0503, B:291:0x0509, B:292:0x0514, B:296:0x0525, B:298:0x052c, B:300:0x0535, B:303:0x053d, B:304:0x0542, B:305:0x0547, B:307:0x054b, B:308:0x0550, B:309:0x0557, B:312:0x055f, B:314:0x0568, B:318:0x057c, B:319:0x0581, B:321:0x0586, B:322:0x0591, B:323:0x0596, B:324:0x059b, B:326:0x0334, B:330:0x0341, B:332:0x034c, B:334:0x0350, B:337:0x0357, B:339:0x035b, B:342:0x0363, B:344:0x036b, B:346:0x0376, B:348:0x037a, B:351:0x0381, B:353:0x0385, B:355:0x038a, B:356:0x0390, B:358:0x0398, B:360:0x03a3, B:362:0x03a7, B:365:0x03ae, B:367:0x03b2, B:369:0x03b7, B:371:0x03bf, B:373:0x03c3, B:381:0x0235, B:383:0x0239, B:384:0x023e, B:386:0x0242, B:389:0x01ec, B:391:0x01f0, B:393:0x01fc, B:395:0x0200, B:396:0x0210, B:398:0x0217, B:423:0x05d2, B:424:0x05d8, B:426:0x05de, B:432:0x05f0, B:434:0x05f9, B:437:0x0608, B:439:0x060c, B:440:0x0610), top: B:91:0x017b }] */
    /* JADX WARN: Removed duplicated region for block: B:437:0x0608 A[Catch: all -> 0x05b7, Exception -> 0x05bd, TRY_ENTER, TryCatch #7 {Exception -> 0x05bd, all -> 0x05b7, blocks: (B:92:0x017b, B:94:0x0196, B:96:0x019a, B:104:0x019f, B:106:0x01a3, B:110:0x01ac, B:111:0x01b0, B:113:0x01b6, B:118:0x01d1, B:120:0x01d8, B:122:0x01dc, B:125:0x0228, B:127:0x022e, B:129:0x0249, B:130:0x024d, B:132:0x0253, B:142:0x0275, B:144:0x0279, B:146:0x0281, B:148:0x0285, B:149:0x028a, B:151:0x028e, B:152:0x0293, B:153:0x029a, B:155:0x02a0, B:160:0x02ba, B:162:0x02be, B:164:0x02c5, B:166:0x02c9, B:167:0x02ce, B:169:0x02d2, B:170:0x02d7, B:171:0x02de, B:173:0x02e4, B:181:0x0303, B:183:0x0311, B:185:0x031c, B:187:0x0320, B:190:0x032b, B:192:0x032f, B:198:0x03da, B:200:0x03de, B:202:0x03e2, B:204:0x03e6, B:206:0x03ea, B:208:0x03ee, B:210:0x0400, B:212:0x0404, B:214:0x0408, B:216:0x03f2, B:218:0x03f6, B:222:0x0418, B:224:0x0421, B:226:0x0425, B:227:0x0429, B:228:0x042d, B:230:0x0440, B:233:0x044a, B:234:0x044e, B:240:0x0458, B:241:0x045b, B:244:0x0463, B:246:0x046e, B:248:0x0472, B:250:0x0477, B:254:0x0497, B:257:0x04a1, B:260:0x04a8, B:264:0x04b2, B:268:0x04be, B:272:0x04c4, B:274:0x04c8, B:275:0x04ca, B:277:0x04d2, B:279:0x04d6, B:280:0x04da, B:282:0x04e9, B:270:0x04f3, B:285:0x04f6, B:287:0x04fa, B:288:0x0503, B:291:0x0509, B:292:0x0514, B:296:0x0525, B:298:0x052c, B:300:0x0535, B:303:0x053d, B:304:0x0542, B:305:0x0547, B:307:0x054b, B:308:0x0550, B:309:0x0557, B:312:0x055f, B:314:0x0568, B:318:0x057c, B:319:0x0581, B:321:0x0586, B:322:0x0591, B:323:0x0596, B:324:0x059b, B:326:0x0334, B:330:0x0341, B:332:0x034c, B:334:0x0350, B:337:0x0357, B:339:0x035b, B:342:0x0363, B:344:0x036b, B:346:0x0376, B:348:0x037a, B:351:0x0381, B:353:0x0385, B:355:0x038a, B:356:0x0390, B:358:0x0398, B:360:0x03a3, B:362:0x03a7, B:365:0x03ae, B:367:0x03b2, B:369:0x03b7, B:371:0x03bf, B:373:0x03c3, B:381:0x0235, B:383:0x0239, B:384:0x023e, B:386:0x0242, B:389:0x01ec, B:391:0x01f0, B:393:0x01fc, B:395:0x0200, B:396:0x0210, B:398:0x0217, B:423:0x05d2, B:424:0x05d8, B:426:0x05de, B:432:0x05f0, B:434:0x05f9, B:437:0x0608, B:439:0x060c, B:440:0x0610), top: B:91:0x017b }] */
    /* JADX WARN: Removed duplicated region for block: B:453:0x0168  */
    /* JADX WARN: Removed duplicated region for block: B:454:0x015c  */
    /* JADX WARN: Removed duplicated region for block: B:461:0x013b  */
    /* JADX WARN: Removed duplicated region for block: B:462:0x011b  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0119  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0120 A[Catch: all -> 0x00a0, Exception -> 0x00a5, TRY_ENTER, TryCatch #9 {Exception -> 0x00a5, all -> 0x00a0, blocks: (B:467:0x0093, B:469:0x0097, B:470:0x009b, B:33:0x00b5, B:35:0x00be, B:39:0x00cd, B:42:0x00d8, B:44:0x00e1, B:46:0x00e5, B:51:0x00f1, B:53:0x00f7, B:56:0x0100, B:58:0x0107, B:59:0x010f, B:66:0x0120, B:67:0x0126, B:69:0x012c, B:76:0x0145, B:463:0x00fc), top: B:466:0x0093 }] */
    /* JADX WARN: Removed duplicated region for block: B:72:0x0139  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x0145 A[Catch: all -> 0x00a0, Exception -> 0x00a5, TRY_ENTER, TRY_LEAVE, TryCatch #9 {Exception -> 0x00a5, all -> 0x00a0, blocks: (B:467:0x0093, B:469:0x0097, B:470:0x009b, B:33:0x00b5, B:35:0x00be, B:39:0x00cd, B:42:0x00d8, B:44:0x00e1, B:46:0x00e5, B:51:0x00f1, B:53:0x00f7, B:56:0x0100, B:58:0x0107, B:59:0x010f, B:66:0x0120, B:67:0x0126, B:69:0x012c, B:76:0x0145, B:463:0x00fc), top: B:466:0x0093 }] */
    /* JADX WARN: Removed duplicated region for block: B:82:0x015a  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x0166  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x017b A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @Override // com.alibaba.fastjson.serializer.ObjectSerializer
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void write(com.alibaba.fastjson.serializer.JSONSerializer r36, java.lang.Object r37, java.lang.Object r38, java.lang.reflect.Type r39) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 1623
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.serializer.JavaBeanSerializer.write(com.alibaba.fastjson.serializer.JSONSerializer, java.lang.Object, java.lang.Object, java.lang.reflect.Type):void");
    }

    public Map<String, Object> getFieldValuesMap(Object obj) throws Exception {
        LinkedHashMap linkedHashMap = new LinkedHashMap(this.sortedGetters.length);
        for (FieldSerializer fieldSerializer : this.sortedGetters) {
            linkedHashMap.put(fieldSerializer.fieldInfo.name, fieldSerializer.getPropertyValue(obj));
        }
        return linkedHashMap;
    }
}
