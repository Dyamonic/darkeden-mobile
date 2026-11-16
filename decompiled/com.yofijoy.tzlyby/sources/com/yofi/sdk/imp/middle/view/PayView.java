package com.yofi.sdk.imp.middle.view;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.widget.Button;
import android.widget.RadioButton;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.taptap.sdk.update.download.core.breakpoint.BreakpointSQLiteKey;
import com.yofi.sdk.activity.ContainerActivity;
import com.yofi.sdk.activity.WebPayView;
import com.yofi.sdk.imp.middle.YoFiSdkImp;
import com.yofi.sdk.imp.middle.common.Constants;
import com.yofi.sdk.imp.middle.data.PayInfo;
import com.yofi.sdk.imp.middle.dialog.LoadingDialog;
import com.yofi.sdk.imp.middle.eventreword.EventReword;
import com.yofi.sdk.imp.middle.manager.LittleApiImp;
import com.yofi.sdk.interfaces.IContainerView;
import com.yofi.sdk.utils.ToastUtils;
import com.yofi.sdk.web.PayResult;
import com.yofi.sdk.web.WebAPICallback;
import com.yofi.sdk.widget.WidgetUtil;
import java.util.List;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class PayView implements IContainerView, View.OnClickListener {
    private ContainerActivity activity;
    private Button btnClose;
    RelativeLayout layoutAli;
    RelativeLayout layoutSandBox;
    RelativeLayout layoutWechat;
    private Handler mHandler = new Handler() { // from class: com.yofi.sdk.imp.middle.view.PayView.3
        @Override // android.os.Handler
        public void handleMessage(Message msg) {
            if ("9000".equals(new PayResult((Map) msg.obj).getResultStatus())) {
                int floatValue = (int) Float.valueOf(PayView.this.payInfo.getAmount()).floatValue();
                Bundle bundle = new Bundle();
                bundle.putInt("amount", floatValue);
                bundle.putInt("reportType", 1);
                EventReword.getInstance().eventRecord(Constants.YoFiEventName.Purchase, bundle);
                YoFiSdkImp.instance().getPayCallback().onSuccess("pay success");
                PayView.this.activity.finish();
            }
        }
    };
    private String orderId;
    private PayInfo payInfo;
    private int payType;
    RadioButton radioAli;
    RadioButton radioSandBox;
    RadioButton radioWechat;
    private String registerTime;

    private void toBindView() {
    }

    @Override // com.yofi.sdk.interfaces.IContainerView
    public boolean onBackPressed() {
        return false;
    }

    @Override // com.yofi.sdk.interfaces.IContainerView
    public void onDestory() {
    }

    @Override // com.yofi.sdk.interfaces.IContainerView
    public void onPermissionsGranted(int requestCode, List<String> perms) {
    }

    @Override // com.yofi.sdk.interfaces.IContainerView
    public void onResume() {
    }

    @Override // com.yofi.sdk.interfaces.IContainerView
    public boolean onTouchEvent(MotionEvent event) {
        return false;
    }

    public PayView(final ContainerActivity activity, Bundle bundle) {
        this.orderId = "";
        this.activity = activity;
        this.registerTime = activity.getSharedPreferences("REGISTER_TIME", 0).getString("time", "");
        int i = bundle.getInt(Constants.SANDBOX);
        this.payType = Constants.PAY_TYPE.ALI.getValue();
        activity.setContentView(activity.getResources().getIdentifier("payview", "layout", activity.getPackageName()));
        this.btnClose = (Button) activity.findViewById(activity.getResources().getIdentifier("wypay_bt_close", BreakpointSQLiteKey.ID, activity.getPackageName()));
        this.layoutAli = (RelativeLayout) activity.findViewById(activity.getResources().getIdentifier("layout_ali", BreakpointSQLiteKey.ID, activity.getPackageName()));
        this.layoutWechat = (RelativeLayout) activity.findViewById(activity.getResources().getIdentifier("layout_wechat", BreakpointSQLiteKey.ID, activity.getPackageName()));
        RelativeLayout relativeLayout = (RelativeLayout) activity.findViewById(activity.getResources().getIdentifier("layout_sandbox", BreakpointSQLiteKey.ID, activity.getPackageName()));
        this.layoutSandBox = relativeLayout;
        if (i == 1) {
            relativeLayout.setVisibility(0);
        }
        RadioButton radioButton = (RadioButton) activity.findViewById(activity.getResources().getIdentifier("radio_ali", BreakpointSQLiteKey.ID, activity.getPackageName()));
        this.radioAli = radioButton;
        radioButton.setOnClickListener(this);
        RadioButton radioButton2 = (RadioButton) activity.findViewById(activity.getResources().getIdentifier("radio_wechat", BreakpointSQLiteKey.ID, activity.getPackageName()));
        this.radioWechat = radioButton2;
        radioButton2.setOnClickListener(this);
        RadioButton radioButton3 = (RadioButton) activity.findViewById(activity.getResources().getIdentifier("radio_sandbox", BreakpointSQLiteKey.ID, activity.getPackageName()));
        this.radioSandBox = radioButton3;
        radioButton3.setOnClickListener(this);
        this.orderId = bundle.getString(Constants.APP_ORDER_ID);
        this.payInfo = (PayInfo) bundle.getParcelable(Constants.PAY_INFO);
        TextView textView = (TextView) activity.findViewById(activity.getResources().getIdentifier("tx_product_name", BreakpointSQLiteKey.ID, activity.getPackageName()));
        TextView textView2 = (TextView) activity.findViewById(activity.getResources().getIdentifier("tx_amount", BreakpointSQLiteKey.ID, activity.getPackageName()));
        textView.setText(this.payInfo.getProductName());
        textView2.setText(this.payInfo.getAmount());
        this.btnClose.setOnClickListener(new View.OnClickListener() { // from class: com.yofi.sdk.imp.middle.view.PayView.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                YoFiSdkImp.instance().getPayCallback().onFailed(0, "");
                PayView.this.activity.finish();
            }
        });
        Button button = (Button) activity.findViewById(activity.getResources().getIdentifier("btn_pay", BreakpointSQLiteKey.ID, activity.getPackageName()));
        WidgetUtil.setButtonStateChangeListener(button);
        button.setOnClickListener(new View.OnClickListener() { // from class: com.yofi.sdk.imp.middle.view.PayView.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (PayView.this.payType == Constants.PAY_TYPE.ALI.getValue()) {
                    PayView.this.doAlipay();
                } else if (PayView.this.payType == Constants.PAY_TYPE.WECHAT.getValue()) {
                    PayView.this.doWechatPay();
                } else if (PayView.this.payType == Constants.PAY_TYPE.SANDBOX.getValue()) {
                    PayView.this.doSandBoxPay();
                }
            }
        });
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View v) {
        if (v.getId() == this.activity.getResources().getIdentifier("radio_ali", BreakpointSQLiteKey.ID, this.activity.getPackageName())) {
            this.radioAli.setChecked(true);
            this.radioWechat.setChecked(false);
            this.radioSandBox.setChecked(false);
            this.payType = Constants.PAY_TYPE.ALI.getValue();
            this.layoutAli.setBackgroundResource(this.activity.getResources().getIdentifier("img_bg_light_blue_2x", "drawable", this.activity.getPackageName()));
            this.layoutWechat.setBackgroundResource(0);
            this.layoutSandBox.setBackgroundResource(0);
            return;
        }
        if (v.getId() == this.activity.getResources().getIdentifier("radio_wechat", BreakpointSQLiteKey.ID, this.activity.getPackageName())) {
            this.radioAli.setChecked(false);
            this.radioWechat.setChecked(true);
            this.radioSandBox.setChecked(false);
            this.payType = Constants.PAY_TYPE.WECHAT.getValue();
            this.layoutAli.setBackgroundResource(0);
            this.layoutWechat.setBackgroundResource(this.activity.getResources().getIdentifier("img_bg_light_blue_2x", "drawable", this.activity.getPackageName()));
            this.layoutSandBox.setBackgroundResource(0);
            return;
        }
        if (v.getId() == this.activity.getResources().getIdentifier("radio_sandbox", BreakpointSQLiteKey.ID, this.activity.getPackageName())) {
            this.radioAli.setChecked(false);
            this.radioWechat.setChecked(false);
            this.radioSandBox.setChecked(true);
            this.payType = Constants.PAY_TYPE.SANDBOX.getValue();
            this.layoutAli.setBackgroundResource(0);
            this.layoutWechat.setBackgroundResource(0);
            this.layoutSandBox.setBackgroundResource(this.activity.getResources().getIdentifier("img_bg_light_blue_2x", "drawable", this.activity.getPackageName()));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void doAlipay() {
        if (!checkAppInstalled(this.activity, "alipays://")) {
            Log.d(Constants.TAG, "zhifubao not installed");
            ContainerActivity containerActivity = this.activity;
            ToastUtils.show(containerActivity, containerActivity.getResources().getString(this.activity.getResources().getIdentifier("alipay_app_install", "string", this.activity.getPackageName())));
        } else {
            ContainerActivity containerActivity2 = this.activity;
            final LoadingDialog loadingDialog = new LoadingDialog(containerActivity2, containerActivity2.getResources().getString(this.activity.getResources().getIdentifier("paying", "string", this.activity.getPackageName())));
            loadingDialog.show();
            LittleApiImp.alipay(this.orderId, new WebAPICallback() { // from class: com.yofi.sdk.imp.middle.view.PayView.4
                @Override // com.yofi.sdk.web.WebAPICallback
                public void onSuccess(JSONObject res) {
                    int i = 0;
                    try {
                        i = res.getInt("code");
                        res.getString("data");
                    } catch (JSONException e) {
                        e.printStackTrace();
                    }
                    loadingDialog.dismiss();
                    if (i != 0) {
                        try {
                            ToastUtils.show(PayView.this.activity, res.getString("msg"));
                            return;
                        } catch (JSONException e2) {
                            e2.printStackTrace();
                            return;
                        }
                    }
                    new Thread(new Runnable() { // from class: com.yofi.sdk.imp.middle.view.PayView.4.1
                        @Override // java.lang.Runnable
                        public void run() {
                            Message message = new Message();
                            message.what = 1;
                            PayView.this.mHandler.sendMessage(message);
                        }
                    }).start();
                }

                @Override // com.yofi.sdk.web.WebAPICallback
                public void onFailure(int code, String msg) {
                    loadingDialog.dismiss();
                    ToastUtils.show(PayView.this.activity, msg);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void doWechatPay() {
        Intent intent = new Intent();
        Bundle bundle = new Bundle();
        intent.setClass(this.activity, WebPayView.class);
        bundle.putString(Constants.APP_ORDER_ID, this.orderId);
        bundle.putBoolean(Constants.BOTH_H5, false);
        bundle.putInt(Constants.PAY_TYPE, Constants.PAY_TYPE.WECHAT.getValue());
        intent.putExtras(bundle);
        this.activity.startActivity(intent);
        this.activity.finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void doSandBoxPay() {
        Intent intent = new Intent();
        Bundle bundle = new Bundle();
        intent.setClass(this.activity, WebPayView.class);
        bundle.putString(Constants.APP_ORDER_ID, this.orderId);
        bundle.putBoolean(Constants.BOTH_H5, false);
        bundle.putInt(Constants.PAY_TYPE, Constants.PAY_TYPE.SANDBOX.getValue());
        intent.putExtras(bundle);
        this.activity.startActivity(intent);
        this.activity.finish();
    }

    public static boolean checkAppInstalled(Context paramContext, String paramString) {
        return new Intent("android.intent.action.VIEW", Uri.parse(paramString)).resolveActivity(paramContext.getPackageManager()) != null;
    }

    @Override // com.yofi.sdk.interfaces.IContainerView
    public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent) {
        YoFiSdkImp.instance().getPayCallback().onFailed(0, "");
        return true;
    }

    @Override // com.yofi.sdk.interfaces.IContainerView
    public void onResult(int paramInt1, int paramInt2, Intent paramIntent) {
        Log.d(Constants.TAG, "requestCode = " + paramInt1);
    }

    public boolean parseScheme(String paramString) {
        return paramString.contains("platformapi/startapp") || (paramString.contains("platformapi") && paramString.contains("startapp"));
    }
}
