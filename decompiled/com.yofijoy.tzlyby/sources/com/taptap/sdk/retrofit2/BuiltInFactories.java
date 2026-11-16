package com.taptap.sdk.retrofit2;

import com.taptap.sdk.retrofit2.CallAdapter;
import com.taptap.sdk.retrofit2.Converter;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.Executor;
import javax.annotation.Nullable;

/* loaded from: classes2.dex */
class BuiltInFactories {
    /* JADX INFO: Access modifiers changed from: package-private */
    public List<? extends CallAdapter.Factory> createDefaultCallAdapterFactories(@Nullable Executor executor) {
        return Collections.singletonList(new DefaultCallAdapterFactory(executor));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public List<? extends Converter.Factory> createDefaultConverterFactories() {
        return Collections.emptyList();
    }

    /* loaded from: classes2.dex */
    static final class Java8 extends BuiltInFactories {
        @Override // com.taptap.sdk.retrofit2.BuiltInFactories
        List<? extends CallAdapter.Factory> createDefaultCallAdapterFactories(@Nullable Executor executor) {
            return Arrays.asList(new CompletableFutureCallAdapterFactory(), new DefaultCallAdapterFactory(executor));
        }

        @Override // com.taptap.sdk.retrofit2.BuiltInFactories
        List<? extends Converter.Factory> createDefaultConverterFactories() {
            return Collections.singletonList(new OptionalConverterFactory());
        }
    }
}
