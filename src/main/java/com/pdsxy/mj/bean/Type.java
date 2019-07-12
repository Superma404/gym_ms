package com.pdsxy.mj.bean;

import java.io.Serializable;

public class Type implements Serializable {
    private Integer tId;

    private String tStyle;

    private static final long serialVersionUID = 1L;

    public Integer gettId() {
        return tId;
    }

    public void settId(Integer tId) {
        this.tId = tId;
    }

    public String gettStyle() {
        return tStyle;
    }

    public void settStyle(String tStyle) {
        this.tStyle = tStyle;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", tId=").append(tId);
        sb.append(", tStyle=").append(tStyle);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }
}