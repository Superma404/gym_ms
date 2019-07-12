package com.pdsxy.mj.service.imp;

import com.pdsxy.mj.bean.User;
import com.pdsxy.mj.dao.UserMapper;
import com.pdsxy.mj.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("userService")
public class UserServiceImp implements UserService {

    @Autowired
    private UserMapper userMapper;

    @Override
    public List<User> selectAll() {
        return userMapper.selectByExample(null);
    }

    @Override
    public User selectByUid(Integer uid) {
        return userMapper.selectByPrimaryKey(uid);
    }

    @Override
    public User queryByUstel(String usTel) {
        return userMapper.selectByUstel(usTel);
    }

    @Override
    public void queryDel(int[] array) {
        userMapper.deleteByMoreusId(array);
    }

    @Override
    public List<User> selectByName(String usName) {
        return userMapper.selectByName(usName);
    }

    @Override
    public void updateUser(User user) {
        userMapper.updateByPrimaryKey(user);
    }

    @Override
    public void addUser(User user) {
        userMapper.insertSelective(user);
    }

    @Override
    public void delectUser(Integer uid) {
        userMapper.deleteByPrimaryKey(uid);
    }
}
