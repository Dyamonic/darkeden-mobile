package org.java_websocket;

import cz.msebera.android.httpclient.HttpStatus;
import java.io.IOException;
import java.net.InetSocketAddress;
import java.nio.ByteBuffer;
import java.nio.channels.ByteChannel;
import java.nio.channels.SelectionKey;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;
import org.java_websocket.drafts.Draft;
import org.java_websocket.drafts.Draft_6455;
import org.java_websocket.enums.CloseHandshakeType;
import org.java_websocket.enums.HandshakeState;
import org.java_websocket.enums.Opcode;
import org.java_websocket.enums.ReadyState;
import org.java_websocket.enums.Role;
import org.java_websocket.exceptions.IncompleteHandshakeException;
import org.java_websocket.exceptions.InvalidDataException;
import org.java_websocket.exceptions.InvalidHandshakeException;
import org.java_websocket.exceptions.LimitExceededException;
import org.java_websocket.exceptions.WebsocketNotConnectedException;
import org.java_websocket.framing.CloseFrame;
import org.java_websocket.framing.Framedata;
import org.java_websocket.framing.PingFrame;
import org.java_websocket.handshake.ClientHandshake;
import org.java_websocket.handshake.ClientHandshakeBuilder;
import org.java_websocket.handshake.Handshakedata;
import org.java_websocket.handshake.ServerHandshake;
import org.java_websocket.server.WebSocketServer;
import org.java_websocket.util.Charsetfunctions;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/* loaded from: classes2.dex */
public class WebSocketImpl implements WebSocket {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    public static final int DEFAULT_PORT = 80;
    public static final int DEFAULT_WSS_PORT = 443;
    public static final int RCVBUF = 16384;
    private static final Logger log = LoggerFactory.getLogger((Class<?>) WebSocketImpl.class);
    private Object attachment;
    private ByteChannel channel;
    private Integer closecode;
    private Boolean closedremotely;
    private String closemessage;
    private Draft draft;
    private boolean flushandclosestate;
    private ClientHandshake handshakerequest;
    public final BlockingQueue<ByteBuffer> inQueue;
    private SelectionKey key;
    private List<Draft> knownDrafts;
    private long lastPong;
    public final BlockingQueue<ByteBuffer> outQueue;
    private PingFrame pingFrame;
    private volatile ReadyState readyState;
    private String resourceDescriptor;
    private Role role;
    private final Object synchronizeWriteObject;
    private ByteBuffer tmpHandshakeBytes;
    private WebSocketServer.WebSocketWorker workerThread;
    private final WebSocketListener wsl;

    public WebSocketImpl(WebSocketListener webSocketListener, List<Draft> list) {
        this(webSocketListener, (Draft) null);
        this.role = Role.SERVER;
        if (list == null || list.isEmpty()) {
            ArrayList arrayList = new ArrayList();
            this.knownDrafts = arrayList;
            arrayList.add(new Draft_6455());
            return;
        }
        this.knownDrafts = list;
    }

    public WebSocketImpl(WebSocketListener webSocketListener, Draft draft) {
        this.flushandclosestate = false;
        this.readyState = ReadyState.NOT_YET_CONNECTED;
        this.draft = null;
        this.tmpHandshakeBytes = ByteBuffer.allocate(0);
        this.handshakerequest = null;
        this.closemessage = null;
        this.closecode = null;
        this.closedremotely = null;
        this.resourceDescriptor = null;
        this.lastPong = System.currentTimeMillis();
        this.synchronizeWriteObject = new Object();
        if (webSocketListener == null || (draft == null && this.role == Role.SERVER)) {
            throw new IllegalArgumentException("parameters must not be null");
        }
        this.outQueue = new LinkedBlockingQueue();
        this.inQueue = new LinkedBlockingQueue();
        this.wsl = webSocketListener;
        this.role = Role.CLIENT;
        if (draft != null) {
            this.draft = draft.copyInstance();
        }
    }

