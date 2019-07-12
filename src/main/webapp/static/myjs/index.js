var allMoney=0;
var allMoneyYestoday=0;
var projectsNum=0;


$(function(){
	
	setTimeout('myrefresh()',5000);// 指定8秒刷新一次
	
	$.ajax({
		url:"allMoney",
		success:function(data){
			allMoneyDay=data.allMoneyDay;
			allMoneyYestoday=data.allMoneyYestoday;
			projectsNum=data.projectsNum;
		
		},
		async:false
	})
	
	
	$("#h").empty();
	$("#h").append("昨日总众筹资金："+allMoneyYestoday+"￥");
	
	$("#add").empty();
	$("#add").append("今日新增众筹项目："+projectsNum);
	
	var options = {  
		useEasing: true,
		  useGrouping: true,
		  separator: ',',
		  decimal: '.',
	};
	var demo = new CountUp('moneyCount', 10000, allMoneyDay, 0, 2.5, options);
	if(!demo.error) {  
		demo.start(); 
	} else {  
		console.error(demo.error);
	}
	
	 
})

  /**
	 * 定时刷新
	 * 
	 * @returns
	 */
   function myrefresh(){
	window.location.reload();
	}
 
