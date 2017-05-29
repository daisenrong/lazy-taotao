$(function () {
    //延迟加载
    //$("img").lazyload({
    //placeholder: "images/loading.gif", //占位图片
    //threshold: 300, //达到图片边界时加载图片
    //effect: "fadeIn", //图片显示时的效果
    //failurelimit: 0
    //});
    //选项卡
    $("#foucs .element ul li").hover(function () {
        $(this).toggleClass("on");
    })

    //tabchange_pjzc(0,"hytype_tab","hytype_content","on","");
    $(".dsjsTab a").click(function () {
        $(this).addClass("on").siblings().removeClass("on");
        GOanchor($(this).attr("gomao"));
    })
    /*内页*/
    autoContentHeight();
    $(window).resize(function () {
        autoContentHeight();
    })
    addTop();
    search_tip();
    Ie6Tip();
})


function autoContentHeight() {
    var windowHeight = $(window).height();
    if (windowHeight < 850) {
        $(".bi_con_body").addClass("smallContainer");
    }
    else {
        $(".bi_con_body").removeClass("smallContainer");
    }
}
//搜索等框提示信息
function search_tip() {
    $(".focus_blur").focus(function () {
        if ($(this).attr("value") == $(this).attr("defalutVlue")) {
            $(this).val("");
            $(this).removeClass("on");
        }
    }).blur(function () {
        if ($(this).attr("value") == "") {
            $(this).val($(this).attr("defalutVlue"));
            $(this).addClass("on");
        }
    })
    $(".registerTb .password_mod .input_com").focus(function () {
        $(this).removeClass("on");
    }).blur(function () {
        if ($(this).attr("value") == "") {
            $(this).addClass("on");
        }
    })
}

//滑动到锚点
function GOanchor(classname) {
    var $root = $('html, body');
    $root.animate({
        scrollTop: $("." + classname).offset().top - 170
    }, 500);
    return false;
}


//置顶
function addTop() {
    var tophtml = "<a class='gotop' title='回顶部'></a>";
    $(tophtml).appendTo("body");
    $(window).scroll(function () {
        if ($(this).scrollTop() > 200) {
            $(".gotop").fadeIn();
        } else {
            $(".gotop").fadeOut();
        }
    });
    $(".gotop").click(function () {
        $("body,html").animate({
            scrollTop: 0
        }, 800);
        return false;
    });
}
//IE6.0提示升级
function Ie6Tip() {
    if ($.browser.msie && ($.browser.version == "6.0") && !$.support.style) {
        var tishi_html = "";
        tishi_html += "<div id='low_version'>";
        tishi_html += "您当前的IE版本过低，访问慢，运行不流畅，样式错位，建议升级到最新版的IE浏览器(至少IE7)或者火狐等其他浏览器！"
        tishi_html += "&nbsp;"
        tishi_html += "<a target='_blank' class='green' href='http://www.microsoft.com/zh-cn/download/internet-explorer.aspx'>IE浏览器官方网站下载</a>";
        tishi_html += "&nbsp;&nbsp;"
        tishi_html += "<a target='_blank' class='green' href='http://firefox.com.cn/download/'>火狐浏览器官方网站下载</a>";
        tishi_html += "&nbsp;"
        tishi_html += "<span id='totalSecond'>10</span>";
        tishi_html += "</div>";
        $(tishi_html).prependTo("body");

        //setTimeout("redirect()",1000); 
        var second = $("#totalSecond").text();
        setInterval(function () {
            $("#totalSecond").text(--second);
            if (second < 1)
                $("#low_version").slideUp("slow");
        }, 1000);
    }
    function redirect() {
        var second = $("#totalSecond").text();
        $("#totalSecond").text(--second);
        if (second < 1)
            $("#low_version").slideUp("slow");
    }
}


function tabchange_pjzc(state, tabid, contentid, tabNewClass, taboldClass) {
    $("." + tabid + ">a").live("click", function () {
        if (!$(this).hasClass("more")) {
            var $index = $(this).index();
            var $href = $(this).attr("href");
            $(this).siblings(".more").attr("href", $href);
            //$(this)
            var $table = $("." + contentid).find(".tab_content");
            $(this).siblings("a").removeClass("on").end().addClass("on");
            $table.hide().eq($index).show();
            return false;
        }
    })
}

