package com.pdsxy.mj.service.imp;


import com.pdsxy.mj.bean.Type;
import com.pdsxy.mj.dao.TypeMapper;
import com.pdsxy.mj.service.TypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("typeService")
public class TypeServiceImp implements TypeService {

    @Autowired
    private TypeMapper typeMapper;

    @Override
    public List<Type> selectAll() {
        return typeMapper.selectByExample(null);
    }

    @Override
    public Type selectByTid(Integer tid) {
        return typeMapper.selectByPrimaryKey(tid);
    }

    @Override
    public void addType(Type type) {
        typeMapper.insertSelective(type);
    }

    @Override
    public void updateType(Type type) {
        typeMapper.updateByPrimaryKeySelective(type);
    }

    @Override
    public void delectType(Integer tid) {
        typeMapper.deleteByPrimaryKey(tid);
    }

    @Override
    public void queryDel(int[] array) {
        typeMapper.deleteByMoretId(array);
    }
}
