package com.pdsxy.mj.bean;

import java.io.Serializable;

public class Coach implements Serializable {
    private Integer coId;

    private String coName;

    private String coCourse;

    private Integer coStatus;

    private static final long serialVersionUID = 1L;

    public Integer getCoId() {
        return coId;
    }

    public void setCoId(Integer coId) {
        this.coId = coId;
    }

    public String getCoName() {
        return coName;
    }

    public void setCoName(String coName) {
        this.coName = coName;
    }

    public String getCoCourse() {
        return coCourse;
    }

    public void setCoCourse(String coCourse) {
        this.coCourse = coCourse;
    }

    public Integer getCoStatus() {
        return coStatus;
    }

    public void setCoStatus(Integer coStatus) {
        this.coStatus = coStatus;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", coId=").append(coId);
        sb.append(", coName=").append(coName);
        sb.append(", coCourse=").append(coCourse);
        sb.append(", coStatus=").append(coStatus);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }
}