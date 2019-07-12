package com.pdsxy.mj.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.pdsxy.mj.bean.Instrument;
import com.pdsxy.mj.bean.Message;
import com.pdsxy.mj.service.MessageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * 用户信息接口
 */
@Controller
public class MessageController {
    @Autowired
    private MessageService messageService;

    /**
     * 分页查询
     * @param pn
     * @return
     */
    @RequestMapping("/messages")
    @ResponseBody
    public PageInfo getEmps( @RequestParam(value="pn",defaultValue="1")Integer pn) {
        PageHelper.startPage(pn, 7);
        List<Message> list = messageService.selectAll();

        //用PageInfo对结果进行包装
        PageInfo<Message>  page = new PageInfo<> (list,6);
        return page;
    }

    /**
     * 添加课程
     * @param type
     * @return
     */
    @RequestMapping("/messageAdd")
    @ResponseBody
    public Map<String, Object> addEmps(Message type) {
        Map<String, Object> map = new HashMap<>();

        map.put("state", 100);
        messageService.addMessage(type);

        return map;
    }

    /* *//**
     * 根据姓名查找某条记录
     * @param usName
     * @param out
     *//*
    @RequestMapping("/userByName")
    public void selectEmpByName(@RequestParam("usName")String usName, PrintWriter out) {

        String vel="(^[a-z0-9_-]{3,16}$)|(^[\u2E80-\u9FFF]{2,5})";
        if(!usName.matches(vel)){
            out.print(0);
        }
        if(userService.selectByName(usName).isEmpty()){
            out.print(1);
        }else{
            out.print(0);
        }
    }*/

    /**
     * 批量删除
     * @param array
     */
   /* @RequestMapping("/coursesDel")
    public void empsDel(@RequestBody int[] array, PrintWriter out) {

        coachService.queryDel(array);
        out.print("1");

    }*/

    /* *//**
     * 根据id查找某条记录
     * @param empId
     * @return
     *//*
    @RequestMapping("/empsById")
    @ResponseBody
    public Map<String, Object> empsById(Integer usId) {
        Map<String, Object> map= new HashMap<>();
        User emp=empService.queryById(usId);
        List<Dept> dept=deptService.qureryAll();
        map.put("Emp", emp);
        map.put("Dept", dept);
        return map;
    }
*/
    /**
     * 修改某条记录
     * @param type
     */
    @RequestMapping("/messageUpdate")
    @ResponseBody
    public void empsUpdate(Message type, PrintWriter out) {
        messageService.updateMessage(type);
        out.print(1);
    }

    /**
     * 查找某条信息
     * @param mId
     * @return
     */
    @RequestMapping("/messageByusId")
    @ResponseBody
    public Message empsWithDeptByid(Integer mId) {

        Message emp=messageService.selectByMid(mId);

        return emp;
    }
}
