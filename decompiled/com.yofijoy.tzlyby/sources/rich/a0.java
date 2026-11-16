package rich;

import cz.msebera.android.httpclient.client.methods.HttpPatch;
import java.net.URI;
import java.util.Map;
import org.apache.http.HttpResponse;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpDelete;
import org.apache.http.client.methods.HttpEntityEnclosingRequestBase;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpHead;
import org.apache.http.client.methods.HttpOptions;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.client.methods.HttpPut;
import org.apache.http.client.methods.HttpRequestBase;
import org.apache.http.client.methods.HttpTrace;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.entity.ByteArrayEntity;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpParams;

/* loaded from: classes2.dex */
public class a0 implements c0 {
    public final HttpClient a;

    /* loaded from: classes2.dex */
    public static final class a extends HttpEntityEnclosingRequestBase {
        public a(String str) {
            setURI(URI.create(str));
        }

        @Override // org.apache.http.client.methods.HttpRequestBase, org.apache.http.client.methods.HttpUriRequest
        public String getMethod() {
            return HttpPatch.METHOD_NAME;
        }
    }

    public a0(HttpClient httpClient) {
        this.a = httpClient;
    }

    public static void a(HttpUriRequest httpUriRequest, Map map) {
        for (String str : map.keySet()) {
            httpUriRequest.setHeader(str, (String) map.get(str));
        }
    }

    @Override // rich.c0
    public HttpResponse a(o oVar, Map map) {
        HttpRequestBase httpRequestBase;
        switch (oVar.b) {
            case -1:
                byte[] d = oVar.d();
                if (d == null) {
                    httpRequestBase = new HttpGet(oVar.h());
                    break;
                } else {
                    HttpPost httpPost = new HttpPost(oVar.h());
                    httpPost.addHeader("Content-Type", oVar.e());
                    httpPost.setEntity(new ByteArrayEntity(d));
                    httpRequestBase = httpPost;
                    break;
                }
            case 0:
                httpRequestBase = new HttpGet(oVar.h());
                break;
            case 1:
                HttpPost httpPost2 = new HttpPost(oVar.h());
                httpPost2.addHeader("Content-Type", f0.q);
                byte[] a2 = oVar.a();
                httpRequestBase = httpPost2;
                if (a2 != null) {
                    httpPost2.setEntity(new ByteArrayEntity(a2));
                    httpRequestBase = httpPost2;
                    break;
                }
                break;
            case 2:
                HttpPut httpPut = new HttpPut(oVar.h());
                httpPut.addHeader("Content-Type", f0.q);
                byte[] a3 = oVar.a();
                httpRequestBase = httpPut;
                if (a3 != null) {
                    httpPut.setEntity(new ByteArrayEntity(a3));
                    httpRequestBase = httpPut;
                    break;
                }
                break;
            case 3:
                httpRequestBase = new HttpDelete(oVar.h());
                break;
            case 4:
                httpRequestBase = new HttpHead(oVar.h());
                break;
            case 5:
                httpRequestBase = new HttpOptions(oVar.h());
                break;
            case 6:
                httpRequestBase = new HttpTrace(oVar.h());
                break;
            case 7:
                a aVar = new a(oVar.h());
                aVar.addHeader("Content-Type", f0.q);
                byte[] a4 = oVar.a();
                httpRequestBase = aVar;
                if (a4 != null) {
                    aVar.setEntity(new ByteArrayEntity(a4));
                    httpRequestBase = aVar;
                    break;
                }
                break;
            default:
                throw new IllegalStateException("Unknown request method.");
        }
        a(httpRequestBase, map);
        a(httpRequestBase, oVar.c());
        HttpParams params = httpRequestBase.getParams();
        int g = oVar.g();
        HttpConnectionParams.setConnectionTimeout(params, 5000);
        HttpConnectionParams.setSoTimeout(params, g);
        return this.a.execute(httpRequestBase);
    }
}
