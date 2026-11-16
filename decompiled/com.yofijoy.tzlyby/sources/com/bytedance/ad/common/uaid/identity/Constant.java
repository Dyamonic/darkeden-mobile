package com.bytedance.ad.common.uaid.identity;

import kotlin.Metadata;

@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\u0018\u00002\u00020\u0001:\u0002\u0003\u0004B\u0005¢\u0006\u0002\u0010\u0002¨\u0006\u0005"}, d2 = {"Lcom/bytedance/ad/common/uaid/identity/Constant;", "", "()V", "Key", "StatusCode", "uaid_release"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes.dex */
public final class Constant {

    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0006\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\n"}, d2 = {"Lcom/bytedance/ad/common/uaid/identity/Constant$Key;", "", "()V", "SP_KEY_UID_CARRIER", "", "SP_KEY_UID_ERROR_CODE", "SP_KEY_UID_TIME", "SP_KEY_UID_TOKEN", "SP_KEY_UID_VENDOR", "SP_NAME_UID", "uaid_release"}, k = 1, mv = {1, 4, 0})
    /* loaded from: classes.dex */
    public static final class Key {
        public static final Key INSTANCE = new Key();
        public static final String SP_KEY_UID_CARRIER = "uid_carrier";
        public static final String SP_KEY_UID_ERROR_CODE = "uid_errCode";
        public static final String SP_KEY_UID_TIME = "uid_time";
        public static final String SP_KEY_UID_TOKEN = "uid_token";
        public static final String SP_KEY_UID_VENDOR = "uid_vendor";
        public static final String SP_NAME_UID = "sp_name_bd_convert_uid";

        private Key() {
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\f\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u0010"}, d2 = {"Lcom/bytedance/ad/common/uaid/identity/Constant$StatusCode;", "", "()V", "ERR_ANDROID_VERSION", "", "ERR_DISABLE", "ERR_FAIL_GET_URL", "ERR_FAIL_ON_DEVICE", "ERR_NO_CELLULAR_NETWORK", "ERR_NO_PERMISSION", "ERR_NO_VALID_CARD", "ERR_OHTER", "GET_TOKEN_SUCC", "GET_URL_SUCC", "INIT", "PERMISSION_CHECK_SUCC", "uaid_release"}, k = 1, mv = {1, 4, 0})
    /* loaded from: classes.dex */
    public static final class StatusCode {
        public static final String ERR_ANDROID_VERSION = "71128";
        public static final String ERR_DISABLE = "101128";
        public static final String ERR_FAIL_GET_URL = "61128";
        public static final String ERR_FAIL_ON_DEVICE = "91128";
        public static final String ERR_NO_CELLULAR_NETWORK = "21128";
        public static final String ERR_NO_PERMISSION = "31128";
        public static final String ERR_NO_VALID_CARD = "11128";
        public static final String ERR_OHTER = "51128";
        public static final String GET_TOKEN_SUCC = "01128";
        public static final String GET_URL_SUCC = "81128";
        public static final String INIT = "-11128";
        public static final StatusCode INSTANCE = new StatusCode();
        public static final String PERMISSION_CHECK_SUCC = "41128";

        private StatusCode() {
        }
    }
}
