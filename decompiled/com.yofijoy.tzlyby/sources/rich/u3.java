package rich;

import androidx.core.app.NotificationCompat;
import com.rich.oauth.callback.TokenResultCallback;
import com.rich.oauth.core.RichAuth;
import com.rich.oauth.util.JsonBuildUtil;
import com.rich.oauth.util.MD5Utils;
import com.rich.oauth.util.TimeUtil;
import java.util.Random;
import java.util.TreeMap;
import org.json.JSONException;
import org.json.JSONObject;
import rich.q;

/* loaded from: classes2.dex */
public class u3 {

    /* loaded from: classes2.dex */
    public class a implements q.b {
        public final /* synthetic */ TokenResultCallback a;

        public a(u3 u3Var, TokenResultCallback tokenResultCallback) {
            this.a = tokenResultCallback;
        }

        @Override // rich.q.b
        public void a(Object obj) {
            int optInt;
            String optString;
            TokenResultCallback tokenResultCallback;
            JSONObject jSONObject = (JSONObject) obj;
            if (jSONObject == null) {
                tokenResultCallback = this.a;
                optInt = 55556;
                optString = "token换取token返回的json为null";
            } else {
                optInt = jSONObject.optInt(NotificationCompat.CATEGORY_STATUS);
                optString = jSONObject.optString("msg");
                String optString2 = jSONObject.optString("token");
                if (optInt == 0) {
                    this.a.getTokenSuccess(optString2);
                    return;
                }
                tokenResultCallback = this.a;
            }
            tokenResultCallback.getTokenFailure(JsonBuildUtil.getJsonString(optInt, optString));
        }
    }

    /* loaded from: classes2.dex */
    public class b implements q.a {
        public final /* synthetic */ TokenResultCallback a;

        public b(u3 u3Var, TokenResultCallback tokenResultCallback) {
            this.a = tokenResultCallback;
        }

        @Override // rich.q.a
        public void a(u uVar) {
            k kVar = uVar.a;
            if (kVar == null) {
                this.a.getTokenFailure(JsonBuildUtil.getJsonString(81010, "无网络，token换取失败，请打开网络，并稍后进行登录"));
                return;
            }
            try {
                JSONObject jSONObject = new JSONObject(new String(kVar.b));
                this.a.getTokenFailure(JsonBuildUtil.getJsonString(jSONObject.optInt(NotificationCompat.CATEGORY_STATUS), jSONObject.optString("msg")));
            } catch (JSONException e) {
                e.printStackTrace();
            }
        }
    }

    public void a(String str, String str2, String str3, String str4, TokenResultCallback tokenResultCallback) {
        if (tokenResultCallback == null) {
            return;
        }
        String time = TimeUtil.getTime();
        Random random = new Random();
        String str5 = String.valueOf(random.nextInt(89999) + 10000) + String.valueOf(random.nextInt(89999) + 10000);
        TreeMap treeMap = new TreeMap();
        treeMap.put("appId", str);
        treeMap.put("systemType", "2");
        treeMap.put("timeStamp", time);
        treeMap.put("serviceType", str4);
        treeMap.put("taskId", str3);
        treeMap.put("param", str2);
        String digest = MD5Utils.getDigest(treeMap, str, "utf-8");
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("appId", str);
            jSONObject.put("systemType", 2);
            jSONObject.put("timeStamp", time);
            jSONObject.put("serviceType", str4);
            jSONObject.put("taskId", str3);
            jSONObject.put("param", str2);
            jSONObject.put("sign", digest);
        } catch (JSONException e) {
            e.printStackTrace();
        }
        e3 e3Var = new e3("https://nvs.im.tencent.cn/v5/rapidauth/querytoken?sdkappid=" + str + "&random=" + str5, jSONObject, new a(this, tokenResultCallback), new b(this, tokenResultCallback));
        e3Var.l = new e(10000, 1, 1.0f);
        RichAuth.getInstance().a().a(e3Var);
    }
}
