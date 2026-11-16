package com.yofi.sdk.imp.middle.dialog;

import android.app.Activity;
import android.app.Dialog;
import android.content.Intent;
import android.graphics.Point;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
import android.view.Display;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.view.animation.AnimationSet;
import android.view.animation.TranslateAnimation;
import android.widget.ImageView;
import com.taptap.sdk.update.download.core.breakpoint.BreakpointSQLiteKey;
import com.yofi.sdk.activity.YouFeiWebViewActivity;
import com.yofi.sdk.imp.middle.common.Constants;
import com.yofi.sdk.notchlib.utils.ScreenUtil;
import java.util.Timer;
import java.util.TimerTask;

/* loaded from: classes2.dex */
public class FloatDialog extends Dialog {
    private String accessToken;
    private Activity activity;
    private ImageView floatButton;
    Handler handler;
    private float initialTouchX;
    private float initialTouchY;
    private int jh_x;
    private float jh_y;
    private WindowManager.LayoutParams params;
    private int secondTouchOnFloatView;
    private int timeCount;
    private Timer timer;
    private View view;
    private Point windowSize;

    public FloatDialog(Activity paramActivity, int paramInt, float paramFloat) {
        super(paramActivity, paramActivity.getResources().getIdentifier("YoFi_Dialog", "style", paramActivity.getPackageName()));
        this.accessToken = "";
        this.handler = new Handler() { // from class: com.yofi.sdk.imp.middle.dialog.FloatDialog.1
            @Override // android.os.Handler
            public void handleMessage(Message msg) {
                super.handleMessage(msg);
                if (msg.arg1 != 0 || FloatDialog.this.timeCount <= 0) {
                    return;
                }
                FloatDialog.this.timeCount--;
                FloatDialog.this.floatButton.getBackground().setAlpha(200 - ((20 - FloatDialog.this.timeCount) * 7));
                if (FloatDialog.this.timeCount == 1) {
                    if (ScreenUtil.isPortrait(FloatDialog.this.activity)) {
                        if (FloatDialog.this.params.x > FloatDialog.this.windowSize.x / 2) {
                            if (FloatDialog.this.params.x > FloatDialog.this.windowSize.x / 2) {
                                Log.d(Constants.TAG, "" + FloatDialog.this.params.x + FloatDialog.this.view.getWidth());
                                AnimationSet animationSet = new AnimationSet(true);
                                TranslateAnimation translateAnimation = new TranslateAnimation(0.0f, ((float) FloatDialog.this.view.getWidth()) - 100.0f, 0.0f, 0.0f);
                                animationSet.setDuration(500L);
                                animationSet.addAnimation(translateAnimation);
                                animationSet.setFillAfter(true);
                                FloatDialog.this.view.startAnimation(animationSet);
                            }
                        } else {
                            AnimationSet animationSet2 = new AnimationSet(true);
                            TranslateAnimation translateAnimation2 = new TranslateAnimation(0.0f, -120.0f, 0.0f, 0.0f);
                            animationSet2.setDuration(500L);
                            animationSet2.addAnimation(translateAnimation2);
                            animationSet2.setFillAfter(true);
                            FloatDialog.this.view.startAnimation(animationSet2);
                        }
                    } else if (FloatDialog.this.params.y > FloatDialog.this.windowSize.y / 2) {
                        if (FloatDialog.this.params.y > FloatDialog.this.windowSize.y / 2) {
                            Log.d(Constants.TAG, "" + FloatDialog.this.params.y + FloatDialog.this.view.getHeight());
                            AnimationSet animationSet3 = new AnimationSet(true);
                            TranslateAnimation translateAnimation3 = new TranslateAnimation(0.0f, 0.0f, 0.0f, ((float) FloatDialog.this.view.getHeight()) - 100.0f);
                            animationSet3.setDuration(500L);
                            animationSet3.addAnimation(translateAnimation3);
                            animationSet3.setFillAfter(true);
                            FloatDialog.this.view.startAnimation(animationSet3);
                        }
                    } else {
                        AnimationSet animationSet4 = new AnimationSet(true);
                        TranslateAnimation translateAnimation4 = new TranslateAnimation(0.0f, 0.0f, 0.0f, -120.0f);
                        animationSet4.setDuration(500L);
                        animationSet4.addAnimation(translateAnimation4);
                        animationSet4.setFillAfter(true);
                        FloatDialog.this.view.startAnimation(animationSet4);
                    }
                    FloatDialog.this.secondTouchOnFloatView = 0;
                    if (FloatDialog.this.timer != null) {
                        FloatDialog.this.timer.cancel();
                        FloatDialog.this.timer = null;
                    }
                }
            }
        };
        this.secondTouchOnFloatView = 0;
        this.timeCount = 8;
        this.windowSize = new Point();
        this.activity = paramActivity;
        this.jh_x = paramInt;
        this.jh_y = paramFloat;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startTimer() {
        Timer timer = this.timer;
        if (timer != null) {
            timer.cancel();
            this.timer = null;
        }
        Timer timer2 = new Timer();
        this.timer = timer2;
        this.timeCount = 20;
        timer2.schedule(new TimerTask() { // from class: com.yofi.sdk.imp.middle.dialog.FloatDialog.2
            @Override // java.util.TimerTask, java.lang.Runnable
            public void run() {
                Message message = new Message();
                message.arg1 = 0;
                FloatDialog.this.handler.sendMessage(message);
            }
        }, 1500L, 50L);
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle paramBundle) {
        super.onCreate(paramBundle);
        getWindow().getDecorView().setSystemUiVisibility(6);
        View inflate = LayoutInflater.from(this.activity).inflate(this.activity.getResources().getIdentifier("yofi_float_combine", "layout", this.activity.getPackageName()), (ViewGroup) null);
        this.view = inflate;
        setContentView(inflate);
        ImageView imageView = (ImageView) findViewById(this.activity.getResources().getIdentifier("btn_float", BreakpointSQLiteKey.ID, this.activity.getPackageName()));
        this.floatButton = imageView;
        imageView.setOnClickListener(new View.OnClickListener() { // from class: com.yofi.sdk.imp.middle.dialog.FloatDialog.3
            @Override // android.view.View.OnClickListener
            public void onClick(View param1View) {
            }
        });
        this.floatButton.setOnTouchListener(new View.OnTouchListener() { // from class: com.yofi.sdk.imp.middle.dialog.FloatDialog.4
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View param1View, MotionEvent param1MotionEvent) {
                if (FloatDialog.this.timer != null) {
                    FloatDialog.this.timer.cancel();
                    FloatDialog.this.timer = null;
                }
                FloatDialog.this.floatButton.getBackground().setAlpha(200);
                int action = param1MotionEvent.getAction();
                if (action == 0) {
                    FloatDialog.this.secondTouchOnFloatView++;
                    if (FloatDialog.this.secondTouchOnFloatView < 2) {
                        if (FloatDialog.this.params.x <= FloatDialog.this.windowSize.x / 2) {
                            AnimationSet animationSet = new AnimationSet(true);
                            TranslateAnimation translateAnimation = new TranslateAnimation(-40.0f, 0.0f, 0.0f, 0.0f);
                            animationSet.setDuration(100L);
                            animationSet.addAnimation(translateAnimation);
                            animationSet.setFillAfter(true);
                            FloatDialog.this.view.startAnimation(animationSet);
                            FloatDialog.this.initialTouchX = param1MotionEvent.getRawX();
                            FloatDialog.this.initialTouchY = param1MotionEvent.getRawY();
                            return false;
                        }
                        AnimationSet animationSet2 = new AnimationSet(true);
                        TranslateAnimation translateAnimation2 = new TranslateAnimation(FloatDialog.this.view.getWidth() - 30, 0.0f, 0.0f, 0.0f);
                        animationSet2.setDuration(100L);
                        animationSet2.addAnimation(translateAnimation2);
                        animationSet2.setFillAfter(true);
                        FloatDialog.this.view.startAnimation(animationSet2);
                        FloatDialog.this.initialTouchX = param1MotionEvent.getRawX();
                        FloatDialog.this.initialTouchY = param1MotionEvent.getRawY();
                        return false;
                    }
                    FloatDialog.this.initialTouchX = param1MotionEvent.getRawX();
                    FloatDialog.this.initialTouchY = param1MotionEvent.getRawY();
                    return false;
                }
                if (action != 1) {
                    if (action != 2) {
                        return false;
                    }
                    if (Math.abs(param1MotionEvent.getRawX() - FloatDialog.this.initialTouchX) < 10.0f && Math.abs(param1MotionEvent.getRawY() - FloatDialog.this.initialTouchY) < 10.0f) {
                        return false;
                    }
                    FloatDialog.this.params.x = (int) (param1MotionEvent.getRawX() - FloatDialog.this.view.getWidth());
                    FloatDialog.this.params.y = (int) (param1MotionEvent.getRawY() - FloatDialog.this.view.getHeight());
                    FloatDialog.this.getWindow().setAttributes(FloatDialog.this.params);
                    return false;
                }
                if (ScreenUtil.isPortrait(FloatDialog.this.activity)) {
                    if (FloatDialog.this.params.x <= FloatDialog.this.windowSize.x / 2) {
                        FloatDialog.this.params.x = 0;
                        FloatDialog.this.getWindow().setAttributes(FloatDialog.this.params);
                    } else {
                        FloatDialog.this.params.x = FloatDialog.this.windowSize.x;
                        FloatDialog.this.getWindow().setAttributes(FloatDialog.this.params);
                    }
                    FloatDialog.this.timeCount = 20;
                    FloatDialog.this.startTimer();
                    if (Math.abs(param1MotionEvent.getRawX() - FloatDialog.this.initialTouchX) < 10.0f && Math.abs(param1MotionEvent.getRawY() - FloatDialog.this.initialTouchY) < 10.0f) {
                        Log.i("YofiSdk", "button no");
                        if (FloatDialog.this.secondTouchOnFloatView >= 2) {
                            Intent intent = new Intent(FloatDialog.this.activity, (Class<?>) YouFeiWebViewActivity.class);
                            intent.putExtra("isLoginOut", false);
                            intent.putExtra("urlType", 2);
                            FloatDialog.this.activity.startActivity(intent);
                            FloatDialog.this.activity.overridePendingTransition(0, 0);
                        }
                        return true;
                    }
                    Log.i(Constants.TAG, "button");
                    return true;
                }
                if (FloatDialog.this.params.y <= FloatDialog.this.windowSize.y / 2) {
                    FloatDialog.this.params.y = 0;
                    FloatDialog.this.getWindow().setAttributes(FloatDialog.this.params);
                } else {
                    FloatDialog.this.params.y = FloatDialog.this.windowSize.y;
                    FloatDialog.this.getWindow().setAttributes(FloatDialog.this.params);
                }
                FloatDialog.this.timeCount = 20;
                FloatDialog.this.startTimer();
                if (Math.abs(param1MotionEvent.getRawY() - FloatDialog.this.initialTouchY) < 10.0f && Math.abs(param1MotionEvent.getRawX() - FloatDialog.this.initialTouchX) < 10.0f) {
                    Log.i("YofiSdk", "button no");
                    if (FloatDialog.this.secondTouchOnFloatView >= 2) {
                        Intent intent2 = new Intent(FloatDialog.this.activity, (Class<?>) YouFeiWebViewActivity.class);
                        intent2.putExtra("isLoginOut", false);
                        intent2.putExtra("urlType", 2);
                        FloatDialog.this.activity.startActivity(intent2);
                        FloatDialog.this.activity.overridePendingTransition(0, 0);
                    }
                    return true;
                }
                Log.i(Constants.TAG, "button");
                return true;
            }
        });
        setCancelable(false);
        Window window = getWindow();
        WindowManager.LayoutParams attributes = window.getAttributes();
        this.params = attributes;
        attributes.format = 1;
        this.params.flags = 40;
        this.params.type = 2;
        this.params.gravity = 51;
        Display defaultDisplay = window.getWindowManager().getDefaultDisplay();
        this.windowSize.x = defaultDisplay.getWidth();
        this.windowSize.y = defaultDisplay.getHeight();
        if (this.jh_x == 1) {
            this.params.x = 0;
        } else {
            this.params.x = this.windowSize.x;
        }
        float f = this.windowSize.y;
        float f2 = this.jh_y;
        if (ScreenUtil.isPortrait(this.activity)) {
            this.params.y = (int) (f * f2);
        } else {
            this.params.y = this.windowSize.y;
            this.params.x = (int) (this.windowSize.x * 0.1d);
        }
        window.setAttributes(this.params);
        startTimer();
    }

    public void setAccessToken(String paramString) {
        this.accessToken = paramString;
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        super.dismiss();
    }
}
