package com.pdsxy.mj.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.pdsxy.mj.bean.Admin;
import com.pdsxy.mj.bean.Instrument;
import com.pdsxy.mj.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
public class AdminController {
    @Autowired
    private AdminService adminService;

    @RequestMapping("/login_b")

    public String test() {
        return "index-b";
    }

    /**
     * 分页查询
     * @param pn
     * @return
     */
    @RequestMapping("/admins")
    @ResponseBody
    public PageInfo getEmps( @RequestParam(value="pn",defaultValue="1")Integer pn) {
        PageHelper.startPage(pn, 7);
        List<Admin> list = adminService.queryALL();

        //用PageInfo对结果进行包装
        PageInfo<Admin>  page = new PageInfo<> (list,6);
        return page;
    }

   /* *//**
     * 添加课程
     * @param type
     * @return
     *//*
    @RequestMapping("/instrumentAdd")
    @ResponseBody
    public Map<String, Object> addEmps(Instrument type) {
        Map<String, Object> map = new HashMap<>();

        map.put("state", 100);
        instrumentService.addInstrument(type);

        return map;
    }

    *//* *//**//**
     * 根据姓名查找某条记录
     * @param usName
     * @param out
     *//**//*
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
    }*//*

    *//**
     * 批量删除
     * @param array
     *//*
   *//* @RequestMapping("/coursesDel")
    public void empsDel(@RequestBody int[] array, PrintWriter out) {

        coachService.queryDel(array);
        out.print("1");

    }*//*

    *//* *//**//**
     * 根据id查找某条记录
     * @param empId
     * @return
     *//**//*
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
*//*
    *//**
     * 修改某条记录
     * @param type
     *//*
    @RequestMapping("/instrumentUpdate")
    @ResponseBody
    public void empsUpdate(Instrument type, PrintWriter out) {
        instrumentService.updateInstrument(type);
        out.print(1);
    }

    *//**
     * 查找某条信息
     * @param insId
     * @return
     *//*
    @RequestMapping("/instrumentByusId")
    @ResponseBody
    public Instrument empsWithDeptByid(Integer insId) {

        Instrument emp=instrumentService.selectByInsid(insId);

        return emp;
    }


*/
}
