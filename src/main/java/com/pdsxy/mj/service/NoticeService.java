package com.pdsxy.mj.service;


import com.pdsxy.mj.bean.Notice;

import java.util.List;

public interface NoticeService {
    List<Notice> selectAll();

    Notice selectByNid(Integer nid);

    void addNotice(Notice notice);

    void updateNotice(Notice notice);

    void delectNotice(Integer nid);
}


