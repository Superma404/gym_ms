package com.pdsxy.mj.service;


import com.pdsxy.mj.bean.User;

import java.util.List;

public interface UserService {
    List<User> selectAll();

    User selectByUid(Integer uid);

    void addUser(User user);

    void updateUser(User user);

    void delectUser(Integer uid);

    List<User> selectByName(String usName);

    void queryDel(int[] array);

    User queryByUstel(String usTel);


}


