package rich;

import com.loopj.android.http.RequestParams;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;
import rich.q;

/* loaded from: classes2.dex */
public class e3 extends e0 {
    public e3(String str, JSONObject jSONObject, q.b bVar, q.a aVar) {
        super(str, jSONObject, bVar, aVar);
    }

    @Override // rich.e0, rich.o
    public q a(k kVar) {
        return super.a(kVar);
    }

    @Override // rich.o
    public Map c() {
        HashMap hashMap = new HashMap();
        hashMap.put("Content-Type", RequestParams.APPLICATION_JSON);
        return hashMap;
    }
}
