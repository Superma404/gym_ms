package com.pdsxy.mj.service.imp;


import com.pdsxy.mj.bean.Notice;
import com.pdsxy.mj.dao.NoticeMapper;
import com.pdsxy.mj.service.NoticeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("noticeService")
public class NoticeServiceImp implements NoticeService {

    @Autowired
    private NoticeMapper noticeMapper;

    @Override
    public List<Notice> selectAll() {
        return noticeMapper.selectByExample(null);
    }

    @Override
    public Notice selectByNid(Integer nid) {
        return noticeMapper.selectByPrimaryKey(nid);
    }

    @Override
    public void addNotice(Notice notice) {
        noticeMapper.updateByPrimaryKeySelective(notice);
    }

    @Override
    public void updateNotice(Notice notice) {
        noticeMapper.insertSelective(notice);
    }

    @Override
    public void delectNotice(Integer nid) {
        noticeMapper.deleteByPrimaryKey(nid);
    }
}
