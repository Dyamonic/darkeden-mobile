package rich;

import androidx.core.app.NotificationCompat;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class y1 extends x1 {
    public static ArrayList D = new ArrayList();
    public JSONObject B = null;
    public JSONArray C;

    @Override // rich.x1
    public void a(JSONArray jSONArray) {
        this.C = jSONArray;
    }

    @Override // rich.x1, rich.j1
    public JSONObject b() {
        JSONObject b = super.b();
        try {
            b.put(NotificationCompat.CATEGORY_EVENT, this.B);
            b.put("exceptionStackTrace", this.C);
        } catch (JSONException e) {
            e.printStackTrace();
        }
        return b;
    }
}
