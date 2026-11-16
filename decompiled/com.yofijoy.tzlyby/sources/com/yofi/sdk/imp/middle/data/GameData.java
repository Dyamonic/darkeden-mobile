package com.yofi.sdk.imp.middle.data;

/* loaded from: classes2.dex */
public class GameData {
    private long battlePoint;
    private long roleCreateTime;
    private String roleId;
    private int roleLevel;
    private String roleName;
    private String serverId;
    private String serverName;
    private int vipLevel;

    public String getRoleId() {
        return this.roleId;
    }

    public void setRoleId(String roleId) {
        this.roleId = roleId;
    }

    public int getRoleLevel() {
        return this.roleLevel;
    }

    public void setRoleLevel(int roleLevel) {
        this.roleLevel = roleLevel;
    }

    public String getRoleName() {
        return this.roleName;
    }

    public void setRoleName(String roleName) {
        this.roleName = roleName;
    }

    public long getRoleCreateTime() {
        return this.roleCreateTime;
    }

    public void setRoleCreateTime(long roleCreateTime) {
        this.roleCreateTime = roleCreateTime;
    }

    public String getServerId() {
        return this.serverId;
    }

    public void setServerId(String serverId) {
        this.serverId = serverId;
    }

    public String getServerName() {
        return this.serverName;
    }

    public void setServerName(String serverName) {
        this.serverName = serverName;
    }

    public long getBattlePoint() {
        return this.battlePoint;
    }

    public void setBattlePoint(long battlePoint) {
        this.battlePoint = battlePoint;
    }

    public int getVipLevel() {
        return this.vipLevel;
    }

    public void setVipLevel(int vipLevel) {
        this.vipLevel = vipLevel;
    }
}
