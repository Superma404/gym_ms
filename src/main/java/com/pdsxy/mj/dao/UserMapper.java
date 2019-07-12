package com.pdsxy.mj.dao;

import com.pdsxy.mj.bean.User;
import com.pdsxy.mj.bean.UserExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface UserMapper {
    long countByExample(UserExample example);

    int deleteByExample(UserExample example);

    int deleteByPrimaryKey(Integer usId);

    int deleteByMoreusId(int[] array);

    int insert(User record);

    int insertSelective(User record);

    List<User> selectByExample(UserExample example);

    User selectByUstel(@Param("usTel") String usTel);

    List<User> selectByName(String usName);

    User selectByPrimaryKey(Integer usId);

    int updateByExampleSelective(@Param("record") User record, @Param("example") UserExample example);

    int updateByExample(@Param("record") User record, @Param("example") UserExample example);

    int updateByPrimaryKeySelective(User record);

    int updateByPrimaryKey(User record);
}