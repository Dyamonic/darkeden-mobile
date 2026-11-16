package com.taptap.sdk.login;

import com.qq.gdt.action.ActionUtils;
import com.tencent.connect.common.Constants;
import com.tencent.open.SocialOperation;
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
import kotlinx.serialization.internal.GeneratedSerializer;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import kotlinx.serialization.internal.StringSerializer;

/* compiled from: TapTapAccount.kt */
@Metadata(d1 = {"\u00006\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0003J\u0018\u0010\b\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\n0\tHÖ\u0001¢\u0006\u0002\u0010\u000bJ\u0011\u0010\f\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\u000eHÖ\u0001J\u0019\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0002HÖ\u0001R\u0014\u0010\u0004\u001a\u00020\u00058VXÖ\u0005¢\u0006\u0006\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0014"}, d2 = {"com/taptap/sdk/login/TapTapAccount.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/taptap/sdk/login/TapTapAccount;", "()V", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "getDescriptor", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", "childSerializers", "", "Lkotlinx/serialization/KSerializer;", "()[Lkotlinx/serialization/KSerializer;", "deserialize", "decoder", "Lkotlinx/serialization/encoding/Decoder;", "serialize", "", "encoder", "Lkotlinx/serialization/encoding/Encoder;", ActionUtils.PAYMENT_AMOUNT, "tap-login-api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
@Deprecated(level = DeprecationLevel.HIDDEN, message = "This synthesized declaration should not be used directly", replaceWith = @ReplaceWith(expression = "", imports = {}))
/* loaded from: classes.dex */
public final class TapTapAccount$$serializer implements GeneratedSerializer<TapTapAccount> {
    public static final TapTapAccount$$serializer INSTANCE;
    public static final /* synthetic */ SerialDescriptor descriptor;

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    public SerialDescriptor getDescriptor() {
        return descriptor;
    }

    static {
        TapTapAccount$$serializer tapTapAccount$$serializer = new TapTapAccount$$serializer();
        INSTANCE = tapTapAccount$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.taptap.sdk.login.TapTapAccount", tapTapAccount$$serializer, 6);
        pluginGeneratedSerialDescriptor.addElement(Constants.PARAM_ACCESS_TOKEN, false);
        pluginGeneratedSerialDescriptor.addElement("openid", false);
        pluginGeneratedSerialDescriptor.addElement(SocialOperation.GAME_UNION_ID, false);
        pluginGeneratedSerialDescriptor.addElement("name", false);
        pluginGeneratedSerialDescriptor.addElement("avatar", false);
        pluginGeneratedSerialDescriptor.addElement("email", false);
        descriptor = pluginGeneratedSerialDescriptor;
    }

    private TapTapAccount$$serializer() {
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public KSerializer<?>[] childSerializers() {
        return new KSerializer[]{AccessToken$$serializer.INSTANCE, StringSerializer.INSTANCE, StringSerializer.INSTANCE, BuiltinSerializersKt.getNullable(StringSerializer.INSTANCE), BuiltinSerializersKt.getNullable(StringSerializer.INSTANCE), BuiltinSerializersKt.getNullable(StringSerializer.INSTANCE)};
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:10:0x0058. Please report as an issue. */
    @Override // kotlinx.serialization.DeserializationStrategy
    public TapTapAccount deserialize(Decoder decoder) {
        int i;
        Object obj;
        String str;
        String str2;
        Object obj2;
        Object obj3;
        Object obj4;
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        SerialDescriptor descriptor2 = getDescriptor();
        CompositeDecoder beginStructure = decoder.beginStructure(descriptor2);
        int i2 = 5;
        Object obj5 = null;
        if (beginStructure.decodeSequentially()) {
            obj = beginStructure.decodeSerializableElement(descriptor2, 0, AccessToken$$serializer.INSTANCE, null);
            String decodeStringElement = beginStructure.decodeStringElement(descriptor2, 1);
            String decodeStringElement2 = beginStructure.decodeStringElement(descriptor2, 2);
            obj2 = beginStructure.decodeNullableSerializableElement(descriptor2, 3, StringSerializer.INSTANCE, null);
            obj3 = beginStructure.decodeNullableSerializableElement(descriptor2, 4, StringSerializer.INSTANCE, null);
            obj4 = beginStructure.decodeNullableSerializableElement(descriptor2, 5, StringSerializer.INSTANCE, null);
            str2 = decodeStringElement2;
            str = decodeStringElement;
            i = 63;
        } else {
            int i3 = 0;
            boolean z = true;
            String str3 = null;
            String str4 = null;
            Object obj6 = null;
            Object obj7 = null;
            Object obj8 = null;
            while (z) {
                int decodeElementIndex = beginStructure.decodeElementIndex(descriptor2);
                switch (decodeElementIndex) {
                    case -1:
                        z = false;
                        i2 = 5;
                    case 0:
                        obj5 = beginStructure.decodeSerializableElement(descriptor2, 0, AccessToken$$serializer.INSTANCE, obj5);
                        i3 |= 1;
                        i2 = 5;
                    case 1:
                        str3 = beginStructure.decodeStringElement(descriptor2, 1);
                        i3 |= 2;
                    case 2:
                        str4 = beginStructure.decodeStringElement(descriptor2, 2);
                        i3 |= 4;
                    case 3:
                        obj6 = beginStructure.decodeNullableSerializableElement(descriptor2, 3, StringSerializer.INSTANCE, obj6);
                        i3 |= 8;
                    case 4:
                        obj7 = beginStructure.decodeNullableSerializableElement(descriptor2, 4, StringSerializer.INSTANCE, obj7);
                        i3 |= 16;
                    case 5:
                        obj8 = beginStructure.decodeNullableSerializableElement(descriptor2, i2, StringSerializer.INSTANCE, obj8);
                        i3 |= 32;
                    default:
                        throw new UnknownFieldException(decodeElementIndex);
                }
            }
            i = i3;
            obj = obj5;
            str = str3;
            str2 = str4;
            obj2 = obj6;
            obj3 = obj7;
            obj4 = obj8;
        }
        beginStructure.endStructure(descriptor2);
        return new TapTapAccount(i, (AccessToken) obj, str, str2, (String) obj2, (String) obj3, (String) obj4, null);
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public void serialize(Encoder encoder, TapTapAccount value) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        Intrinsics.checkNotNullParameter(value, "value");
        SerialDescriptor descriptor2 = getDescriptor();
        CompositeEncoder beginStructure = encoder.beginStructure(descriptor2);
        TapTapAccount.write$Self(value, beginStructure, descriptor2);
        beginStructure.endStructure(descriptor2);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public KSerializer<?>[] typeParametersSerializers() {
        return GeneratedSerializer.DefaultImpls.typeParametersSerializers(this);
    }
}