    public void decode(ByteBuffer byteBuffer) {
        log.trace("process({}): ({})", Integer.valueOf(byteBuffer.remaining()), byteBuffer.remaining() > 1000 ? "too big to display" : new String(byteBuffer.array(), byteBuffer.position(), byteBuffer.remaining()));
        if (this.readyState != ReadyState.NOT_YET_CONNECTED) {
            if (this.readyState == ReadyState.OPEN) {
                decodeFrames(byteBuffer);
            }
        } else {
            if (!decodeHandshake(byteBuffer) || isClosing() || isClosed()) {
                return;
            }
            if (byteBuffer.hasRemaining()) {
                decodeFrames(byteBuffer);
            } else if (this.tmpHandshakeBytes.hasRemaining()) {
                decodeFrames(this.tmpHandshakeBytes);
            }
        }
    }

    private boolean decodeHandshake(ByteBuffer byteBuffer) {
        ByteBuffer byteBuffer2;
        Handshakedata translateHandshake;
        if (this.tmpHandshakeBytes.capacity() == 0) {
            byteBuffer2 = byteBuffer;
        } else {
            if (this.tmpHandshakeBytes.remaining() < byteBuffer.remaining()) {
                ByteBuffer allocate = ByteBuffer.allocate(this.tmpHandshakeBytes.capacity() + byteBuffer.remaining());
                this.tmpHandshakeBytes.flip();
                allocate.put(this.tmpHandshakeBytes);
                this.tmpHandshakeBytes = allocate;
            }
            this.tmpHandshakeBytes.put(byteBuffer);
            this.tmpHandshakeBytes.flip();
            byteBuffer2 = this.tmpHandshakeBytes;
        }
        byteBuffer2.mark();
        try {
            try {
            } catch (InvalidHandshakeException e) {
                log.trace("Closing due to invalid handshake", (Throwable) e);
                close(e);
            }
        } catch (IncompleteHandshakeException e2) {
            if (this.tmpHandshakeBytes.capacity() == 0) {
                byteBuffer2.reset();
                int preferredSize = e2.getPreferredSize();
                if (preferredSize == 0) {
                    preferredSize = byteBuffer2.capacity() + 16;
                }
                ByteBuffer allocate2 = ByteBuffer.allocate(preferredSize);
                this.tmpHandshakeBytes = allocate2;
                allocate2.put(byteBuffer);
            } else {
                ByteBuffer byteBuffer3 = this.tmpHandshakeBytes;
                byteBuffer3.position(byteBuffer3.limit());
                ByteBuffer byteBuffer4 = this.tmpHandshakeBytes;
                byteBuffer4.limit(byteBuffer4.capacity());
            }
        }
        if (this.role == Role.SERVER) {
            Draft draft = this.draft;
            if (draft == null) {
                Iterator<Draft> it = this.knownDrafts.iterator();
                while (it.hasNext()) {
                    Draft copyInstance = it.next().copyInstance();
                    try {
                        copyInstance.setParseMode(this.role);
                        byteBuffer2.reset();
                        translateHandshake = copyInstance.translateHandshake(byteBuffer2);
                    } catch (InvalidHandshakeException unused) {
                    }
                    if (!(translateHandshake instanceof ClientHandshake)) {
                        log.trace("Closing due to wrong handshake");
                        closeConnectionDueToWrongHandshake(new InvalidDataException(1002, "wrong http function"));
                        return false;
                    }
                    ClientHandshake clientHandshake = (ClientHandshake) translateHandshake;
                    if (copyInstance.acceptHandshakeAsServer(clientHandshake) == HandshakeState.MATCHED) {
                        this.resourceDescriptor = clientHandshake.getResourceDescriptor();
                        try {
                            write(copyInstance.createHandshake(copyInstance.postProcessHandshakeResponseAsServer(clientHandshake, this.wsl.onWebsocketHandshakeReceivedAsServer(this, copyInstance, clientHandshake))));
                            this.draft = copyInstance;
                            open(clientHandshake);
                            return true;
                        } catch (RuntimeException e3) {
                            log.error("Closing due to internal server error", (Throwable) e3);
                            this.wsl.onWebsocketError(this, e3);
                            closeConnectionDueToInternalServerError(e3);
                            return false;
                        } catch (InvalidDataException e4) {
                            log.trace("Closing due to wrong handshake. Possible handshake rejection", (Throwable) e4);
                            closeConnectionDueToWrongHandshake(e4);
                            return false;
                        }
                    }
                }
                if (this.draft == null) {
                    log.trace("Closing due to protocol error: no draft matches");
                    closeConnectionDueToWrongHandshake(new InvalidDataException(1002, "no draft matches"));
                }
                return false;
            }
            Handshakedata translateHandshake2 = draft.translateHandshake(byteBuffer2);
            if (!(translateHandshake2 instanceof ClientHandshake)) {
                log.trace("Closing due to protocol error: wrong http function");
                flushAndClose(1002, "wrong http function", false);
                return false;
            }
            ClientHandshake clientHandshake2 = (ClientHandshake) translateHandshake2;
            if (this.draft.acceptHandshakeAsServer(clientHandshake2) == HandshakeState.MATCHED) {
                open(clientHandshake2);
                return true;
            }
            log.trace("Closing due to protocol error: the handshake did finally not match");
            close(1002, "the handshake did finally not match");
            return false;
        }
        if (this.role == Role.CLIENT) {
            this.draft.setParseMode(this.role);
            Handshakedata translateHandshake3 = this.draft.translateHandshake(byteBuffer2);
            if (!(translateHandshake3 instanceof ServerHandshake)) {
                log.trace("Closing due to protocol error: wrong http function");
                flushAndClose(1002, "wrong http function", false);
                return false;
            }
            ServerHandshake serverHandshake = (ServerHandshake) translateHandshake3;
            if (this.draft.acceptHandshakeAsClient(this.handshakerequest, serverHandshake) == HandshakeState.MATCHED) {
                try {
                    this.wsl.onWebsocketHandshakeReceivedAsClient(this, this.handshakerequest, serverHandshake);
                    open(serverHandshake);
                    return true;
                } catch (RuntimeException e5) {
                    log.error("Closing since client was never connected", (Throwable) e5);
                    this.wsl.onWebsocketError(this, e5);
                    flushAndClose(-1, e5.getMessage(), false);
                    return false;
                } catch (InvalidDataException e6) {
                    log.trace("Closing due to invalid data exception. Possible handshake rejection", (Throwable) e6);
                    flushAndClose(e6.getCloseCode(), e6.getMessage(), false);
                    return false;
                }
            }
            log.trace("Closing due to protocol error: draft {} refuses handshake", this.draft);
            close(1002, "draft " + this.draft + " refuses handshake");
        }
        return false;
    }

