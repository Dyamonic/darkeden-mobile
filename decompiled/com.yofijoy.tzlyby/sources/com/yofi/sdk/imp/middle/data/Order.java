package com.yofi.sdk.imp.middle.data;

/* loaded from: classes2.dex */
public class Order {
    private String cpOrderId;
    private String googleOrderId;
    private String orderId;
    private String payType;
    private String sku;

    public Order(String orderId, String sku, String payType, String cpOrderId) {
        this.orderId = orderId;
        this.sku = sku;
        this.payType = payType;
        this.cpOrderId = cpOrderId;
    }

    public void setGoogleOrderId(String googleOrderId) {
        this.googleOrderId = googleOrderId;
    }

    public String getGoogleOrderId() {
        return this.googleOrderId;
    }

    public void setProductId(String productId) {
        this.cpOrderId = productId;
    }

    public String getCpOrderId() {
        return this.cpOrderId;
    }

    public String getOrderId() {
        return this.orderId;
    }

    public void setOrderId(String orderId) {
        this.orderId = orderId;
    }

    public String getSku() {
        return this.sku;
    }

    public void setSku(String sku) {
        this.sku = sku;
    }

    public String getPayType() {
        return this.payType;
    }

    public void setPayType(String payType) {
        this.payType = payType;
    }
}
