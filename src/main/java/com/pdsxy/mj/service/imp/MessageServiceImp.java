package com.pdsxy.mj.service.imp;


import com.pdsxy.mj.bean.Message;
import com.pdsxy.mj.dao.MessageMapper;
import com.pdsxy.mj.service.MessageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("messageService")
public class MessageServiceImp implements MessageService {

    @Autowired
    private MessageMapper messageMapper;

    @Override
    public List<Message> selectAll() {
        return messageMapper.selectByExample(null);
    }

    @Override
    public Message selectByMid(Integer mid) {
        return messageMapper.selectByPrimaryKey(mid);
    }

    @Override
    public void addMessage(Message message) {
        messageMapper.insertSelective(message);
    }

    @Override
    public void updateMessage(Message message) {
        messageMapper.updateByPrimaryKeySelective(message);
    }

    @Override
    public void delectMessage(Integer mid) {
        messageMapper.deleteByPrimaryKey(mid);
    }
}
