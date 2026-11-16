package com.taptap.sdk.core;

import com.qq.gdt.action.ActionUtils;
import com.taptap.sdk.core.internal.event.constants.TapEventParamConstants;
import com.taptap.sdk.core.serialize.JSONObjectSerializer;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.UnknownFieldException;
import kotlinx.serialization.builtins.BuiltinSerializersKt;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import kotlinx.serialization.internal.BooleanSerializer;
import kotlinx.serialization.internal.GeneratedSerializer;
import kotlinx.serialization.internal.IntSerializer;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import kotlinx.serialization.internal.SerializationConstructorMarker;
import kotlinx.serialization.internal.StringSerializer;
import org.json.JSONObject;

/* compiled from: TapTapSdk.kt */
@Metadata(d1 = {"\u00006\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0003J\u0018\u0010\b\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\n0\tHÖ\u0001¢\u0006\u0002\u0010\u000bJ\u0011\u0010\f\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\u000eHÖ\u0001J\u0019\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0002HÖ\u0001R\u0014\u0010\u0004\u001a\u00020\u00058VXÖ\u0005¢\u0006\u0006\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0014"}, d2 = {"com/taptap/sdk/core/TapTapSdkOptions.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/taptap/sdk/core/TapTapSdkOptions;", "()V", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "getDescriptor", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", "childSerializers", "", "Lkotlinx/serialization/KSerializer;", "()[Lkotlinx/serialization/KSerializer;", "deserialize", "decoder", "Lkotlinx/serialization/encoding/Decoder;", "serialize", "", "encoder", "Lkotlinx/serialization/encoding/Encoder;", ActionUtils.PAYMENT_AMOUNT, "tap-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
@Deprecated(level = DeprecationLevel.HIDDEN, message = "This synthesized declaration should not be used directly", replaceWith = @ReplaceWith(expression = "", imports = {}))
/* loaded from: classes.dex */
public final class TapTapSdkOptions$$serializer implements GeneratedSerializer<TapTapSdkOptions> {
    public static final TapTapSdkOptions$$serializer INSTANCE;
    public static final /* synthetic */ SerialDescriptor descriptor;

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    public SerialDescriptor getDescriptor() {
        return descriptor;
    }

    static {
        TapTapSdkOptions$$serializer tapTapSdkOptions$$serializer = new TapTapSdkOptions$$serializer();
        INSTANCE = tapTapSdkOptions$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.taptap.sdk.core.TapTapSdkOptions", tapTapSdkOptions$$serializer, 11);
        pluginGeneratedSerialDescriptor.addElement("clientId", false);
        pluginGeneratedSerialDescriptor.addElement("clientToken", false);
        pluginGeneratedSerialDescriptor.addElement("region", false);
        pluginGeneratedSerialDescriptor.addElement(TapEventParamConstants.PARAM_SUB_CHANNEL, true);
        pluginGeneratedSerialDescriptor.addElement("gameVersion", true);
        pluginGeneratedSerialDescriptor.addElement("autoIAPEventEnabled", true);
        pluginGeneratedSerialDescriptor.addElement("overrideBuiltInParameters", true);
        pluginGeneratedSerialDescriptor.addElement(TapEventParamConstants.PARAM_PROPERTIES, true);
        pluginGeneratedSerialDescriptor.addElement("oaidCert", true);
        pluginGeneratedSerialDescriptor.addElement("enableLog", true);
        pluginGeneratedSerialDescriptor.addElement("preferredLanguage", true);
        descriptor = pluginGeneratedSerialDescriptor;
    }

    private TapTapSdkOptions$$serializer() {
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public KSerializer<?>[] childSerializers() {
        return new KSerializer[]{StringSerializer.INSTANCE, StringSerializer.INSTANCE, IntSerializer.INSTANCE, BuiltinSerializersKt.getNullable(StringSerializer.INSTANCE), BuiltinSerializersKt.getNullable(StringSerializer.INSTANCE), BooleanSerializer.INSTANCE, BooleanSerializer.INSTANCE, BuiltinSerializersKt.getNullable(JSONObjectSerializer.INSTANCE), BuiltinSerializersKt.getNullable(StringSerializer.INSTANCE), BooleanSerializer.INSTANCE, TapTapLanguage.INSTANCE.serializer()};
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:10:0x008e. Please report as an issue. */
    @Override // kotlinx.serialization.DeserializationStrategy
    public TapTapSdkOptions deserialize(Decoder decoder) {
        Object obj;
        Object obj2;
        Object obj3;
        String str;
        boolean z;
        int i;
        Object obj4;
        Object obj5;
        int i2;
        boolean z2;
        String str2;
        boolean z3;
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        SerialDescriptor descriptor2 = getDescriptor();
        CompositeDecoder beginStructure = decoder.beginStructure(descriptor2);
        int i3 = 10;
        int i4 = 9;
        int i5 = 0;
        if (beginStructure.decodeSequentially()) {
            String decodeStringElement = beginStructure.decodeStringElement(descriptor2, 0);
            String decodeStringElement2 = beginStructure.decodeStringElement(descriptor2, 1);
            int decodeIntElement = beginStructure.decodeIntElement(descriptor2, 2);
            Object decodeNullableSerializableElement = beginStructure.decodeNullableSerializableElement(descriptor2, 3, StringSerializer.INSTANCE, null);
            Object decodeNullableSerializableElement2 = beginStructure.decodeNullableSerializableElement(descriptor2, 4, StringSerializer.INSTANCE, null);
            boolean decodeBooleanElement = beginStructure.decodeBooleanElement(descriptor2, 5);
            boolean decodeBooleanElement2 = beginStructure.decodeBooleanElement(descriptor2, 6);
            obj5 = beginStructure.decodeNullableSerializableElement(descriptor2, 7, JSONObjectSerializer.INSTANCE, null);
            Object decodeNullableSerializableElement3 = beginStructure.decodeNullableSerializableElement(descriptor2, 8, StringSerializer.INSTANCE, null);
            boolean decodeBooleanElement3 = beginStructure.decodeBooleanElement(descriptor2, 9);
            obj4 = beginStructure.decodeSerializableElement(descriptor2, 10, TapTapLanguage.INSTANCE.serializer(), null);
            z3 = decodeBooleanElement2;
            z2 = decodeBooleanElement;
            i = decodeIntElement;
            str = decodeStringElement2;
            obj3 = decodeNullableSerializableElement;
            obj2 = decodeNullableSerializableElement2;
            i2 = 2047;
            obj = decodeNullableSerializableElement3;
            str2 = decodeStringElement;
            z = decodeBooleanElement3;
        } else {
            boolean z4 = true;
            Object obj6 = null;
            Object obj7 = null;
            obj = null;
            obj2 = null;
            obj3 = null;
            String str3 = null;
            str = null;
            z = false;
            boolean z5 = false;
            boolean z6 = false;
            i = 0;
            while (z4) {
                int decodeElementIndex = beginStructure.decodeElementIndex(descriptor2);
                switch (decodeElementIndex) {
                    case -1:
                        z4 = false;
                        i3 = 10;
                    case 0:
                        str3 = beginStructure.decodeStringElement(descriptor2, 0);
                        i5 |= 1;
                        i3 = 10;
                        i4 = 9;
                    case 1:
                        str = beginStructure.decodeStringElement(descriptor2, 1);
                        i5 |= 2;
                        i3 = 10;
                        i4 = 9;
                    case 2:
                        i = beginStructure.decodeIntElement(descriptor2, 2);
                        i5 |= 4;
                        i3 = 10;
                        i4 = 9;
                    case 3:
                        obj3 = beginStructure.decodeNullableSerializableElement(descriptor2, 3, StringSerializer.INSTANCE, obj3);
                        i5 |= 8;
                        i3 = 10;
                        i4 = 9;
                    case 4:
                        obj2 = beginStructure.decodeNullableSerializableElement(descriptor2, 4, StringSerializer.INSTANCE, obj2);
                        i5 |= 16;
                        i3 = 10;
                        i4 = 9;
                    case 5:
                        i5 |= 32;
                        z6 = beginStructure.decodeBooleanElement(descriptor2, 5);
                    case 6:
                        z5 = beginStructure.decodeBooleanElement(descriptor2, 6);
                        i5 |= 64;
                    case 7:
                        obj7 = beginStructure.decodeNullableSerializableElement(descriptor2, 7, JSONObjectSerializer.INSTANCE, obj7);
                        i5 |= 128;
                    case 8:
                        obj = beginStructure.decodeNullableSerializableElement(descriptor2, 8, StringSerializer.INSTANCE, obj);
                        i5 |= 256;
                    case 9:
                        z = beginStructure.decodeBooleanElement(descriptor2, i4);
                        i5 |= 512;
                    case 10:
                        obj6 = beginStructure.decodeSerializableElement(descriptor2, i3, TapTapLanguage.INSTANCE.serializer(), obj6);
                        i5 |= 1024;
                    default:
                        throw new UnknownFieldException(decodeElementIndex);
                }
            }
            obj4 = obj6;
            obj5 = obj7;
            i2 = i5;
            z2 = z6;
            str2 = str3;
            z3 = z5;
        }
        beginStructure.endStructure(descriptor2);
        return new TapTapSdkOptions(i2, str2, str, i, (String) obj3, (String) obj2, z2, z3, (JSONObject) obj5, (String) obj, z, (TapTapLanguage) obj4, (SerializationConstructorMarker) null);
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public void serialize(Encoder encoder, TapTapSdkOptions value) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        Intrinsics.checkNotNullParameter(value, "value");
        SerialDescriptor descriptor2 = getDescriptor();
        CompositeEncoder beginStructure = encoder.beginStructure(descriptor2);
        TapTapSdkOptions.write$Self(value, beginStructure, descriptor2);
        beginStructure.endStructure(descriptor2);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public KSerializer<?>[] typeParametersSerializers() {
        return GeneratedSerializer.DefaultImpls.typeParametersSerializers(this);
    }
}
