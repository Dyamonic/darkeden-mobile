package com.taptap.sdk.update.download.core.exception;

import java.io.IOException;

/* loaded from: classes2.dex */
public class FileBusyAfterRunException extends IOException {
    public static final FileBusyAfterRunException SIGNAL = new FileBusyAfterRunException() { // from class: com.taptap.sdk.update.download.core.exception.FileBusyAfterRunException.1
    };

    private FileBusyAfterRunException() {
        super("File busy after run");
    }
}
