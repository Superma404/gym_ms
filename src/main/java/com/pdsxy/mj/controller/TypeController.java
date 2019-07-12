package com.pdsxy.mj.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import com.pdsxy.mj.bean.Type;
import com.pdsxy.mj.service.TypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.validation.Valid;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * 类别信息接口
 */
@Controller
public class TypeController {
    @Autowired
    private TypeService typeService;

    /**
     * 分页查询
     * @param pn
     * @return
     */
    @RequestMapping("/types")
    @ResponseBody
    public PageInfo getEmps( @RequestParam(value="pn",defaultValue="1")Integer pn) {
        PageHelper.startPage(pn, 7);
        List<Type> list = typeService.selectAll();

        //用PageInfo对结果进行包装
        PageInfo<Type>  page = new PageInfo<> (list,6);
        return page;
    }

    /**
     * 添加类型
     * @param type
     * @return
     */
    @RequestMapping("/empAdd")
    @ResponseBody
    public Map<String, Object> addEmps( Type type) {
        Map<String, Object> map = new HashMap<>();

            map.put("state", 100);
        typeService.addType(type);

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
    @RequestMapping("/typesDel")
    public void empsDel(@RequestBody int[] array, PrintWriter out) {

        typeService.queryDel(array);
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
    @RequestMapping("/typeUpdate")
    @ResponseBody
    public void empsUpdate(Type type,PrintWriter out) {
        typeService.updateType(type);
        out.print(1);
    }

    /**
     * 查找某条信息
     * @param tId
     * @return
     */
    @RequestMapping("/typeByusId")
    @ResponseBody
    public Type empsWithDeptByid(Integer tId) {

        Type emp=typeService.selectByTid(tId);

        return emp;
    }

}
