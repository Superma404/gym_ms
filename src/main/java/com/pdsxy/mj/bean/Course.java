package com.pdsxy.mj.bean;

import java.io.Serializable;
import java.util.Date;

public class Course implements Serializable {
    private Integer couId;

    private String couName;

    private String couContent;

    private String couImg;

    private String couCoach;

    private Date couBegintime;

    private Date couEndtime;

    private String couAdress;

    private static final long serialVersionUID = 1L;

    public Integer getCouId() {
        return couId;
    }

    public void setCouId(Integer couId) {
        this.couId = couId;
    }

    public String getCouName() {
        return couName;
    }

    public void setCouName(String couName) {
        this.couName = couName;
    }

    public String getCouContent() {
        return couContent;
    }

    public void setCouContent(String couContent) {
        this.couContent = couContent;
    }

    public String getCouImg() {
        return couImg;
    }

    public void setCouImg(String couImg) {
        this.couImg = couImg;
    }

    public String getCouCoach() {
        return couCoach;
    }

    public void setCouCoach(String couCoach) {
        this.couCoach = couCoach;
    }

    public Date getCouBegintime() {
        return couBegintime;
    }

    public void setCouBegintime(Date couBegintime) {
        this.couBegintime = couBegintime;
    }

    public Date getCouEndtime() {
        return couEndtime;
    }

    public void setCouEndtime(Date couEndtime) {
        this.couEndtime = couEndtime;
    }

    public String getCouAdress() {
        return couAdress;
    }

    public void setCouAdress(String couAdress) {
        this.couAdress = couAdress;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", couId=").append(couId);
        sb.append(", couName=").append(couName);
        sb.append(", couContent=").append(couContent);
        sb.append(", couImg=").append(couImg);
        sb.append(", couCoach=").append(couCoach);
        sb.append(", couBegintime=").append(couBegintime);
        sb.append(", couEndtime=").append(couEndtime);
        sb.append(", couAdress=").append(couAdress);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }
}