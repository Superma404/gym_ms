package com.pdsxy.mj.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.pdsxy.mj.bean.User;
import com.pdsxy.mj.service.UserService;
import com.pdsxy.mj.util.IndustrySMS;
import com.qq.connect.oauth.Oauth;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * 用户信息接口
 */
@Controller
public class UserController {
    @Autowired
    private UserService userService;

    //验证电话号码正则表达式
    private String refPhone="(^(\\d{3,4}-)?\\d{6,8}$)|(^(\\d{3,4}-)?\\d{6,8}(-\\d{1,5})?$)|(\\d{11})";


    @RequestMapping("selectByUsId")
    public String selectByUsId(Model model){
        int usId=1;
        User user=userService.selectByUid(usId);
        model.addAttribute("user", user);
        return "updateUser";
    }

    /**
     * 处理登录请求
     * @param
     * @return
     */
    @RequestMapping(value="/loginCheck", method = RequestMethod.POST)
    @ResponseBody
    public Map<String, Object>  loginCheck(User user, HttpServletRequest request){
        User user2=null;
        Map< String , Object> map= new HashMap<String, Object>();
        if(user.getUsTel().matches(refPhone)){
            user2 = userService.queryByUstel(user.getUsTel());
        }
        if(user2!=null){

            if(user2.getUsPassword().equals(user.getUsPassword())){
                HttpSession session=request.getSession();
                session.setAttribute("user", user2);
                map.put("msg", user2.getUsName());
                return map;
            }else{
                map.put("msg", "*passwordError");
                return map;
            }
        }
        map.put("msg", "*emailError");
        return map;
    }


    /**
     * 跳转到登录页面
     * @return
     */
    @RequestMapping("/login")
    public String login(  ){

        return "login";
    }

    /**
     * 跳转到注册页面
     * @return
     */
    @RequestMapping("/register")
    public String register( ){

        return "register";
    }

    /**
     * 保存请求验证码
     * @param usTel
     * @param request
     * @param
     */
    @RequestMapping("/code")
    public void code(String usTel, HttpServletRequest request){
        if( usTel.matches(refPhone)){
            IndustrySMS.execute(usTel);
            String code=IndustrySMS.getCode();
            HttpSession session=request.getSession();
            session.setAttribute("code", code);
            session.setMaxInactiveInterval(60000);
        }
    }

    /**
     * 处理注册请求
     * @param user
     * @return
     */
    @RequestMapping("/registerCheck")
    @ResponseBody
    public Map<String, Object> registerCheck(User user,HttpServletRequest request){
        String EmailOrPhone=user.getUsTel();
        Map< String , Object> map= new HashMap<String, Object>();
        HttpSession session=request.getSession();
        String code=(String) session.getAttribute("code");
        if(user.getUsEml().equals(code)){

            if(EmailOrPhone.matches(refPhone)){
                user.setUsTel(user.getUsTel());
                userService.addUser(user);
                map.put("msg", "success");

            }else if(EmailOrPhone.equals(null)){
                map.put("msg", "null");
            }else{
                map.put("msg", "Error");
            }
        }else{
            map.put("msg", "codeError");
        }
             return map;
    }

    /**
     * 判断注册时不为空
     * @param usTel
     * @param out
     */
    @RequestMapping("/registerCheckNull")
    public void registerCheckNull( String usTel,PrintWriter out ){

        User user=new User();
        if(usTel.matches(refPhone)){
            user = userService.queryByUstel(usTel);
            if(user!=null){
                out.print("2");
            }
        }
    }

    /**
     * 判断是否登录
     * @param request
     * @param address
     * @return
     */

    @RequestMapping("/indexCheck")
    public String indexCheck(HttpServletRequest request,String address){

        HttpSession session=request.getSession();
        User user= (User) session.getAttribute("user");
        if("selectPro_a".equals(address)){
            if(user!=null){
                return "forward:"+address+"";
            }
            return "login";
        }
        return address;

    }

    /**
     * 判断是否登录
     * @param request
     * @param address
     * @return
     */
    @RequestMapping("/proCheck")
    public String proCheck(HttpServletRequest request,String address){

        HttpSession session=request.getSession();
        User user= (User) session.getAttribute("user");

        if(user!=null){
            return "forward:"+address+"";
        }
        return "login";
    }

    /**
     * 分页查询
     * @param pn
     * @return
     */
    @RequestMapping("/users")
    @ResponseBody
    public PageInfo getEmps( @RequestParam(value="pn",defaultValue="1")Integer pn) {
        PageHelper.startPage(pn, 7);
        List<User> list = userService.selectAll();

        //用PageInfo对结果进行包装
        PageInfo<User>  page = new PageInfo<> (list,6);
        return page;
    }

   /**
     * 添加用户
     * @param user
     * @return
     */
    @RequestMapping("/userAdd")
    @ResponseBody
    public Map<String, Object> addEmps(@Valid User user, BindingResult br) {
        Map<String, Object> map = new HashMap<>();
        if(br.hasErrors()){
            List<FieldError> errors= br.getFieldErrors();//找到所有的错误信息
            for(FieldError r:errors){
                map.put("state", 200);
                String fieldName = r.getField();
                String msg = r.getDefaultMessage();
                map.put(fieldName, msg);
                return map;
            }
        }else{
            map.put("state", 100);
            userService.addUser(user);
        }
        return map;
    }

    /**
     * 根据姓名查找某条记录
     * @param usName
     * @param out
     */
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
    }

    /**
     * 批量删除
     * @param array
     */
    @RequestMapping("/usersDel")
    public void empsDel(@RequestBody int[] array, PrintWriter out) {

        userService.queryDel(array);
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
     * @param user
     */
    @RequestMapping("/userUpdate")
    @ResponseBody
    public void empsUpdate(User user,PrintWriter out) {
        userService.updateUser(user);
        out.print(1);
    }

    /**
     * 查找某条员工信息
     * @param usId
     * @return
     */
    @RequestMapping("/userByusId")
    @ResponseBody
    public User empsWithDeptByid(Integer usId) {

        User emp=userService.selectByUid(usId);

        return emp;
    }

}