function tabchange_pjzc_click(state, tabid, contentid, tabNewClass, taboldClass) {
    $("#" + tabid + ">a").click(function () {
        var $index = $("#" + tabid + ">a").index($(this));
        var $tablediv = $("#" + contentid + ">div");
        $(this).siblings("a").attr("class", taboldClass).end().attr("class", tabNewClass);
        $tablediv.removeClass("visible").hide().eq($index).show();
        return false;
    })
}
function adFix(obj, space) {
    var $obj = $(obj), oh = $obj.height(), ow = $obj.width(), ot = parseInt($obj.css("top")), ww;

    function posX() {
    }

    function posY() {
        posX();
        var otop = ot + $(document).scrollTop();
        $obj.animate({top: otop}, {duration: 800, queue: false});
    }

    $obj.find('.close').click(function () {
        $obj.hide();
        return false;
    });
    $(window).resize(posX);
    $(window).scroll(posY);
    posX();
    posY();
}
/*图片滚动 scrollable_demo：滚动区域的class，il:显示的图片数，gl:每次滚动的条数，vleftwidth：单个图片的liclick_speed:单击移动速度，auto_speed：自动移动速度*/
function scrollimages2(scrollable_demo, il, gl, vleftwidth, click_speed, auto_speed, isauto) {
    if (click_speed == "")
        click_speed = 1000;
    if (auto_speed == "")
        auto_speed == 5000;
    var reBox = $("." + scrollable_demo);
    if (reBox.html() != null) {
        //var reBox=$("#focusPic ul");
        var reLeft = reBox.position().left;
        var len = reBox.find("li").length;
        //reBox.width(len*vleftwidth);
        var maxLeft = (len - gl) * vleftwidth;
        var reInt;
        var showFirst = 1;
        reBox.find("li").removeClass("show").eq(showFirst - 1).addClass("show");
        var rePre = function () {
            if (!reBox.is(":animated")) {
                reLeft = reLeft + il * vleftwidth;

                showFirst--;
                reBox.find("li").removeClass("show").eq(showFirst - 1).addClass("show");
                reBox.animate({left: reLeft}, click_speed);
            }
        }

        var reLast = function () {
            if (!reBox.is(":animated")) {
                reLeft = -maxLeft;
                showFirst == len - gl;
                reBox.find("li").removeClass("show").eq(showFirst - 1).addClass("show");
                reBox.animate({left: reLeft}, click_speed);
            }
        }
        var reNext = function () {
            if (!reBox.is(":animated")) {
                reLeft = reLeft - il * vleftwidth;
                showFirst++;
                reBox.find("li").removeClass("show").eq(showFirst - 1).addClass("show");
                reBox.animate({left: reLeft}, click_speed);
            }
        }
        var reFirst = function () {
            if (!reBox.is(":animated")) {
                reLeft = 0;
                showFirst = 1;
                reBox.find("li").removeClass("show").eq(showFirst - 1).addClass("show");
                reBox.animate({left: reLeft}, click_speed);
            }
        }
        reBox.parents(".scrollable").find(".prev").click(function () {
            if (reLeft < 0) {
                rePre();
            } else {
                reLast();
            }
            return false;
        })
        reBox.parents(".scrollable").find(".next").click(function () {
            if (reLeft > -maxLeft) {
                reNext();
            } else {
                reFirst();
            }
            return false;
        })
        function interval() {
            if (isauto == "false") {
                return;
            }
            reInt = setInterval(function () {
                if (reLeft > -maxLeft) {
                    reNext();
                } else {
                    reFirst();
                }
            }, auto_speed);
        }

        interval();
        reBox.parents(".scrollable").mouseover(function () {
            clearInterval(reInt);
        })
        reBox.parents(".scrollable").mouseout(function () {
            interval();
        })

    }
}

//改变图片的位置
function changeImgPo_center(fixwidht, fixheight, obj) {

    var imgWidth = $(obj).width();
    var imgHeight = $(obj).height();

    if (imgWidth < fixwidht && imgHeight < fixheight) {
        // var mt=(fixwidht-imgWidth)/2;
        var ml = (fixheight - imgHeight) / 2;
        $(obj).css("margin-top", ml);
        return;
    }

    var imgBiLi = imgWidth / imgHeight;
    var containerBiLi = fixwidht / fixheight;
    if (imgBiLi > containerBiLi) {
        $(obj).width(fixwidht)
        var notop = (fixheight - fixwidht / imgBiLi) / 2;
        $(obj).css("margin-top", notop)
    }
    else {
        $(obj).height(fixheight)
        //var nowleft = (fixwidht-fixheight*imgBiLi)/2
        //$(obj).css("margin-left",nowleft)
    }
}