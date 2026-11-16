package rich;

import com.rich.oauth.util.CmccReturnCodeUtil;

/* loaded from: classes2.dex */
public class r1 {
    public int a;
    public String b;

    public r1(int i, String str) {
        this.a = i;
        this.b = str;
    }

    public static r1 a(int i) {
        switch (i) {
            case 102102:
                return new r1(102102, "网络异常");
            case 102223:
                return new r1(102223, "数据解析异常");
            case 102508:
                return new r1(102508, "数据网络切换失败");
            case CmccReturnCodeUtil.CODE_200025 /* 200025 */:
                return new r1(CmccReturnCodeUtil.CODE_200025, "登录超时");
            case CmccReturnCodeUtil.CODE_200039 /* 200039 */:
                return new r1(CmccReturnCodeUtil.CODE_200039, "电信取号接口失败");
            case CmccReturnCodeUtil.CODE_200050 /* 200050 */:
                return new r1(CmccReturnCodeUtil.CODE_200050, "EOF异常");
            default:
                return new r1(i, "网络异常");
        }
    }
}
