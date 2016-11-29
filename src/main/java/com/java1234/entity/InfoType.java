package com.java1234.entity;

/**
 * Created by Administrator on 2016/11/23 0023.
 */
public class InfoType {

    private int id;

    /**
     * 排序标志
     */
    private int typeSign;

    /**
     * 类型名字
     */
    private String typeName;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getTypeSign() {
        return typeSign;
    }

    public void setTypeSign(int typeSign) {
        this.typeSign = typeSign;
    }

    public String getTypeName() {
        return typeName;
    }

    public void setTypeName(String typeName) {
        this.typeName = typeName;
    }
}
