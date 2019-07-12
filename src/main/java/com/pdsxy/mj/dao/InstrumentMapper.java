package com.pdsxy.mj.dao;

import com.pdsxy.mj.bean.Instrument;
import com.pdsxy.mj.bean.InstrumentExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface InstrumentMapper {
    long countByExample(InstrumentExample example);

    int deleteByExample(InstrumentExample example);

    int deleteByPrimaryKey(Integer insId);

    int insert(Instrument record);

    int insertSelective(Instrument record);

    List<Instrument> selectByExample(InstrumentExample example);

    Instrument selectByPrimaryKey(Integer insId);

    int updateByExampleSelective(@Param("record") Instrument record, @Param("example") InstrumentExample example);

    int updateByExample(@Param("record") Instrument record, @Param("example") InstrumentExample example);

    int updateByPrimaryKeySelective(Instrument record);

    int updateByPrimaryKey(Instrument record);
}