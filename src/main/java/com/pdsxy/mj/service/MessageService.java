package com.pdsxy.mj.service;


import com.pdsxy.mj.bean.Message;

import java.util.List;

public interface MessageService {
    List<Message> selectAll();

    Message selectByMid(Integer mid);

    void addMessage(Message message);

    void updateMessage(Message message);

    void delectMessage(Integer mid);
}


