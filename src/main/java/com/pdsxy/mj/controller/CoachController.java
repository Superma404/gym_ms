package com.pdsxy.mj.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.pdsxy.mj.bean.Coach;
import com.pdsxy.mj.bean.Course;
import com.pdsxy.mj.service.CoachService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * 用户信息接口
 */
@Controller
public class CoachController {
    @Autowired
    private CoachService coachService;

    /**
     * 获取全部的项目
     * @param
     * @param model
     * @return
     */
    @RequestMapping("/getAllCoach")
    public String getAllProjects(Model model){
        PageHelper.startPage(0, 12);
        List<Coach> list=coachService.selectAll();
        //用PageInfo对结果进行包装
        PageInfo<Coach>  page = new PageInfo<> (list,6);
        model.addAttribute("page", page);
        return "/view/coach";
    }

    @RequestMapping("/coach-detailzc")
    public String getCourse(Model model){

        return "/view/coach-detailzc";
    }

    /**
     * 分页查询
     * @param pn
     * @return
     */
    @RequestMapping("/coachs")
    @ResponseBody
    public PageInfo getEmps( @RequestParam(value="pn",defaultValue="1")Integer pn) {
        PageHelper.startPage(pn, 7);
        List<Coach> list = coachService.selectAll();

        //用PageInfo对结果进行包装
        PageInfo<Coach>  page = new PageInfo<> (list,6);
        return page;
    }

    /**
     * 添加课程
     * @param type
     * @return
     */
    @RequestMapping("/coachAdd")
    @ResponseBody
    public Map<String, Object> addEmps(Coach type) {
        Map<String, Object> map = new HashMap<>();

        map.put("state", 100);
        coachService.addCoach(type);

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
    @RequestMapping("/coachsDel")
    public void empsDel(@RequestBody int[] array, PrintWriter out) {

        coachService.queryDel(array);
        out.print("1");

    }

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
    @RequestMapping("/coachUpdate")
    @ResponseBody
    public void empsUpdate(Coach type,PrintWriter out) {
        coachService.updateCoach(type);
        out.print(1);
    }

    /**
     * 查找某条信息
     * @param coId
     * @return
     */
    @RequestMapping("/coachByusId")
    @ResponseBody
    public Coach empsWithDeptByid(Integer coId) {

        Coach emp=coachService.selectByCoid(coId);

        return emp;
    }
}
