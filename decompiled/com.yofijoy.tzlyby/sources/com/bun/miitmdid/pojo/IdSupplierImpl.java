package com.bun.miitmdid.pojo;

import com.bun.miitmdid.interfaces.IdSupplier;

/* loaded from: classes.dex */
public class IdSupplierImpl implements IdSupplier {
    private final String AAID;
    private final String OAID;
    private final String VAID;
    private final boolean isLimited;
    private final boolean isSupported;

    public IdSupplierImpl() {
        this.OAID = "";
        this.VAID = "";
        this.AAID = "";
        this.isSupported = false;
        this.isLimited = false;
    }

    public IdSupplierImpl(String str, String str2, String str3, boolean z, boolean z2) {
        this.OAID = str;
        this.VAID = str2;
        this.AAID = str3;
        this.isSupported = z;
        this.isLimited = z2;
    }

    @Override // com.bun.miitmdid.interfaces.IdSupplier
    public String getAAID() {
        return this.AAID;
    }

    @Override // com.bun.miitmdid.interfaces.IdSupplier
    public String getOAID() {
        return this.OAID;
    }

    @Override // com.bun.miitmdid.interfaces.IdSupplier
    public String getVAID() {
        return this.VAID;
    }

    @Override // com.bun.miitmdid.interfaces.IdSupplier
    public boolean isLimited() {
        return this.isLimited;
    }

    @Override // com.bun.miitmdid.interfaces.IdSupplier
    public boolean isSupported() {
        return this.isSupported;
    }
}
