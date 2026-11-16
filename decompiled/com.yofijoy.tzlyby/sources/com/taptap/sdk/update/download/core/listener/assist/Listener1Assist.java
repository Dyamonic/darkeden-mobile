package com.taptap.sdk.update.download.core.listener.assist;

import com.taptap.sdk.update.download.DownloadTask;
import com.taptap.sdk.update.download.core.breakpoint.BreakpointInfo;
import com.taptap.sdk.update.download.core.cause.EndCause;
import com.taptap.sdk.update.download.core.cause.ResumeFailedCause;
import com.taptap.sdk.update.download.core.listener.assist.ListenerModelHandler;
import java.util.concurrent.atomic.AtomicLong;

/* loaded from: classes2.dex */
public class Listener1Assist implements ListenerAssist, ListenerModelHandler.ModelCreator<Listener1Model> {
    private Listener1Callback callback;
    private final ListenerModelHandler<Listener1Model> modelHandler;

    /* loaded from: classes2.dex */
    public interface Listener1Callback {
        void connected(DownloadTask downloadTask, int i, long j, long j2);

        void progress(DownloadTask downloadTask, long j, long j2);

        void retry(DownloadTask downloadTask, ResumeFailedCause resumeFailedCause);

        void taskEnd(DownloadTask downloadTask, EndCause endCause, Exception exc, Listener1Model listener1Model);

        void taskStart(DownloadTask downloadTask, Listener1Model listener1Model);
    }

    public Listener1Assist() {
        this.modelHandler = new ListenerModelHandler<>(this);
    }

    Listener1Assist(ListenerModelHandler<Listener1Model> listenerModelHandler) {
        this.modelHandler = listenerModelHandler;
    }

    public void setCallback(Listener1Callback listener1Callback) {
        this.callback = listener1Callback;
    }

    public void taskStart(DownloadTask downloadTask) {
        Listener1Model addAndGetModel = this.modelHandler.addAndGetModel(downloadTask, null);
        Listener1Callback listener1Callback = this.callback;
        if (listener1Callback != null) {
            listener1Callback.taskStart(downloadTask, addAndGetModel);
        }
    }

    public void taskEnd(DownloadTask downloadTask, EndCause endCause, Exception exc) {
        Listener1Model removeOrCreate = this.modelHandler.removeOrCreate(downloadTask, downloadTask.getInfo());
        Listener1Callback listener1Callback = this.callback;
        if (listener1Callback != null) {
            listener1Callback.taskEnd(downloadTask, endCause, exc, removeOrCreate);
        }
    }

    public void downloadFromBeginning(DownloadTask downloadTask, BreakpointInfo breakpointInfo, ResumeFailedCause resumeFailedCause) {
        Listener1Callback listener1Callback;
        Listener1Model orRecoverModel = this.modelHandler.getOrRecoverModel(downloadTask, breakpointInfo);
        if (orRecoverModel == null) {
            return;
        }
        orRecoverModel.onInfoValid(breakpointInfo);
        if (orRecoverModel.isStarted.booleanValue() && (listener1Callback = this.callback) != null) {
            listener1Callback.retry(downloadTask, resumeFailedCause);
        }
        orRecoverModel.isStarted = true;
        orRecoverModel.isFromResumed = false;
        orRecoverModel.isFirstConnect = true;
    }

    public void downloadFromBreakpoint(DownloadTask downloadTask, BreakpointInfo breakpointInfo) {
        Listener1Model orRecoverModel = this.modelHandler.getOrRecoverModel(downloadTask, breakpointInfo);
        if (orRecoverModel == null) {
            return;
        }
        orRecoverModel.onInfoValid(breakpointInfo);
        orRecoverModel.isStarted = true;
        orRecoverModel.isFromResumed = true;
        orRecoverModel.isFirstConnect = true;
    }

    public void connectEnd(DownloadTask downloadTask) {
        Listener1Model orRecoverModel = this.modelHandler.getOrRecoverModel(downloadTask, downloadTask.getInfo());
        if (orRecoverModel == null) {
            return;
        }
        if (Boolean.TRUE.equals(orRecoverModel.isFromResumed) && Boolean.TRUE.equals(orRecoverModel.isFirstConnect)) {
            orRecoverModel.isFirstConnect = false;
        }
        Listener1Callback listener1Callback = this.callback;
        if (listener1Callback != null) {
            listener1Callback.connected(downloadTask, orRecoverModel.blockCount, orRecoverModel.currentOffset.get(), orRecoverModel.totalLength);
        }
    }

    public void fetchProgress(DownloadTask downloadTask, long j) {
        Listener1Model orRecoverModel = this.modelHandler.getOrRecoverModel(downloadTask, downloadTask.getInfo());
        if (orRecoverModel == null) {
            return;
        }
        orRecoverModel.currentOffset.addAndGet(j);
        Listener1Callback listener1Callback = this.callback;
        if (listener1Callback != null) {
            listener1Callback.progress(downloadTask, orRecoverModel.currentOffset.get(), orRecoverModel.totalLength);
        }
    }

    @Override // com.taptap.sdk.update.download.core.listener.assist.ListenerAssist
    public boolean isAlwaysRecoverAssistModel() {
        return this.modelHandler.isAlwaysRecoverAssistModel();
    }

    @Override // com.taptap.sdk.update.download.core.listener.assist.ListenerAssist
    public void setAlwaysRecoverAssistModel(boolean z) {
        this.modelHandler.setAlwaysRecoverAssistModel(z);
    }

    @Override // com.taptap.sdk.update.download.core.listener.assist.ListenerAssist
    public void setAlwaysRecoverAssistModelIfNotSet(boolean z) {
        this.modelHandler.setAlwaysRecoverAssistModelIfNotSet(z);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.taptap.sdk.update.download.core.listener.assist.ListenerModelHandler.ModelCreator
    public Listener1Model create(int i) {
        return new Listener1Model(i);
    }

    /* loaded from: classes2.dex */
    public static class Listener1Model implements ListenerModelHandler.ListenerModel {
        int blockCount;
        final AtomicLong currentOffset = new AtomicLong();
        final int id;
        volatile Boolean isFirstConnect;
        Boolean isFromResumed;
        Boolean isStarted;
        long totalLength;

        Listener1Model(int i) {
            this.id = i;
        }

        public long getTotalLength() {
            return this.totalLength;
        }

        @Override // com.taptap.sdk.update.download.core.listener.assist.ListenerModelHandler.ListenerModel
        public int getId() {
            return this.id;
        }

        @Override // com.taptap.sdk.update.download.core.listener.assist.ListenerModelHandler.ListenerModel
        public void onInfoValid(BreakpointInfo breakpointInfo) {
            this.blockCount = breakpointInfo.getBlockCount();
            this.totalLength = breakpointInfo.getTotalLength();
            this.currentOffset.set(breakpointInfo.getTotalOffset());
            if (this.isStarted == null) {
                this.isStarted = false;
            }
            if (this.isFromResumed == null) {
                this.isFromResumed = Boolean.valueOf(this.currentOffset.get() > 0);
            }
            if (this.isFirstConnect == null) {
                this.isFirstConnect = true;
            }
        }
    }
}
