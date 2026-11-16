package com.taptap.sdk.moment.model;

import java.util.List;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerialName;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.internal.ArrayListSerializer;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;
import kotlinx.serialization.internal.StringSerializer;

/* compiled from: PublishMetaData.kt */
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0087\b\u0018\u0000 '2\u00020\u0001:\u0002&'BI\b\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0001\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0010\b\u0001\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0007\u0012\u0010\b\u0001\u0010\b\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0007\u0012\b\u0010\t\u001a\u0004\u0018\u00010\n¢\u0006\u0002\u0010\u000bB/\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005\u0012\u000e\b\u0002\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0007\u0012\u000e\b\u0002\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00050\u0007¢\u0006\u0002\u0010\fJ\t\u0010\u0016\u001a\u00020\u0005HÆ\u0003J\u000f\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00050\u0007HÆ\u0003J\u000f\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00050\u0007HÆ\u0003J3\u0010\u0019\u001a\u00020\u00002\b\b\u0002\u0010\u0004\u001a\u00020\u00052\u000e\b\u0002\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u00072\u000e\b\u0002\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00050\u0007HÆ\u0001J\u0013\u0010\u001a\u001a\u00020\u001b2\b\u0010\u001c\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001d\u001a\u00020\u0003HÖ\u0001J\t\u0010\u001e\u001a\u00020\u0005HÖ\u0001J!\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\u00002\u0006\u0010\"\u001a\u00020#2\u0006\u0010$\u001a\u00020%HÇ\u0001R\u001c\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\r\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010R\"\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00050\u00078\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0011\u0010\u000e\u001a\u0004\b\u0012\u0010\u0013R\"\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u00078\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0014\u0010\u000e\u001a\u0004\b\u0015\u0010\u0013¨\u0006("}, d2 = {"Lcom/taptap/sdk/moment/model/PublishMetaData;", "", "seen1", "", "content", "", "videoPaths", "", "imagePaths", "serializationConstructorMarker", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "(ILjava/lang/String;Ljava/util/List;Ljava/util/List;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V", "getContent$annotations", "()V", "getContent", "()Ljava/lang/String;", "getImagePaths$annotations", "getImagePaths", "()Ljava/util/List;", "getVideoPaths$annotations", "getVideoPaths", "component1", "component2", "component3", "copy", "equals", "", "other", "hashCode", "toString", "write$Self", "", "self", "output", "Lkotlinx/serialization/encoding/CompositeEncoder;", "serialDesc", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "$serializer", "Companion", "tap-moment_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
@Serializable
/* loaded from: classes.dex */
public final /* data */ class PublishMetaData {

    /* renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private final String content;
    private final List<String> imagePaths;
    private final List<String> videoPaths;

    public PublishMetaData() {
        this((String) null, (List) null, (List) null, 7, (DefaultConstructorMarker) null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ PublishMetaData copy$default(PublishMetaData publishMetaData, String str, List list, List list2, int i, Object obj) {
        if ((i & 1) != 0) {
            str = publishMetaData.content;
        }
        if ((i & 2) != 0) {
            list = publishMetaData.videoPaths;
        }
        if ((i & 4) != 0) {
            list2 = publishMetaData.imagePaths;
        }
        return publishMetaData.copy(str, list, list2);
    }

    @SerialName("content")
    public static /* synthetic */ void getContent$annotations() {
    }

    @SerialName("imagePaths")
    public static /* synthetic */ void getImagePaths$annotations() {
    }

    @SerialName("videoPaths")
    public static /* synthetic */ void getVideoPaths$annotations() {
    }

    /* renamed from: component1, reason: from getter */
    public final String getContent() {
        return this.content;
    }

    public final List<String> component2() {
        return this.videoPaths;
    }

    public final List<String> component3() {
        return this.imagePaths;
    }

    public final PublishMetaData copy(String content, List<String> videoPaths, List<String> imagePaths) {
        Intrinsics.checkNotNullParameter(content, "content");
        Intrinsics.checkNotNullParameter(videoPaths, "videoPaths");
        Intrinsics.checkNotNullParameter(imagePaths, "imagePaths");
        return new PublishMetaData(content, videoPaths, imagePaths);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof PublishMetaData)) {
            return false;
        }
        PublishMetaData publishMetaData = (PublishMetaData) other;
        return Intrinsics.areEqual(this.content, publishMetaData.content) && Intrinsics.areEqual(this.videoPaths, publishMetaData.videoPaths) && Intrinsics.areEqual(this.imagePaths, publishMetaData.imagePaths);
    }

    public int hashCode() {
        return (((this.content.hashCode() * 31) + this.videoPaths.hashCode()) * 31) + this.imagePaths.hashCode();
    }

    public String toString() {
        return "PublishMetaData(content=" + this.content + ", videoPaths=" + this.videoPaths + ", imagePaths=" + this.imagePaths + ')';
    }

    /* compiled from: PublishMetaData.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004HÆ\u0001¨\u0006\u0006"}, d2 = {"Lcom/taptap/sdk/moment/model/PublishMetaData$Companion;", "", "()V", "serializer", "Lkotlinx/serialization/KSerializer;", "Lcom/taptap/sdk/moment/model/PublishMetaData;", "tap-moment_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final KSerializer<PublishMetaData> serializer() {
            return PublishMetaData$$serializer.INSTANCE;
        }
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "This synthesized declaration should not be used directly", replaceWith = @ReplaceWith(expression = "", imports = {}))
    public /* synthetic */ PublishMetaData(int i, @SerialName("content") String str, @SerialName("videoPaths") List list, @SerialName("imagePaths") List list2, SerializationConstructorMarker serializationConstructorMarker) {
        if ((i & 0) != 0) {
            PluginExceptionsKt.throwMissingFieldException(i, 0, PublishMetaData$$serializer.INSTANCE.getDescriptor());
        }
        this.content = (i & 1) == 0 ? "" : str;
        if ((i & 2) == 0) {
            this.videoPaths = CollectionsKt.emptyList();
        } else {
            this.videoPaths = list;
        }
        if ((i & 4) == 0) {
            this.imagePaths = CollectionsKt.emptyList();
        } else {
            this.imagePaths = list2;
        }
    }

    public PublishMetaData(String content, List<String> videoPaths, List<String> imagePaths) {
        Intrinsics.checkNotNullParameter(content, "content");
        Intrinsics.checkNotNullParameter(videoPaths, "videoPaths");
        Intrinsics.checkNotNullParameter(imagePaths, "imagePaths");
        this.content = content;
        this.videoPaths = videoPaths;
        this.imagePaths = imagePaths;
    }

    @JvmStatic
    public static final void write$Self(PublishMetaData self, CompositeEncoder output, SerialDescriptor serialDesc) {
        Intrinsics.checkNotNullParameter(self, "self");
        Intrinsics.checkNotNullParameter(output, "output");
        Intrinsics.checkNotNullParameter(serialDesc, "serialDesc");
        if (output.shouldEncodeElementDefault(serialDesc, 0) || !Intrinsics.areEqual(self.content, "")) {
            output.encodeStringElement(serialDesc, 0, self.content);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 1) || !Intrinsics.areEqual(self.videoPaths, CollectionsKt.emptyList())) {
            output.encodeSerializableElement(serialDesc, 1, new ArrayListSerializer(StringSerializer.INSTANCE), self.videoPaths);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 2) || !Intrinsics.areEqual(self.imagePaths, CollectionsKt.emptyList())) {
            output.encodeSerializableElement(serialDesc, 2, new ArrayListSerializer(StringSerializer.INSTANCE), self.imagePaths);
        }
    }

    public final String getContent() {
        return this.content;
    }

    public /* synthetic */ PublishMetaData(String str, List list, List list2, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? "" : str, (i & 2) != 0 ? CollectionsKt.emptyList() : list, (i & 4) != 0 ? CollectionsKt.emptyList() : list2);
    }

    public final List<String> getVideoPaths() {
        return this.videoPaths;
    }

    public final List<String> getImagePaths() {
        return this.imagePaths;
    }
}
