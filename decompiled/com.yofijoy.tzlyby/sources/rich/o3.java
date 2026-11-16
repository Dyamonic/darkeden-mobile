package rich;

import android.text.TextUtils;
import android.util.Log;
import androidx.core.app.NotificationCompat;
import com.rich.oauth.callback.InitResultCallback;
import com.rich.oauth.util.JsonBuildUtil;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONObject;
import rich.f3;
import rich.q;

/* loaded from: classes2.dex */
public class o3 implements q.b {
    public final /* synthetic */ InitResultCallback a;
    public final /* synthetic */ q3 b;

    public o3(q3 q3Var, InitResultCallback initResultCallback) {
        this.b = q3Var;
        this.a = initResultCallback;
    }

    @Override // rich.q.b
    public void a(Object obj) {
        String str;
        JSONObject jSONObject = (JSONObject) obj;
        if (jSONObject == null) {
            this.a.initFailure(JsonBuildUtil.getJsonString(55557, "初始化接口obj为null"));
            return;
        }
        f3 f3Var = new f3();
        f3Var.a = jSONObject.optString(NotificationCompat.CATEGORY_STATUS);
        f3Var.b = jSONObject.optString("msg");
        JSONArray optJSONArray = jSONObject.optJSONArray("info");
        ArrayList arrayList = new ArrayList();
        f3Var.c = arrayList;
        if (optJSONArray != null) {
            for (int i = 0; i < optJSONArray.length(); i++) {
                f3.a aVar = new f3.a();
                JSONObject optJSONObject = optJSONArray.optJSONObject(i);
                aVar.a = optJSONObject.optString("appId");
                aVar.b = optJSONObject.optString("appSecret");
                aVar.c = optJSONObject.optInt("serviceType");
                aVar.d = optJSONObject.optString("rsaKey");
                arrayList.add(aVar);
            }
        }
        if ("0".equals(f3Var.a)) {
            this.b.a(f3Var);
            this.a.initResultSuccess(f3Var);
            str = "callback.initResultSuccess(initBean)";
        } else {
            String optString = jSONObject.optString(NotificationCompat.CATEGORY_STATUS);
            if (TextUtils.isEmpty(optString)) {
                this.a.initFailure(JsonBuildUtil.getJsonString(50016, jSONObject.optString("msg")));
                str = "JsonBuildUtil.getJsonString(50016";
            } else {
                this.a.initFailure(JsonBuildUtil.getJsonString(Integer.parseInt(optString), jSONObject.optString("msg")));
                str = "!TextUtils.isEmpty(status)";
            }
        }
        Log.e("RichAuth", str);
    }
}
