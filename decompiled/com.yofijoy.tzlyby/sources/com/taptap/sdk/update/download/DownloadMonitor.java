package com.taptap.sdk.update.download;

import com.taptap.sdk.update.download.core.breakpoint.BreakpointInfo;
import com.taptap.sdk.update.download.core.cause.EndCause;
import com.taptap.sdk.update.download.core.cause.ResumeFailedCause;

/* loaded from: classes2.dex */
public interface DownloadMonitor {
    void taskDownloadFromBeginning(DownloadTask downloadTask, BreakpointInfo breakpointInfo, ResumeFailedCause resumeFailedCause);

    void taskDownloadFromBreakpoint(DownloadTask downloadTask, BreakpointInfo breakpointInfo);

    void taskEnd(DownloadTask downloadTask, EndCause endCause, Exception exc);

    void taskStart(DownloadTask downloadTask);
}