    private void decodeFrames(ByteBuffer byteBuffer) {
        try {
            for (Framedata framedata : this.draft.translateFrame(byteBuffer)) {
                log.trace("matched frame: {}", framedata);
                this.draft.processFrame(this, framedata);
            }
        } catch (LimitExceededException e) {
            if (e.getLimit() == Integer.MAX_VALUE) {
                log.error("Closing due to invalid size of frame", (Throwable) e);
                this.wsl.onWebsocketError(this, e);
            }
            close(e);
        } catch (InvalidDataException e2) {
            log.error("Closing due to invalid data in frame", (Throwable) e2);
            this.wsl.onWebsocketError(this, e2);
            close(e2);
        }
    }

    private void closeConnectionDueToWrongHandshake(InvalidDataException invalidDataException) {
        write(generateHttpResponseDueToError(HttpStatus.SC_NOT_FOUND));
        flushAndClose(invalidDataException.getCloseCode(), invalidDataException.getMessage(), false);
    }

    private void closeConnectionDueToInternalServerError(RuntimeException runtimeException) {
        write(generateHttpResponseDueToError(500));
        flushAndClose(-1, runtimeException.getMessage(), false);
    }

    private ByteBuffer generateHttpResponseDueToError(int i) {
        String str = i != 404 ? "500 Internal Server Error" : "404 WebSocket Upgrade Failure";
        return ByteBuffer.wrap(Charsetfunctions.asciiBytes("HTTP/1.1 " + str + "\r\nContent-Type: text/html\nServer: TooTallNate Java-WebSocket\r\nContent-Length: " + (str.length() + 48) + "\r\n\r\n<html><head></head><body><h1>" + str + "</h1></body></html>"));
    }

