package com.pdsxy.mj.service.imp;

import com.pdsxy.mj.bean.Admin;
import com.pdsxy.mj.dao.AdminMapper;
import com.pdsxy.mj.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("adminService")
public class AdminServiceImp implements AdminService {

    @Autowired
    private AdminMapper adminMapper;
    @Override
    public List<Admin> queryALL() {
        return adminMapper.selectByExample(null);
    }
}
