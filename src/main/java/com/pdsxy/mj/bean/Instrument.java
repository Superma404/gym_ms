package com.pdsxy.mj.bean;

import java.io.Serializable;

public class Instrument implements Serializable {
    private Integer insId;

    private String insName;

    private String insUse;

    private Integer insStatus;

    private static final long serialVersionUID = 1L;

    public Integer getInsId() {
        return insId;
    }

    public void setInsId(Integer insId) {
        this.insId = insId;
    }

    public String getInsName() {
        return insName;
    }

    public void setInsName(String insName) {
        this.insName = insName;
    }

    public String getInsUse() {
        return insUse;
    }

    public void setInsUse(String insUse) {
        this.insUse = insUse;
    }

    public Integer getInsStatus() {
        return insStatus;
    }

    public void setInsStatus(Integer insStatus) {
        this.insStatus = insStatus;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", insId=").append(insId);
        sb.append(", insName=").append(insName);
        sb.append(", insUse=").append(insUse);
        sb.append(", insStatus=").append(insStatus);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }
}