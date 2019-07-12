package com.pdsxy.mj.service.imp;

import com.pdsxy.mj.bean.Coach;
import com.pdsxy.mj.dao.CoachMapper;
import com.pdsxy.mj.service.CoachService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("coachService")
public class CoachServiceImp implements CoachService {

    @Autowired
    private CoachMapper coachMapper;

    @Override
    public List<Coach> selectAll() {
        return coachMapper.selectByExample(null);
    }

    @Override
    public Coach selectByCoid(Integer cid) {
        return coachMapper.selectByPrimaryKey(cid);
    }

    @Override
    public void addCoach(Coach comments) {
        coachMapper.insertSelective(comments);
    }

    @Override
    public void updateCoach(Coach comments) {
        coachMapper.updateByPrimaryKeySelective(comments);
    }

    @Override
    public void queryDel(int[] array) {
         coachMapper.deleteByMorecoId(array);
    }

    @Override
    public void delectCoach(Integer cid) {
        coachMapper.deleteByPrimaryKey(cid);
    }
}
