package com.pdsxy.mj.dao;

import com.pdsxy.mj.bean.Coach;
import com.pdsxy.mj.bean.CoachExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface CoachMapper {
    long countByExample(CoachExample example);

    int deleteByExample(CoachExample example);

    int deleteByPrimaryKey(Integer coId);

    int insert(Coach record);

    int insertSelective(Coach record);

    List<Coach> selectByExample(CoachExample example);

    Coach selectByPrimaryKey(Integer coId);

    int updateByExampleSelective(@Param("record") Coach record, @Param("example") CoachExample example);

    int updateByExample(@Param("record") Coach record, @Param("example") CoachExample example);

    int updateByPrimaryKeySelective(Coach record);

    int updateByPrimaryKey(Coach record);

    void deleteByMorecoId(int[] array);
}