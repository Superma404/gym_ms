package com.pdsxy.mj.bean;

import java.io.Serializable;
import java.util.Date;

public class Message implements Serializable {
    private Integer meId;

    private String meAuthor;

    private String meContent;

    private String meImg;

    private Date meTime;

    private Integer meStatus;

    private static final long serialVersionUID = 1L;

    public Integer getMeId() {
        return meId;
    }

    public void setMeId(Integer meId) {
        this.meId = meId;
    }

    public String getMeAuthor() {
        return meAuthor;
    }

    public void setMeAuthor(String meAuthor) {
        this.meAuthor = meAuthor;
    }

    public String getMeContent() {
        return meContent;
    }

    public void setMeContent(String meContent) {
        this.meContent = meContent;
    }

    public String getMeImg() {
        return meImg;
    }

    public void setMeImg(String meImg) {
        this.meImg = meImg;
    }

    public Date getMeTime() {
        return meTime;
    }

    public void setMeTime(Date meTime) {
        this.meTime = meTime;
    }

    public Integer getMeStatus() {
        return meStatus;
    }

    public void setMeStatus(Integer meStatus) {
        this.meStatus = meStatus;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", meId=").append(meId);
        sb.append(", meAuthor=").append(meAuthor);
        sb.append(", meContent=").append(meContent);
        sb.append(", meImg=").append(meImg);
        sb.append(", meTime=").append(meTime);
        sb.append(", meStatus=").append(meStatus);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }
}