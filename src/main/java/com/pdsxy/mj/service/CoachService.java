package com.pdsxy.mj.service;


import com.pdsxy.mj.bean.Coach;

import java.util.List;

public interface CoachService {
    List<Coach> selectAll();

    Coach selectByCoid(Integer coid);

    void addCoach(Coach coach);

    void updateCoach(Coach coach);

    void delectCoach(Integer coid);

    void queryDel(int[] array);



}


