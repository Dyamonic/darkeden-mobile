package com.taptap.sdk.login.internal.handlers.cloud;

import com.qq.gdt.action.ActionUtils;
import com.taptap.sdk.core.internal.event.constants.TapEventParamConstants;
import com.taptap.sdk.login.internal.handlers.cloud.CloudLoginMessage;
import com.taptap.sdk.login.internal.handlers.web.WebLoginFragment;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
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
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import kotlinx.serialization.internal.ReferenceArraySerializer;
import kotlinx.serialization.internal.SerializationConstructorMarker;
import kotlinx.serialization.internal.StringSerializer;

/* compiled from: CloudLoginMessage.kt */
@Metadata(d1 = {"\u00006\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0003J\u0018\u0010\b\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\n0\tHÖ\u0001¢\u0006\u0002\u0010\u000bJ\u0011\u0010\f\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\u000eHÖ\u0001J\u0019\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0002HÖ\u0001R\u0014\u0010\u0004\u001a\u00020\u00058VXÖ\u0005¢\u0006\u0006\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0014"}, d2 = {"com/taptap/sdk/login/internal/handlers/cloud/CloudLoginMessage.Data.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginMessage$Data;", "()V", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "getDescriptor", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", "childSerializers", "", "Lkotlinx/serialization/KSerializer;", "()[Lkotlinx/serialization/KSerializer;", "deserialize", "decoder", "Lkotlinx/serialization/encoding/Decoder;", "serialize", "", "encoder", "Lkotlinx/serialization/encoding/Encoder;", ActionUtils.PAYMENT_AMOUNT, "tap-login_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
@Deprecated(level = DeprecationLevel.HIDDEN, message = "This synthesized declaration should not be used directly", replaceWith = @ReplaceWith(expression = "", imports = {}))
/* loaded from: classes.dex */
public final class CloudLoginMessage$Data$$serializer implements GeneratedSerializer<CloudLoginMessage.Data> {
    public static final CloudLoginMessage$Data$$serializer INSTANCE;
    public static final /* synthetic */ SerialDescriptor descriptor;

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    public SerialDescriptor getDescriptor() {
        return descriptor;
    }

    static {
        CloudLoginMessage$Data$$serializer cloudLoginMessage$Data$$serializer = new CloudLoginMessage$Data$$serializer();
        INSTANCE = cloudLoginMessage$Data$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.taptap.sdk.login.internal.handlers.cloud.CloudLoginMessage.Data", cloudLoginMessage$Data$$serializer, 10);
        pluginGeneratedSerialDescriptor.addElement("client_id", false);
        pluginGeneratedSerialDescriptor.addElement("scopes", false);
        pluginGeneratedSerialDescriptor.addElement(WebLoginFragment.QUERY_KEY_ID, false);
        pluginGeneratedSerialDescriptor.addElement(TapEventParamConstants.PARAM_SUB_SDK_VERSION, false);
        pluginGeneratedSerialDescriptor.addElement("portrait", false);
        pluginGeneratedSerialDescriptor.addElement("sdk_info", false);
        pluginGeneratedSerialDescriptor.addElement("sdk_track_info", false);
        pluginGeneratedSerialDescriptor.addElement("response_type", false);
        pluginGeneratedSerialDescriptor.addElement("code_challenge", true);
        pluginGeneratedSerialDescriptor.addElement("code_challenge_method", false);
        descriptor = pluginGeneratedSerialDescriptor;
    }

    private CloudLoginMessage$Data$$serializer() {
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public KSerializer<?>[] childSerializers() {
        return new KSerializer[]{StringSerializer.INSTANCE, new ReferenceArraySerializer(Reflection.getOrCreateKotlinClass(String.class), StringSerializer.INSTANCE), StringSerializer.INSTANCE, StringSerializer.INSTANCE, BooleanSerializer.INSTANCE, StringSerializer.INSTANCE, StringSerializer.INSTANCE, StringSerializer.INSTANCE, BuiltinSerializersKt.getNullable(StringSerializer.INSTANCE), StringSerializer.INSTANCE};
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:10:0x008d. Please report as an issue. */
    @Override // kotlinx.serialization.DeserializationStrategy
    public CloudLoginMessage.Data deserialize(Decoder decoder) {
        String str;
        String str2;
        String str3;
        int i;
        Object obj;
        Object obj2;
        String str4;
        String str5;
        String str6;
        String str7;
        boolean z;
        boolean z2;
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        SerialDescriptor descriptor2 = getDescriptor();
        CompositeDecoder beginStructure = decoder.beginStructure(descriptor2);
        int i2 = 9;
        int i3 = 7;
        if (beginStructure.decodeSequentially()) {
            String decodeStringElement = beginStructure.decodeStringElement(descriptor2, 0);
            obj2 = beginStructure.decodeSerializableElement(descriptor2, 1, new ReferenceArraySerializer(Reflection.getOrCreateKotlinClass(String.class), StringSerializer.INSTANCE), null);
            String decodeStringElement2 = beginStructure.decodeStringElement(descriptor2, 2);
            String decodeStringElement3 = beginStructure.decodeStringElement(descriptor2, 3);
            boolean decodeBooleanElement = beginStructure.decodeBooleanElement(descriptor2, 4);
            String decodeStringElement4 = beginStructure.decodeStringElement(descriptor2, 5);
            String decodeStringElement5 = beginStructure.decodeStringElement(descriptor2, 6);
            String decodeStringElement6 = beginStructure.decodeStringElement(descriptor2, 7);
            obj = beginStructure.decodeNullableSerializableElement(descriptor2, 8, StringSerializer.INSTANCE, null);
            str = decodeStringElement;
            str4 = beginStructure.decodeStringElement(descriptor2, 9);
            str5 = decodeStringElement6;
            str6 = decodeStringElement5;
            str7 = decodeStringElement4;
            str3 = decodeStringElement3;
            z = decodeBooleanElement;
            str2 = decodeStringElement2;
            i = 1023;
        } else {
            boolean z3 = true;
            boolean z4 = false;
            str = null;
            Object obj3 = null;
            str2 = null;
            str3 = null;
            String str8 = null;
            String str9 = null;
            String str10 = null;
            String str11 = null;
            Object obj4 = null;
            i = 0;
            while (z3) {
                int decodeElementIndex = beginStructure.decodeElementIndex(descriptor2);
                switch (decodeElementIndex) {
                    case -1:
                        z3 = false;
                        i3 = 7;
                    case 0:
                        z2 = true;
                        str = beginStructure.decodeStringElement(descriptor2, 0);
                        i |= 1;
                        i2 = 9;
                        i3 = 7;
                    case 1:
                        z2 = true;
                        obj3 = beginStructure.decodeSerializableElement(descriptor2, 1, new ReferenceArraySerializer(Reflection.getOrCreateKotlinClass(String.class), StringSerializer.INSTANCE), obj3);
                        i |= 2;
                        i2 = 9;
                        i3 = 7;
                    case 2:
                        str2 = beginStructure.decodeStringElement(descriptor2, 2);
                        i |= 4;
                    case 3:
                        str3 = beginStructure.decodeStringElement(descriptor2, 3);
                        i |= 8;
                    case 4:
                        z4 = beginStructure.decodeBooleanElement(descriptor2, 4);
                        i |= 16;
                    case 5:
                        str8 = beginStructure.decodeStringElement(descriptor2, 5);
                        i |= 32;
                    case 6:
                        str9 = beginStructure.decodeStringElement(descriptor2, 6);
                        i |= 64;
                    case 7:
                        str10 = beginStructure.decodeStringElement(descriptor2, i3);
                        i |= 128;
                    case 8:
                        obj4 = beginStructure.decodeNullableSerializableElement(descriptor2, 8, StringSerializer.INSTANCE, obj4);
                        i |= 256;
                    case 9:
                        str11 = beginStructure.decodeStringElement(descriptor2, i2);
                        i |= 512;
                    default:
                        throw new UnknownFieldException(decodeElementIndex);
                }
            }
            obj = obj4;
            obj2 = obj3;
            str4 = str11;
            str5 = str10;
            str6 = str9;
            str7 = str8;
            z = z4;
        }
        beginStructure.endStructure(descriptor2);
        return new CloudLoginMessage.Data(i, str, (String[]) obj2, str2, str3, z, str7, str6, str5, (String) obj, str4, (SerializationConstructorMarker) null);
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public void serialize(Encoder encoder, CloudLoginMessage.Data value) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        Intrinsics.checkNotNullParameter(value, "value");
        SerialDescriptor descriptor2 = getDescriptor();
        CompositeEncoder beginStructure = encoder.beginStructure(descriptor2);
        CloudLoginMessage.Data.write$Self(value, beginStructure, descriptor2);
        beginStructure.endStructure(descriptor2);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public KSerializer<?>[] typeParametersSerializers() {
        return GeneratedSerializer.DefaultImpls.typeParametersSerializers(this);
    }
}
