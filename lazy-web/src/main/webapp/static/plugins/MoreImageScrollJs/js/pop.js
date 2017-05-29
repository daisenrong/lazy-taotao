 $(function(){
	   $(".scrollable_demo4 .photo_ul li:first").click();
	   scrollimages2("scrollable_demo4",1,5,121,1000,3000,"false");
      $(".prod_d_m_imgshow .scrollable_demo4 .photo_ul li").on("click",function(){
																		 $("#phosts_show .img_show").hide();
																		
																		 $(this).addClass("on").siblings().removeClass("on");
																		 $("#phosts_show .loading").hide();
																		 var smailImgSrc=$(this).find("img").attr("src");
																		 //var grounpSrc = smailImgSrc.split('.');
																		 //var bigImgSrcName=grounpSrc[0].substring(0,grounpSrc[0].length-2);
																		 //var grounpSrc = smailImgSrc.split('_s.');
																		 //var bigImgSrcName=grounpSrc[0];
																		 //var realbigImgSrcName=bigImgSrcName.substring(bigImgSrcName.lastIndexOf("/")+1)
																		 //var bigImgSrc=bigImgSrcName+"."+grounpSrc[1];
																		 //$(".product_detail_mod .img_title").text(realbigImgSrcName);
																		 $("#phosts_show .img_show").attr("src",smailImgSrc) 
																		 //changeImgHorW("img_show",401,670);
																		 //$("#phosts_show .img_show").fadeTo("fast",0.5);
																		 //$("#phosts_show .img_show").fadeTo("fast",1);
																		 $("#phosts_show .img_show").show();
																		  //changeImgHorW("img_show",401,670);
																		 })
	  $("#phosts_show .img_show").load(function(){
												 //alert($(this).width());
												 $("#phosts_show .loading").hide(); 
												 changeImgHorW("img_show",401,670);
												 $("#phosts_show .loading").hide(); 
												})
	})
      
		
	function  scrollimages2(scrollable_demo,il,gl,vleftwidth,click_speed,auto_speed,isauto){
	if(click_speed=="")
	click_speed=1000;
	if(auto_speed=="")
	auto_speed==5000;
	var reBox=$("."+scrollable_demo);
	if(reBox.html()!=null){
	//var reBox=$("#focusPic ul");
    var reLeft=reBox.position().left;
    var len = reBox.find("li").length;
    //reBox.width(len*vleftwidth);
    var maxLeft = (len - gl)* vleftwidth;
    var reInt;
	var showFirst = 1;
	 reBox.find("li").removeClass("show").eq(showFirst-1).addClass("show");
    var rePre=function(){
	if(!reBox.is(":animated"))
	{
    reLeft = reLeft + il*vleftwidth;
   
	 showFirst--;
	  reBox.find("li").removeClass("show").eq(showFirst-1).addClass("show");
	  reBox.animate({left:reLeft},click_speed);
	}
    }

    var reLast=function(){
	if(!reBox.is(":animated")){
    reLeft = -maxLeft;
	showFirst==len - gl;
	reBox.find("li").removeClass("show").eq(showFirst-1).addClass("show");
    reBox.animate({left:reLeft},click_speed);}
    }
    var reNext=function(){
	if(!reBox.is(":animated")){
    reLeft = reLeft - il*vleftwidth;
	showFirst++;
	reBox.find("li").removeClass("show").eq(showFirst-1).addClass("show");
    reBox.animate({left:reLeft},click_speed);}
    }
    var reFirst=function(){
	if(!reBox.is(":animated")){
    reLeft = 0;
	showFirst=1;
	reBox.find("li").removeClass("show").eq(showFirst-1).addClass("show");
    reBox.animate({left:reLeft},click_speed);}
    }
    reBox.parents(".scrollable").find(".prev").click(function(){
    if(reLeft < 0){
    rePre();
    }else{
    reLast();
    }
    return false;
    })
    reBox.parents(".scrollable").find(".next").click(function(){
    if(reLeft > -maxLeft){
    reNext();
    }else{
    reFirst();
    }
    return false;
    })
   function interval(){
	   if(isauto=="false")
       {return;}
   reInt=setInterval(function(){
    if(reLeft > -maxLeft){
    reNext();
    }else{
    reFirst();
    }
},auto_speed);
}
interval();
reBox.parents(".scrollable").mouseover(function(){
clearInterval(reInt);
})
reBox.parents(".scrollable").mouseout(function(){
interval();
})
	
}
}	

function  changeImgHorW(obj,containerHeigth,containerWidth)
                      {
						 
						  var vimg=$("#"+obj);
						  vimg.css({"height":"auto","width":"auto"});
			              var imgHeight= vimg.height();	
			              var imgWidth= vimg.width();	
						  var imgBiLi=imgWidth/imgHeight;
						  var containerBiLi=containerWidth/containerHeigth;
						  var vchoise=true;
						  if(imgBiLi>containerBiLi)
						  {
						      vchoise=false;
						  }
						  if(imgWidth>containerWidth||imgHeight>containerHeigth)
						  {
						      if(vchoise)
						      {
							   $(vimg).css("height",containerHeigth);
						      }
						     else
						      {
							   $(vimg).css("width",containerWidth);
						      }
						   }
                       }