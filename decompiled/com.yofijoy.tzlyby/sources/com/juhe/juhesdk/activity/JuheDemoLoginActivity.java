package com.juhe.juhesdk.activity;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import android.widget.Toast;
import com.juhe.juhesdk.interfaces.JuheDemoOnLoginSuccess;
import com.juhe.juhesdk.middle.common.JUHE_RESULT;
import com.juhe.juhesdk.middle.manager.ConfigManager;
import com.juhe.juhesdk.middle.manager.LittleApiImp;
import com.juhe.juhesdk.notchlib.NotchScreenManager;
import com.juhe.juhesdk.web.WebAPICallback;
import com.taptap.sdk.update.download.core.breakpoint.BreakpointSQLiteKey;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class JuheDemoLoginActivity extends Activity {
    public static JuheDemoOnLoginSuccess loginSuccessCallBack;
    private int channelId;

    @Override // android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(getResources().getIdentifier("juhe_login", "layout", getPackageName()));
        NotchScreenManager.getInstance().setDisplayInNotch(this);
        Intent intent = getIntent();
        if (intent != null) {
            this.channelId = intent.getIntExtra("channelId", 0);
        }
        final TextView textView = (TextView) findViewById(getResources().getIdentifier("login_name_editText", BreakpointSQLiteKey.ID, getPackageName()));
        final TextView textView2 = (TextView) findViewById(getResources().getIdentifier("password_editText", BreakpointSQLiteKey.ID, getPackageName()));
        textView.setText("yofijoytest");
        textView2.setText("yofijoytest");
        ((Button) findViewById(getResources().getIdentifier("login_action_btn", BreakpointSQLiteKey.ID, getPackageName()))).setOnClickListener(new View.OnClickListener() { // from class: com.juhe.juhesdk.activity.JuheDemoLoginActivity.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                String trim = textView.getText().toString().trim();
                String trim2 = textView2.getText().toString().trim();
                if (trim.length() == 0) {
                    Toast.makeText(JuheDemoLoginActivity.this, "请输入账号", 0).show();
                    return;
                }
                if (trim2.length() == 0) {
                    Toast.makeText(JuheDemoLoginActivity.this, "请输入密码", 0).show();
                    return;
                }
                try {
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put("loginName", trim);
                    jSONObject.put("password", trim2);
                    String jSONObject2 = jSONObject.toString();
                    int appId = ConfigManager.instance().getAppId();
                    Log.d("DefaultImp", "============Login Start==============");
                    LittleApiImp.juheLogin(appId, ConfigManager.instance().getJuheChannel(), jSONObject2, null, null, new WebAPICallback() { // from class: com.juhe.juhesdk.activity.JuheDemoLoginActivity.1.1
                        @Override // com.juhe.juhesdk.web.WebAPICallback
                        public void onSuccess(JSONObject res) {
                            Log.d("DefaultImp", "============Login Success==============" + res.toString());
                            JSONObject jSONObject3 = new JSONObject();
                            try {
                                int i = res.getInt("code");
                                String string = res.getString("msg");
                                if (i == 0) {
                                    JSONObject jSONObject4 = res.getJSONObject("data");
                                    String string2 = jSONObject4.has("token") ? jSONObject4.getString("token") : "";
                                    jSONObject3.put("userName", jSONObject4.getString("channelUserName"));
                                    jSONObject3.put("userId", jSONObject4.getString("channelUserId"));
                                    jSONObject3.put("accessToken", string2);
                                    jSONObject3.put("code", 0);
                                    jSONObject3.put("msg", string);
                                    jSONObject3.put("channelId", JuheDemoLoginActivity.this.channelId);
                                    JuheDemoLoginActivity.loginSuccessCallBack.onLoginSuccess(jSONObject3);
                                    JuheDemoLoginActivity.this.finish();
                                    return;
                                }
                                JuheDemoLoginActivity.loginSuccessCallBack.onLoginFailed(JUHE_RESULT.SERVER_ERROR.code, string);
                            } catch (JSONException e) {
                                e.printStackTrace();
                                Toast.makeText(JuheDemoLoginActivity.this, "发生错误", 0).show();
                            }
                        }

                        @Override // com.juhe.juhesdk.web.WebAPICallback
                        public void onFailure(int code, String msg) {
                            Log.v("DefaultImp", msg);
                            Log.d("DefaultImp:", "============Login Fail=============");
                            JuheDemoLoginActivity.loginSuccessCallBack.onLoginFailed(JUHE_RESULT.NETWORK_ERROR.code, msg);
                        }
                    });
                } catch (JSONException e) {
                    e.printStackTrace();
                }
            }
        });
        ((Button) findViewById(getResources().getIdentifier("cancel_action_btn", BreakpointSQLiteKey.ID, getPackageName()))).setOnClickListener(new View.OnClickListener() { // from class: com.juhe.juhesdk.activity.JuheDemoLoginActivity.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                JuheDemoLoginActivity.this.finish();
            }
        });
    }
}
