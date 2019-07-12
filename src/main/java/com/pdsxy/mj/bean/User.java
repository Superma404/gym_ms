package com.pdsxy.mj.bean;

import java.io.Serializable;

public class User implements Serializable {
    private Integer usId;

    private String usName;

    private String usPassword;

    private String usRealname;

    private String usTel;

    private String usEml;

    private Integer usStatus;

    private static final long serialVersionUID = 1L;

    public Integer getUsId() {
        return usId;
    }

    public void setUsId(Integer usId) {
        this.usId = usId;
    }

    public String getUsName() {
        return usName;
    }

    public void setUsName(String usName) {
        this.usName = usName;
    }

    public String getUsPassword() {
        return usPassword;
    }

    public void setUsPassword(String usPassword) {
        this.usPassword = usPassword;
    }

    public String getUsRealname() {
        return usRealname;
    }

    public void setUsRealname(String usRealname) {
        this.usRealname = usRealname;
    }

    public String getUsTel() {
        return usTel;
    }

    public void setUsTel(String usTel) {
        this.usTel = usTel;
    }

    public String getUsEml() {
        return usEml;
    }

    public void setUsEml(String usEml) {
        this.usEml = usEml;
    }

    public Integer getUsStatus() {
        return usStatus;
    }

    public void setUsStatus(Integer usStatus) {
        this.usStatus = usStatus;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", usId=").append(usId);
        sb.append(", usName=").append(usName);
        sb.append(", usPassword=").append(usPassword);
        sb.append(", usRealname=").append(usRealname);
        sb.append(", usTel=").append(usTel);
        sb.append(", usEml=").append(usEml);
        sb.append(", usStatus=").append(usStatus);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }
}