    public synchronized void close(int i, String str, boolean z) {
        if (this.readyState == ReadyState.CLOSING || this.readyState == ReadyState.CLOSED) {
            return;
        }
        if (this.readyState == ReadyState.OPEN) {
            if (i == 1006) {
                this.readyState = ReadyState.CLOSING;
                flushAndClose(i, str, false);
                return;
            }
            if (this.draft.getCloseHandshakeType() != CloseHandshakeType.NONE) {
                if (!z) {
                    try {
                        try {
                            this.wsl.onWebsocketCloseInitiated(this, i, str);
                        } catch (RuntimeException e) {
                            this.wsl.onWebsocketError(this, e);
                        }
                    } catch (InvalidDataException e2) {
                        log.error("generated frame is invalid", (Throwable) e2);
                        this.wsl.onWebsocketError(this, e2);
                        flushAndClose(1006, "generated frame is invalid", false);
                    }
                }
                if (isOpen()) {
                    CloseFrame closeFrame = new CloseFrame();
                    closeFrame.setReason(str);
                    closeFrame.setCode(i);
                    closeFrame.isValid();
                    sendFrame(closeFrame);
                }
            }
            flushAndClose(i, str, z);
        } else if (i == -3) {
            flushAndClose(-3, str, true);
        } else if (i == 1002) {
            flushAndClose(i, str, z);
        } else {
            flushAndClose(-1, str, false);
        }
        this.readyState = ReadyState.CLOSING;
        this.tmpHandshakeBytes = null;
    }

    @Override // org.java_websocket.WebSocket
    public void close(int i, String str) {
        close(i, str, false);
    }

    public synchronized void closeConnection(int i, String str, boolean z) {
        if (this.readyState == ReadyState.CLOSED) {
            return;
        }
        if (this.readyState == ReadyState.OPEN && i == 1006) {
            this.readyState = ReadyState.CLOSING;
        }
        SelectionKey selectionKey = this.key;
        if (selectionKey != null) {
            selectionKey.cancel();
        }
        ByteChannel byteChannel = this.channel;
        if (byteChannel != null) {
            try {
                byteChannel.close();
            } catch (IOException e) {
                if (e.getMessage().equals("Broken pipe")) {
                    log.trace("Caught IOException: Broken pipe during closeConnection()", (Throwable) e);
                } else {
                    log.error("Exception during channel.close()", (Throwable) e);
                    this.wsl.onWebsocketError(this, e);
                }
            }
        }
        try {
            this.wsl.onWebsocketClose(this, i, str, z);
        } catch (RuntimeException e2) {
            this.wsl.onWebsocketError(this, e2);
        }
        Draft draft = this.draft;
        if (draft != null) {
            draft.reset();
        }
        this.handshakerequest = null;
        this.readyState = ReadyState.CLOSED;
    }

    protected void closeConnection(int i, boolean z) {
        closeConnection(i, "", z);
    }

    public void closeConnection() {
        if (this.closedremotely == null) {
            throw new IllegalStateException("this method must be used in conjunction with flushAndClose");
        }
        closeConnection(this.closecode.intValue(), this.closemessage, this.closedremotely.booleanValue());
    }

    @Override // org.java_websocket.WebSocket
    public void closeConnection(int i, String str) {
        closeConnection(i, str, false);
    }

