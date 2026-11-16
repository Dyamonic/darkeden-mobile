package cz.msebera.android.httpclient.impl.auth;

import java.io.IOException;

@Deprecated
/* loaded from: classes3.dex */
public interface SpnegoTokenGenerator {
    byte[] generateSpnegoDERObject(byte[] bArr) throws IOException;
}
