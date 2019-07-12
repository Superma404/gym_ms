package com.pdsxy.mj.util;

import java.net.URLEncoder;

public class IndustrySMS {
	    private static String operation = "/industrySMS/sendSMS";

	    private static String accountSid = Config.ACCOUNT_SID;
	    //private static String r =  "5分钟内来到马杰身边他表示很你.....";
	    

	    private static String code = smsCode();
	//  登录验证码：{1}，如非本人操作，请忽略此短信。
	    private static String smsContent = "【安温柔】您的验证码为："+code+"，请于"+1+"分钟内正确输入，如非本人操作，请忽略此短信。"; 

	    public static String getCode(){
	    	return code;
	    }
	    /**
	     * 验证码通知短信
	     */
	    public static void execute(String to)
	    {
	        String tmpSmsContent = null;
	        try{
	          tmpSmsContent = URLEncoder.encode(smsContent, "UTF-8");
	        }catch(Exception e){

	        }
	        String url = Config.BASE_URL + operation;
	        String body = "accountSid=" + accountSid + "&to=" + to + "&smsContent=" + tmpSmsContent
	            + HttpUtil.createCommonParam();

	        // 提交请求
	        String result = HttpUtil.post(url, body);
	        System.out.println("result:" + System.lineSeparator() + result);
	    }

	    //创建验证码
	    public static String smsCode(){
	        String random=(int)((Math.random()*9+1)*100000)+""; 
	        System.out.println("验证码："+random);
	        return random;
	    }
}