    public synchronized void flushAndClose(int i, String str, boolean z) {
        if (this.flushandclosestate) {
            return;
        }
        this.closecode = Integer.valueOf(i);
        this.closemessage = str;
        this.closedremotely = Boolean.valueOf(z);
        this.flushandclosestate = true;
        this.wsl.onWriteDemand(this);
        try {
            this.wsl.onWebsocketClosing(this, i, str, z);
        } catch (RuntimeException e) {
            log.error("Exception in onWebsocketClosing", (Throwable) e);
            this.wsl.onWebsocketError(this, e);
        }
        Draft draft = this.draft;
        if (draft != null) {
            draft.reset();
        }
        this.handshakerequest = null;
    }

    public void eot() {
        if (this.readyState == ReadyState.NOT_YET_CONNECTED) {
            closeConnection(-1, true);
            return;
        }
        if (this.flushandclosestate) {
            closeConnection(this.closecode.intValue(), this.closemessage, this.closedremotely.booleanValue());
            return;
        }
        if (this.draft.getCloseHandshakeType() == CloseHandshakeType.NONE) {
            closeConnection(1000, true);
            return;
        }
        if (this.draft.getCloseHandshakeType() == CloseHandshakeType.ONEWAY) {
            if (this.role == Role.SERVER) {
                closeConnection(1006, true);
                return;
            } else {
                closeConnection(1000, true);
                return;
            }
        }
        closeConnection(1006, true);
    }

    @Override // org.java_websocket.WebSocket
    public void close(int i) {
        close(i, "", false);
    }

    public void close(InvalidDataException invalidDataException) {
        close(invalidDataException.getCloseCode(), invalidDataException.getMessage(), false);
    }

    @Override // org.java_websocket.WebSocket
    public void send(String str) {
        if (str == null) {
            throw new IllegalArgumentException("Cannot send 'null' data to a WebSocketImpl.");
        }
        send(this.draft.createFrames(str, this.role == Role.CLIENT));
    }

    @Override // org.java_websocket.WebSocket
    public void send(ByteBuffer byteBuffer) {
        if (byteBuffer == null) {
            throw new IllegalArgumentException("Cannot send 'null' data to a WebSocketImpl.");
        }
        send(this.draft.createFrames(byteBuffer, this.role == Role.CLIENT));
    }

    @Override // org.java_websocket.WebSocket
    public void send(byte[] bArr) {
        send(ByteBuffer.wrap(bArr));
    }

    private void send(Collection<Framedata> collection) {
        if (!isOpen()) {
            throw new WebsocketNotConnectedException();
        }
        if (collection == null) {
            throw new IllegalArgumentException();
        }
        ArrayList arrayList = new ArrayList();
        for (Framedata framedata : collection) {
            log.trace("send frame: {}", framedata);
            arrayList.add(this.draft.createBinaryFrame(framedata));
        }
        write(arrayList);
    }

    @Override // org.java_websocket.WebSocket
    public void sendFragmentedFrame(Opcode opcode, ByteBuffer byteBuffer, boolean z) {
        send(this.draft.continuousFrame(opcode, byteBuffer, z));
    }

    @Override // org.java_websocket.WebSocket
    public void sendFrame(Collection<Framedata> collection) {
        send(collection);
    }

    @Override // org.java_websocket.WebSocket
    public void sendFrame(Framedata framedata) {
        send(Collections.singletonList(framedata));
    }

    @Override // org.java_websocket.WebSocket
    public void sendPing() {
        if (this.pingFrame == null) {
            this.pingFrame = new PingFrame();
        }
        sendFrame(this.pingFrame);
    }

    @Override // org.java_websocket.WebSocket
    public boolean hasBufferedData() {
        return !this.outQueue.isEmpty();
    }

