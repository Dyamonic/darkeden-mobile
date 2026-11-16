package rich;

import android.content.Context;
import android.text.TextUtils;
import java.util.HashMap;
import org.json.JSONException;
import org.json.JSONObject;
import rich.k2;

/* loaded from: classes2.dex */
public class w1 {
    public static b a = new b(null);

    /* loaded from: classes2.dex */
    public class a extends k2.a {
        public final /* synthetic */ y1 b;
        public final /* synthetic */ l0 c;

        public a(y1 y1Var, l0 l0Var) {
            this.b = y1Var;
            this.c = l0Var;
        }

        @Override // rich.k2.a
        public void a() {
            a2 a2Var = new a2();
            JSONObject b = this.b.b();
            a2Var.a = this.c;
            m1.a().a(b, a2Var.a, new z1(a2Var));
        }
    }

    /* loaded from: classes2.dex */
    public static class b extends HashMap {
        public /* synthetic */ b(a aVar) {
        }
    }

    public static void a() {
        String valueOf = String.valueOf(0);
        a.put("authPageIn", valueOf);
        a.put("authPageOut", valueOf);
        a.put("authClickFailed", valueOf);
        a.put("authClickSuccess", valueOf);
        a.put("timeOnAuthPage", valueOf);
        a.put("PrivacyNotSelectedToast", valueOf);
        a.put("PrivacyNotSelectedPopup", valueOf);
        a.put("PrivacyNotSelectedCustom", valueOf);
        a.put("PrivacyNotSelectedShake", valueOf);
    }

    public static void a(Context context, l0 l0Var) {
        String str;
        String str2;
        String str3;
        String str4;
        String str5;
        String str6;
        try {
            if (l0Var.b().j) {
                return;
            }
            String valueOf = String.valueOf(0);
            b bVar = a;
            String str7 = !((String) ((!bVar.containsKey("authPageIn") || bVar.get("authPageIn") == null) ? valueOf : bVar.get("authPageIn"))).equals(valueOf) ? (String) a.get("authPageIn") : null;
            b bVar2 = a;
            String str8 = !((String) ((!bVar2.containsKey("authPageOut") || bVar2.get("authPageOut") == null) ? valueOf : bVar2.get("authPageOut"))).equals(valueOf) ? (String) a.get("authPageOut") : null;
            b bVar3 = a;
            if (((String) ((!bVar3.containsKey("authClickSuccess") || bVar3.get("authClickSuccess") == null) ? valueOf : bVar3.get("authClickSuccess"))).equals(valueOf)) {
                str = "appid";
                str2 = null;
            } else {
                str2 = (String) a.get("authClickSuccess");
                str = "appid";
            }
            b bVar4 = a;
            if (((String) ((!bVar4.containsKey("authClickFailed") || bVar4.get("authClickFailed") == null) ? valueOf : bVar4.get("authClickFailed"))).equals(valueOf)) {
                str3 = "";
                str4 = null;
            } else {
                str4 = (String) a.get("authClickFailed");
                str3 = "";
            }
            b bVar5 = a;
            if (((String) ((!bVar5.containsKey("timeOnAuthPage") || bVar5.get("timeOnAuthPage") == null) ? valueOf : bVar5.get("timeOnAuthPage"))).equals(valueOf)) {
                str5 = str4;
                str6 = null;
            } else {
                str6 = (String) a.get("timeOnAuthPage");
                str5 = str4;
            }
            b bVar6 = a;
            String str9 = !((String) ((!bVar6.containsKey("PrivacyNotSelectedToast") || bVar6.get("PrivacyNotSelectedToast") == null) ? valueOf : bVar6.get("PrivacyNotSelectedToast"))).equals(valueOf) ? (String) a.get("PrivacyNotSelectedToast") : null;
            b bVar7 = a;
            String str10 = !((String) ((!bVar7.containsKey("PrivacyNotSelectedPopup") || bVar7.get("PrivacyNotSelectedPopup") == null) ? valueOf : bVar7.get("PrivacyNotSelectedPopup"))).equals(valueOf) ? (String) a.get("PrivacyNotSelectedPopup") : null;
            b bVar8 = a;
            String str11 = !((String) ((!bVar8.containsKey("PrivacyNotSelectedShake") || bVar8.get("PrivacyNotSelectedShake") == null) ? valueOf : bVar8.get("PrivacyNotSelectedShake"))).equals(valueOf) ? (String) a.get("PrivacyNotSelectedShake") : null;
            b bVar9 = a;
            String str12 = ((String) ((!bVar9.containsKey("PrivacyNotSelectedCustom") || bVar9.get("PrivacyNotSelectedCustom") == null) ? valueOf : bVar9.get("PrivacyNotSelectedCustom"))).equals(valueOf) ? null : (String) a.get("PrivacyNotSelectedCustom");
            b bVar10 = a;
            String str13 = (String) ((!bVar10.containsKey("authPrivacyState") || bVar10.get("authPrivacyState") == null) ? valueOf : bVar10.get("authPrivacyState"));
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("authPageOut", str8);
                jSONObject.put("authPageIn", str7);
                jSONObject.put("authClickSuccess", str2);
                jSONObject.put("timeOnAuthPage", str6);
                jSONObject.put("authClickFailed", str5);
                jSONObject.put("authPrivacyState", str13);
                jSONObject.put("PrivacyNotSelectedToast", str9);
                jSONObject.put("PrivacyNotSelectedPopup", str10);
                jSONObject.put("PrivacyNotSelectedShake", str11);
                jSONObject.put("PrivacyNotSelectedCustom", str12);
            } catch (JSONException e) {
                e.printStackTrace();
            }
            y1 y1Var = new y1();
            String str14 = str;
            String str15 = str3;
            y1Var.a = l0Var.b(str14, str15);
            y1Var.b = l0Var.b("traceId", str15);
            y1Var.a = l0Var.b(str14, str15);
            y1Var.c = b0.a(context);
            y1Var.d = b0.b(context);
            y1Var.e = l0Var.b("timeOut", str15);
            b bVar11 = a;
            y1Var.f = (String) ((!bVar11.containsKey("authPageInTime") || bVar11.get("authPageInTime") == null) ? str15 : bVar11.get("authPageInTime"));
            b bVar12 = a;
            y1Var.g = (String) ((!bVar12.containsKey("authPageOutTime") || bVar12.get("authPageOutTime") == null) ? str15 : bVar12.get("authPageOutTime"));
            y1Var.i = "eventTracking5";
            y1Var.o = l0Var.b("operatortype", str15);
            y1Var.p = l0Var.b("networktype", 0) + str15;
            y1Var.q = j2.a;
            y1Var.r = j2.b;
            y1Var.s = j2.c;
            y1Var.t = l0Var.b("simCardNum", str15);
            y1Var.B = jSONObject;
            y1Var.u = l0Var.b("imsiState", "0");
            y1Var.h = (System.currentTimeMillis() - l0Var.b("methodTimes", 0L)) + str15;
            k2.a(new a(y1Var, l0Var));
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public static void a(String str) {
        try {
            String str2 = (String) a.get(str);
            a.put(str, String.valueOf((TextUtils.isEmpty(str2) ? 0 : Integer.parseInt(str2)) + 1));
            a.put(str + "Time", b0.a());
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
