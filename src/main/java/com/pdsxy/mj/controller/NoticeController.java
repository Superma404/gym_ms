package com.pdsxy.mj.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import com.pdsxy.mj.bean.Coach;
import com.pdsxy.mj.bean.Instrument;
import com.pdsxy.mj.bean.Notice;
import com.pdsxy.mj.service.NoticeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * 用户信息接口
 */
@Controller
public class NoticeController {
    @Autowired
    private NoticeService noticeService;


    @RequestMapping("/getAllNotice")
    public String getAllProjects(Model model) {
        PageHelper.startPage(0, 12);
        List<Notice> list = noticeService.selectAll();
        //用PageInfo对结果进行包装
        PageInfo<Notice> page = new PageInfo<>(list, 6);
        model.addAttribute("page", page);
        return "/view/cop";
    }
    /**
     * 分页查询
     * @param pn
     * @return
     */
    @RequestMapping("/notices")
    @ResponseBody
    public PageInfo getEmps( @RequestParam(value="pn",defaultValue="1")Integer pn) {
        PageHelper.startPage(pn, 7);
        List<Notice> list = noticeService.selectAll();

        //用PageInfo对结果进行包装
        PageInfo<Notice>  page = new PageInfo<> (list,6);
        return page;
    }

    /**
     * 添加课程
     * @param type
     * @return
     */
    @RequestMapping("/noticeAdd")
    @ResponseBody
    public Map<String, Object> addEmps(Notice type) {
        Map<String, Object> map = new HashMap<>();

        map.put("state", 100);
        noticeService.addNotice(type);

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
    @RequestMapping("/noticeUpdate")
    @ResponseBody
    public void empsUpdate(Notice type, PrintWriter out) {
        noticeService.updateNotice(type);
        out.print(1);
    }

    /**
     * 查找某条信息
     * @param noId
     * @return
     */
    @RequestMapping("/noticeByusId")
    @ResponseBody
    public Notice empsWithDeptByid(Integer noId) {

        Notice emp=noticeService.selectByNid(noId);

        return emp;
    }
}
