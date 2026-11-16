package com.taptap.sdk.kit.internal.enginebridge.command;

import com.taptap.sdk.kit.internal.TapLogger;
import com.taptap.sdk.kit.internal.enginebridge.EngineBridgeCallback;
import com.taptap.sdk.kit.internal.enginebridge.IEngineBridgeService;
import com.taptap.sdk.kit.internal.enginebridge.annotation.EngineBridgeMethod;
import com.taptap.sdk.kit.internal.enginebridge.exception.BridgeExceptionMessage;
import com.taptap.sdk.kit.internal.enginebridge.exception.EngineBridgeException;
import com.taptap.sdk.kit.internal.enginebridge.internal.BridgeHolder;
import com.taptap.sdk.kit.internal.enginebridge.internal.EngineBridgeReflector;
import com.taptap.sdk.kit.internal.json.TapJson;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerializersKt;
import kotlinx.serialization.json.Json;

/* compiled from: CommandExecutor.kt */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\b\u0001\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0016J\u0012\u0010\t\u001a\u0004\u0018\u00010\n2\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\u001e\u0010\u000b\u001a\u0004\u0018\u00010\n2\u0006\u0010\u0005\u001a\u00020\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\bH\u0002¨\u0006\f"}, d2 = {"Lcom/taptap/sdk/kit/internal/enginebridge/command/CommandExecutor;", "Lcom/taptap/sdk/kit/internal/enginebridge/command/ICommandExecutor;", "()V", "execute", "", "command", "Lcom/taptap/sdk/kit/internal/enginebridge/command/Command;", "callback", "Lcom/taptap/sdk/kit/internal/enginebridge/EngineBridgeCallback;", "executeAsync", "", "invokeCommand", "tap-kit_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes.dex */
public final class CommandExecutor implements ICommandExecutor {
    @Override // com.taptap.sdk.kit.internal.enginebridge.command.ICommandExecutor
    public void execute(Command command, EngineBridgeCallback callback) {
        Intrinsics.checkNotNullParameter(command, "command");
        Intrinsics.checkNotNullParameter(callback, "callback");
        EngineBridgeReflector.INSTANCE.checkCommand(command);
        Object invokeCommand = invokeCommand(command, callback);
        if (invokeCommand != null) {
            String str = null;
            try {
                Json json = TapJson.INSTANCE.getJson();
                KSerializer<Object> serializer = SerializersKt.serializer(json.getSerializersModule(), Reflection.typeOf(Object.class));
                Intrinsics.checkNotNull(serializer, "null cannot be cast to non-null type kotlinx.serialization.KSerializer<T of kotlinx.serialization.internal.Platform_commonKt.cast>");
                str = json.encodeToString(serializer, invokeCommand);
            } catch (Exception e) {
                TapLogger.loge$default(TapJson.TAG, null, e, 2, null);
            }
            if (str == null) {
                str = "";
            }
            callback.onResult(str);
        }
    }

    @Override // com.taptap.sdk.kit.internal.enginebridge.command.ICommandExecutor
    public Object executeAsync(Command command) {
        Intrinsics.checkNotNullParameter(command, "command");
        EngineBridgeReflector.INSTANCE.checkCommand(command);
        return invokeCommand$default(this, command, null, 2, null);
    }

    static /* synthetic */ Object invokeCommand$default(CommandExecutor commandExecutor, Command command, EngineBridgeCallback engineBridgeCallback, int i, Object obj) {
        if ((i & 2) != 0) {
            engineBridgeCallback = null;
        }
        return commandExecutor.invokeCommand(command, engineBridgeCallback);
    }

    private final Object invokeCommand(Command command, EngineBridgeCallback callback) {
        String str = "";
        IEngineBridgeService value = BridgeHolder.INSTANCE.getBridgeService(command.getService()).getValue();
        try {
            Method[] methods = EngineBridgeReflector.INSTANCE.getRegisteredService(command).getMethods();
            Intrinsics.checkNotNullExpressionValue(methods, "methods");
            Object[] objArr = null;
            Method method = null;
            for (Method method2 : methods) {
                EngineBridgeMethod engineBridgeMethod = (EngineBridgeMethod) method2.getAnnotation(EngineBridgeMethod.class);
                if (Intrinsics.areEqual(engineBridgeMethod != null ? engineBridgeMethod.value() : null, command.getMethod())) {
                    EngineBridgeReflector engineBridgeReflector = EngineBridgeReflector.INSTANCE;
                    Intrinsics.checkNotNullExpressionValue(method2, "method");
                    Object[] constructorCommandArgs = engineBridgeReflector.constructorCommandArgs(method2, command, callback);
                    if (constructorCommandArgs.length == method2.getParameterTypes().length) {
                        method = method2;
                        objArr = constructorCommandArgs;
                    }
                }
            }
            if (objArr == null) {
                throw new EngineBridgeException(BridgeExceptionMessage.COMMAND_ARGS_ERROR.getMessage());
            }
            if (method != null) {
                return method.invoke(value, Arrays.copyOf(objArr, objArr.length));
            }
            return null;
        } catch (IllegalAccessException e) {
            e.printStackTrace();
            if (e.getCause() != null) {
                Throwable cause = e.getCause();
                Intrinsics.checkNotNull(cause);
                str = cause.getMessage();
            }
            throw new EngineBridgeException(BridgeExceptionMessage.COMMAND_ARGS_ERROR.getExtraMessage(str));
        } catch (IllegalArgumentException e2) {
            e2.printStackTrace();
            if (e2.getCause() != null) {
                Throwable cause2 = e2.getCause();
                Intrinsics.checkNotNull(cause2);
                str = cause2.getMessage();
            }
            throw new EngineBridgeException(BridgeExceptionMessage.COMMAND_ARGS_ERROR.getExtraMessage(str));
        } catch (InvocationTargetException e3) {
            e3.printStackTrace();
            if (e3.getCause() != null) {
                Throwable cause3 = e3.getCause();
                str = cause3 != null ? cause3.getMessage() : null;
            }
            throw new EngineBridgeException(BridgeExceptionMessage.COMMAND_ARGS_ERROR.getExtraMessage(str));
        }
    }
}
