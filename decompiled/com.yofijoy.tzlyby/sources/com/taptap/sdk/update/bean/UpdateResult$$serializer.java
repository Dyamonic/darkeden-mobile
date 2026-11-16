package com.taptap.sdk.update.bean;

import androidx.core.app.FrameMetricsAggregator;
import com.qq.gdt.action.ActionUtils;
import java.util.List;
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
import kotlinx.serialization.internal.ArrayListSerializer;
import kotlinx.serialization.internal.BooleanSerializer;
import kotlinx.serialization.internal.GeneratedSerializer;
import kotlinx.serialization.internal.IntSerializer;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import kotlinx.serialization.internal.SerializationConstructorMarker;
import kotlinx.serialization.internal.StringSerializer;

/* compiled from: UpdateResult.kt */
@Metadata(d1 = {"\u00006\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0003J\u0018\u0010\b\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\n0\tHÖ\u0001¢\u0006\u0002\u0010\u000bJ\u0011\u0010\f\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\u000eHÖ\u0001J\u0019\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0002HÖ\u0001R\u0014\u0010\u0004\u001a\u00020\u00058VXÖ\u0005¢\u0006\u0006\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0014"}, d2 = {"com/taptap/sdk/update/bean/UpdateResult.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/taptap/sdk/update/bean/UpdateResult;", "()V", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "getDescriptor", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", "childSerializers", "", "Lkotlinx/serialization/KSerializer;", "()[Lkotlinx/serialization/KSerializer;", "deserialize", "decoder", "Lkotlinx/serialization/encoding/Decoder;", "serialize", "", "encoder", "Lkotlinx/serialization/encoding/Encoder;", ActionUtils.PAYMENT_AMOUNT, "tap-update_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
@Deprecated(level = DeprecationLevel.HIDDEN, message = "This synthesized declaration should not be used directly", replaceWith = @ReplaceWith(expression = "", imports = {}))
/* loaded from: classes2.dex */
public final class UpdateResult$$serializer implements GeneratedSerializer<UpdateResult> {
    public static final UpdateResult$$serializer INSTANCE;
    public static final /* synthetic */ SerialDescriptor descriptor;

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    public SerialDescriptor getDescriptor() {
        return descriptor;
    }

    static {
        UpdateResult$$serializer updateResult$$serializer = new UpdateResult$$serializer();
        INSTANCE = updateResult$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.taptap.sdk.update.bean.UpdateResult", updateResult$$serializer, 9);
        pluginGeneratedSerialDescriptor.addElement("app_id", true);
        pluginGeneratedSerialDescriptor.addElement("update_uri", true);
        pluginGeneratedSerialDescriptor.addElement("update_uri_tpl", true);
        pluginGeneratedSerialDescriptor.addElement("update_url", true);
        pluginGeneratedSerialDescriptor.addElement("update_url_tpl", true);
        pluginGeneratedSerialDescriptor.addElement("developer_name", true);
        pluginGeneratedSerialDescriptor.addElement("links", true);
        pluginGeneratedSerialDescriptor.addElement("download", true);
        pluginGeneratedSerialDescriptor.addElement("notify", true);
        descriptor = pluginGeneratedSerialDescriptor;
    }

    private UpdateResult$$serializer() {
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public KSerializer<?>[] childSerializers() {
        return new KSerializer[]{IntSerializer.INSTANCE, StringSerializer.INSTANCE, StringSerializer.INSTANCE, StringSerializer.INSTANCE, StringSerializer.INSTANCE, StringSerializer.INSTANCE, new ArrayListSerializer(UpdateFuncLink$$serializer.INSTANCE), BuiltinSerializersKt.getNullable(UpdateDownloadInfo$$serializer.INSTANCE), BooleanSerializer.INSTANCE};
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:10:0x0077. Please report as an issue. */
    @Override // kotlinx.serialization.DeserializationStrategy
    public UpdateResult deserialize(Decoder decoder) {
        Object obj;
        Object obj2;
        boolean z;
        int i;
        String str;
        String str2;
        String str3;
        String str4;
        String str5;
        int i2;
        char c;
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        SerialDescriptor descriptor2 = getDescriptor();
        CompositeDecoder beginStructure = decoder.beginStructure(descriptor2);
        int i3 = 7;
        if (beginStructure.decodeSequentially()) {
            int decodeIntElement = beginStructure.decodeIntElement(descriptor2, 0);
            String decodeStringElement = beginStructure.decodeStringElement(descriptor2, 1);
            String decodeStringElement2 = beginStructure.decodeStringElement(descriptor2, 2);
            String decodeStringElement3 = beginStructure.decodeStringElement(descriptor2, 3);
            String decodeStringElement4 = beginStructure.decodeStringElement(descriptor2, 4);
            String decodeStringElement5 = beginStructure.decodeStringElement(descriptor2, 5);
            obj2 = beginStructure.decodeSerializableElement(descriptor2, 6, new ArrayListSerializer(UpdateFuncLink$$serializer.INSTANCE), null);
            obj = beginStructure.decodeNullableSerializableElement(descriptor2, 7, UpdateDownloadInfo$$serializer.INSTANCE, null);
            boolean decodeBooleanElement = beginStructure.decodeBooleanElement(descriptor2, 8);
            i = FrameMetricsAggregator.EVERY_DURATION;
            i2 = decodeIntElement;
            str5 = decodeStringElement5;
            str3 = decodeStringElement3;
            z = decodeBooleanElement;
            str4 = decodeStringElement4;
            str2 = decodeStringElement2;
            str = decodeStringElement;
        } else {
            boolean z2 = true;
            int i4 = 0;
            int i5 = 0;
            Object obj3 = null;
            String str6 = null;
            String str7 = null;
            String str8 = null;
            String str9 = null;
            String str10 = null;
            Object obj4 = null;
            boolean z3 = false;
            while (z2) {
                int decodeElementIndex = beginStructure.decodeElementIndex(descriptor2);
                switch (decodeElementIndex) {
                    case -1:
                        z2 = false;
                    case 0:
                        i5 |= 1;
                        i4 = beginStructure.decodeIntElement(descriptor2, 0);
                        i3 = 7;
                    case 1:
                        c = 2;
                        str6 = beginStructure.decodeStringElement(descriptor2, 1);
                        i5 |= 2;
                        i3 = 7;
                    case 2:
                        c = 2;
                        str7 = beginStructure.decodeStringElement(descriptor2, 2);
                        i5 |= 4;
                        i3 = 7;
                    case 3:
                        str8 = beginStructure.decodeStringElement(descriptor2, 3);
                        i5 |= 8;
                        i3 = 7;
                    case 4:
                        str9 = beginStructure.decodeStringElement(descriptor2, 4);
                        i5 |= 16;
                        i3 = 7;
                    case 5:
                        str10 = beginStructure.decodeStringElement(descriptor2, 5);
                        i5 |= 32;
                        i3 = 7;
                    case 6:
                        obj4 = beginStructure.decodeSerializableElement(descriptor2, 6, new ArrayListSerializer(UpdateFuncLink$$serializer.INSTANCE), obj4);
                        i5 |= 64;
                        i3 = 7;
                    case 7:
                        obj3 = beginStructure.decodeNullableSerializableElement(descriptor2, i3, UpdateDownloadInfo$$serializer.INSTANCE, obj3);
                        i5 |= 128;
                    case 8:
                        z3 = beginStructure.decodeBooleanElement(descriptor2, 8);
                        i5 |= 256;
                    default:
                        throw new UnknownFieldException(decodeElementIndex);
                }
            }
            obj = obj3;
            obj2 = obj4;
            z = z3;
            i = i5;
            str = str6;
            str2 = str7;
            str3 = str8;
            str4 = str9;
            str5 = str10;
            i2 = i4;
        }
        beginStructure.endStructure(descriptor2);
        return new UpdateResult(i, i2, str, str2, str3, str4, str5, (List) obj2, (UpdateDownloadInfo) obj, z, (SerializationConstructorMarker) null);
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public void serialize(Encoder encoder, UpdateResult value) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        Intrinsics.checkNotNullParameter(value, "value");
        SerialDescriptor descriptor2 = getDescriptor();
        CompositeEncoder beginStructure = encoder.beginStructure(descriptor2);
        UpdateResult.write$Self(value, beginStructure, descriptor2);
        beginStructure.endStructure(descriptor2);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public KSerializer<?>[] typeParametersSerializers() {
        return GeneratedSerializer.DefaultImpls.typeParametersSerializers(this);
    }
}
