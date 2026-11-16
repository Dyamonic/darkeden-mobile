package com.juhe.juhesdk.middle.common;

/* loaded from: classes.dex */
public enum JUHE_RESULT {
    OK(0, "OK"),
    SERVER_ERROR(1, "游斐服务器报错"),
    JSON_EXCEPTION(2, "json解析错误"),
    NETWORK_ERROR(3, "网络错误"),
    HUAWEI_ERROR(4, "华为返回的错误码:"),
    OPPO_ERROR(5, "OPPO返回的错误码:"),
    INIT_ERROR(6, "sdk未初始化"),
    PAY_CANCEL(7, "取消了支付"),
    XIAOMI_ERROR(8, "小米返回的错误码"),
    UC_ERROR(9, "UC返回的错误码"),
    BILI_ERROR(10, "B站返回的错误码"),
    JINLI_ERROR(11, "金立返回的错误码"),
    BAIDU_ERROR(12, "百度返回的错误码"),
    YOFI_ERROR(13, "游斐返回的错误码"),
    G4399_ERROR(14, "4399返回的错误码"),
    HEISHA_ERROR(15, "黑鲨返回的错误码"),
    NUBIA_ERROR(16, "努比亚返回的错误码"),
    MUMU_ERROR(17, "mumu亚返回的错误码"),
    NOX_ERROR(18, "夜神返回的错误码"),
    GP_ERROR(19, "果盘返回的错误码"),
    LD_ERROR(20, "雷电返回的错误码"),
    ZIJIE_ERROR(111, "字节返回的错误码"),
    YOUXIFAN_ERROR(21, "游戏Fan返回的错误码"),
    UMARK_ERROR(22, "游码返回的错误码"),
    QIDIAN_ERROR(23, "祈点返回的错误码"),
    XIAOQI_ERROR(24, "小7返回的错误码"),
    UMARKSDK_ERROR(25, "游码SDK返回的错误码"),
    YEHUA_ERROR(26, "夜画返回的错误码"),
    SIPU_ERROR(34, "思璞返回的错误码"),
    CHANGMENG_ERROR(36, "思璞返回的错误码"),
    QIMENG_ERROR(37, "祈盟返回的错误码"),
    SERVER_ERROR_CODE_903(903, "每日22点00分至次日8点00分不能登录游戏");

    public final int code;
    public final String msg;

    JUHE_RESULT(int code, String msg) {
        this.code = code;
        this.msg = msg;
    }
}
