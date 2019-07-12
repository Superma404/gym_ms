package com.pdsxy.mj.service;



import com.pdsxy.mj.bean.Type;

import java.util.List;

public interface TypeService {
    List<Type> selectAll();

    Type selectByTid(Integer tid);

    void addType(Type type);

    void updateType(Type type);

    void delectType(Integer tid);

    void queryDel(int[] array);
}


