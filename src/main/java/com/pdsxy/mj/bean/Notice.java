package com.pdsxy.mj.bean;

import java.io.Serializable;
import java.util.Date;

public class Notice implements Serializable {
    private Integer noId;

    private String noName;

    private String noContent;

    private Date noTime;

    private String noAuthor;

    private static final long serialVersionUID = 1L;

    public Integer getNoId() {
        return noId;
    }

    public void setNoId(Integer noId) {
        this.noId = noId;
    }

    public String getNoName() {
        return noName;
    }

    public void setNoName(String noName) {
        this.noName = noName;
    }

    public String getNoContent() {
        return noContent;
    }

    public void setNoContent(String noContent) {
        this.noContent = noContent;
    }

    public Date getNoTime() {
        return noTime;
    }

    public void setNoTime(Date noTime) {
        this.noTime = noTime;
    }

    public String getNoAuthor() {
        return noAuthor;
    }

    public void setNoAuthor(String noAuthor) {
        this.noAuthor = noAuthor;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", noId=").append(noId);
        sb.append(", noName=").append(noName);
        sb.append(", noContent=").append(noContent);
        sb.append(", noTime=").append(noTime);
        sb.append(", noAuthor=").append(noAuthor);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }
}