    public void startHandshake(ClientHandshakeBuilder clientHandshakeBuilder) throws InvalidHandshakeException {
        this.handshakerequest = this.draft.postProcessHandshakeRequestAsClient(clientHandshakeBuilder);
        this.resourceDescriptor = clientHandshakeBuilder.getResourceDescriptor();
        try {
            this.wsl.onWebsocketHandshakeSentAsClient(this, this.handshakerequest);
            write(this.draft.createHandshake(this.handshakerequest));
        } catch (RuntimeException e) {
            log.error("Exception in startHandshake", (Throwable) e);
            this.wsl.onWebsocketError(this, e);
            throw new InvalidHandshakeException("rejected because of " + e);
        } catch (InvalidDataException unused) {
            throw new InvalidHandshakeException("Handshake data rejected by client.");
        }
    }

    private void write(ByteBuffer byteBuffer) {
        log.trace("write({}): {}", Integer.valueOf(byteBuffer.remaining()), byteBuffer.remaining() > 1000 ? "too big to display" : new String(byteBuffer.array()));
        this.outQueue.add(byteBuffer);
        this.wsl.onWriteDemand(this);
    }

    private void write(List<ByteBuffer> list) {
        synchronized (this.synchronizeWriteObject) {
            Iterator<ByteBuffer> it = list.iterator();
            while (it.hasNext()) {
                write(it.next());
            }
        }
    }

    private void open(Handshakedata handshakedata) {
        log.trace("open using draft: {}", this.draft);
        this.readyState = ReadyState.OPEN;
        try {
            this.wsl.onWebsocketOpen(this, handshakedata);
        } catch (RuntimeException e) {
            this.wsl.onWebsocketError(this, e);
        }
    }

    @Override // org.java_websocket.WebSocket
    public boolean isOpen() {
        return this.readyState == ReadyState.OPEN;
    }

    @Override // org.java_websocket.WebSocket
    public boolean isClosing() {
        return this.readyState == ReadyState.CLOSING;
    }

    @Override // org.java_websocket.WebSocket
    public boolean isFlushAndClose() {
        return this.flushandclosestate;
    }

    @Override // org.java_websocket.WebSocket
    public boolean isClosed() {
        return this.readyState == ReadyState.CLOSED;
    }

    @Override // org.java_websocket.WebSocket
    public ReadyState getReadyState() {
        return this.readyState;
    }

    public void setSelectionKey(SelectionKey selectionKey) {
        this.key = selectionKey;
    }

    public SelectionKey getSelectionKey() {
        return this.key;
    }

    public String toString() {
        return super.toString();
    }

    @Override // org.java_websocket.WebSocket
    public InetSocketAddress getRemoteSocketAddress() {
        return this.wsl.getRemoteSocketAddress(this);
    }

    @Override // org.java_websocket.WebSocket
    public InetSocketAddress getLocalSocketAddress() {
        return this.wsl.getLocalSocketAddress(this);
    }

    @Override // org.java_websocket.WebSocket
    public Draft getDraft() {
        return this.draft;
    }

    @Override // org.java_websocket.WebSocket
    public void close() {
        close(1000);
    }

    @Override // org.java_websocket.WebSocket
    public String getResourceDescriptor() {
        return this.resourceDescriptor;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public long getLastPong() {
        return this.lastPong;
    }

    public void updateLastPong() {
        this.lastPong = System.currentTimeMillis();
    }

    public WebSocketListener getWebSocketListener() {
        return this.wsl;
    }

    @Override // org.java_websocket.WebSocket
    public <T> T getAttachment() {
        return (T) this.attachment;
    }

    @Override // org.java_websocket.WebSocket
    public <T> void setAttachment(T t) {
        this.attachment = t;
    }

    public ByteChannel getChannel() {
        return this.channel;
    }

    public void setChannel(ByteChannel byteChannel) {
        this.channel = byteChannel;
    }

    public WebSocketServer.WebSocketWorker getWorkerThread() {
        return this.workerThread;
    }

    public void setWorkerThread(WebSocketServer.WebSocketWorker webSocketWorker) {
        this.workerThread = webSocketWorker;
    }
}
