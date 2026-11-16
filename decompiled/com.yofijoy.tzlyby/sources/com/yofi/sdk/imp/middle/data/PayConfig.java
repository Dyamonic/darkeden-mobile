package com.yofi.sdk.imp.middle.data;

import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes2.dex */
public class PayConfig {
    private String id = "";
    private String parentId = "";
    private String className = "";
    private String payType = "";
    private String payClass = "";
    private String selectMoney = "";
    private String clientFlag = "";
    private boolean isFixMoney = false;
    public List<Integer> moneyList = new ArrayList();

    public String getClientFlag() {
        return this.clientFlag;
    }

    public String getSelectMoney() {
        return this.selectMoney;
    }

    public void setSelectMoney(String selectMoney) {
        this.selectMoney = selectMoney;
        if (TextUtils.isEmpty(selectMoney)) {
            return;
        }
        Iterator it = Arrays.asList(selectMoney.split(",")).iterator();
        while (it.hasNext()) {
            this.moneyList.add(Integer.valueOf(Integer.parseInt(((String) it.next()).trim())));
        }
    }

    public void setClientFlag(String clientFlag) {
        this.clientFlag = clientFlag;
    }

    public List<Integer> getMoneyList() {
        return this.moneyList;
    }

    public String getId() {
        return this.id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getParentId() {
        return this.parentId;
    }

    public void setParentId(String parentId) {
        this.parentId = parentId;
    }

    public String getClassName() {
        return this.className;
    }

    public void setClassName(String className) {
        this.className = className;
    }

    public String getPayType() {
        return this.payType;
    }

    public void setPayType(String payType) {
        this.payType = payType;
    }

    public String getPayClass() {
        return this.payClass;
    }

    public void setPayClass(String payClass) {
        this.payClass = payClass;
    }

    public boolean getIsFixMoney() {
        return this.isFixMoney;
    }

    public void setIsFixMoney(boolean isFixMoney) {
        this.isFixMoney = isFixMoney;
    }

    public String toString() {
        return "PayConfig [id=" + this.id + ", parentId=" + this.parentId + ", className=" + this.className + ", payType=" + this.payType + ", payClass=" + this.payClass + ", selectMoney=" + this.selectMoney + ", clientFlag=" + this.clientFlag + ", isFixMoney=" + this.isFixMoney + ", moneyList=" + this.moneyList + "]";
    }
}
