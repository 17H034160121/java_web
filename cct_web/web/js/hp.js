/*打字机*/
$(function(){
    var $str = $("#con span"),
       $show = $("#show"),
       Innt = [],//预定义用存储的数组  
       Index = 0,//预定义用存储的数组的角标       
       Itimes = 0,//光标闪烁次数  
       FootIndex = 0,//输出时用的角标   
       InnerHTML = "",//当前页面已经输出的元素  
       Auto = null,//自动打印方法  
       temp = '',//保存标签的变量  
       flag = true,//标记标签已经开始  
       endFlag = false;//判断标签结束  
    for (var i = 0; i < $str.length; i++) {  
        for(var j = 0; j<$str.eq(i).html().length;j++){  
            if($str.eq(i).html()[j] == "<" ) {  
                flag = false;  
            }   
                endFlag = false;  
            if($str.eq(i).html()[j] == ">" ) { 
                endFlag = true;                 
            }             
            if (flag) {  
                Innt[Index++] = $str.eq(i).html()[j];  
                
            } else { 
                temp += $str.eq(i).html()[j];  
                if (endFlag) {  
                    Innt[Index++] = temp;                     
                    temp = '';  
                    flag = true;   
                }  
            } 
            
        }  
    }  
    FunOut = function(){  
        if (Itimes % 3 != 0) {  
            Itimes++;  
            $show.html(InnerHTML + "<b>|</b>");  
        }else{  
            if(FootIndex<Index){  
                InnerHTML +=Innt[FootIndex++];  
                $show.html(InnerHTML);  
            }else{  
				clearInterval(Auto);
            }  
        }  
        Itimes++;  
    };   
    Auto = setInterval(FunOut,300);   
})  



/*顶部导航滑过显示下拉窗*/
$(function(){
	$(".wd1").hover(function(){
		$(".wd2").fadeIn();
		},function(){
		$(".wd2").hide();
	})
})

